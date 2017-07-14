--- GENERATED CODE - DO NOT MODIFY
-- Amazon Route 53 (route53-2013-04-01)

local M = {}

M.metadata = {
	api_version = "2013-04-01",
	json_version = "",
	protocol = "rest-xml",
	checksum_format = "",
	endpoint_prefix = "route53",
	service_abbreviation = "Route 53",
	service_full_name = "Amazon Route 53",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "route53.amazonaws.com",
	uid = "route53-2013-04-01",
}

local ListVPCAssociationAuthorizationsResponse_keys = { "HostedZoneId" = true, "VPCs" = true, "NextToken" = true, nil }

function M.AssertListVPCAssociationAuthorizationsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListVPCAssociationAuthorizationsResponse to be of type 'table'")
	assert(struct["HostedZoneId"], "Expected key HostedZoneId to exist in table")
	assert(struct["VPCs"], "Expected key VPCs to exist in table")
	if struct["HostedZoneId"] then M.AssertResourceId(struct["HostedZoneId"]) end
	if struct["VPCs"] then M.AssertVPCs(struct["VPCs"]) end
	if struct["NextToken"] then M.AssertPaginationToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListVPCAssociationAuthorizationsResponse_keys[k], "ListVPCAssociationAuthorizationsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListVPCAssociationAuthorizationsResponse
-- &lt;p&gt;A complex type that contains the response information for the request.&lt;/p&gt;
-- @param HostedZoneId [ResourceId] &lt;p&gt;The ID of the hosted zone that you can associate the listed VPCs with.&lt;/p&gt;
-- @param VPCs [VPCs] &lt;p&gt;The list of VPCs that are authorized to be associated with the specified hosted zone.&lt;/p&gt;
-- @param NextToken [PaginationToken] &lt;p&gt;When the response includes a &lt;code&gt;NextToken&lt;/code&gt; element, there are more VPCs that can be associated with the specified hosted zone. To get the next page of VPCs, submit another &lt;code&gt;ListVPCAssociationAuthorizations&lt;/code&gt; request, and include the value of the &lt;code&gt;NextToken&lt;/code&gt; element from the response in the &lt;code&gt;nexttoken&lt;/code&gt; request parameter.&lt;/p&gt;
-- Required parameter: HostedZoneId
-- Required parameter: VPCs
function M.ListVPCAssociationAuthorizationsResponse(HostedZoneId, VPCs, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListVPCAssociationAuthorizationsResponse")
	local t = { 
		["HostedZoneId"] = HostedZoneId,
		["VPCs"] = VPCs,
		["NextToken"] = NextToken,
	}
	M.AssertListVPCAssociationAuthorizationsResponse(t)
	return t
end

local CreateTrafficPolicyRequest_keys = { "Comment" = true, "Document" = true, "Name" = true, nil }

function M.AssertCreateTrafficPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTrafficPolicyRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Document"], "Expected key Document to exist in table")
	if struct["Comment"] then M.AssertTrafficPolicyComment(struct["Comment"]) end
	if struct["Document"] then M.AssertTrafficPolicyDocument(struct["Document"]) end
	if struct["Name"] then M.AssertTrafficPolicyName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(CreateTrafficPolicyRequest_keys[k], "CreateTrafficPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTrafficPolicyRequest
-- &lt;p&gt;A complex type that contains information about the traffic policy that you want to create.&lt;/p&gt;
-- @param Comment [TrafficPolicyComment] &lt;p&gt;(Optional) Any comments that you want to include about the traffic policy.&lt;/p&gt;
-- @param Document [TrafficPolicyDocument] &lt;p&gt;The definition of this traffic policy in JSON format. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/Route53/latest/APIReference/api-policies-traffic-policy-document-format.html&quot;&gt;Traffic Policy Document Format&lt;/a&gt;.&lt;/p&gt;
-- @param Name [TrafficPolicyName] &lt;p&gt;The name of the traffic policy.&lt;/p&gt;
-- Required parameter: Name
-- Required parameter: Document
function M.CreateTrafficPolicyRequest(Comment, Document, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateTrafficPolicyRequest")
	local t = { 
		["Comment"] = Comment,
		["Document"] = Document,
		["Name"] = Name,
	}
	M.AssertCreateTrafficPolicyRequest(t)
	return t
end

local ListHostedZonesByNameResponse_keys = { "HostedZones" = true, "NextHostedZoneId" = true, "DNSName" = true, "MaxItems" = true, "HostedZoneId" = true, "NextDNSName" = true, "IsTruncated" = true, nil }

function M.AssertListHostedZonesByNameResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListHostedZonesByNameResponse to be of type 'table'")
	assert(struct["HostedZones"], "Expected key HostedZones to exist in table")
	assert(struct["IsTruncated"], "Expected key IsTruncated to exist in table")
	assert(struct["MaxItems"], "Expected key MaxItems to exist in table")
	if struct["HostedZones"] then M.AssertHostedZones(struct["HostedZones"]) end
	if struct["NextHostedZoneId"] then M.AssertResourceId(struct["NextHostedZoneId"]) end
	if struct["DNSName"] then M.AssertDNSName(struct["DNSName"]) end
	if struct["MaxItems"] then M.AssertPageMaxItems(struct["MaxItems"]) end
	if struct["HostedZoneId"] then M.AssertResourceId(struct["HostedZoneId"]) end
	if struct["NextDNSName"] then M.AssertDNSName(struct["NextDNSName"]) end
	if struct["IsTruncated"] then M.AssertPageTruncated(struct["IsTruncated"]) end
	for k,_ in pairs(struct) do
		assert(ListHostedZonesByNameResponse_keys[k], "ListHostedZonesByNameResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListHostedZonesByNameResponse
-- &lt;p&gt;A complex type that contains the response information for the request.&lt;/p&gt;
-- @param HostedZones [HostedZones] &lt;p&gt;A complex type that contains general information about the hosted zone.&lt;/p&gt;
-- @param NextHostedZoneId [ResourceId] &lt;p&gt;If &lt;code&gt;IsTruncated&lt;/code&gt; is &lt;code&gt;true&lt;/code&gt;, the value of &lt;code&gt;NextHostedZoneId&lt;/code&gt; identifies the first hosted zone in the next group of &lt;code&gt;maxitems&lt;/code&gt; hosted zones. Call &lt;code&gt;ListHostedZonesByName&lt;/code&gt; again and specify the value of &lt;code&gt;NextDNSName&lt;/code&gt; and &lt;code&gt;NextHostedZoneId&lt;/code&gt; in the &lt;code&gt;dnsname&lt;/code&gt; and &lt;code&gt;hostedzoneid&lt;/code&gt; parameters, respectively.&lt;/p&gt; &lt;p&gt;This element is present only if &lt;code&gt;IsTruncated&lt;/code&gt; is &lt;code&gt;true&lt;/code&gt;.&lt;/p&gt;
-- @param DNSName [DNSName] &lt;p&gt;For the second and subsequent calls to &lt;code&gt;ListHostedZonesByName&lt;/code&gt;, &lt;code&gt;DNSName&lt;/code&gt; is the value that you specified for the &lt;code&gt;dnsname&lt;/code&gt; parameter in the request that produced the current response.&lt;/p&gt;
-- @param MaxItems [PageMaxItems] &lt;p&gt;The value that you specified for the &lt;code&gt;maxitems&lt;/code&gt; parameter in the call to &lt;code&gt;ListHostedZonesByName&lt;/code&gt; that produced the current response.&lt;/p&gt;
-- @param HostedZoneId [ResourceId] &lt;p&gt;The ID that Amazon Route 53 assigned to the hosted zone when you created it.&lt;/p&gt;
-- @param NextDNSName [DNSName] &lt;p&gt;If &lt;code&gt;IsTruncated&lt;/code&gt; is true, the value of &lt;code&gt;NextDNSName&lt;/code&gt; is the name of the first hosted zone in the next group of &lt;code&gt;maxitems&lt;/code&gt; hosted zones. Call &lt;code&gt;ListHostedZonesByName&lt;/code&gt; again and specify the value of &lt;code&gt;NextDNSName&lt;/code&gt; and &lt;code&gt;NextHostedZoneId&lt;/code&gt; in the &lt;code&gt;dnsname&lt;/code&gt; and &lt;code&gt;hostedzoneid&lt;/code&gt; parameters, respectively.&lt;/p&gt; &lt;p&gt;This element is present only if &lt;code&gt;IsTruncated&lt;/code&gt; is &lt;code&gt;true&lt;/code&gt;.&lt;/p&gt;
-- @param IsTruncated [PageTruncated] &lt;p&gt;A flag that indicates whether there are more hosted zones to be listed. If the response was truncated, you can get the next group of &lt;code&gt;maxitems&lt;/code&gt; hosted zones by calling &lt;code&gt;ListHostedZonesByName&lt;/code&gt; again and specifying the values of &lt;code&gt;NextDNSName&lt;/code&gt; and &lt;code&gt;NextHostedZoneId&lt;/code&gt; elements in the &lt;code&gt;dnsname&lt;/code&gt; and &lt;code&gt;hostedzoneid&lt;/code&gt; parameters.&lt;/p&gt;
-- Required parameter: HostedZones
-- Required parameter: IsTruncated
-- Required parameter: MaxItems
function M.ListHostedZonesByNameResponse(HostedZones, NextHostedZoneId, DNSName, MaxItems, HostedZoneId, NextDNSName, IsTruncated, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListHostedZonesByNameResponse")
	local t = { 
		["HostedZones"] = HostedZones,
		["NextHostedZoneId"] = NextHostedZoneId,
		["DNSName"] = DNSName,
		["MaxItems"] = MaxItems,
		["HostedZoneId"] = HostedZoneId,
		["NextDNSName"] = NextDNSName,
		["IsTruncated"] = IsTruncated,
	}
	M.AssertListHostedZonesByNameResponse(t)
	return t
end

local CreateTrafficPolicyResponse_keys = { "TrafficPolicy" = true, "Location" = true, nil }

function M.AssertCreateTrafficPolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTrafficPolicyResponse to be of type 'table'")
	assert(struct["TrafficPolicy"], "Expected key TrafficPolicy to exist in table")
	assert(struct["Location"], "Expected key Location to exist in table")
	if struct["TrafficPolicy"] then M.AssertTrafficPolicy(struct["TrafficPolicy"]) end
	if struct["Location"] then M.AssertResourceURI(struct["Location"]) end
	for k,_ in pairs(struct) do
		assert(CreateTrafficPolicyResponse_keys[k], "CreateTrafficPolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTrafficPolicyResponse
-- &lt;p&gt;A complex type that contains the response information for the &lt;code&gt;CreateTrafficPolicy&lt;/code&gt; request.&lt;/p&gt;
-- @param TrafficPolicy [TrafficPolicy] &lt;p&gt;A complex type that contains settings for the new traffic policy.&lt;/p&gt;
-- @param Location [ResourceURI] &lt;p&gt;A unique URL that represents a new traffic policy.&lt;/p&gt;
-- Required parameter: TrafficPolicy
-- Required parameter: Location
function M.CreateTrafficPolicyResponse(TrafficPolicy, Location, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateTrafficPolicyResponse")
	local t = { 
		["TrafficPolicy"] = TrafficPolicy,
		["Location"] = Location,
	}
	M.AssertCreateTrafficPolicyResponse(t)
	return t
end

local GetTrafficPolicyInstanceResponse_keys = { "TrafficPolicyInstance" = true, nil }

function M.AssertGetTrafficPolicyInstanceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTrafficPolicyInstanceResponse to be of type 'table'")
	assert(struct["TrafficPolicyInstance"], "Expected key TrafficPolicyInstance to exist in table")
	if struct["TrafficPolicyInstance"] then M.AssertTrafficPolicyInstance(struct["TrafficPolicyInstance"]) end
	for k,_ in pairs(struct) do
		assert(GetTrafficPolicyInstanceResponse_keys[k], "GetTrafficPolicyInstanceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTrafficPolicyInstanceResponse
-- &lt;p&gt;A complex type that contains information about the resource record sets that Amazon Route 53 created based on a specified traffic policy.&lt;/p&gt;
-- @param TrafficPolicyInstance [TrafficPolicyInstance] &lt;p&gt;A complex type that contains settings for the traffic policy instance.&lt;/p&gt;
-- Required parameter: TrafficPolicyInstance
function M.GetTrafficPolicyInstanceResponse(TrafficPolicyInstance, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetTrafficPolicyInstanceResponse")
	local t = { 
		["TrafficPolicyInstance"] = TrafficPolicyInstance,
	}
	M.AssertGetTrafficPolicyInstanceResponse(t)
	return t
end

local DeleteHostedZoneRequest_keys = { "Id" = true, nil }

function M.AssertDeleteHostedZoneRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteHostedZoneRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then M.AssertResourceId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(DeleteHostedZoneRequest_keys[k], "DeleteHostedZoneRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteHostedZoneRequest
-- &lt;p&gt;A request to delete a hosted zone.&lt;/p&gt;
-- @param Id [ResourceId] &lt;p&gt;The ID of the hosted zone you want to delete.&lt;/p&gt;
-- Required parameter: Id
function M.DeleteHostedZoneRequest(Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteHostedZoneRequest")
	local t = { 
		["Id"] = Id,
	}
	M.AssertDeleteHostedZoneRequest(t)
	return t
end

local AlarmIdentifier_keys = { "Region" = true, "Name" = true, nil }

function M.AssertAlarmIdentifier(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AlarmIdentifier to be of type 'table'")
	assert(struct["Region"], "Expected key Region to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Region"] then M.AssertCloudWatchRegion(struct["Region"]) end
	if struct["Name"] then M.AssertAlarmName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(AlarmIdentifier_keys[k], "AlarmIdentifier contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AlarmIdentifier
-- &lt;p&gt;A complex type that identifies the CloudWatch alarm that you want Amazon Route 53 health checkers to use to determine whether this health check is healthy.&lt;/p&gt;
-- @param Region [CloudWatchRegion] &lt;p&gt;A complex type that identifies the CloudWatch alarm that you want Amazon Route 53 health checkers to use to determine whether this health check is healthy.&lt;/p&gt; &lt;p&gt;For the current list of CloudWatch regions, see &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/rande.html#cw_region&quot;&gt;Amazon CloudWatch&lt;/a&gt; in the &lt;i&gt;AWS Regions and Endpoints&lt;/i&gt; chapter of the &lt;i&gt;Amazon Web Services General Reference&lt;/i&gt;.&lt;/p&gt;
-- @param Name [AlarmName] &lt;p&gt;The name of the CloudWatch alarm that you want Amazon Route 53 health checkers to use to determine whether this health check is healthy.&lt;/p&gt;
-- Required parameter: Region
-- Required parameter: Name
function M.AlarmIdentifier(Region, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AlarmIdentifier")
	local t = { 
		["Region"] = Region,
		["Name"] = Name,
	}
	M.AssertAlarmIdentifier(t)
	return t
end

local CreateHealthCheckRequest_keys = { "HealthCheckConfig" = true, "CallerReference" = true, nil }

function M.AssertCreateHealthCheckRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateHealthCheckRequest to be of type 'table'")
	assert(struct["CallerReference"], "Expected key CallerReference to exist in table")
	assert(struct["HealthCheckConfig"], "Expected key HealthCheckConfig to exist in table")
	if struct["HealthCheckConfig"] then M.AssertHealthCheckConfig(struct["HealthCheckConfig"]) end
	if struct["CallerReference"] then M.AssertHealthCheckNonce(struct["CallerReference"]) end
	for k,_ in pairs(struct) do
		assert(CreateHealthCheckRequest_keys[k], "CreateHealthCheckRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateHealthCheckRequest
-- &lt;p&gt;A complex type that contains the health check request information.&lt;/p&gt;
-- @param HealthCheckConfig [HealthCheckConfig] &lt;p&gt;A complex type that contains the response to a &lt;code&gt;CreateHealthCheck&lt;/code&gt; request. &lt;/p&gt;
-- @param CallerReference [HealthCheckNonce] &lt;p&gt;A unique string that identifies the request and that allows you to retry a failed &lt;code&gt;CreateHealthCheck&lt;/code&gt; request without the risk of creating two identical health checks:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;If you send a &lt;code&gt;CreateHealthCheck&lt;/code&gt; request with the same &lt;code&gt;CallerReference&lt;/code&gt; and settings as a previous request, and if the health check doesn't exist, Amazon Route 53 creates the health check. If the health check does exist, Amazon Route 53 returns the settings for the existing health check.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;If you send a &lt;code&gt;CreateHealthCheck&lt;/code&gt; request with the same &lt;code&gt;CallerReference&lt;/code&gt; as a deleted health check, regardless of the settings, Amazon Route 53 returns a &lt;code&gt;HealthCheckAlreadyExists&lt;/code&gt; error.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;If you send a &lt;code&gt;CreateHealthCheck&lt;/code&gt; request with the same &lt;code&gt;CallerReference&lt;/code&gt; as an existing health check but with different settings, Amazon Route 53 returns a &lt;code&gt;HealthCheckAlreadyExists&lt;/code&gt; error.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;If you send a &lt;code&gt;CreateHealthCheck&lt;/code&gt; request with a unique &lt;code&gt;CallerReference&lt;/code&gt; but settings identical to an existing health check, Amazon Route 53 creates the health check.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- Required parameter: CallerReference
-- Required parameter: HealthCheckConfig
function M.CreateHealthCheckRequest(HealthCheckConfig, CallerReference, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateHealthCheckRequest")
	local t = { 
		["HealthCheckConfig"] = HealthCheckConfig,
		["CallerReference"] = CallerReference,
	}
	M.AssertCreateHealthCheckRequest(t)
	return t
end

local ResourceRecord_keys = { "Value" = true, nil }

function M.AssertResourceRecord(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceRecord to be of type 'table'")
	assert(struct["Value"], "Expected key Value to exist in table")
	if struct["Value"] then M.AssertRData(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(ResourceRecord_keys[k], "ResourceRecord contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceRecord
-- &lt;p&gt;Information specific to the resource record.&lt;/p&gt; &lt;note&gt; &lt;p&gt;If you're creating an alias resource record set, omit &lt;code&gt;ResourceRecord&lt;/code&gt;.&lt;/p&gt; &lt;/note&gt;
-- @param Value [RData] &lt;p&gt;The current or new DNS record value, not to exceed 4,000 characters. In the case of a &lt;code&gt;DELETE&lt;/code&gt; action, if the current value does not match the actual value, an error is returned. For descriptions about how to format &lt;code&gt;Value&lt;/code&gt; for different record types, see &lt;a href=&quot;http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/ResourceRecordTypes.html&quot;&gt;Supported DNS Resource Record Types&lt;/a&gt; in the &lt;i&gt;Amazon Route 53 Developer Guide&lt;/i&gt;.&lt;/p&gt; &lt;p&gt;You can specify more than one value for all record types except &lt;code&gt;CNAME&lt;/code&gt; and &lt;code&gt;SOA&lt;/code&gt;. &lt;/p&gt; &lt;note&gt; &lt;p&gt;If you're creating an alias resource record set, omit &lt;code&gt;Value&lt;/code&gt;.&lt;/p&gt; &lt;/note&gt;
-- Required parameter: Value
function M.ResourceRecord(Value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceRecord")
	local t = { 
		["Value"] = Value,
	}
	M.AssertResourceRecord(t)
	return t
end

local ListTagsForResourcesRequest_keys = { "ResourceType" = true, "ResourceIds" = true, nil }

function M.AssertListTagsForResourcesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForResourcesRequest to be of type 'table'")
	assert(struct["ResourceType"], "Expected key ResourceType to exist in table")
	assert(struct["ResourceIds"], "Expected key ResourceIds to exist in table")
	if struct["ResourceType"] then M.AssertTagResourceType(struct["ResourceType"]) end
	if struct["ResourceIds"] then M.AssertTagResourceIdList(struct["ResourceIds"]) end
	for k,_ in pairs(struct) do
		assert(ListTagsForResourcesRequest_keys[k], "ListTagsForResourcesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForResourcesRequest
-- &lt;p&gt;A complex type that contains information about the health checks or hosted zones for which you want to list tags.&lt;/p&gt;
-- @param ResourceType [TagResourceType] &lt;p&gt;The type of the resources.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;The resource type for health checks is &lt;code&gt;healthcheck&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;The resource type for hosted zones is &lt;code&gt;hostedzone&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param ResourceIds [TagResourceIdList] &lt;p&gt;A complex type that contains the ResourceId element for each resource for which you want to get a list of tags.&lt;/p&gt;
-- Required parameter: ResourceType
-- Required parameter: ResourceIds
function M.ListTagsForResourcesRequest(ResourceType, ResourceIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsForResourcesRequest")
	local t = { 
		["ResourceType"] = ResourceType,
		["ResourceIds"] = ResourceIds,
	}
	M.AssertListTagsForResourcesRequest(t)
	return t
end

local ListTrafficPolicyInstancesByPolicyRequest_keys = { "TrafficPolicyInstanceNameMarker" = true, "TrafficPolicyVersion" = true, "HostedZoneIdMarker" = true, "TrafficPolicyId" = true, "MaxItems" = true, "TrafficPolicyInstanceTypeMarker" = true, nil }

function M.AssertListTrafficPolicyInstancesByPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTrafficPolicyInstancesByPolicyRequest to be of type 'table'")
	assert(struct["TrafficPolicyId"], "Expected key TrafficPolicyId to exist in table")
	assert(struct["TrafficPolicyVersion"], "Expected key TrafficPolicyVersion to exist in table")
	if struct["TrafficPolicyInstanceNameMarker"] then M.AssertDNSName(struct["TrafficPolicyInstanceNameMarker"]) end
	if struct["TrafficPolicyVersion"] then M.AssertTrafficPolicyVersion(struct["TrafficPolicyVersion"]) end
	if struct["HostedZoneIdMarker"] then M.AssertResourceId(struct["HostedZoneIdMarker"]) end
	if struct["TrafficPolicyId"] then M.AssertTrafficPolicyId(struct["TrafficPolicyId"]) end
	if struct["MaxItems"] then M.AssertPageMaxItems(struct["MaxItems"]) end
	if struct["TrafficPolicyInstanceTypeMarker"] then M.AssertRRType(struct["TrafficPolicyInstanceTypeMarker"]) end
	for k,_ in pairs(struct) do
		assert(ListTrafficPolicyInstancesByPolicyRequest_keys[k], "ListTrafficPolicyInstancesByPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTrafficPolicyInstancesByPolicyRequest
-- &lt;p&gt;A complex type that contains the information about the request to list your traffic policy instances.&lt;/p&gt;
-- @param TrafficPolicyInstanceNameMarker [DNSName] &lt;p&gt;If the value of &lt;code&gt;IsTruncated&lt;/code&gt; in the previous response was &lt;code&gt;true&lt;/code&gt;, you have more traffic policy instances. To get more traffic policy instances, submit another &lt;code&gt;ListTrafficPolicyInstancesByPolicy&lt;/code&gt; request.&lt;/p&gt; &lt;p&gt;For the value of &lt;code&gt;trafficpolicyinstancename&lt;/code&gt;, specify the value of &lt;code&gt;TrafficPolicyInstanceNameMarker&lt;/code&gt; from the previous response, which is the name of the first traffic policy instance that Amazon Route 53 will return if you submit another request.&lt;/p&gt; &lt;p&gt;If the value of &lt;code&gt;IsTruncated&lt;/code&gt; in the previous response was &lt;code&gt;false&lt;/code&gt;, there are no more traffic policy instances to get.&lt;/p&gt;
-- @param TrafficPolicyVersion [TrafficPolicyVersion] &lt;p&gt;The version of the traffic policy for which you want to list traffic policy instances. The version must be associated with the traffic policy that is specified by &lt;code&gt;TrafficPolicyId&lt;/code&gt;.&lt;/p&gt;
-- @param HostedZoneIdMarker [ResourceId] &lt;p&gt;If the value of &lt;code&gt;IsTruncated&lt;/code&gt; in the previous response was &lt;code&gt;true&lt;/code&gt;, you have more traffic policy instances. To get more traffic policy instances, submit another &lt;code&gt;ListTrafficPolicyInstancesByPolicy&lt;/code&gt; request. &lt;/p&gt; &lt;p&gt;For the value of &lt;code&gt;hostedzoneid&lt;/code&gt;, specify the value of &lt;code&gt;HostedZoneIdMarker&lt;/code&gt; from the previous response, which is the hosted zone ID of the first traffic policy instance that Amazon Route 53 will return if you submit another request.&lt;/p&gt; &lt;p&gt;If the value of &lt;code&gt;IsTruncated&lt;/code&gt; in the previous response was &lt;code&gt;false&lt;/code&gt;, there are no more traffic policy instances to get.&lt;/p&gt;
-- @param TrafficPolicyId [TrafficPolicyId] &lt;p&gt;The ID of the traffic policy for which you want to list traffic policy instances.&lt;/p&gt;
-- @param MaxItems [PageMaxItems] &lt;p&gt;The maximum number of traffic policy instances to be included in the response body for this request. If you have more than &lt;code&gt;MaxItems&lt;/code&gt; traffic policy instances, the value of the &lt;code&gt;IsTruncated&lt;/code&gt; element in the response is &lt;code&gt;true&lt;/code&gt;, and the values of &lt;code&gt;HostedZoneIdMarker&lt;/code&gt;, &lt;code&gt;TrafficPolicyInstanceNameMarker&lt;/code&gt;, and &lt;code&gt;TrafficPolicyInstanceTypeMarker&lt;/code&gt; represent the first traffic policy instance that Amazon Route 53 will return if you submit another request.&lt;/p&gt;
-- @param TrafficPolicyInstanceTypeMarker [RRType] &lt;p&gt;If the value of &lt;code&gt;IsTruncated&lt;/code&gt; in the previous response was &lt;code&gt;true&lt;/code&gt;, you have more traffic policy instances. To get more traffic policy instances, submit another &lt;code&gt;ListTrafficPolicyInstancesByPolicy&lt;/code&gt; request.&lt;/p&gt; &lt;p&gt;For the value of &lt;code&gt;trafficpolicyinstancetype&lt;/code&gt;, specify the value of &lt;code&gt;TrafficPolicyInstanceTypeMarker&lt;/code&gt; from the previous response, which is the name of the first traffic policy instance that Amazon Route 53 will return if you submit another request.&lt;/p&gt; &lt;p&gt;If the value of &lt;code&gt;IsTruncated&lt;/code&gt; in the previous response was &lt;code&gt;false&lt;/code&gt;, there are no more traffic policy instances to get.&lt;/p&gt;
-- Required parameter: TrafficPolicyId
-- Required parameter: TrafficPolicyVersion
function M.ListTrafficPolicyInstancesByPolicyRequest(TrafficPolicyInstanceNameMarker, TrafficPolicyVersion, HostedZoneIdMarker, TrafficPolicyId, MaxItems, TrafficPolicyInstanceTypeMarker, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTrafficPolicyInstancesByPolicyRequest")
	local t = { 
		["TrafficPolicyInstanceNameMarker"] = TrafficPolicyInstanceNameMarker,
		["TrafficPolicyVersion"] = TrafficPolicyVersion,
		["HostedZoneIdMarker"] = HostedZoneIdMarker,
		["TrafficPolicyId"] = TrafficPolicyId,
		["MaxItems"] = MaxItems,
		["TrafficPolicyInstanceTypeMarker"] = TrafficPolicyInstanceTypeMarker,
	}
	M.AssertListTrafficPolicyInstancesByPolicyRequest(t)
	return t
end

local GetChangeResponse_keys = { "ChangeInfo" = true, nil }

function M.AssertGetChangeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetChangeResponse to be of type 'table'")
	assert(struct["ChangeInfo"], "Expected key ChangeInfo to exist in table")
	if struct["ChangeInfo"] then M.AssertChangeInfo(struct["ChangeInfo"]) end
	for k,_ in pairs(struct) do
		assert(GetChangeResponse_keys[k], "GetChangeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetChangeResponse
-- &lt;p&gt;A complex type that contains the &lt;code&gt;ChangeInfo&lt;/code&gt; element.&lt;/p&gt;
-- @param ChangeInfo [ChangeInfo] &lt;p&gt;A complex type that contains information about the specified change batch.&lt;/p&gt;
-- Required parameter: ChangeInfo
function M.GetChangeResponse(ChangeInfo, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetChangeResponse")
	local t = { 
		["ChangeInfo"] = ChangeInfo,
	}
	M.AssertGetChangeResponse(t)
	return t
end

local PublicZoneVPCAssociation_keys = { "message" = true, nil }

function M.AssertPublicZoneVPCAssociation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PublicZoneVPCAssociation to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(PublicZoneVPCAssociation_keys[k], "PublicZoneVPCAssociation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PublicZoneVPCAssociation
-- &lt;p&gt;You're trying to associate a VPC with a public hosted zone. Amazon Route 53 doesn't support associating a VPC with a public hosted zone.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;Descriptive message for the error response.&lt;/p&gt;
function M.PublicZoneVPCAssociation(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PublicZoneVPCAssociation")
	local t = { 
		["message"] = message,
	}
	M.AssertPublicZoneVPCAssociation(t)
	return t
end

local InvalidArgument_keys = { "message" = true, nil }

function M.AssertInvalidArgument(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidArgument to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidArgument_keys[k], "InvalidArgument contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidArgument
-- &lt;p&gt;Parameter name is invalid.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;Descriptive message for the error response.&lt;/p&gt;
function M.InvalidArgument(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidArgument")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidArgument(t)
	return t
end

local ListTrafficPolicyInstancesByPolicyResponse_keys = { "TrafficPolicyInstanceNameMarker" = true, "HostedZoneIdMarker" = true, "TrafficPolicyInstances" = true, "MaxItems" = true, "TrafficPolicyInstanceTypeMarker" = true, "IsTruncated" = true, nil }

function M.AssertListTrafficPolicyInstancesByPolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTrafficPolicyInstancesByPolicyResponse to be of type 'table'")
	assert(struct["TrafficPolicyInstances"], "Expected key TrafficPolicyInstances to exist in table")
	assert(struct["IsTruncated"], "Expected key IsTruncated to exist in table")
	assert(struct["MaxItems"], "Expected key MaxItems to exist in table")
	if struct["TrafficPolicyInstanceNameMarker"] then M.AssertDNSName(struct["TrafficPolicyInstanceNameMarker"]) end
	if struct["HostedZoneIdMarker"] then M.AssertResourceId(struct["HostedZoneIdMarker"]) end
	if struct["TrafficPolicyInstances"] then M.AssertTrafficPolicyInstances(struct["TrafficPolicyInstances"]) end
	if struct["MaxItems"] then M.AssertPageMaxItems(struct["MaxItems"]) end
	if struct["TrafficPolicyInstanceTypeMarker"] then M.AssertRRType(struct["TrafficPolicyInstanceTypeMarker"]) end
	if struct["IsTruncated"] then M.AssertPageTruncated(struct["IsTruncated"]) end
	for k,_ in pairs(struct) do
		assert(ListTrafficPolicyInstancesByPolicyResponse_keys[k], "ListTrafficPolicyInstancesByPolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTrafficPolicyInstancesByPolicyResponse
-- &lt;p&gt;A complex type that contains the response information for the request.&lt;/p&gt;
-- @param TrafficPolicyInstanceNameMarker [DNSName] &lt;p&gt;If &lt;code&gt;IsTruncated&lt;/code&gt; is &lt;code&gt;true&lt;/code&gt;, &lt;code&gt;TrafficPolicyInstanceNameMarker&lt;/code&gt; is the name of the first traffic policy instance in the next group of &lt;code&gt;MaxItems&lt;/code&gt; traffic policy instances.&lt;/p&gt;
-- @param HostedZoneIdMarker [ResourceId] &lt;p&gt;If &lt;code&gt;IsTruncated&lt;/code&gt; is &lt;code&gt;true&lt;/code&gt;, &lt;code&gt;HostedZoneIdMarker&lt;/code&gt; is the ID of the hosted zone of the first traffic policy instance in the next group of traffic policy instances.&lt;/p&gt;
-- @param TrafficPolicyInstances [TrafficPolicyInstances] &lt;p&gt;A list that contains one &lt;code&gt;TrafficPolicyInstance&lt;/code&gt; element for each traffic policy instance that matches the elements in the request.&lt;/p&gt;
-- @param MaxItems [PageMaxItems] &lt;p&gt;The value that you specified for the &lt;code&gt;MaxItems&lt;/code&gt; parameter in the call to &lt;code&gt;ListTrafficPolicyInstancesByPolicy&lt;/code&gt; that produced the current response.&lt;/p&gt;
-- @param TrafficPolicyInstanceTypeMarker [RRType] &lt;p&gt;If &lt;code&gt;IsTruncated&lt;/code&gt; is &lt;code&gt;true&lt;/code&gt;, &lt;code&gt;TrafficPolicyInstanceTypeMarker&lt;/code&gt; is the DNS type of the resource record sets that are associated with the first traffic policy instance in the next group of &lt;code&gt;MaxItems&lt;/code&gt; traffic policy instances.&lt;/p&gt;
-- @param IsTruncated [PageTruncated] &lt;p&gt;A flag that indicates whether there are more traffic policy instances to be listed. If the response was truncated, you can get the next group of traffic policy instances by calling &lt;code&gt;ListTrafficPolicyInstancesByPolicy&lt;/code&gt; again and specifying the values of the &lt;code&gt;HostedZoneIdMarker&lt;/code&gt;, &lt;code&gt;TrafficPolicyInstanceNameMarker&lt;/code&gt;, and &lt;code&gt;TrafficPolicyInstanceTypeMarker&lt;/code&gt; elements in the corresponding request parameters.&lt;/p&gt;
-- Required parameter: TrafficPolicyInstances
-- Required parameter: IsTruncated
-- Required parameter: MaxItems
function M.ListTrafficPolicyInstancesByPolicyResponse(TrafficPolicyInstanceNameMarker, HostedZoneIdMarker, TrafficPolicyInstances, MaxItems, TrafficPolicyInstanceTypeMarker, IsTruncated, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTrafficPolicyInstancesByPolicyResponse")
	local t = { 
		["TrafficPolicyInstanceNameMarker"] = TrafficPolicyInstanceNameMarker,
		["HostedZoneIdMarker"] = HostedZoneIdMarker,
		["TrafficPolicyInstances"] = TrafficPolicyInstances,
		["MaxItems"] = MaxItems,
		["TrafficPolicyInstanceTypeMarker"] = TrafficPolicyInstanceTypeMarker,
		["IsTruncated"] = IsTruncated,
	}
	M.AssertListTrafficPolicyInstancesByPolicyResponse(t)
	return t
end

local GetGeoLocationResponse_keys = { "GeoLocationDetails" = true, nil }

function M.AssertGetGeoLocationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetGeoLocationResponse to be of type 'table'")
	assert(struct["GeoLocationDetails"], "Expected key GeoLocationDetails to exist in table")
	if struct["GeoLocationDetails"] then M.AssertGeoLocationDetails(struct["GeoLocationDetails"]) end
	for k,_ in pairs(struct) do
		assert(GetGeoLocationResponse_keys[k], "GetGeoLocationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetGeoLocationResponse
-- &lt;p&gt;A complex type that contains the response information for the specified geolocation code.&lt;/p&gt;
-- @param GeoLocationDetails [GeoLocationDetails] &lt;p&gt;A complex type that contains the codes and full continent, country, and subdivision names for the specified geolocation code.&lt;/p&gt;
-- Required parameter: GeoLocationDetails
function M.GetGeoLocationResponse(GeoLocationDetails, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetGeoLocationResponse")
	local t = { 
		["GeoLocationDetails"] = GeoLocationDetails,
	}
	M.AssertGetGeoLocationResponse(t)
	return t
end

local UpdateTrafficPolicyInstanceRequest_keys = { "TrafficPolicyId" = true, "TrafficPolicyVersion" = true, "Id" = true, "TTL" = true, nil }

function M.AssertUpdateTrafficPolicyInstanceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateTrafficPolicyInstanceRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["TTL"], "Expected key TTL to exist in table")
	assert(struct["TrafficPolicyId"], "Expected key TrafficPolicyId to exist in table")
	assert(struct["TrafficPolicyVersion"], "Expected key TrafficPolicyVersion to exist in table")
	if struct["TrafficPolicyId"] then M.AssertTrafficPolicyId(struct["TrafficPolicyId"]) end
	if struct["TrafficPolicyVersion"] then M.AssertTrafficPolicyVersion(struct["TrafficPolicyVersion"]) end
	if struct["Id"] then M.AssertTrafficPolicyInstanceId(struct["Id"]) end
	if struct["TTL"] then M.AssertTTL(struct["TTL"]) end
	for k,_ in pairs(struct) do
		assert(UpdateTrafficPolicyInstanceRequest_keys[k], "UpdateTrafficPolicyInstanceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateTrafficPolicyInstanceRequest
-- &lt;p&gt;A complex type that contains information about the resource record sets that you want to update based on a specified traffic policy instance.&lt;/p&gt;
-- @param TrafficPolicyId [TrafficPolicyId] &lt;p&gt;The ID of the traffic policy that you want Amazon Route 53 to use to update resource record sets for the specified traffic policy instance.&lt;/p&gt;
-- @param TrafficPolicyVersion [TrafficPolicyVersion] &lt;p&gt;The version of the traffic policy that you want Amazon Route 53 to use to update resource record sets for the specified traffic policy instance.&lt;/p&gt;
-- @param Id [TrafficPolicyInstanceId] &lt;p&gt;The ID of the traffic policy instance that you want to update.&lt;/p&gt;
-- @param TTL [TTL] &lt;p&gt;The TTL that you want Amazon Route 53 to assign to all of the updated resource record sets.&lt;/p&gt;
-- Required parameter: Id
-- Required parameter: TTL
-- Required parameter: TrafficPolicyId
-- Required parameter: TrafficPolicyVersion
function M.UpdateTrafficPolicyInstanceRequest(TrafficPolicyId, TrafficPolicyVersion, Id, TTL, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateTrafficPolicyInstanceRequest")
	local t = { 
		["TrafficPolicyId"] = TrafficPolicyId,
		["TrafficPolicyVersion"] = TrafficPolicyVersion,
		["Id"] = Id,
		["TTL"] = TTL,
	}
	M.AssertUpdateTrafficPolicyInstanceRequest(t)
	return t
end

local ListTrafficPoliciesRequest_keys = { "TrafficPolicyIdMarker" = true, "MaxItems" = true, nil }

function M.AssertListTrafficPoliciesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTrafficPoliciesRequest to be of type 'table'")
	if struct["TrafficPolicyIdMarker"] then M.AssertTrafficPolicyId(struct["TrafficPolicyIdMarker"]) end
	if struct["MaxItems"] then M.AssertPageMaxItems(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(ListTrafficPoliciesRequest_keys[k], "ListTrafficPoliciesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTrafficPoliciesRequest
-- &lt;p&gt;A complex type that contains the information about the request to list the traffic policies that are associated with the current AWS account.&lt;/p&gt;
-- @param TrafficPolicyIdMarker [TrafficPolicyId] &lt;p&gt;(Conditional) For your first request to &lt;code&gt;ListTrafficPolicies&lt;/code&gt;, don't include the &lt;code&gt;TrafficPolicyIdMarker&lt;/code&gt; parameter.&lt;/p&gt; &lt;p&gt;If you have more traffic policies than the value of &lt;code&gt;MaxItems&lt;/code&gt;, &lt;code&gt;ListTrafficPolicies&lt;/code&gt; returns only the first &lt;code&gt;MaxItems&lt;/code&gt; traffic policies. To get the next group of policies, submit another request to &lt;code&gt;ListTrafficPolicies&lt;/code&gt;. For the value of &lt;code&gt;TrafficPolicyIdMarker&lt;/code&gt;, specify the value of &lt;code&gt;TrafficPolicyIdMarker&lt;/code&gt; that was returned in the previous response.&lt;/p&gt;
-- @param MaxItems [PageMaxItems] &lt;p&gt;(Optional) The maximum number of traffic policies that you want Amazon Route 53 to return in response to this request. If you have more than &lt;code&gt;MaxItems&lt;/code&gt; traffic policies, the value of &lt;code&gt;IsTruncated&lt;/code&gt; in the response is &lt;code&gt;true&lt;/code&gt;, and the value of &lt;code&gt;TrafficPolicyIdMarker&lt;/code&gt; is the ID of the first traffic policy that Amazon Route 53 will return if you submit another request.&lt;/p&gt;
function M.ListTrafficPoliciesRequest(TrafficPolicyIdMarker, MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTrafficPoliciesRequest")
	local t = { 
		["TrafficPolicyIdMarker"] = TrafficPolicyIdMarker,
		["MaxItems"] = MaxItems,
	}
	M.AssertListTrafficPoliciesRequest(t)
	return t
end

local DelegationSetNotAvailable_keys = { "message" = true, nil }

function M.AssertDelegationSetNotAvailable(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DelegationSetNotAvailable to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(DelegationSetNotAvailable_keys[k], "DelegationSetNotAvailable contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DelegationSetNotAvailable
-- &lt;p&gt;You can create a hosted zone that has the same name as an existing hosted zone (example.com is common), but there is a limit to the number of hosted zones that have the same name. If you get this error, Amazon Route 53 has reached that limit. If you own the domain name and Amazon Route 53 generates this error, contact Customer Support.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;Descriptive message for the error response.&lt;/p&gt;
function M.DelegationSetNotAvailable(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DelegationSetNotAvailable")
	local t = { 
		["message"] = message,
	}
	M.AssertDelegationSetNotAvailable(t)
	return t
end

local DeleteHealthCheckRequest_keys = { "HealthCheckId" = true, nil }

function M.AssertDeleteHealthCheckRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteHealthCheckRequest to be of type 'table'")
	assert(struct["HealthCheckId"], "Expected key HealthCheckId to exist in table")
	if struct["HealthCheckId"] then M.AssertHealthCheckId(struct["HealthCheckId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteHealthCheckRequest_keys[k], "DeleteHealthCheckRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteHealthCheckRequest
-- &lt;p&gt;This action deletes a health check.&lt;/p&gt;
-- @param HealthCheckId [HealthCheckId] &lt;p&gt;The ID of the health check that you want to delete.&lt;/p&gt;
-- Required parameter: HealthCheckId
function M.DeleteHealthCheckRequest(HealthCheckId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteHealthCheckRequest")
	local t = { 
		["HealthCheckId"] = HealthCheckId,
	}
	M.AssertDeleteHealthCheckRequest(t)
	return t
end

local StatusReport_keys = { "Status" = true, "CheckedTime" = true, nil }

function M.AssertStatusReport(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StatusReport to be of type 'table'")
	if struct["Status"] then M.AssertStatus(struct["Status"]) end
	if struct["CheckedTime"] then M.AssertTimeStamp(struct["CheckedTime"]) end
	for k,_ in pairs(struct) do
		assert(StatusReport_keys[k], "StatusReport contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StatusReport
-- &lt;p&gt;A complex type that contains the status that one Amazon Route 53 health checker reports and the time of the health check.&lt;/p&gt;
-- @param Status [Status] &lt;p&gt;A description of the status of the health check endpoint as reported by one of the Amazon Route 53 health checkers.&lt;/p&gt;
-- @param CheckedTime [TimeStamp] &lt;p&gt;The date and time that the health checker performed the health check in &lt;a href=&quot;https://en.wikipedia.org/wiki/ISO_8601&quot;&gt;ISO 8601 format&lt;/a&gt; and Coordinated Universal Time (UTC). For example, the value &lt;code&gt;2017-03-27T17:48:16.751Z&lt;/code&gt; represents March 27, 2017 at 17:48:16.751 UTC.&lt;/p&gt;
function M.StatusReport(Status, CheckedTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StatusReport")
	local t = { 
		["Status"] = Status,
		["CheckedTime"] = CheckedTime,
	}
	M.AssertStatusReport(t)
	return t
end

local GetHostedZoneRequest_keys = { "Id" = true, nil }

function M.AssertGetHostedZoneRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetHostedZoneRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then M.AssertResourceId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(GetHostedZoneRequest_keys[k], "GetHostedZoneRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetHostedZoneRequest
-- &lt;p&gt;A request to get information about a specified hosted zone. &lt;/p&gt;
-- @param Id [ResourceId] &lt;p&gt;The ID of the hosted zone that you want to get information about.&lt;/p&gt;
-- Required parameter: Id
function M.GetHostedZoneRequest(Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetHostedZoneRequest")
	local t = { 
		["Id"] = Id,
	}
	M.AssertGetHostedZoneRequest(t)
	return t
end

local DeleteTrafficPolicyResponse_keys = { nil }

function M.AssertDeleteTrafficPolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTrafficPolicyResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteTrafficPolicyResponse_keys[k], "DeleteTrafficPolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTrafficPolicyResponse
-- &lt;p&gt;An empty element.&lt;/p&gt;
function M.DeleteTrafficPolicyResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteTrafficPolicyResponse")
	local t = { 
	}
	M.AssertDeleteTrafficPolicyResponse(t)
	return t
end

local ListReusableDelegationSetsResponse_keys = { "Marker" = true, "DelegationSets" = true, "IsTruncated" = true, "MaxItems" = true, "NextMarker" = true, nil }

function M.AssertListReusableDelegationSetsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListReusableDelegationSetsResponse to be of type 'table'")
	assert(struct["DelegationSets"], "Expected key DelegationSets to exist in table")
	assert(struct["Marker"], "Expected key Marker to exist in table")
	assert(struct["IsTruncated"], "Expected key IsTruncated to exist in table")
	assert(struct["MaxItems"], "Expected key MaxItems to exist in table")
	if struct["Marker"] then M.AssertPageMarker(struct["Marker"]) end
	if struct["DelegationSets"] then M.AssertDelegationSets(struct["DelegationSets"]) end
	if struct["IsTruncated"] then M.AssertPageTruncated(struct["IsTruncated"]) end
	if struct["MaxItems"] then M.AssertPageMaxItems(struct["MaxItems"]) end
	if struct["NextMarker"] then M.AssertPageMarker(struct["NextMarker"]) end
	for k,_ in pairs(struct) do
		assert(ListReusableDelegationSetsResponse_keys[k], "ListReusableDelegationSetsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListReusableDelegationSetsResponse
-- &lt;p&gt;A complex type that contains information about the reusable delegation sets that are associated with the current AWS account.&lt;/p&gt;
-- @param Marker [PageMarker] &lt;p&gt;For the second and subsequent calls to &lt;code&gt;ListReusableDelegationSets&lt;/code&gt;, &lt;code&gt;Marker&lt;/code&gt; is the value that you specified for the &lt;code&gt;marker&lt;/code&gt; parameter in the request that produced the current response.&lt;/p&gt;
-- @param DelegationSets [DelegationSets] &lt;p&gt;A complex type that contains one &lt;code&gt;DelegationSet&lt;/code&gt; element for each reusable delegation set that was created by the current AWS account.&lt;/p&gt;
-- @param IsTruncated [PageTruncated] &lt;p&gt;A flag that indicates whether there are more reusable delegation sets to be listed.&lt;/p&gt;
-- @param MaxItems [PageMaxItems] &lt;p&gt;The value that you specified for the &lt;code&gt;maxitems&lt;/code&gt; parameter in the call to &lt;code&gt;ListReusableDelegationSets&lt;/code&gt; that produced the current response.&lt;/p&gt;
-- @param NextMarker [PageMarker] &lt;p&gt;If &lt;code&gt;IsTruncated&lt;/code&gt; is &lt;code&gt;true&lt;/code&gt;, the value of &lt;code&gt;NextMarker&lt;/code&gt; identifies the next reusable delegation set that Amazon Route 53 will return if you submit another &lt;code&gt;ListReusableDelegationSets&lt;/code&gt; request and specify the value of &lt;code&gt;NextMarker&lt;/code&gt; in the &lt;code&gt;marker&lt;/code&gt; parameter.&lt;/p&gt;
-- Required parameter: DelegationSets
-- Required parameter: Marker
-- Required parameter: IsTruncated
-- Required parameter: MaxItems
function M.ListReusableDelegationSetsResponse(Marker, DelegationSets, IsTruncated, MaxItems, NextMarker, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListReusableDelegationSetsResponse")
	local t = { 
		["Marker"] = Marker,
		["DelegationSets"] = DelegationSets,
		["IsTruncated"] = IsTruncated,
		["MaxItems"] = MaxItems,
		["NextMarker"] = NextMarker,
	}
	M.AssertListReusableDelegationSetsResponse(t)
	return t
end

local Change_keys = { "Action" = true, "ResourceRecordSet" = true, nil }

function M.AssertChange(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Change to be of type 'table'")
	assert(struct["Action"], "Expected key Action to exist in table")
	assert(struct["ResourceRecordSet"], "Expected key ResourceRecordSet to exist in table")
	if struct["Action"] then M.AssertChangeAction(struct["Action"]) end
	if struct["ResourceRecordSet"] then M.AssertResourceRecordSet(struct["ResourceRecordSet"]) end
	for k,_ in pairs(struct) do
		assert(Change_keys[k], "Change contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Change
-- &lt;p&gt;The information for each resource record set that you want to change.&lt;/p&gt;
-- @param Action [ChangeAction] &lt;p&gt;The action to perform:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;CREATE&lt;/code&gt;: Creates a resource record set that has the specified values.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;DELETE&lt;/code&gt;: Deletes a existing resource record set.&lt;/p&gt; &lt;important&gt; &lt;p&gt;To delete the resource record set that is associated with a traffic policy instance, use &lt;code&gt; &lt;a&gt;DeleteTrafficPolicyInstance&lt;/a&gt; &lt;/code&gt;. Amazon Route 53 will delete the resource record set automatically. If you delete the resource record set by using &lt;code&gt;ChangeResourceRecordSets&lt;/code&gt;, Amazon Route 53 doesn't automatically delete the traffic policy instance, and you'll continue to be charged for it even though it's no longer in use. &lt;/p&gt; &lt;/important&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;UPSERT&lt;/code&gt;: If a resource record set doesn't already exist, Amazon Route 53 creates it. If a resource record set does exist, Amazon Route 53 updates it with the values in the request.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;The values that you need to include in the request depend on the type of resource record set that you're creating, deleting, or updating:&lt;/p&gt; &lt;p&gt; &lt;b&gt;Basic resource record sets (excluding alias, failover, geolocation, latency, and weighted resource record sets)&lt;/b&gt; &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Name&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Type&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;TTL&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt; &lt;b&gt;Failover, geolocation, latency, or weighted resource record sets (excluding alias resource record sets)&lt;/b&gt; &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Name&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Type&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;TTL&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;SetIdentifier&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt; &lt;b&gt;Alias resource record sets (including failover alias, geolocation alias, latency alias, and weighted alias resource record sets)&lt;/b&gt; &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Name&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Type&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;AliasTarget&lt;/code&gt; (includes &lt;code&gt;DNSName&lt;/code&gt;, &lt;code&gt;EvaluateTargetHealth&lt;/code&gt;, and &lt;code&gt;HostedZoneId&lt;/code&gt;)&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;SetIdentifier&lt;/code&gt; (for failover, geolocation, latency, and weighted resource record sets)&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param ResourceRecordSet [ResourceRecordSet] &lt;p&gt;Information about the resource record set to create, delete, or update.&lt;/p&gt;
-- Required parameter: Action
-- Required parameter: ResourceRecordSet
function M.Change(Action, ResourceRecordSet, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Change")
	local t = { 
		["Action"] = Action,
		["ResourceRecordSet"] = ResourceRecordSet,
	}
	M.AssertChange(t)
	return t
end

local CreateReusableDelegationSetRequest_keys = { "HostedZoneId" = true, "CallerReference" = true, nil }

function M.AssertCreateReusableDelegationSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateReusableDelegationSetRequest to be of type 'table'")
	assert(struct["CallerReference"], "Expected key CallerReference to exist in table")
	if struct["HostedZoneId"] then M.AssertResourceId(struct["HostedZoneId"]) end
	if struct["CallerReference"] then M.AssertNonce(struct["CallerReference"]) end
	for k,_ in pairs(struct) do
		assert(CreateReusableDelegationSetRequest_keys[k], "CreateReusableDelegationSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateReusableDelegationSetRequest
--  
-- @param HostedZoneId [ResourceId] &lt;p&gt;If you want to mark the delegation set for an existing hosted zone as reusable, the ID for that hosted zone.&lt;/p&gt;
-- @param CallerReference [Nonce] &lt;p&gt;A unique string that identifies the request, and that allows you to retry failed &lt;code&gt;CreateReusableDelegationSet&lt;/code&gt; requests without the risk of executing the operation twice. You must use a unique &lt;code&gt;CallerReference&lt;/code&gt; string every time you submit a &lt;code&gt;CreateReusableDelegationSet&lt;/code&gt; request. &lt;code&gt;CallerReference&lt;/code&gt; can be any unique string, for example a date/time stamp.&lt;/p&gt;
-- Required parameter: CallerReference
function M.CreateReusableDelegationSetRequest(HostedZoneId, CallerReference, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateReusableDelegationSetRequest")
	local t = { 
		["HostedZoneId"] = HostedZoneId,
		["CallerReference"] = CallerReference,
	}
	M.AssertCreateReusableDelegationSetRequest(t)
	return t
end

local CreateHostedZoneRequest_keys = { "DelegationSetId" = true, "HostedZoneConfig" = true, "CallerReference" = true, "Name" = true, "VPC" = true, nil }

function M.AssertCreateHostedZoneRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateHostedZoneRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["CallerReference"], "Expected key CallerReference to exist in table")
	if struct["DelegationSetId"] then M.AssertResourceId(struct["DelegationSetId"]) end
	if struct["HostedZoneConfig"] then M.AssertHostedZoneConfig(struct["HostedZoneConfig"]) end
	if struct["CallerReference"] then M.AssertNonce(struct["CallerReference"]) end
	if struct["Name"] then M.AssertDNSName(struct["Name"]) end
	if struct["VPC"] then M.AssertVPC(struct["VPC"]) end
	for k,_ in pairs(struct) do
		assert(CreateHostedZoneRequest_keys[k], "CreateHostedZoneRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateHostedZoneRequest
-- &lt;p&gt;A complex type that contains information about the request to create a hosted zone.&lt;/p&gt;
-- @param DelegationSetId [ResourceId] &lt;p&gt;If you want to associate a reusable delegation set with this hosted zone, the ID that Amazon Route 53 assigned to the reusable delegation set when you created it. For more information about reusable delegation sets, see &lt;a&gt;CreateReusableDelegationSet&lt;/a&gt;.&lt;/p&gt;
-- @param HostedZoneConfig [HostedZoneConfig] &lt;p&gt;(Optional) A complex type that contains the following optional values:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;For public and private hosted zones, an optional comment&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;For private hosted zones, an optional &lt;code&gt;PrivateZone&lt;/code&gt; element&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;If you don't specify a comment or the &lt;code&gt;PrivateZone&lt;/code&gt; element, omit &lt;code&gt;HostedZoneConfig&lt;/code&gt; and the other elements.&lt;/p&gt;
-- @param CallerReference [Nonce] &lt;p&gt;A unique string that identifies the request and that allows failed &lt;code&gt;CreateHostedZone&lt;/code&gt; requests to be retried without the risk of executing the operation twice. You must use a unique &lt;code&gt;CallerReference&lt;/code&gt; string every time you submit a &lt;code&gt;CreateHostedZone&lt;/code&gt; request. &lt;code&gt;CallerReference&lt;/code&gt; can be any unique string, for example, a date/time stamp.&lt;/p&gt;
-- @param Name [DNSName] &lt;p&gt;The name of the domain. For resource record types that include a domain name, specify a fully qualified domain name, for example, &lt;i&gt;www.example.com&lt;/i&gt;. The trailing dot is optional; Amazon Route 53 assumes that the domain name is fully qualified. This means that Amazon Route 53 treats &lt;i&gt;www.example.com&lt;/i&gt; (without a trailing dot) and &lt;i&gt;www.example.com.&lt;/i&gt; (with a trailing dot) as identical.&lt;/p&gt; &lt;p&gt;If you're creating a public hosted zone, this is the name you have registered with your DNS registrar. If your domain name is registered with a registrar other than Amazon Route 53, change the name servers for your domain to the set of &lt;code&gt;NameServers&lt;/code&gt; that &lt;code&gt;CreateHostedZone&lt;/code&gt; returns in &lt;code&gt;DelegationSet&lt;/code&gt;.&lt;/p&gt;
-- @param VPC [VPC] &lt;p&gt;(Private hosted zones only) A complex type that contains information about the Amazon VPC that you're associating with this hosted zone.&lt;/p&gt; &lt;p&gt;You can specify only one Amazon VPC when you create a private hosted zone. To associate additional Amazon VPCs with the hosted zone, use &lt;a&gt;AssociateVPCWithHostedZone&lt;/a&gt; after you create a hosted zone.&lt;/p&gt;
-- Required parameter: Name
-- Required parameter: CallerReference
function M.CreateHostedZoneRequest(DelegationSetId, HostedZoneConfig, CallerReference, Name, VPC, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateHostedZoneRequest")
	local t = { 
		["DelegationSetId"] = DelegationSetId,
		["HostedZoneConfig"] = HostedZoneConfig,
		["CallerReference"] = CallerReference,
		["Name"] = Name,
		["VPC"] = VPC,
	}
	M.AssertCreateHostedZoneRequest(t)
	return t
end

local DelegationSetInUse_keys = { "message" = true, nil }

function M.AssertDelegationSetInUse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DelegationSetInUse to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(DelegationSetInUse_keys[k], "DelegationSetInUse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DelegationSetInUse
-- &lt;p&gt;The specified delegation contains associated hosted zones which must be deleted before the reusable delegation set can be deleted.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;Descriptive message for the error response.&lt;/p&gt;
function M.DelegationSetInUse(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DelegationSetInUse")
	local t = { 
		["message"] = message,
	}
	M.AssertDelegationSetInUse(t)
	return t
end

local GetHealthCheckCountResponse_keys = { "HealthCheckCount" = true, nil }

function M.AssertGetHealthCheckCountResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetHealthCheckCountResponse to be of type 'table'")
	assert(struct["HealthCheckCount"], "Expected key HealthCheckCount to exist in table")
	if struct["HealthCheckCount"] then M.AssertHealthCheckCount(struct["HealthCheckCount"]) end
	for k,_ in pairs(struct) do
		assert(GetHealthCheckCountResponse_keys[k], "GetHealthCheckCountResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetHealthCheckCountResponse
-- &lt;p&gt;A complex type that contains the response to a &lt;code&gt;GetHealthCheckCount&lt;/code&gt; request.&lt;/p&gt;
-- @param HealthCheckCount [HealthCheckCount] &lt;p&gt;The number of health checks associated with the current AWS account.&lt;/p&gt;
-- Required parameter: HealthCheckCount
function M.GetHealthCheckCountResponse(HealthCheckCount, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetHealthCheckCountResponse")
	local t = { 
		["HealthCheckCount"] = HealthCheckCount,
	}
	M.AssertGetHealthCheckCountResponse(t)
	return t
end

local InvalidChangeBatch_keys = { "messages" = true, nil }

function M.AssertInvalidChangeBatch(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidChangeBatch to be of type 'table'")
	if struct["messages"] then M.AssertErrorMessages(struct["messages"]) end
	for k,_ in pairs(struct) do
		assert(InvalidChangeBatch_keys[k], "InvalidChangeBatch contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidChangeBatch
-- &lt;p&gt;This exception contains a list of messages that might contain one or more error messages. Each error message indicates one error in the change batch.&lt;/p&gt;
-- @param messages [ErrorMessages] &lt;p&gt;Descriptive message for the error response.&lt;/p&gt;
function M.InvalidChangeBatch(messages, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidChangeBatch")
	local t = { 
		["messages"] = messages,
	}
	M.AssertInvalidChangeBatch(t)
	return t
end

local DeleteTrafficPolicyRequest_keys = { "Version" = true, "Id" = true, nil }

function M.AssertDeleteTrafficPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTrafficPolicyRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["Version"], "Expected key Version to exist in table")
	if struct["Version"] then M.AssertTrafficPolicyVersion(struct["Version"]) end
	if struct["Id"] then M.AssertTrafficPolicyId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(DeleteTrafficPolicyRequest_keys[k], "DeleteTrafficPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTrafficPolicyRequest
-- &lt;p&gt;A request to delete a specified traffic policy version.&lt;/p&gt;
-- @param Version [TrafficPolicyVersion] &lt;p&gt;The version number of the traffic policy that you want to delete.&lt;/p&gt;
-- @param Id [TrafficPolicyId] &lt;p&gt;The ID of the traffic policy that you want to delete.&lt;/p&gt;
-- Required parameter: Id
-- Required parameter: Version
function M.DeleteTrafficPolicyRequest(Version, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteTrafficPolicyRequest")
	local t = { 
		["Version"] = Version,
		["Id"] = Id,
	}
	M.AssertDeleteTrafficPolicyRequest(t)
	return t
end

local UpdateHostedZoneCommentRequest_keys = { "Comment" = true, "Id" = true, nil }

function M.AssertUpdateHostedZoneCommentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateHostedZoneCommentRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Comment"] then M.AssertResourceDescription(struct["Comment"]) end
	if struct["Id"] then M.AssertResourceId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(UpdateHostedZoneCommentRequest_keys[k], "UpdateHostedZoneCommentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateHostedZoneCommentRequest
-- &lt;p&gt;A request to update the comment for a hosted zone.&lt;/p&gt;
-- @param Comment [ResourceDescription] &lt;p&gt;The new comment for the hosted zone. If you don't specify a value for &lt;code&gt;Comment&lt;/code&gt;, Amazon Route 53 deletes the existing value of the &lt;code&gt;Comment&lt;/code&gt; element, if any.&lt;/p&gt;
-- @param Id [ResourceId] &lt;p&gt;The ID for the hosted zone that you want to update the comment for.&lt;/p&gt;
-- Required parameter: Id
function M.UpdateHostedZoneCommentRequest(Comment, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateHostedZoneCommentRequest")
	local t = { 
		["Comment"] = Comment,
		["Id"] = Id,
	}
	M.AssertUpdateHostedZoneCommentRequest(t)
	return t
end

local ConcurrentModification_keys = { "message" = true, nil }

function M.AssertConcurrentModification(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConcurrentModification to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ConcurrentModification_keys[k], "ConcurrentModification contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConcurrentModification
-- &lt;p&gt;Another user submitted a request to update the object at the same time that you did. Retry the request. &lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;Descriptive message for the error response.&lt;/p&gt;
function M.ConcurrentModification(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConcurrentModification")
	local t = { 
		["message"] = message,
	}
	M.AssertConcurrentModification(t)
	return t
end

local GetHealthCheckStatusResponse_keys = { "HealthCheckObservations" = true, nil }

function M.AssertGetHealthCheckStatusResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetHealthCheckStatusResponse to be of type 'table'")
	assert(struct["HealthCheckObservations"], "Expected key HealthCheckObservations to exist in table")
	if struct["HealthCheckObservations"] then M.AssertHealthCheckObservations(struct["HealthCheckObservations"]) end
	for k,_ in pairs(struct) do
		assert(GetHealthCheckStatusResponse_keys[k], "GetHealthCheckStatusResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetHealthCheckStatusResponse
-- &lt;p&gt;A complex type that contains the response to a &lt;code&gt;GetHealthCheck&lt;/code&gt; request.&lt;/p&gt;
-- @param HealthCheckObservations [HealthCheckObservations] &lt;p&gt;A list that contains one &lt;code&gt;HealthCheckObservation&lt;/code&gt; element for each Amazon Route 53 health checker that is reporting a status about the health check endpoint.&lt;/p&gt;
-- Required parameter: HealthCheckObservations
function M.GetHealthCheckStatusResponse(HealthCheckObservations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetHealthCheckStatusResponse")
	local t = { 
		["HealthCheckObservations"] = HealthCheckObservations,
	}
	M.AssertGetHealthCheckStatusResponse(t)
	return t
end

local GetGeoLocationRequest_keys = { "SubdivisionCode" = true, "CountryCode" = true, "ContinentCode" = true, nil }

function M.AssertGetGeoLocationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetGeoLocationRequest to be of type 'table'")
	if struct["SubdivisionCode"] then M.AssertGeoLocationSubdivisionCode(struct["SubdivisionCode"]) end
	if struct["CountryCode"] then M.AssertGeoLocationCountryCode(struct["CountryCode"]) end
	if struct["ContinentCode"] then M.AssertGeoLocationContinentCode(struct["ContinentCode"]) end
	for k,_ in pairs(struct) do
		assert(GetGeoLocationRequest_keys[k], "GetGeoLocationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetGeoLocationRequest
-- &lt;p&gt;A request for information about whether a specified geographic location is supported for Amazon Route 53 geolocation resource record sets.&lt;/p&gt;
-- @param SubdivisionCode [GeoLocationSubdivisionCode] &lt;p&gt;Amazon Route 53 uses the one- to three-letter subdivision codes that are specified in &lt;a href=&quot;https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2&quot;&gt;ISO standard 3166-1 alpha-2&lt;/a&gt;. Amazon Route 53 doesn't support subdivision codes for all countries. If you specify &lt;code&gt;SubdivisionCode&lt;/code&gt;, you must also specify &lt;code&gt;CountryCode&lt;/code&gt;. &lt;/p&gt;
-- @param CountryCode [GeoLocationCountryCode] &lt;p&gt;Amazon Route 53 uses the two-letter country codes that are specified in &lt;a href=&quot;https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2&quot;&gt;ISO standard 3166-1 alpha-2&lt;/a&gt;.&lt;/p&gt;
-- @param ContinentCode [GeoLocationContinentCode] &lt;p&gt;Amazon Route 53 supports the following continent codes:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;AF&lt;/b&gt;: Africa&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;AN&lt;/b&gt;: Antarctica&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;AS&lt;/b&gt;: Asia&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;EU&lt;/b&gt;: Europe&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;OC&lt;/b&gt;: Oceania&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;NA&lt;/b&gt;: North America&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;SA&lt;/b&gt;: South America&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
function M.GetGeoLocationRequest(SubdivisionCode, CountryCode, ContinentCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetGeoLocationRequest")
	local t = { 
		["SubdivisionCode"] = SubdivisionCode,
		["CountryCode"] = CountryCode,
		["ContinentCode"] = ContinentCode,
	}
	M.AssertGetGeoLocationRequest(t)
	return t
end

local GetTrafficPolicyInstanceCountResponse_keys = { "TrafficPolicyInstanceCount" = true, nil }

function M.AssertGetTrafficPolicyInstanceCountResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTrafficPolicyInstanceCountResponse to be of type 'table'")
	assert(struct["TrafficPolicyInstanceCount"], "Expected key TrafficPolicyInstanceCount to exist in table")
	if struct["TrafficPolicyInstanceCount"] then M.AssertTrafficPolicyInstanceCount(struct["TrafficPolicyInstanceCount"]) end
	for k,_ in pairs(struct) do
		assert(GetTrafficPolicyInstanceCountResponse_keys[k], "GetTrafficPolicyInstanceCountResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTrafficPolicyInstanceCountResponse
-- &lt;p&gt;A complex type that contains information about the resource record sets that Amazon Route 53 created based on a specified traffic policy.&lt;/p&gt;
-- @param TrafficPolicyInstanceCount [TrafficPolicyInstanceCount] &lt;p&gt;The number of traffic policy instances that are associated with the current AWS account.&lt;/p&gt;
-- Required parameter: TrafficPolicyInstanceCount
function M.GetTrafficPolicyInstanceCountResponse(TrafficPolicyInstanceCount, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetTrafficPolicyInstanceCountResponse")
	local t = { 
		["TrafficPolicyInstanceCount"] = TrafficPolicyInstanceCount,
	}
	M.AssertGetTrafficPolicyInstanceCountResponse(t)
	return t
end

local CreateTrafficPolicyInstanceRequest_keys = { "HostedZoneId" = true, "TrafficPolicyVersion" = true, "TrafficPolicyId" = true, "Name" = true, "TTL" = true, nil }

function M.AssertCreateTrafficPolicyInstanceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTrafficPolicyInstanceRequest to be of type 'table'")
	assert(struct["HostedZoneId"], "Expected key HostedZoneId to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["TTL"], "Expected key TTL to exist in table")
	assert(struct["TrafficPolicyId"], "Expected key TrafficPolicyId to exist in table")
	assert(struct["TrafficPolicyVersion"], "Expected key TrafficPolicyVersion to exist in table")
	if struct["HostedZoneId"] then M.AssertResourceId(struct["HostedZoneId"]) end
	if struct["TrafficPolicyVersion"] then M.AssertTrafficPolicyVersion(struct["TrafficPolicyVersion"]) end
	if struct["TrafficPolicyId"] then M.AssertTrafficPolicyId(struct["TrafficPolicyId"]) end
	if struct["Name"] then M.AssertDNSName(struct["Name"]) end
	if struct["TTL"] then M.AssertTTL(struct["TTL"]) end
	for k,_ in pairs(struct) do
		assert(CreateTrafficPolicyInstanceRequest_keys[k], "CreateTrafficPolicyInstanceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTrafficPolicyInstanceRequest
-- &lt;p&gt;A complex type that contains information about the resource record sets that you want to create based on a specified traffic policy.&lt;/p&gt;
-- @param HostedZoneId [ResourceId] &lt;p&gt;The ID of the hosted zone in which you want Amazon Route 53 to create resource record sets by using the configuration in a traffic policy.&lt;/p&gt;
-- @param TrafficPolicyVersion [TrafficPolicyVersion] &lt;p&gt;The version of the traffic policy that you want to use to create resource record sets in the specified hosted zone.&lt;/p&gt;
-- @param TrafficPolicyId [TrafficPolicyId] &lt;p&gt;The ID of the traffic policy that you want to use to create resource record sets in the specified hosted zone.&lt;/p&gt;
-- @param Name [DNSName] &lt;p&gt;The domain name (such as example.com) or subdomain name (such as www.example.com) for which Amazon Route 53 responds to DNS queries by using the resource record sets that Amazon Route 53 creates for this traffic policy instance.&lt;/p&gt;
-- @param TTL [TTL] &lt;p&gt;(Optional) The TTL that you want Amazon Route 53 to assign to all of the resource record sets that it creates in the specified hosted zone.&lt;/p&gt;
-- Required parameter: HostedZoneId
-- Required parameter: Name
-- Required parameter: TTL
-- Required parameter: TrafficPolicyId
-- Required parameter: TrafficPolicyVersion
function M.CreateTrafficPolicyInstanceRequest(HostedZoneId, TrafficPolicyVersion, TrafficPolicyId, Name, TTL, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateTrafficPolicyInstanceRequest")
	local t = { 
		["HostedZoneId"] = HostedZoneId,
		["TrafficPolicyVersion"] = TrafficPolicyVersion,
		["TrafficPolicyId"] = TrafficPolicyId,
		["Name"] = Name,
		["TTL"] = TTL,
	}
	M.AssertCreateTrafficPolicyInstanceRequest(t)
	return t
end

local GetTrafficPolicyInstanceCountRequest_keys = { nil }

function M.AssertGetTrafficPolicyInstanceCountRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTrafficPolicyInstanceCountRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(GetTrafficPolicyInstanceCountRequest_keys[k], "GetTrafficPolicyInstanceCountRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTrafficPolicyInstanceCountRequest
-- &lt;p&gt;Request to get the number of traffic policy instances that are associated with the current AWS account.&lt;/p&gt;
function M.GetTrafficPolicyInstanceCountRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetTrafficPolicyInstanceCountRequest")
	local t = { 
	}
	M.AssertGetTrafficPolicyInstanceCountRequest(t)
	return t
end

local ListHealthChecksResponse_keys = { "Marker" = true, "HealthChecks" = true, "NextMarker" = true, "IsTruncated" = true, "MaxItems" = true, nil }

function M.AssertListHealthChecksResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListHealthChecksResponse to be of type 'table'")
	assert(struct["HealthChecks"], "Expected key HealthChecks to exist in table")
	assert(struct["Marker"], "Expected key Marker to exist in table")
	assert(struct["IsTruncated"], "Expected key IsTruncated to exist in table")
	assert(struct["MaxItems"], "Expected key MaxItems to exist in table")
	if struct["Marker"] then M.AssertPageMarker(struct["Marker"]) end
	if struct["HealthChecks"] then M.AssertHealthChecks(struct["HealthChecks"]) end
	if struct["NextMarker"] then M.AssertPageMarker(struct["NextMarker"]) end
	if struct["IsTruncated"] then M.AssertPageTruncated(struct["IsTruncated"]) end
	if struct["MaxItems"] then M.AssertPageMaxItems(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(ListHealthChecksResponse_keys[k], "ListHealthChecksResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListHealthChecksResponse
-- &lt;p&gt;A complex type that contains the response to a &lt;code&gt;ListHealthChecks&lt;/code&gt; request.&lt;/p&gt;
-- @param Marker [PageMarker] &lt;p&gt;For the second and subsequent calls to &lt;code&gt;ListHealthChecks&lt;/code&gt;, &lt;code&gt;Marker&lt;/code&gt; is the value that you specified for the &lt;code&gt;marker&lt;/code&gt; parameter in the previous request.&lt;/p&gt;
-- @param HealthChecks [HealthChecks] &lt;p&gt;A complex type that contains one &lt;code&gt;HealthCheck&lt;/code&gt; element for each health check that is associated with the current AWS account.&lt;/p&gt;
-- @param NextMarker [PageMarker] &lt;p&gt;If &lt;code&gt;IsTruncated&lt;/code&gt; is &lt;code&gt;true&lt;/code&gt;, the value of &lt;code&gt;NextMarker&lt;/code&gt; identifies the first health check that Amazon Route 53 returns if you submit another &lt;code&gt;ListHealthChecks&lt;/code&gt; request and specify the value of &lt;code&gt;NextMarker&lt;/code&gt; in the &lt;code&gt;marker&lt;/code&gt; parameter.&lt;/p&gt;
-- @param IsTruncated [PageTruncated] &lt;p&gt;A flag that indicates whether there are more health checks to be listed. If the response was truncated, you can get the next group of health checks by submitting another &lt;code&gt;ListHealthChecks&lt;/code&gt; request and specifying the value of &lt;code&gt;NextMarker&lt;/code&gt; in the &lt;code&gt;marker&lt;/code&gt; parameter.&lt;/p&gt;
-- @param MaxItems [PageMaxItems] &lt;p&gt;The value that you specified for the &lt;code&gt;maxitems&lt;/code&gt; parameter in the call to &lt;code&gt;ListHealthChecks&lt;/code&gt; that produced the current response.&lt;/p&gt;
-- Required parameter: HealthChecks
-- Required parameter: Marker
-- Required parameter: IsTruncated
-- Required parameter: MaxItems
function M.ListHealthChecksResponse(Marker, HealthChecks, NextMarker, IsTruncated, MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListHealthChecksResponse")
	local t = { 
		["Marker"] = Marker,
		["HealthChecks"] = HealthChecks,
		["NextMarker"] = NextMarker,
		["IsTruncated"] = IsTruncated,
		["MaxItems"] = MaxItems,
	}
	M.AssertListHealthChecksResponse(t)
	return t
end

local TrafficPolicyInstanceAlreadyExists_keys = { "message" = true, nil }

function M.AssertTrafficPolicyInstanceAlreadyExists(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TrafficPolicyInstanceAlreadyExists to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(TrafficPolicyInstanceAlreadyExists_keys[k], "TrafficPolicyInstanceAlreadyExists contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TrafficPolicyInstanceAlreadyExists
-- &lt;p&gt;Traffic policy instance with given Id already exists.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;Descriptive message for the error response.&lt;/p&gt;
function M.TrafficPolicyInstanceAlreadyExists(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TrafficPolicyInstanceAlreadyExists")
	local t = { 
		["message"] = message,
	}
	M.AssertTrafficPolicyInstanceAlreadyExists(t)
	return t
end

local HostedZoneNotFound_keys = { "message" = true, nil }

function M.AssertHostedZoneNotFound(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HostedZoneNotFound to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(HostedZoneNotFound_keys[k], "HostedZoneNotFound contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HostedZoneNotFound
-- &lt;p&gt;The specified HostedZone can't be found.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;Descriptive message for the error response.&lt;/p&gt;
function M.HostedZoneNotFound(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating HostedZoneNotFound")
	local t = { 
		["message"] = message,
	}
	M.AssertHostedZoneNotFound(t)
	return t
end

local ListReusableDelegationSetsRequest_keys = { "Marker" = true, "MaxItems" = true, nil }

function M.AssertListReusableDelegationSetsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListReusableDelegationSetsRequest to be of type 'table'")
	if struct["Marker"] then M.AssertPageMarker(struct["Marker"]) end
	if struct["MaxItems"] then M.AssertPageMaxItems(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(ListReusableDelegationSetsRequest_keys[k], "ListReusableDelegationSetsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListReusableDelegationSetsRequest
-- &lt;p&gt;A request to get a list of the reusable delegation sets that are associated with the current AWS account.&lt;/p&gt;
-- @param Marker [PageMarker] &lt;p&gt;If the value of &lt;code&gt;IsTruncated&lt;/code&gt; in the previous response was &lt;code&gt;true&lt;/code&gt;, you have more reusable delegation sets. To get another group, submit another &lt;code&gt;ListReusableDelegationSets&lt;/code&gt; request. &lt;/p&gt; &lt;p&gt;For the value of &lt;code&gt;marker&lt;/code&gt;, specify the value of &lt;code&gt;NextMarker&lt;/code&gt; from the previous response, which is the ID of the first reusable delegation set that Amazon Route 53 will return if you submit another request.&lt;/p&gt; &lt;p&gt;If the value of &lt;code&gt;IsTruncated&lt;/code&gt; in the previous response was &lt;code&gt;false&lt;/code&gt;, there are no more reusable delegation sets to get.&lt;/p&gt;
-- @param MaxItems [PageMaxItems] &lt;p&gt;The number of reusable delegation sets that you want Amazon Route 53 to return in the response to this request. If you specify a value greater than 100, Amazon Route 53 returns only the first 100 reusable delegation sets.&lt;/p&gt;
function M.ListReusableDelegationSetsRequest(Marker, MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListReusableDelegationSetsRequest")
	local t = { 
		["Marker"] = Marker,
		["MaxItems"] = MaxItems,
	}
	M.AssertListReusableDelegationSetsRequest(t)
	return t
end

local GetCheckerIpRangesRequest_keys = { nil }

function M.AssertGetCheckerIpRangesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCheckerIpRangesRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(GetCheckerIpRangesRequest_keys[k], "GetCheckerIpRangesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCheckerIpRangesRequest
--  
function M.GetCheckerIpRangesRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetCheckerIpRangesRequest")
	local t = { 
	}
	M.AssertGetCheckerIpRangesRequest(t)
	return t
end

local TooManyTrafficPolicyInstances_keys = { "message" = true, nil }

function M.AssertTooManyTrafficPolicyInstances(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyTrafficPolicyInstances to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(TooManyTrafficPolicyInstances_keys[k], "TooManyTrafficPolicyInstances contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyTrafficPolicyInstances
-- &lt;p&gt;You've created the maximum number of traffic policy instances that can be created for the current AWS account. You can request an increase to the limit on the &lt;a href=&quot;http://aws.amazon.com/route53-request/&quot;&gt;Contact Us&lt;/a&gt; page.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;Descriptive message for the error response.&lt;/p&gt;
function M.TooManyTrafficPolicyInstances(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyTrafficPolicyInstances")
	local t = { 
		["message"] = message,
	}
	M.AssertTooManyTrafficPolicyInstances(t)
	return t
end

local VPCAssociationNotFound_keys = { "message" = true, nil }

function M.AssertVPCAssociationNotFound(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VPCAssociationNotFound to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(VPCAssociationNotFound_keys[k], "VPCAssociationNotFound contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VPCAssociationNotFound
-- &lt;p&gt;The specified VPC and hosted zone are not currently associated.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;Descriptive message for the error response.&lt;/p&gt;
function M.VPCAssociationNotFound(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VPCAssociationNotFound")
	local t = { 
		["message"] = message,
	}
	M.AssertVPCAssociationNotFound(t)
	return t
end

local GeoLocation_keys = { "SubdivisionCode" = true, "CountryCode" = true, "ContinentCode" = true, nil }

function M.AssertGeoLocation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GeoLocation to be of type 'table'")
	if struct["SubdivisionCode"] then M.AssertGeoLocationSubdivisionCode(struct["SubdivisionCode"]) end
	if struct["CountryCode"] then M.AssertGeoLocationCountryCode(struct["CountryCode"]) end
	if struct["ContinentCode"] then M.AssertGeoLocationContinentCode(struct["ContinentCode"]) end
	for k,_ in pairs(struct) do
		assert(GeoLocation_keys[k], "GeoLocation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GeoLocation
-- &lt;p&gt;A complex type that contains information about a geo location.&lt;/p&gt;
-- @param SubdivisionCode [GeoLocationSubdivisionCode] &lt;p&gt;The code for the subdivision, for example, a state in the United States or a province in Canada.&lt;/p&gt;
-- @param CountryCode [GeoLocationCountryCode] &lt;p&gt;The two-letter code for the country.&lt;/p&gt;
-- @param ContinentCode [GeoLocationContinentCode] &lt;p&gt;The two-letter code for the continent.&lt;/p&gt; &lt;p&gt;Valid values: &lt;code&gt;AF&lt;/code&gt; | &lt;code&gt;AN&lt;/code&gt; | &lt;code&gt;AS&lt;/code&gt; | &lt;code&gt;EU&lt;/code&gt; | &lt;code&gt;OC&lt;/code&gt; | &lt;code&gt;NA&lt;/code&gt; | &lt;code&gt;SA&lt;/code&gt; &lt;/p&gt; &lt;p&gt;Constraint: Specifying &lt;code&gt;ContinentCode&lt;/code&gt; with either &lt;code&gt;CountryCode&lt;/code&gt; or &lt;code&gt;SubdivisionCode&lt;/code&gt; returns an &lt;code&gt;InvalidInput&lt;/code&gt; error.&lt;/p&gt;
function M.GeoLocation(SubdivisionCode, CountryCode, ContinentCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GeoLocation")
	local t = { 
		["SubdivisionCode"] = SubdivisionCode,
		["CountryCode"] = CountryCode,
		["ContinentCode"] = ContinentCode,
	}
	M.AssertGeoLocation(t)
	return t
end

local DeleteVPCAssociationAuthorizationResponse_keys = { nil }

function M.AssertDeleteVPCAssociationAuthorizationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteVPCAssociationAuthorizationResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteVPCAssociationAuthorizationResponse_keys[k], "DeleteVPCAssociationAuthorizationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteVPCAssociationAuthorizationResponse
-- &lt;p&gt;Empty response for the request.&lt;/p&gt;
function M.DeleteVPCAssociationAuthorizationResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteVPCAssociationAuthorizationResponse")
	local t = { 
	}
	M.AssertDeleteVPCAssociationAuthorizationResponse(t)
	return t
end

local ChangeBatch_keys = { "Comment" = true, "Changes" = true, nil }

function M.AssertChangeBatch(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ChangeBatch to be of type 'table'")
	assert(struct["Changes"], "Expected key Changes to exist in table")
	if struct["Comment"] then M.AssertResourceDescription(struct["Comment"]) end
	if struct["Changes"] then M.AssertChanges(struct["Changes"]) end
	for k,_ in pairs(struct) do
		assert(ChangeBatch_keys[k], "ChangeBatch contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ChangeBatch
-- &lt;p&gt;The information for a change request.&lt;/p&gt;
-- @param Comment [ResourceDescription] &lt;p&gt; &lt;i&gt;Optional:&lt;/i&gt; Any comments you want to include about a change batch request.&lt;/p&gt;
-- @param Changes [Changes] &lt;p&gt;Information about the changes to make to the record sets.&lt;/p&gt;
-- Required parameter: Changes
function M.ChangeBatch(Comment, Changes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ChangeBatch")
	local t = { 
		["Comment"] = Comment,
		["Changes"] = Changes,
	}
	M.AssertChangeBatch(t)
	return t
end

local ListGeoLocationsRequest_keys = { "StartCountryCode" = true, "StartSubdivisionCode" = true, "StartContinentCode" = true, "MaxItems" = true, nil }

function M.AssertListGeoLocationsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListGeoLocationsRequest to be of type 'table'")
	if struct["StartCountryCode"] then M.AssertGeoLocationCountryCode(struct["StartCountryCode"]) end
	if struct["StartSubdivisionCode"] then M.AssertGeoLocationSubdivisionCode(struct["StartSubdivisionCode"]) end
	if struct["StartContinentCode"] then M.AssertGeoLocationContinentCode(struct["StartContinentCode"]) end
	if struct["MaxItems"] then M.AssertPageMaxItems(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(ListGeoLocationsRequest_keys[k], "ListGeoLocationsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListGeoLocationsRequest
-- &lt;p&gt;A request to get a list of geographic locations that Amazon Route 53 supports for geolocation resource record sets. &lt;/p&gt;
-- @param StartCountryCode [GeoLocationCountryCode] &lt;p&gt;The code for the country with which you want to start listing locations that Amazon Route 53 supports for geolocation. If Amazon Route 53 has already returned a page or more of results, if &lt;code&gt;IsTruncated&lt;/code&gt; is &lt;code&gt;true&lt;/code&gt;, and if &lt;code&gt;NextCountryCode&lt;/code&gt; from the previous response has a value, enter that value in &lt;code&gt;StartCountryCode&lt;/code&gt; to return the next page of results.&lt;/p&gt; &lt;p&gt;Amazon Route 53 uses the two-letter country codes that are specified in &lt;a href=&quot;https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2&quot;&gt;ISO standard 3166-1 alpha-2&lt;/a&gt;.&lt;/p&gt;
-- @param StartSubdivisionCode [GeoLocationSubdivisionCode] &lt;p&gt;The code for the subdivision (for example, state or province) with which you want to start listing locations that Amazon Route 53 supports for geolocation. If Amazon Route 53 has already returned a page or more of results, if &lt;code&gt;IsTruncated&lt;/code&gt; is &lt;code&gt;true&lt;/code&gt;, and if &lt;code&gt;NextSubdivisionCode&lt;/code&gt; from the previous response has a value, enter that value in &lt;code&gt;StartSubdivisionCode&lt;/code&gt; to return the next page of results.&lt;/p&gt; &lt;p&gt;To list subdivisions of a country, you must include both &lt;code&gt;StartCountryCode&lt;/code&gt; and &lt;code&gt;StartSubdivisionCode&lt;/code&gt;.&lt;/p&gt;
-- @param StartContinentCode [GeoLocationContinentCode] &lt;p&gt;The code for the continent with which you want to start listing locations that Amazon Route 53 supports for geolocation. If Amazon Route 53 has already returned a page or more of results, if &lt;code&gt;IsTruncated&lt;/code&gt; is true, and if &lt;code&gt;NextContinentCode&lt;/code&gt; from the previous response has a value, enter that value in &lt;code&gt;StartContinentCode&lt;/code&gt; to return the next page of results.&lt;/p&gt; &lt;p&gt;Include &lt;code&gt;StartContinentCode&lt;/code&gt; only if you want to list continents. Don't include &lt;code&gt;StartContinentCode&lt;/code&gt; when you're listing countries or countries with their subdivisions.&lt;/p&gt;
-- @param MaxItems [PageMaxItems] &lt;p&gt;(Optional) The maximum number of geolocations to be included in the response body for this request. If more than &lt;code&gt;MaxItems&lt;/code&gt; geolocations remain to be listed, then the value of the &lt;code&gt;IsTruncated&lt;/code&gt; element in the response is &lt;code&gt;true&lt;/code&gt;.&lt;/p&gt;
function M.ListGeoLocationsRequest(StartCountryCode, StartSubdivisionCode, StartContinentCode, MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListGeoLocationsRequest")
	local t = { 
		["StartCountryCode"] = StartCountryCode,
		["StartSubdivisionCode"] = StartSubdivisionCode,
		["StartContinentCode"] = StartContinentCode,
		["MaxItems"] = MaxItems,
	}
	M.AssertListGeoLocationsRequest(t)
	return t
end

local GetHealthCheckCountRequest_keys = { nil }

function M.AssertGetHealthCheckCountRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetHealthCheckCountRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(GetHealthCheckCountRequest_keys[k], "GetHealthCheckCountRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetHealthCheckCountRequest
-- &lt;p&gt;A request for the number of health checks that are associated with the current AWS account.&lt;/p&gt;
function M.GetHealthCheckCountRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetHealthCheckCountRequest")
	local t = { 
	}
	M.AssertGetHealthCheckCountRequest(t)
	return t
end

local TrafficPolicy_keys = { "Comment" = true, "Name" = true, "Version" = true, "Document" = true, "Type" = true, "Id" = true, nil }

function M.AssertTrafficPolicy(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TrafficPolicy to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["Version"], "Expected key Version to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Type"], "Expected key Type to exist in table")
	assert(struct["Document"], "Expected key Document to exist in table")
	if struct["Comment"] then M.AssertTrafficPolicyComment(struct["Comment"]) end
	if struct["Name"] then M.AssertTrafficPolicyName(struct["Name"]) end
	if struct["Version"] then M.AssertTrafficPolicyVersion(struct["Version"]) end
	if struct["Document"] then M.AssertTrafficPolicyDocument(struct["Document"]) end
	if struct["Type"] then M.AssertRRType(struct["Type"]) end
	if struct["Id"] then M.AssertTrafficPolicyId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(TrafficPolicy_keys[k], "TrafficPolicy contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TrafficPolicy
-- &lt;p&gt;A complex type that contains settings for a traffic policy.&lt;/p&gt;
-- @param Comment [TrafficPolicyComment] &lt;p&gt;The comment that you specify in the &lt;code&gt;CreateTrafficPolicy&lt;/code&gt; request, if any.&lt;/p&gt;
-- @param Name [TrafficPolicyName] &lt;p&gt;The name that you specified when you created the traffic policy.&lt;/p&gt;
-- @param Version [TrafficPolicyVersion] &lt;p&gt;The version number that Amazon Route 53 assigns to a traffic policy. For a new traffic policy, the value of &lt;code&gt;Version&lt;/code&gt; is always 1.&lt;/p&gt;
-- @param Document [TrafficPolicyDocument] &lt;p&gt;The definition of a traffic policy in JSON format. You specify the JSON document to use for a new traffic policy in the &lt;code&gt;CreateTrafficPolicy&lt;/code&gt; request. For more information about the JSON format, see &lt;a href=&quot;http://docs.aws.amazon.com/Route53/latest/APIReference/api-policies-traffic-policy-document-format.html&quot;&gt;Traffic Policy Document Format&lt;/a&gt;.&lt;/p&gt;
-- @param Type [RRType] &lt;p&gt;The DNS type of the resource record sets that Amazon Route 53 creates when you use a traffic policy to create a traffic policy instance.&lt;/p&gt;
-- @param Id [TrafficPolicyId] &lt;p&gt;The ID that Amazon Route 53 assigned to a traffic policy when you created it.&lt;/p&gt;
-- Required parameter: Id
-- Required parameter: Version
-- Required parameter: Name
-- Required parameter: Type
-- Required parameter: Document
function M.TrafficPolicy(Comment, Name, Version, Document, Type, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TrafficPolicy")
	local t = { 
		["Comment"] = Comment,
		["Name"] = Name,
		["Version"] = Version,
		["Document"] = Document,
		["Type"] = Type,
		["Id"] = Id,
	}
	M.AssertTrafficPolicy(t)
	return t
end

local ListTagsForResourceRequest_keys = { "ResourceType" = true, "ResourceId" = true, nil }

function M.AssertListTagsForResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForResourceRequest to be of type 'table'")
	assert(struct["ResourceType"], "Expected key ResourceType to exist in table")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	if struct["ResourceType"] then M.AssertTagResourceType(struct["ResourceType"]) end
	if struct["ResourceId"] then M.AssertTagResourceId(struct["ResourceId"]) end
	for k,_ in pairs(struct) do
		assert(ListTagsForResourceRequest_keys[k], "ListTagsForResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForResourceRequest
-- &lt;p&gt;A complex type containing information about a request for a list of the tags that are associated with an individual resource.&lt;/p&gt;
-- @param ResourceType [TagResourceType] &lt;p&gt;The type of the resource.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;The resource type for health checks is &lt;code&gt;healthcheck&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;The resource type for hosted zones is &lt;code&gt;hostedzone&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param ResourceId [TagResourceId] &lt;p&gt;The ID of the resource for which you want to retrieve tags.&lt;/p&gt;
-- Required parameter: ResourceType
-- Required parameter: ResourceId
function M.ListTagsForResourceRequest(ResourceType, ResourceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsForResourceRequest")
	local t = { 
		["ResourceType"] = ResourceType,
		["ResourceId"] = ResourceId,
	}
	M.AssertListTagsForResourceRequest(t)
	return t
end

local VPC_keys = { "VPCId" = true, "VPCRegion" = true, nil }

function M.AssertVPC(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VPC to be of type 'table'")
	if struct["VPCId"] then M.AssertVPCId(struct["VPCId"]) end
	if struct["VPCRegion"] then M.AssertVPCRegion(struct["VPCRegion"]) end
	for k,_ in pairs(struct) do
		assert(VPC_keys[k], "VPC contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VPC
-- &lt;p&gt;(Private hosted zones only) A complex type that contains information about an Amazon VPC.&lt;/p&gt;
-- @param VPCId [VPCId] &lt;p&gt;(Private hosted zones only) A complex type that contains information about an Amazon VPC.&lt;/p&gt;
-- @param VPCRegion [VPCRegion] &lt;p&gt;(Private hosted zones only) The region in which you created an Amazon VPC.&lt;/p&gt;
function M.VPC(VPCId, VPCRegion, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VPC")
	local t = { 
		["VPCId"] = VPCId,
		["VPCRegion"] = VPCRegion,
	}
	M.AssertVPC(t)
	return t
end

local TrafficPolicySummary_keys = { "TrafficPolicyCount" = true, "LatestVersion" = true, "Type" = true, "Id" = true, "Name" = true, nil }

function M.AssertTrafficPolicySummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TrafficPolicySummary to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Type"], "Expected key Type to exist in table")
	assert(struct["LatestVersion"], "Expected key LatestVersion to exist in table")
	assert(struct["TrafficPolicyCount"], "Expected key TrafficPolicyCount to exist in table")
	if struct["TrafficPolicyCount"] then M.AssertTrafficPolicyVersion(struct["TrafficPolicyCount"]) end
	if struct["LatestVersion"] then M.AssertTrafficPolicyVersion(struct["LatestVersion"]) end
	if struct["Type"] then M.AssertRRType(struct["Type"]) end
	if struct["Id"] then M.AssertTrafficPolicyId(struct["Id"]) end
	if struct["Name"] then M.AssertTrafficPolicyName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(TrafficPolicySummary_keys[k], "TrafficPolicySummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TrafficPolicySummary
-- &lt;p&gt;A complex type that contains information about the latest version of one traffic policy that is associated with the current AWS account.&lt;/p&gt;
-- @param TrafficPolicyCount [TrafficPolicyVersion] &lt;p&gt;The number of traffic policies that are associated with the current AWS account.&lt;/p&gt;
-- @param LatestVersion [TrafficPolicyVersion] &lt;p&gt;The version number of the latest version of the traffic policy.&lt;/p&gt;
-- @param Type [RRType] &lt;p&gt;The DNS type of the resource record sets that Amazon Route 53 creates when you use a traffic policy to create a traffic policy instance.&lt;/p&gt;
-- @param Id [TrafficPolicyId] &lt;p&gt;The ID that Amazon Route 53 assigned to the traffic policy when you created it.&lt;/p&gt;
-- @param Name [TrafficPolicyName] &lt;p&gt;The name that you specified for the traffic policy when you created it.&lt;/p&gt;
-- Required parameter: Id
-- Required parameter: Name
-- Required parameter: Type
-- Required parameter: LatestVersion
-- Required parameter: TrafficPolicyCount
function M.TrafficPolicySummary(TrafficPolicyCount, LatestVersion, Type, Id, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TrafficPolicySummary")
	local t = { 
		["TrafficPolicyCount"] = TrafficPolicyCount,
		["LatestVersion"] = LatestVersion,
		["Type"] = Type,
		["Id"] = Id,
		["Name"] = Name,
	}
	M.AssertTrafficPolicySummary(t)
	return t
end

local ListHostedZonesResponse_keys = { "Marker" = true, "HostedZones" = true, "NextMarker" = true, "IsTruncated" = true, "MaxItems" = true, nil }

function M.AssertListHostedZonesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListHostedZonesResponse to be of type 'table'")
	assert(struct["HostedZones"], "Expected key HostedZones to exist in table")
	assert(struct["Marker"], "Expected key Marker to exist in table")
	assert(struct["IsTruncated"], "Expected key IsTruncated to exist in table")
	assert(struct["MaxItems"], "Expected key MaxItems to exist in table")
	if struct["Marker"] then M.AssertPageMarker(struct["Marker"]) end
	if struct["HostedZones"] then M.AssertHostedZones(struct["HostedZones"]) end
	if struct["NextMarker"] then M.AssertPageMarker(struct["NextMarker"]) end
	if struct["IsTruncated"] then M.AssertPageTruncated(struct["IsTruncated"]) end
	if struct["MaxItems"] then M.AssertPageMaxItems(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(ListHostedZonesResponse_keys[k], "ListHostedZonesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListHostedZonesResponse
--  
-- @param Marker [PageMarker] &lt;p&gt;For the second and subsequent calls to &lt;code&gt;ListHostedZones&lt;/code&gt;, &lt;code&gt;Marker&lt;/code&gt; is the value that you specified for the &lt;code&gt;marker&lt;/code&gt; parameter in the request that produced the current response.&lt;/p&gt;
-- @param HostedZones [HostedZones] &lt;p&gt;A complex type that contains general information about the hosted zone.&lt;/p&gt;
-- @param NextMarker [PageMarker] &lt;p&gt;If &lt;code&gt;IsTruncated&lt;/code&gt; is &lt;code&gt;true&lt;/code&gt;, the value of &lt;code&gt;NextMarker&lt;/code&gt; identifies the first hosted zone in the next group of hosted zones. Submit another &lt;code&gt;ListHostedZones&lt;/code&gt; request, and specify the value of &lt;code&gt;NextMarker&lt;/code&gt; from the response in the &lt;code&gt;marker&lt;/code&gt; parameter.&lt;/p&gt; &lt;p&gt;This element is present only if &lt;code&gt;IsTruncated&lt;/code&gt; is &lt;code&gt;true&lt;/code&gt;.&lt;/p&gt;
-- @param IsTruncated [PageTruncated] &lt;p&gt;A flag indicating whether there are more hosted zones to be listed. If the response was truncated, you can get more hosted zones by submitting another &lt;code&gt;ListHostedZones&lt;/code&gt; request and specifying the value of &lt;code&gt;NextMarker&lt;/code&gt; in the &lt;code&gt;marker&lt;/code&gt; parameter.&lt;/p&gt;
-- @param MaxItems [PageMaxItems] &lt;p&gt;The value that you specified for the &lt;code&gt;maxitems&lt;/code&gt; parameter in the call to &lt;code&gt;ListHostedZones&lt;/code&gt; that produced the current response.&lt;/p&gt;
-- Required parameter: HostedZones
-- Required parameter: Marker
-- Required parameter: IsTruncated
-- Required parameter: MaxItems
function M.ListHostedZonesResponse(Marker, HostedZones, NextMarker, IsTruncated, MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListHostedZonesResponse")
	local t = { 
		["Marker"] = Marker,
		["HostedZones"] = HostedZones,
		["NextMarker"] = NextMarker,
		["IsTruncated"] = IsTruncated,
		["MaxItems"] = MaxItems,
	}
	M.AssertListHostedZonesResponse(t)
	return t
end

local GetHealthCheckRequest_keys = { "HealthCheckId" = true, nil }

function M.AssertGetHealthCheckRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetHealthCheckRequest to be of type 'table'")
	assert(struct["HealthCheckId"], "Expected key HealthCheckId to exist in table")
	if struct["HealthCheckId"] then M.AssertHealthCheckId(struct["HealthCheckId"]) end
	for k,_ in pairs(struct) do
		assert(GetHealthCheckRequest_keys[k], "GetHealthCheckRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetHealthCheckRequest
-- &lt;p&gt;A request to get information about a specified health check. &lt;/p&gt;
-- @param HealthCheckId [HealthCheckId] &lt;p&gt;The identifier that Amazon Route 53 assigned to the health check when you created it. When you add or update a resource record set, you use this value to specify which health check to use. The value can be up to 64 characters long.&lt;/p&gt;
-- Required parameter: HealthCheckId
function M.GetHealthCheckRequest(HealthCheckId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetHealthCheckRequest")
	local t = { 
		["HealthCheckId"] = HealthCheckId,
	}
	M.AssertGetHealthCheckRequest(t)
	return t
end

local DelegationSetNotReusable_keys = { "message" = true, nil }

function M.AssertDelegationSetNotReusable(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DelegationSetNotReusable to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(DelegationSetNotReusable_keys[k], "DelegationSetNotReusable contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DelegationSetNotReusable
-- &lt;p&gt;A reusable delegation set with the specified ID does not exist.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;Descriptive message for the error response.&lt;/p&gt;
function M.DelegationSetNotReusable(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DelegationSetNotReusable")
	local t = { 
		["message"] = message,
	}
	M.AssertDelegationSetNotReusable(t)
	return t
end

local UpdateTrafficPolicyInstanceResponse_keys = { "TrafficPolicyInstance" = true, nil }

function M.AssertUpdateTrafficPolicyInstanceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateTrafficPolicyInstanceResponse to be of type 'table'")
	assert(struct["TrafficPolicyInstance"], "Expected key TrafficPolicyInstance to exist in table")
	if struct["TrafficPolicyInstance"] then M.AssertTrafficPolicyInstance(struct["TrafficPolicyInstance"]) end
	for k,_ in pairs(struct) do
		assert(UpdateTrafficPolicyInstanceResponse_keys[k], "UpdateTrafficPolicyInstanceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateTrafficPolicyInstanceResponse
-- &lt;p&gt;A complex type that contains information about the resource record sets that Amazon Route 53 created based on a specified traffic policy.&lt;/p&gt;
-- @param TrafficPolicyInstance [TrafficPolicyInstance] &lt;p&gt;A complex type that contains settings for the updated traffic policy instance.&lt;/p&gt;
-- Required parameter: TrafficPolicyInstance
function M.UpdateTrafficPolicyInstanceResponse(TrafficPolicyInstance, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateTrafficPolicyInstanceResponse")
	local t = { 
		["TrafficPolicyInstance"] = TrafficPolicyInstance,
	}
	M.AssertUpdateTrafficPolicyInstanceResponse(t)
	return t
end

local CreateHostedZoneResponse_keys = { "Location" = true, "HostedZone" = true, "VPC" = true, "ChangeInfo" = true, "DelegationSet" = true, nil }

function M.AssertCreateHostedZoneResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateHostedZoneResponse to be of type 'table'")
	assert(struct["HostedZone"], "Expected key HostedZone to exist in table")
	assert(struct["ChangeInfo"], "Expected key ChangeInfo to exist in table")
	assert(struct["DelegationSet"], "Expected key DelegationSet to exist in table")
	assert(struct["Location"], "Expected key Location to exist in table")
	if struct["Location"] then M.AssertResourceURI(struct["Location"]) end
	if struct["HostedZone"] then M.AssertHostedZone(struct["HostedZone"]) end
	if struct["VPC"] then M.AssertVPC(struct["VPC"]) end
	if struct["ChangeInfo"] then M.AssertChangeInfo(struct["ChangeInfo"]) end
	if struct["DelegationSet"] then M.AssertDelegationSet(struct["DelegationSet"]) end
	for k,_ in pairs(struct) do
		assert(CreateHostedZoneResponse_keys[k], "CreateHostedZoneResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateHostedZoneResponse
-- &lt;p&gt;A complex type containing the response information for the hosted zone.&lt;/p&gt;
-- @param Location [ResourceURI] &lt;p&gt;The unique URL representing the new hosted zone.&lt;/p&gt;
-- @param HostedZone [HostedZone] &lt;p&gt;A complex type that contains general information about the hosted zone.&lt;/p&gt;
-- @param VPC [VPC] &lt;p&gt;A complex type that contains information about an Amazon VPC that you associated with this hosted zone.&lt;/p&gt;
-- @param ChangeInfo [ChangeInfo] &lt;p&gt;A complex type that contains information about the &lt;code&gt;CreateHostedZone&lt;/code&gt; request.&lt;/p&gt;
-- @param DelegationSet [DelegationSet] &lt;p&gt;A complex type that describes the name servers for this hosted zone.&lt;/p&gt;
-- Required parameter: HostedZone
-- Required parameter: ChangeInfo
-- Required parameter: DelegationSet
-- Required parameter: Location
function M.CreateHostedZoneResponse(Location, HostedZone, VPC, ChangeInfo, DelegationSet, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateHostedZoneResponse")
	local t = { 
		["Location"] = Location,
		["HostedZone"] = HostedZone,
		["VPC"] = VPC,
		["ChangeInfo"] = ChangeInfo,
		["DelegationSet"] = DelegationSet,
	}
	M.AssertCreateHostedZoneResponse(t)
	return t
end

local GetReusableDelegationSetRequest_keys = { "Id" = true, nil }

function M.AssertGetReusableDelegationSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetReusableDelegationSetRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then M.AssertResourceId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(GetReusableDelegationSetRequest_keys[k], "GetReusableDelegationSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetReusableDelegationSetRequest
-- &lt;p&gt;A request to get information about a specified reusable delegation set.&lt;/p&gt;
-- @param Id [ResourceId] &lt;p&gt;The ID of the reusable delegation set that you want to get a list of name servers for.&lt;/p&gt;
-- Required parameter: Id
function M.GetReusableDelegationSetRequest(Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetReusableDelegationSetRequest")
	local t = { 
		["Id"] = Id,
	}
	M.AssertGetReusableDelegationSetRequest(t)
	return t
end

local DeleteHostedZoneResponse_keys = { "ChangeInfo" = true, nil }

function M.AssertDeleteHostedZoneResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteHostedZoneResponse to be of type 'table'")
	assert(struct["ChangeInfo"], "Expected key ChangeInfo to exist in table")
	if struct["ChangeInfo"] then M.AssertChangeInfo(struct["ChangeInfo"]) end
	for k,_ in pairs(struct) do
		assert(DeleteHostedZoneResponse_keys[k], "DeleteHostedZoneResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteHostedZoneResponse
-- &lt;p&gt;A complex type that contains the response to a &lt;code&gt;DeleteHostedZone&lt;/code&gt; request.&lt;/p&gt;
-- @param ChangeInfo [ChangeInfo] &lt;p&gt;A complex type that contains the ID, the status, and the date and time of a request to delete a hosted zone.&lt;/p&gt;
-- Required parameter: ChangeInfo
function M.DeleteHostedZoneResponse(ChangeInfo, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteHostedZoneResponse")
	local t = { 
		["ChangeInfo"] = ChangeInfo,
	}
	M.AssertDeleteHostedZoneResponse(t)
	return t
end

local ConflictingTypes_keys = { "message" = true, nil }

function M.AssertConflictingTypes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConflictingTypes to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ConflictingTypes_keys[k], "ConflictingTypes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConflictingTypes
-- &lt;p&gt;You tried to update a traffic policy instance by using a traffic policy version that has a different DNS type than the current type for the instance. You specified the type in the JSON document in the &lt;code&gt;CreateTrafficPolicy&lt;/code&gt; or &lt;code&gt;CreateTrafficPolicyVersion&lt;/code&gt;request. &lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;Descriptive message for the error response.&lt;/p&gt;
function M.ConflictingTypes(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConflictingTypes")
	local t = { 
		["message"] = message,
	}
	M.AssertConflictingTypes(t)
	return t
end

local HealthCheckInUse_keys = { "message" = true, nil }

function M.AssertHealthCheckInUse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HealthCheckInUse to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(HealthCheckInUse_keys[k], "HealthCheckInUse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HealthCheckInUse
-- &lt;p&gt;This error code is not in use.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;Descriptive message for the error response.&lt;/p&gt;
function M.HealthCheckInUse(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating HealthCheckInUse")
	local t = { 
		["message"] = message,
	}
	M.AssertHealthCheckInUse(t)
	return t
end

local DeleteReusableDelegationSetRequest_keys = { "Id" = true, nil }

function M.AssertDeleteReusableDelegationSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteReusableDelegationSetRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then M.AssertResourceId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(DeleteReusableDelegationSetRequest_keys[k], "DeleteReusableDelegationSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteReusableDelegationSetRequest
-- &lt;p&gt;A request to delete a reusable delegation set.&lt;/p&gt;
-- @param Id [ResourceId] &lt;p&gt;The ID of the reusable delegation set that you want to delete.&lt;/p&gt;
-- Required parameter: Id
function M.DeleteReusableDelegationSetRequest(Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteReusableDelegationSetRequest")
	local t = { 
		["Id"] = Id,
	}
	M.AssertDeleteReusableDelegationSetRequest(t)
	return t
end

local HostedZoneNotEmpty_keys = { "message" = true, nil }

function M.AssertHostedZoneNotEmpty(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HostedZoneNotEmpty to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(HostedZoneNotEmpty_keys[k], "HostedZoneNotEmpty contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HostedZoneNotEmpty
-- &lt;p&gt;The hosted zone contains resource records that are not SOA or NS records.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;Descriptive message for the error response.&lt;/p&gt;
function M.HostedZoneNotEmpty(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating HostedZoneNotEmpty")
	local t = { 
		["message"] = message,
	}
	M.AssertHostedZoneNotEmpty(t)
	return t
end

local GetHostedZoneResponse_keys = { "VPCs" = true, "HostedZone" = true, "DelegationSet" = true, nil }

function M.AssertGetHostedZoneResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetHostedZoneResponse to be of type 'table'")
	assert(struct["HostedZone"], "Expected key HostedZone to exist in table")
	if struct["VPCs"] then M.AssertVPCs(struct["VPCs"]) end
	if struct["HostedZone"] then M.AssertHostedZone(struct["HostedZone"]) end
	if struct["DelegationSet"] then M.AssertDelegationSet(struct["DelegationSet"]) end
	for k,_ in pairs(struct) do
		assert(GetHostedZoneResponse_keys[k], "GetHostedZoneResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetHostedZoneResponse
-- &lt;p&gt;A complex type that contain the response to a &lt;code&gt;GetHostedZone&lt;/code&gt; request.&lt;/p&gt;
-- @param VPCs [VPCs] &lt;p&gt;A complex type that contains information about the VPCs that are associated with the specified hosted zone.&lt;/p&gt;
-- @param HostedZone [HostedZone] &lt;p&gt;A complex type that contains general information about the specified hosted zone.&lt;/p&gt;
-- @param DelegationSet [DelegationSet] &lt;p&gt;A complex type that lists the Amazon Route 53 name servers for the specified hosted zone.&lt;/p&gt;
-- Required parameter: HostedZone
function M.GetHostedZoneResponse(VPCs, HostedZone, DelegationSet, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetHostedZoneResponse")
	local t = { 
		["VPCs"] = VPCs,
		["HostedZone"] = HostedZone,
		["DelegationSet"] = DelegationSet,
	}
	M.AssertGetHostedZoneResponse(t)
	return t
end

local DelegationSetAlreadyCreated_keys = { "message" = true, nil }

function M.AssertDelegationSetAlreadyCreated(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DelegationSetAlreadyCreated to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(DelegationSetAlreadyCreated_keys[k], "DelegationSetAlreadyCreated contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DelegationSetAlreadyCreated
-- &lt;p&gt;A delegation set with the same owner and caller reference combination has already been created.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;Descriptive message for the error response.&lt;/p&gt;
function M.DelegationSetAlreadyCreated(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DelegationSetAlreadyCreated")
	local t = { 
		["message"] = message,
	}
	M.AssertDelegationSetAlreadyCreated(t)
	return t
end

local GetTrafficPolicyResponse_keys = { "TrafficPolicy" = true, nil }

function M.AssertGetTrafficPolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTrafficPolicyResponse to be of type 'table'")
	assert(struct["TrafficPolicy"], "Expected key TrafficPolicy to exist in table")
	if struct["TrafficPolicy"] then M.AssertTrafficPolicy(struct["TrafficPolicy"]) end
	for k,_ in pairs(struct) do
		assert(GetTrafficPolicyResponse_keys[k], "GetTrafficPolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTrafficPolicyResponse
-- &lt;p&gt;A complex type that contains the response information for the request.&lt;/p&gt;
-- @param TrafficPolicy [TrafficPolicy] &lt;p&gt;A complex type that contains settings for the specified traffic policy.&lt;/p&gt;
-- Required parameter: TrafficPolicy
function M.GetTrafficPolicyResponse(TrafficPolicy, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetTrafficPolicyResponse")
	local t = { 
		["TrafficPolicy"] = TrafficPolicy,
	}
	M.AssertGetTrafficPolicyResponse(t)
	return t
end

local CreateHealthCheckResponse_keys = { "HealthCheck" = true, "Location" = true, nil }

function M.AssertCreateHealthCheckResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateHealthCheckResponse to be of type 'table'")
	assert(struct["HealthCheck"], "Expected key HealthCheck to exist in table")
	assert(struct["Location"], "Expected key Location to exist in table")
	if struct["HealthCheck"] then M.AssertHealthCheck(struct["HealthCheck"]) end
	if struct["Location"] then M.AssertResourceURI(struct["Location"]) end
	for k,_ in pairs(struct) do
		assert(CreateHealthCheckResponse_keys[k], "CreateHealthCheckResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateHealthCheckResponse
-- &lt;p&gt;A complex type containing the response information for the new health check.&lt;/p&gt;
-- @param HealthCheck [HealthCheck] &lt;p&gt;A complex type that contains identifying information about the health check.&lt;/p&gt;
-- @param Location [ResourceURI] &lt;p&gt;The unique URL representing the new health check.&lt;/p&gt;
-- Required parameter: HealthCheck
-- Required parameter: Location
function M.CreateHealthCheckResponse(HealthCheck, Location, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateHealthCheckResponse")
	local t = { 
		["HealthCheck"] = HealthCheck,
		["Location"] = Location,
	}
	M.AssertCreateHealthCheckResponse(t)
	return t
end

local ListTrafficPolicyVersionsRequest_keys = { "Id" = true, "MaxItems" = true, "TrafficPolicyVersionMarker" = true, nil }

function M.AssertListTrafficPolicyVersionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTrafficPolicyVersionsRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then M.AssertTrafficPolicyId(struct["Id"]) end
	if struct["MaxItems"] then M.AssertPageMaxItems(struct["MaxItems"]) end
	if struct["TrafficPolicyVersionMarker"] then M.AssertTrafficPolicyVersionMarker(struct["TrafficPolicyVersionMarker"]) end
	for k,_ in pairs(struct) do
		assert(ListTrafficPolicyVersionsRequest_keys[k], "ListTrafficPolicyVersionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTrafficPolicyVersionsRequest
-- &lt;p&gt;A complex type that contains the information about the request to list your traffic policies.&lt;/p&gt;
-- @param Id [TrafficPolicyId] &lt;p&gt;Specify the value of &lt;code&gt;Id&lt;/code&gt; of the traffic policy for which you want to list all versions.&lt;/p&gt;
-- @param MaxItems [PageMaxItems] &lt;p&gt;The maximum number of traffic policy versions that you want Amazon Route 53 to include in the response body for this request. If the specified traffic policy has more than &lt;code&gt;MaxItems&lt;/code&gt; versions, the value of &lt;code&gt;IsTruncated&lt;/code&gt; in the response is &lt;code&gt;true&lt;/code&gt;, and the value of the &lt;code&gt;TrafficPolicyVersionMarker&lt;/code&gt; element is the ID of the first version that Amazon Route 53 will return if you submit another request.&lt;/p&gt;
-- @param TrafficPolicyVersionMarker [TrafficPolicyVersionMarker] &lt;p&gt;For your first request to &lt;code&gt;ListTrafficPolicyVersions&lt;/code&gt;, don't include the &lt;code&gt;TrafficPolicyVersionMarker&lt;/code&gt; parameter.&lt;/p&gt; &lt;p&gt;If you have more traffic policy versions than the value of &lt;code&gt;MaxItems&lt;/code&gt;, &lt;code&gt;ListTrafficPolicyVersions&lt;/code&gt; returns only the first group of &lt;code&gt;MaxItems&lt;/code&gt; versions. To get more traffic policy versions, submit another &lt;code&gt;ListTrafficPolicyVersions&lt;/code&gt; request. For the value of &lt;code&gt;TrafficPolicyVersionMarker&lt;/code&gt;, specify the value of &lt;code&gt;TrafficPolicyVersionMarker&lt;/code&gt; in the previous response.&lt;/p&gt;
-- Required parameter: Id
function M.ListTrafficPolicyVersionsRequest(Id, MaxItems, TrafficPolicyVersionMarker, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTrafficPolicyVersionsRequest")
	local t = { 
		["Id"] = Id,
		["MaxItems"] = MaxItems,
		["TrafficPolicyVersionMarker"] = TrafficPolicyVersionMarker,
	}
	M.AssertListTrafficPolicyVersionsRequest(t)
	return t
end

local ListTrafficPoliciesResponse_keys = { "TrafficPolicyIdMarker" = true, "TrafficPolicySummaries" = true, "MaxItems" = true, "IsTruncated" = true, nil }

function M.AssertListTrafficPoliciesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTrafficPoliciesResponse to be of type 'table'")
	assert(struct["TrafficPolicySummaries"], "Expected key TrafficPolicySummaries to exist in table")
	assert(struct["IsTruncated"], "Expected key IsTruncated to exist in table")
	assert(struct["TrafficPolicyIdMarker"], "Expected key TrafficPolicyIdMarker to exist in table")
	assert(struct["MaxItems"], "Expected key MaxItems to exist in table")
	if struct["TrafficPolicyIdMarker"] then M.AssertTrafficPolicyId(struct["TrafficPolicyIdMarker"]) end
	if struct["TrafficPolicySummaries"] then M.AssertTrafficPolicySummaries(struct["TrafficPolicySummaries"]) end
	if struct["MaxItems"] then M.AssertPageMaxItems(struct["MaxItems"]) end
	if struct["IsTruncated"] then M.AssertPageTruncated(struct["IsTruncated"]) end
	for k,_ in pairs(struct) do
		assert(ListTrafficPoliciesResponse_keys[k], "ListTrafficPoliciesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTrafficPoliciesResponse
-- &lt;p&gt;A complex type that contains the response information for the request.&lt;/p&gt;
-- @param TrafficPolicyIdMarker [TrafficPolicyId] &lt;p&gt;If the value of &lt;code&gt;IsTruncated&lt;/code&gt; is &lt;code&gt;true&lt;/code&gt;, &lt;code&gt;TrafficPolicyIdMarker&lt;/code&gt; is the ID of the first traffic policy in the next group of &lt;code&gt;MaxItems&lt;/code&gt; traffic policies.&lt;/p&gt;
-- @param TrafficPolicySummaries [TrafficPolicySummaries] &lt;p&gt;A list that contains one &lt;code&gt;TrafficPolicySummary&lt;/code&gt; element for each traffic policy that was created by the current AWS account.&lt;/p&gt;
-- @param MaxItems [PageMaxItems] &lt;p&gt;The value that you specified for the &lt;code&gt;MaxItems&lt;/code&gt; parameter in the &lt;code&gt;ListTrafficPolicies&lt;/code&gt; request that produced the current response.&lt;/p&gt;
-- @param IsTruncated [PageTruncated] &lt;p&gt;A flag that indicates whether there are more traffic policies to be listed. If the response was truncated, you can get the next group of traffic policies by submitting another &lt;code&gt;ListTrafficPolicies&lt;/code&gt; request and specifying the value of &lt;code&gt;TrafficPolicyIdMarker&lt;/code&gt; in the &lt;code&gt;TrafficPolicyIdMarker&lt;/code&gt; request parameter.&lt;/p&gt;
-- Required parameter: TrafficPolicySummaries
-- Required parameter: IsTruncated
-- Required parameter: TrafficPolicyIdMarker
-- Required parameter: MaxItems
function M.ListTrafficPoliciesResponse(TrafficPolicyIdMarker, TrafficPolicySummaries, MaxItems, IsTruncated, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTrafficPoliciesResponse")
	local t = { 
		["TrafficPolicyIdMarker"] = TrafficPolicyIdMarker,
		["TrafficPolicySummaries"] = TrafficPolicySummaries,
		["MaxItems"] = MaxItems,
		["IsTruncated"] = IsTruncated,
	}
	M.AssertListTrafficPoliciesResponse(t)
	return t
end

local HostedZone_keys = { "ResourceRecordSetCount" = true, "CallerReference" = true, "Config" = true, "Id" = true, "Name" = true, nil }

function M.AssertHostedZone(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HostedZone to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["CallerReference"], "Expected key CallerReference to exist in table")
	if struct["ResourceRecordSetCount"] then M.AssertHostedZoneRRSetCount(struct["ResourceRecordSetCount"]) end
	if struct["CallerReference"] then M.AssertNonce(struct["CallerReference"]) end
	if struct["Config"] then M.AssertHostedZoneConfig(struct["Config"]) end
	if struct["Id"] then M.AssertResourceId(struct["Id"]) end
	if struct["Name"] then M.AssertDNSName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(HostedZone_keys[k], "HostedZone contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HostedZone
-- &lt;p&gt;A complex type that contains general information about the hosted zone.&lt;/p&gt;
-- @param ResourceRecordSetCount [HostedZoneRRSetCount] &lt;p&gt;The number of resource record sets in the hosted zone.&lt;/p&gt;
-- @param CallerReference [Nonce] &lt;p&gt;The value that you specified for &lt;code&gt;CallerReference&lt;/code&gt; when you created the hosted zone.&lt;/p&gt;
-- @param Config [HostedZoneConfig] &lt;p&gt;A complex type that includes the &lt;code&gt;Comment&lt;/code&gt; and &lt;code&gt;PrivateZone&lt;/code&gt; elements. If you omitted the &lt;code&gt;HostedZoneConfig&lt;/code&gt; and &lt;code&gt;Comment&lt;/code&gt; elements from the request, the &lt;code&gt;Config&lt;/code&gt; and &lt;code&gt;Comment&lt;/code&gt; elements don't appear in the response.&lt;/p&gt;
-- @param Id [ResourceId] &lt;p&gt;The ID that Amazon Route 53 assigned to the hosted zone when you created it.&lt;/p&gt;
-- @param Name [DNSName] &lt;p&gt;The name of the domain. For public hosted zones, this is the name that you have registered with your DNS registrar.&lt;/p&gt; &lt;p&gt;For information about how to specify characters other than &lt;code&gt;a-z&lt;/code&gt;, &lt;code&gt;0-9&lt;/code&gt;, and &lt;code&gt;-&lt;/code&gt; (hyphen) and how to specify internationalized domain names, see &lt;a&gt;CreateHostedZone&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: Id
-- Required parameter: Name
-- Required parameter: CallerReference
function M.HostedZone(ResourceRecordSetCount, CallerReference, Config, Id, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating HostedZone")
	local t = { 
		["ResourceRecordSetCount"] = ResourceRecordSetCount,
		["CallerReference"] = CallerReference,
		["Config"] = Config,
		["Id"] = Id,
		["Name"] = Name,
	}
	M.AssertHostedZone(t)
	return t
end

local GetHealthCheckResponse_keys = { "HealthCheck" = true, nil }

function M.AssertGetHealthCheckResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetHealthCheckResponse to be of type 'table'")
	assert(struct["HealthCheck"], "Expected key HealthCheck to exist in table")
	if struct["HealthCheck"] then M.AssertHealthCheck(struct["HealthCheck"]) end
	for k,_ in pairs(struct) do
		assert(GetHealthCheckResponse_keys[k], "GetHealthCheckResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetHealthCheckResponse
-- &lt;p&gt;A complex type that contains the response to a &lt;code&gt;GetHealthCheck&lt;/code&gt; request.&lt;/p&gt;
-- @param HealthCheck [HealthCheck] &lt;p&gt;A complex type that contains information about one health check that is associated with the current AWS account.&lt;/p&gt;
-- Required parameter: HealthCheck
function M.GetHealthCheckResponse(HealthCheck, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetHealthCheckResponse")
	local t = { 
		["HealthCheck"] = HealthCheck,
	}
	M.AssertGetHealthCheckResponse(t)
	return t
end

local NoSuchTrafficPolicy_keys = { "message" = true, nil }

function M.AssertNoSuchTrafficPolicy(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoSuchTrafficPolicy to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(NoSuchTrafficPolicy_keys[k], "NoSuchTrafficPolicy contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoSuchTrafficPolicy
-- &lt;p&gt;No traffic policy exists with the specified ID.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;Descriptive message for the error response.&lt;/p&gt;
function M.NoSuchTrafficPolicy(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NoSuchTrafficPolicy")
	local t = { 
		["message"] = message,
	}
	M.AssertNoSuchTrafficPolicy(t)
	return t
end

local Dimension_keys = { "Name" = true, "Value" = true, nil }

function M.AssertDimension(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Dimension to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Value"], "Expected key Value to exist in table")
	if struct["Name"] then M.AssertDimensionField(struct["Name"]) end
	if struct["Value"] then M.AssertDimensionField(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(Dimension_keys[k], "Dimension contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Dimension
-- &lt;p&gt;For the metric that the CloudWatch alarm is associated with, a complex type that contains information about one dimension.&lt;/p&gt;
-- @param Name [DimensionField] &lt;p&gt;For the metric that the CloudWatch alarm is associated with, the name of one dimension.&lt;/p&gt;
-- @param Value [DimensionField] &lt;p&gt;For the metric that the CloudWatch alarm is associated with, the value of one dimension.&lt;/p&gt;
-- Required parameter: Name
-- Required parameter: Value
function M.Dimension(Name, Value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Dimension")
	local t = { 
		["Name"] = Name,
		["Value"] = Value,
	}
	M.AssertDimension(t)
	return t
end

local UpdateTrafficPolicyCommentResponse_keys = { "TrafficPolicy" = true, nil }

function M.AssertUpdateTrafficPolicyCommentResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateTrafficPolicyCommentResponse to be of type 'table'")
	assert(struct["TrafficPolicy"], "Expected key TrafficPolicy to exist in table")
	if struct["TrafficPolicy"] then M.AssertTrafficPolicy(struct["TrafficPolicy"]) end
	for k,_ in pairs(struct) do
		assert(UpdateTrafficPolicyCommentResponse_keys[k], "UpdateTrafficPolicyCommentResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateTrafficPolicyCommentResponse
-- &lt;p&gt;A complex type that contains the response information for the traffic policy.&lt;/p&gt;
-- @param TrafficPolicy [TrafficPolicy] &lt;p&gt;A complex type that contains settings for the specified traffic policy.&lt;/p&gt;
-- Required parameter: TrafficPolicy
function M.UpdateTrafficPolicyCommentResponse(TrafficPolicy, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateTrafficPolicyCommentResponse")
	local t = { 
		["TrafficPolicy"] = TrafficPolicy,
	}
	M.AssertUpdateTrafficPolicyCommentResponse(t)
	return t
end

local InvalidTrafficPolicyDocument_keys = { "message" = true, nil }

function M.AssertInvalidTrafficPolicyDocument(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidTrafficPolicyDocument to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidTrafficPolicyDocument_keys[k], "InvalidTrafficPolicyDocument contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidTrafficPolicyDocument
-- &lt;p&gt;The format of the traffic policy document that you specified in the &lt;code&gt;Document&lt;/code&gt; element is invalid.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;Descriptive message for the error response.&lt;/p&gt;
function M.InvalidTrafficPolicyDocument(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidTrafficPolicyDocument")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidTrafficPolicyDocument(t)
	return t
end

local NoSuchChange_keys = { "message" = true, nil }

function M.AssertNoSuchChange(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoSuchChange to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(NoSuchChange_keys[k], "NoSuchChange contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoSuchChange
-- &lt;p&gt;A change with the specified change ID does not exist.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;A change with the specified change ID does not exist.&lt;/p&gt;
function M.NoSuchChange(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NoSuchChange")
	local t = { 
		["message"] = message,
	}
	M.AssertNoSuchChange(t)
	return t
end

local ChangeTagsForResourceRequest_keys = { "ResourceType" = true, "ResourceId" = true, "AddTags" = true, "RemoveTagKeys" = true, nil }

function M.AssertChangeTagsForResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ChangeTagsForResourceRequest to be of type 'table'")
	assert(struct["ResourceType"], "Expected key ResourceType to exist in table")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	if struct["ResourceType"] then M.AssertTagResourceType(struct["ResourceType"]) end
	if struct["ResourceId"] then M.AssertTagResourceId(struct["ResourceId"]) end
	if struct["AddTags"] then M.AssertTagList(struct["AddTags"]) end
	if struct["RemoveTagKeys"] then M.AssertTagKeyList(struct["RemoveTagKeys"]) end
	for k,_ in pairs(struct) do
		assert(ChangeTagsForResourceRequest_keys[k], "ChangeTagsForResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ChangeTagsForResourceRequest
-- &lt;p&gt;A complex type that contains information about the tags that you want to add, edit, or delete.&lt;/p&gt;
-- @param ResourceType [TagResourceType] &lt;p&gt;The type of the resource.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;The resource type for health checks is &lt;code&gt;healthcheck&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;The resource type for hosted zones is &lt;code&gt;hostedzone&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param ResourceId [TagResourceId] &lt;p&gt;The ID of the resource for which you want to add, change, or delete tags.&lt;/p&gt;
-- @param AddTags [TagList] &lt;p&gt;A complex type that contains a list of the tags that you want to add to the specified health check or hosted zone and/or the tags that you want to edit &lt;code&gt;Value&lt;/code&gt; for.&lt;/p&gt; &lt;p&gt;You can add a maximum of 10 tags to a health check or a hosted zone.&lt;/p&gt;
-- @param RemoveTagKeys [TagKeyList] &lt;p&gt;A complex type that contains a list of the tags that you want to delete from the specified health check or hosted zone. You can specify up to 10 keys.&lt;/p&gt;
-- Required parameter: ResourceType
-- Required parameter: ResourceId
function M.ChangeTagsForResourceRequest(ResourceType, ResourceId, AddTags, RemoveTagKeys, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ChangeTagsForResourceRequest")
	local t = { 
		["ResourceType"] = ResourceType,
		["ResourceId"] = ResourceId,
		["AddTags"] = AddTags,
		["RemoveTagKeys"] = RemoveTagKeys,
	}
	M.AssertChangeTagsForResourceRequest(t)
	return t
end

local CreateVPCAssociationAuthorizationRequest_keys = { "HostedZoneId" = true, "VPC" = true, nil }

function M.AssertCreateVPCAssociationAuthorizationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateVPCAssociationAuthorizationRequest to be of type 'table'")
	assert(struct["HostedZoneId"], "Expected key HostedZoneId to exist in table")
	assert(struct["VPC"], "Expected key VPC to exist in table")
	if struct["HostedZoneId"] then M.AssertResourceId(struct["HostedZoneId"]) end
	if struct["VPC"] then M.AssertVPC(struct["VPC"]) end
	for k,_ in pairs(struct) do
		assert(CreateVPCAssociationAuthorizationRequest_keys[k], "CreateVPCAssociationAuthorizationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateVPCAssociationAuthorizationRequest
-- &lt;p&gt;A complex type that contains information about the request to authorize associating a VPC with your private hosted zone. Authorization is only required when a private hosted zone and a VPC were created by using different accounts.&lt;/p&gt;
-- @param HostedZoneId [ResourceId] &lt;p&gt;The ID of the private hosted zone that you want to authorize associating a VPC with.&lt;/p&gt;
-- @param VPC [VPC] &lt;p&gt;A complex type that contains the VPC ID and region for the VPC that you want to authorize associating with your hosted zone.&lt;/p&gt;
-- Required parameter: HostedZoneId
-- Required parameter: VPC
function M.CreateVPCAssociationAuthorizationRequest(HostedZoneId, VPC, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateVPCAssociationAuthorizationRequest")
	local t = { 
		["HostedZoneId"] = HostedZoneId,
		["VPC"] = VPC,
	}
	M.AssertCreateVPCAssociationAuthorizationRequest(t)
	return t
end

local ListResourceRecordSetsResponse_keys = { "NextRecordIdentifier" = true, "NextRecordType" = true, "NextRecordName" = true, "ResourceRecordSets" = true, "MaxItems" = true, "IsTruncated" = true, nil }

function M.AssertListResourceRecordSetsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListResourceRecordSetsResponse to be of type 'table'")
	assert(struct["ResourceRecordSets"], "Expected key ResourceRecordSets to exist in table")
	assert(struct["IsTruncated"], "Expected key IsTruncated to exist in table")
	assert(struct["MaxItems"], "Expected key MaxItems to exist in table")
	if struct["NextRecordIdentifier"] then M.AssertResourceRecordSetIdentifier(struct["NextRecordIdentifier"]) end
	if struct["NextRecordType"] then M.AssertRRType(struct["NextRecordType"]) end
	if struct["NextRecordName"] then M.AssertDNSName(struct["NextRecordName"]) end
	if struct["ResourceRecordSets"] then M.AssertResourceRecordSets(struct["ResourceRecordSets"]) end
	if struct["MaxItems"] then M.AssertPageMaxItems(struct["MaxItems"]) end
	if struct["IsTruncated"] then M.AssertPageTruncated(struct["IsTruncated"]) end
	for k,_ in pairs(struct) do
		assert(ListResourceRecordSetsResponse_keys[k], "ListResourceRecordSetsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListResourceRecordSetsResponse
-- &lt;p&gt;A complex type that contains list information for the resource record set.&lt;/p&gt;
-- @param NextRecordIdentifier [ResourceRecordSetIdentifier] &lt;p&gt; &lt;i&gt;Weighted, latency, geolocation, and failover resource record sets only&lt;/i&gt;: If results were truncated for a given DNS name and type, the value of &lt;code&gt;SetIdentifier&lt;/code&gt; for the next resource record set that has the current DNS name and type.&lt;/p&gt;
-- @param NextRecordType [RRType] &lt;p&gt;If the results were truncated, the type of the next record in the list.&lt;/p&gt; &lt;p&gt;This element is present only if &lt;code&gt;IsTruncated&lt;/code&gt; is true. &lt;/p&gt;
-- @param NextRecordName [DNSName] &lt;p&gt;If the results were truncated, the name of the next record in the list.&lt;/p&gt; &lt;p&gt;This element is present only if &lt;code&gt;IsTruncated&lt;/code&gt; is true. &lt;/p&gt;
-- @param ResourceRecordSets [ResourceRecordSets] &lt;p&gt;Information about multiple resource record sets.&lt;/p&gt;
-- @param MaxItems [PageMaxItems] &lt;p&gt;The maximum number of records you requested.&lt;/p&gt;
-- @param IsTruncated [PageTruncated] &lt;p&gt;A flag that indicates whether more resource record sets remain to be listed. If your results were truncated, you can make a follow-up pagination request by using the &lt;code&gt;NextRecordName&lt;/code&gt; element.&lt;/p&gt;
-- Required parameter: ResourceRecordSets
-- Required parameter: IsTruncated
-- Required parameter: MaxItems
function M.ListResourceRecordSetsResponse(NextRecordIdentifier, NextRecordType, NextRecordName, ResourceRecordSets, MaxItems, IsTruncated, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListResourceRecordSetsResponse")
	local t = { 
		["NextRecordIdentifier"] = NextRecordIdentifier,
		["NextRecordType"] = NextRecordType,
		["NextRecordName"] = NextRecordName,
		["ResourceRecordSets"] = ResourceRecordSets,
		["MaxItems"] = MaxItems,
		["IsTruncated"] = IsTruncated,
	}
	M.AssertListResourceRecordSetsResponse(t)
	return t
end

local DeleteTrafficPolicyInstanceRequest_keys = { "Id" = true, nil }

function M.AssertDeleteTrafficPolicyInstanceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTrafficPolicyInstanceRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then M.AssertTrafficPolicyInstanceId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(DeleteTrafficPolicyInstanceRequest_keys[k], "DeleteTrafficPolicyInstanceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTrafficPolicyInstanceRequest
-- &lt;p&gt;A request to delete a specified traffic policy instance.&lt;/p&gt;
-- @param Id [TrafficPolicyInstanceId] &lt;p&gt;The ID of the traffic policy instance that you want to delete. &lt;/p&gt; &lt;important&gt; &lt;p&gt;When you delete a traffic policy instance, Amazon Route 53 also deletes all of the resource record sets that were created when you created the traffic policy instance.&lt;/p&gt; &lt;/important&gt;
-- Required parameter: Id
function M.DeleteTrafficPolicyInstanceRequest(Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteTrafficPolicyInstanceRequest")
	local t = { 
		["Id"] = Id,
	}
	M.AssertDeleteTrafficPolicyInstanceRequest(t)
	return t
end

local UpdateHostedZoneCommentResponse_keys = { "HostedZone" = true, nil }

function M.AssertUpdateHostedZoneCommentResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateHostedZoneCommentResponse to be of type 'table'")
	assert(struct["HostedZone"], "Expected key HostedZone to exist in table")
	if struct["HostedZone"] then M.AssertHostedZone(struct["HostedZone"]) end
	for k,_ in pairs(struct) do
		assert(UpdateHostedZoneCommentResponse_keys[k], "UpdateHostedZoneCommentResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateHostedZoneCommentResponse
-- &lt;p&gt;A complex type that contains the response to the &lt;code&gt;UpdateHostedZoneComment&lt;/code&gt; request.&lt;/p&gt;
-- @param HostedZone [HostedZone] &lt;p&gt;A complex type that contains the response to the &lt;code&gt;UpdateHostedZoneComment&lt;/code&gt; request.&lt;/p&gt;
-- Required parameter: HostedZone
function M.UpdateHostedZoneCommentResponse(HostedZone, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateHostedZoneCommentResponse")
	local t = { 
		["HostedZone"] = HostedZone,
	}
	M.AssertUpdateHostedZoneCommentResponse(t)
	return t
end

local HealthCheckVersionMismatch_keys = { "message" = true, nil }

function M.AssertHealthCheckVersionMismatch(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HealthCheckVersionMismatch to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(HealthCheckVersionMismatch_keys[k], "HealthCheckVersionMismatch contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HealthCheckVersionMismatch
-- &lt;p&gt;The value of &lt;code&gt;HealthCheckVersion&lt;/code&gt; in the request doesn't match the value of &lt;code&gt;HealthCheckVersion&lt;/code&gt; in the health check.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;The value of &lt;code&gt;HealthCheckVersion&lt;/code&gt; in the request doesn't match the value of &lt;code&gt;HealthCheckVersion&lt;/code&gt; in the health check.&lt;/p&gt;
function M.HealthCheckVersionMismatch(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating HealthCheckVersionMismatch")
	local t = { 
		["message"] = message,
	}
	M.AssertHealthCheckVersionMismatch(t)
	return t
end

local IncompatibleVersion_keys = { "message" = true, nil }

function M.AssertIncompatibleVersion(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IncompatibleVersion to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(IncompatibleVersion_keys[k], "IncompatibleVersion contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IncompatibleVersion
-- &lt;p&gt;The resource you're trying to access is unsupported on this Amazon Route 53 endpoint.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;The resource you're trying to access is unsupported on this Amazon Route 53 endpoint.&lt;/p&gt;
function M.IncompatibleVersion(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IncompatibleVersion")
	local t = { 
		["message"] = message,
	}
	M.AssertIncompatibleVersion(t)
	return t
end

local TooManyVPCAssociationAuthorizations_keys = { "message" = true, nil }

function M.AssertTooManyVPCAssociationAuthorizations(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyVPCAssociationAuthorizations to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(TooManyVPCAssociationAuthorizations_keys[k], "TooManyVPCAssociationAuthorizations contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyVPCAssociationAuthorizations
-- &lt;p&gt;You've created the maximum number of authorizations that can be created for the specified hosted zone. To authorize another VPC to be associated with the hosted zone, submit a &lt;code&gt;DeleteVPCAssociationAuthorization&lt;/code&gt; request to remove an existing authorization. To get a list of existing authorizations, submit a &lt;code&gt;ListVPCAssociationAuthorizations&lt;/code&gt; request.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;Descriptive message for the error response.&lt;/p&gt;
function M.TooManyVPCAssociationAuthorizations(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyVPCAssociationAuthorizations")
	local t = { 
		["message"] = message,
	}
	M.AssertTooManyVPCAssociationAuthorizations(t)
	return t
end

local TooManyHealthChecks_keys = { "message" = true, nil }

function M.AssertTooManyHealthChecks(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyHealthChecks to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(TooManyHealthChecks_keys[k], "TooManyHealthChecks contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyHealthChecks
-- &lt;p&gt;You have reached the maximum number of active health checks for an AWS account. The default limit is 100. To request a higher limit, &lt;a href=&quot;http://aws.amazon.com/route53-request&quot;&gt;create a case&lt;/a&gt; with the AWS Support Center.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;You have reached the maximum number of active health checks for an AWS account. The default limit is 100. To request a higher limit, &lt;a href=&quot;http://aws.amazon.com/route53-request&quot;&gt;create a case&lt;/a&gt; with the AWS Support Center.&lt;/p&gt;
function M.TooManyHealthChecks(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyHealthChecks")
	local t = { 
		["message"] = message,
	}
	M.AssertTooManyHealthChecks(t)
	return t
end

local UpdateHealthCheckRequest_keys = { "SearchString" = true, "HealthCheckId" = true, "AlarmIdentifier" = true, "HealthCheckVersion" = true, "ResourcePath" = true, "ChildHealthChecks" = true, "Inverted" = true, "Regions" = true, "InsufficientDataHealthStatus" = true, "HealthThreshold" = true, "EnableSNI" = true, "FailureThreshold" = true, "IPAddress" = true, "Port" = true, "FullyQualifiedDomainName" = true, nil }

function M.AssertUpdateHealthCheckRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateHealthCheckRequest to be of type 'table'")
	assert(struct["HealthCheckId"], "Expected key HealthCheckId to exist in table")
	if struct["SearchString"] then M.AssertSearchString(struct["SearchString"]) end
	if struct["HealthCheckId"] then M.AssertHealthCheckId(struct["HealthCheckId"]) end
	if struct["AlarmIdentifier"] then M.AssertAlarmIdentifier(struct["AlarmIdentifier"]) end
	if struct["HealthCheckVersion"] then M.AssertHealthCheckVersion(struct["HealthCheckVersion"]) end
	if struct["ResourcePath"] then M.AssertResourcePath(struct["ResourcePath"]) end
	if struct["ChildHealthChecks"] then M.AssertChildHealthCheckList(struct["ChildHealthChecks"]) end
	if struct["Inverted"] then M.AssertInverted(struct["Inverted"]) end
	if struct["Regions"] then M.AssertHealthCheckRegionList(struct["Regions"]) end
	if struct["InsufficientDataHealthStatus"] then M.AssertInsufficientDataHealthStatus(struct["InsufficientDataHealthStatus"]) end
	if struct["HealthThreshold"] then M.AssertHealthThreshold(struct["HealthThreshold"]) end
	if struct["EnableSNI"] then M.AssertEnableSNI(struct["EnableSNI"]) end
	if struct["FailureThreshold"] then M.AssertFailureThreshold(struct["FailureThreshold"]) end
	if struct["IPAddress"] then M.AssertIPAddress(struct["IPAddress"]) end
	if struct["Port"] then M.AssertPort(struct["Port"]) end
	if struct["FullyQualifiedDomainName"] then M.AssertFullyQualifiedDomainName(struct["FullyQualifiedDomainName"]) end
	for k,_ in pairs(struct) do
		assert(UpdateHealthCheckRequest_keys[k], "UpdateHealthCheckRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateHealthCheckRequest
-- &lt;p&gt;A complex type that contains information about a request to update a health check.&lt;/p&gt;
-- @param SearchString [SearchString] &lt;p&gt;If the value of &lt;code&gt;Type&lt;/code&gt; is &lt;code&gt;HTTP_STR_MATCH&lt;/code&gt; or &lt;code&gt;HTTP_STR_MATCH&lt;/code&gt;, the string that you want Amazon Route 53 to search for in the response body from the specified resource. If the string appears in the response body, Amazon Route 53 considers the resource healthy. (You can't change the value of &lt;code&gt;Type&lt;/code&gt; when you update a health check.)&lt;/p&gt;
-- @param HealthCheckId [HealthCheckId] &lt;p&gt;The ID for the health check for which you want detailed information. When you created the health check, &lt;code&gt;CreateHealthCheck&lt;/code&gt; returned the ID in the response, in the &lt;code&gt;HealthCheckId&lt;/code&gt; element.&lt;/p&gt;
-- @param AlarmIdentifier [AlarmIdentifier] &lt;p&gt;A complex type that contains information about a request to update a health check.&lt;/p&gt;
-- @param HealthCheckVersion [HealthCheckVersion] &lt;p&gt;A sequential counter that Amazon Route 53 sets to &lt;code&gt;1&lt;/code&gt; when you create a health check and increments by 1 each time you update settings for the health check.&lt;/p&gt; &lt;p&gt;We recommend that you use &lt;code&gt;GetHealthCheck&lt;/code&gt; or &lt;code&gt;ListHealthChecks&lt;/code&gt; to get the current value of &lt;code&gt;HealthCheckVersion&lt;/code&gt; for the health check that you want to update, and that you include that value in your &lt;code&gt;UpdateHealthCheck&lt;/code&gt; request. This prevents Amazon Route 53 from overwriting an intervening update:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;If the value in the &lt;code&gt;UpdateHealthCheck&lt;/code&gt; request matches the value of &lt;code&gt;HealthCheckVersion&lt;/code&gt; in the health check, Amazon Route 53 updates the health check with the new settings.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;If the value of &lt;code&gt;HealthCheckVersion&lt;/code&gt; in the health check is greater, the health check was changed after you got the version number. Amazon Route 53 does not update the health check, and it returns a &lt;code&gt;HealthCheckVersionMismatch&lt;/code&gt; error.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param ResourcePath [ResourcePath] &lt;p&gt;The path that you want Amazon Route 53 to request when performing health checks. The path can be any value for which your endpoint will return an HTTP status code of 2xx or 3xx when the endpoint is healthy, for example the file /docs/route53-health-check.html. &lt;/p&gt; &lt;p&gt;Specify this value only if you want to change it.&lt;/p&gt;
-- @param ChildHealthChecks [ChildHealthCheckList] &lt;p&gt;A complex type that contains one &lt;code&gt;ChildHealthCheck&lt;/code&gt; element for each health check that you want to associate with a &lt;code&gt;CALCULATED&lt;/code&gt; health check.&lt;/p&gt;
-- @param Inverted [Inverted] &lt;p&gt;Specify whether you want Amazon Route 53 to invert the status of a health check, for example, to consider a health check unhealthy when it otherwise would be considered healthy.&lt;/p&gt;
-- @param Regions [HealthCheckRegionList] &lt;p&gt;A complex type that contains one &lt;code&gt;Region&lt;/code&gt; element for each region that you want Amazon Route 53 health checkers to check the specified endpoint from.&lt;/p&gt;
-- @param InsufficientDataHealthStatus [InsufficientDataHealthStatus] &lt;p&gt;When CloudWatch has insufficient data about the metric to determine the alarm state, the status that you want Amazon Route 53 to assign to the health check:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Healthy&lt;/code&gt;: Amazon Route 53 considers the health check to be healthy.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Unhealthy&lt;/code&gt;: Amazon Route 53 considers the health check to be unhealthy.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;LastKnownStatus&lt;/code&gt;: Amazon Route 53 uses the status of the health check from the last time CloudWatch had sufficient data to determine the alarm state. For new health checks that have no last known status, the default status for the health check is healthy.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param HealthThreshold [HealthThreshold] &lt;p&gt;The number of child health checks that are associated with a &lt;code&gt;CALCULATED&lt;/code&gt; health that Amazon Route 53 must consider healthy for the &lt;code&gt;CALCULATED&lt;/code&gt; health check to be considered healthy. To specify the child health checks that you want to associate with a &lt;code&gt;CALCULATED&lt;/code&gt; health check, use the &lt;code&gt;ChildHealthChecks&lt;/code&gt; and &lt;code&gt;ChildHealthCheck&lt;/code&gt; elements.&lt;/p&gt; &lt;p&gt;Note the following:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;If you specify a number greater than the number of child health checks, Amazon Route 53 always considers this health check to be unhealthy.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;If you specify &lt;code&gt;0&lt;/code&gt;, Amazon Route 53 always considers this health check to be healthy.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param EnableSNI [EnableSNI] &lt;p&gt;Specify whether you want Amazon Route 53 to send the value of &lt;code&gt;FullyQualifiedDomainName&lt;/code&gt; to the endpoint in the &lt;code&gt;client_hello&lt;/code&gt; message during &lt;code&gt;TLS&lt;/code&gt; negotiation. This allows the endpoint to respond to &lt;code&gt;HTTPS&lt;/code&gt; health check requests with the applicable SSL/TLS certificate.&lt;/p&gt; &lt;p&gt;Some endpoints require that HTTPS requests include the host name in the &lt;code&gt;client_hello&lt;/code&gt; message. If you don't enable SNI, the status of the health check will be SSL alert &lt;code&gt;handshake_failure&lt;/code&gt;. A health check can also have that status for other reasons. If SNI is enabled and you're still getting the error, check the SSL/TLS configuration on your endpoint and confirm that your certificate is valid.&lt;/p&gt; &lt;p&gt;The SSL/TLS certificate on your endpoint includes a domain name in the &lt;code&gt;Common Name&lt;/code&gt; field and possibly several more in the &lt;code&gt;Subject Alternative Names&lt;/code&gt; field. One of the domain names in the certificate should match the value that you specify for &lt;code&gt;FullyQualifiedDomainName&lt;/code&gt;. If the endpoint responds to the &lt;code&gt;client_hello&lt;/code&gt; message with a certificate that does not include the domain name that you specified in &lt;code&gt;FullyQualifiedDomainName&lt;/code&gt;, a health checker will retry the handshake. In the second attempt, the health checker will omit &lt;code&gt;FullyQualifiedDomainName&lt;/code&gt; from the &lt;code&gt;client_hello&lt;/code&gt; message.&lt;/p&gt;
-- @param FailureThreshold [FailureThreshold] &lt;p&gt;The number of consecutive health checks that an endpoint must pass or fail for Amazon Route 53 to change the current status of the endpoint from unhealthy to healthy or vice versa. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-determining-health-of-endpoints.html&quot;&gt;How Amazon Route 53 Determines Whether an Endpoint Is Healthy&lt;/a&gt; in the &lt;i&gt;Amazon Route 53 Developer Guide&lt;/i&gt;.&lt;/p&gt; &lt;p&gt;If you don't specify a value for &lt;code&gt;FailureThreshold&lt;/code&gt;, the default value is three health checks.&lt;/p&gt;
-- @param IPAddress [IPAddress] &lt;p&gt;The IPv4 or IPv6 IP address for the endpoint that you want Amazon Route 53 to perform health checks on. If you don't specify a value for &lt;code&gt;IPAddress&lt;/code&gt;, Amazon Route 53 sends a DNS request to resolve the domain name that you specify in &lt;code&gt;FullyQualifiedDomainName&lt;/code&gt; at the interval that you specify in &lt;code&gt;RequestInterval&lt;/code&gt;. Using an IP address that is returned by DNS, Amazon Route 53 then checks the health of the endpoint.&lt;/p&gt; &lt;p&gt;Use one of the following formats for the value of &lt;code&gt;IPAddress&lt;/code&gt;: &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;IPv4 address&lt;/b&gt;: four values between 0 and 255, separated by periods (.), for example, &lt;code&gt;192.0.2.44&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;IPv6 address&lt;/b&gt;: eight groups of four hexadecimal values, separated by colons (:), for example, &lt;code&gt;2001:0db8:85a3:0000:0000:abcd:0001:2345&lt;/code&gt;. You can also shorten IPv6 addresses as described in RFC 5952, for example, &lt;code&gt;2001:db8:85a3::abcd:1:2345&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;If the endpoint is an EC2 instance, we recommend that you create an Elastic IP address, associate it with your EC2 instance, and specify the Elastic IP address for &lt;code&gt;IPAddress&lt;/code&gt;. This ensures that the IP address of your instance never changes. For more information, see the applicable documentation:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Linux: &lt;a href=&quot;http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html&quot;&gt;Elastic IP Addresses (EIP)&lt;/a&gt; in the &lt;i&gt;Amazon EC2 User Guide for Linux Instances&lt;/i&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Windows: &lt;a href=&quot;http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/elastic-ip-addresses-eip.html&quot;&gt;Elastic IP Addresses (EIP)&lt;/a&gt; in the &lt;i&gt;Amazon EC2 User Guide for Windows Instances&lt;/i&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;note&gt; &lt;p&gt;If a health check already has a value for &lt;code&gt;IPAddress&lt;/code&gt;, you can change the value. However, you can't update an existing health check to add or remove the value of &lt;code&gt;IPAddress&lt;/code&gt;. &lt;/p&gt; &lt;/note&gt; &lt;p&gt;For more information, see &lt;a&gt;UpdateHealthCheckRequest$FullyQualifiedDomainName&lt;/a&gt;.&lt;/p&gt; &lt;p&gt;Constraints: Amazon Route 53 can't check the health of endpoints for which the IP address is in local, private, non-routable, or multicast ranges. For more information about IP addresses for which you can't create health checks, see the following documents:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;a href=&quot;https://tools.ietf.org/html/rfc5735&quot;&gt;RFC 5735, Special Use IPv4 Addresses&lt;/a&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;a href=&quot;https://tools.ietf.org/html/rfc6598&quot;&gt;RFC 6598, IANA-Reserved IPv4 Prefix for Shared Address Space&lt;/a&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;a href=&quot;https://tools.ietf.org/html/rfc5156&quot;&gt;RFC 5156, Special-Use IPv6 Addresses&lt;/a&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param Port [Port] &lt;p&gt;The port on the endpoint on which you want Amazon Route 53 to perform health checks.&lt;/p&gt;
-- @param FullyQualifiedDomainName [FullyQualifiedDomainName] &lt;p&gt;Amazon Route 53 behavior depends on whether you specify a value for &lt;code&gt;IPAddress&lt;/code&gt;.&lt;/p&gt; &lt;note&gt; &lt;p&gt;If a health check already has a value for &lt;code&gt;IPAddress&lt;/code&gt;, you can change the value. However, you can't update an existing health check to add or remove the value of &lt;code&gt;IPAddress&lt;/code&gt;. &lt;/p&gt; &lt;/note&gt; &lt;p&gt; &lt;b&gt;If you specify a value for&lt;/b&gt; &lt;code&gt;IPAddress&lt;/code&gt;:&lt;/p&gt; &lt;p&gt;Amazon Route 53 sends health check requests to the specified IPv4 or IPv6 address and passes the value of &lt;code&gt;FullyQualifiedDomainName&lt;/code&gt; in the &lt;code&gt;Host&lt;/code&gt; header for all health checks except TCP health checks. This is typically the fully qualified DNS name of the endpoint on which you want Amazon Route 53 to perform health checks.&lt;/p&gt; &lt;p&gt;When Amazon Route 53 checks the health of an endpoint, here is how it constructs the &lt;code&gt;Host&lt;/code&gt; header:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;If you specify a value of &lt;code&gt;80&lt;/code&gt; for &lt;code&gt;Port&lt;/code&gt; and &lt;code&gt;HTTP&lt;/code&gt; or &lt;code&gt;HTTP_STR_MATCH&lt;/code&gt; for &lt;code&gt;Type&lt;/code&gt;, Amazon Route 53 passes the value of &lt;code&gt;FullyQualifiedDomainName&lt;/code&gt; to the endpoint in the &lt;code&gt;Host&lt;/code&gt; header.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;If you specify a value of &lt;code&gt;443&lt;/code&gt; for &lt;code&gt;Port&lt;/code&gt; and &lt;code&gt;HTTPS&lt;/code&gt; or &lt;code&gt;HTTPS_STR_MATCH&lt;/code&gt; for &lt;code&gt;Type&lt;/code&gt;, Amazon Route 53 passes the value of &lt;code&gt;FullyQualifiedDomainName&lt;/code&gt; to the endpoint in the &lt;code&gt;Host&lt;/code&gt; header.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;If you specify another value for &lt;code&gt;Port&lt;/code&gt; and any value except &lt;code&gt;TCP&lt;/code&gt; for &lt;code&gt;Type&lt;/code&gt;, Amazon Route 53 passes &lt;i&gt; &lt;code&gt;FullyQualifiedDomainName&lt;/code&gt;:&lt;code&gt;Port&lt;/code&gt; &lt;/i&gt; to the endpoint in the &lt;code&gt;Host&lt;/code&gt; header.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;If you don't specify a value for &lt;code&gt;FullyQualifiedDomainName&lt;/code&gt;, Amazon Route 53 substitutes the value of &lt;code&gt;IPAddress&lt;/code&gt; in the &lt;code&gt;Host&lt;/code&gt; header in each of the above cases.&lt;/p&gt; &lt;p&gt; &lt;b&gt;If you don't specify a value for&lt;/b&gt; &lt;code&gt;IPAddress&lt;/code&gt;:&lt;/p&gt; &lt;p&gt;If you don't specify a value for &lt;code&gt;IPAddress&lt;/code&gt;, Amazon Route 53 sends a DNS request to the domain that you specify in &lt;code&gt;FullyQualifiedDomainName&lt;/code&gt; at the interval you specify in &lt;code&gt;RequestInterval&lt;/code&gt;. Using an IPv4 address that is returned by DNS, Amazon Route 53 then checks the health of the endpoint.&lt;/p&gt; &lt;note&gt; &lt;p&gt;If you don't specify a value for &lt;code&gt;IPAddress&lt;/code&gt;, Amazon Route 53 uses only IPv4 to send health checks to the endpoint. If there's no resource record set with a type of A for the name that you specify for &lt;code&gt;FullyQualifiedDomainName&lt;/code&gt;, the health check fails with a &quot;DNS resolution failed&quot; error.&lt;/p&gt; &lt;/note&gt; &lt;p&gt;If you want to check the health of weighted, latency, or failover resource record sets and you choose to specify the endpoint only by &lt;code&gt;FullyQualifiedDomainName&lt;/code&gt;, we recommend that you create a separate health check for each endpoint. For example, create a health check for each HTTP server that is serving content for www.example.com. For the value of &lt;code&gt;FullyQualifiedDomainName&lt;/code&gt;, specify the domain name of the server (such as &lt;code&gt;us-east-2-www.example.com&lt;/code&gt;), not the name of the resource record sets (www.example.com).&lt;/p&gt; &lt;important&gt; &lt;p&gt;In this configuration, if the value of &lt;code&gt;FullyQualifiedDomainName&lt;/code&gt; matches the name of the resource record sets and you then associate the health check with those resource record sets, health check results will be unpredictable.&lt;/p&gt; &lt;/important&gt; &lt;p&gt;In addition, if the value of &lt;code&gt;Type&lt;/code&gt; is &lt;code&gt;HTTP&lt;/code&gt;, &lt;code&gt;HTTPS&lt;/code&gt;, &lt;code&gt;HTTP_STR_MATCH&lt;/code&gt;, or &lt;code&gt;HTTPS_STR_MATCH&lt;/code&gt;, Amazon Route 53 passes the value of &lt;code&gt;FullyQualifiedDomainName&lt;/code&gt; in the &lt;code&gt;Host&lt;/code&gt; header, as it does when you specify a value for &lt;code&gt;IPAddress&lt;/code&gt;. If the value of &lt;code&gt;Type&lt;/code&gt; is &lt;code&gt;TCP&lt;/code&gt;, Amazon Route 53 doesn't pass a &lt;code&gt;Host&lt;/code&gt; header.&lt;/p&gt;
-- Required parameter: HealthCheckId
function M.UpdateHealthCheckRequest(SearchString, HealthCheckId, AlarmIdentifier, HealthCheckVersion, ResourcePath, ChildHealthChecks, Inverted, Regions, InsufficientDataHealthStatus, HealthThreshold, EnableSNI, FailureThreshold, IPAddress, Port, FullyQualifiedDomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateHealthCheckRequest")
	local t = { 
		["SearchString"] = SearchString,
		["HealthCheckId"] = HealthCheckId,
		["AlarmIdentifier"] = AlarmIdentifier,
		["HealthCheckVersion"] = HealthCheckVersion,
		["ResourcePath"] = ResourcePath,
		["ChildHealthChecks"] = ChildHealthChecks,
		["Inverted"] = Inverted,
		["Regions"] = Regions,
		["InsufficientDataHealthStatus"] = InsufficientDataHealthStatus,
		["HealthThreshold"] = HealthThreshold,
		["EnableSNI"] = EnableSNI,
		["FailureThreshold"] = FailureThreshold,
		["IPAddress"] = IPAddress,
		["Port"] = Port,
		["FullyQualifiedDomainName"] = FullyQualifiedDomainName,
	}
	M.AssertUpdateHealthCheckRequest(t)
	return t
end

local InvalidVPCId_keys = { "message" = true, nil }

function M.AssertInvalidVPCId(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidVPCId to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidVPCId_keys[k], "InvalidVPCId contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidVPCId
-- &lt;p&gt;The VPC ID that you specified either isn't a valid ID or the current account is not authorized to access this VPC.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;Descriptive message for the error response.&lt;/p&gt;
function M.InvalidVPCId(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidVPCId")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidVPCId(t)
	return t
end

local NoSuchHostedZone_keys = { "message" = true, nil }

function M.AssertNoSuchHostedZone(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoSuchHostedZone to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(NoSuchHostedZone_keys[k], "NoSuchHostedZone contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoSuchHostedZone
-- &lt;p&gt;No hosted zone exists with the ID that you specified.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;Descriptive message for the error response.&lt;/p&gt;
function M.NoSuchHostedZone(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NoSuchHostedZone")
	local t = { 
		["message"] = message,
	}
	M.AssertNoSuchHostedZone(t)
	return t
end

local GeoLocationDetails_keys = { "CountryName" = true, "CountryCode" = true, "SubdivisionCode" = true, "ContinentName" = true, "SubdivisionName" = true, "ContinentCode" = true, nil }

function M.AssertGeoLocationDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GeoLocationDetails to be of type 'table'")
	if struct["CountryName"] then M.AssertGeoLocationCountryName(struct["CountryName"]) end
	if struct["CountryCode"] then M.AssertGeoLocationCountryCode(struct["CountryCode"]) end
	if struct["SubdivisionCode"] then M.AssertGeoLocationSubdivisionCode(struct["SubdivisionCode"]) end
	if struct["ContinentName"] then M.AssertGeoLocationContinentName(struct["ContinentName"]) end
	if struct["SubdivisionName"] then M.AssertGeoLocationSubdivisionName(struct["SubdivisionName"]) end
	if struct["ContinentCode"] then M.AssertGeoLocationContinentCode(struct["ContinentCode"]) end
	for k,_ in pairs(struct) do
		assert(GeoLocationDetails_keys[k], "GeoLocationDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GeoLocationDetails
-- &lt;p&gt;A complex type that contains the codes and full continent, country, and subdivision names for the specified &lt;code&gt;geolocation&lt;/code&gt; code.&lt;/p&gt;
-- @param CountryName [GeoLocationCountryName] &lt;p&gt;The name of the country.&lt;/p&gt;
-- @param CountryCode [GeoLocationCountryCode] &lt;p&gt;The two-letter code for the country.&lt;/p&gt;
-- @param SubdivisionCode [GeoLocationSubdivisionCode] &lt;p&gt;The code for the subdivision, for example, a state in the United States or a province in Canada.&lt;/p&gt;
-- @param ContinentName [GeoLocationContinentName] &lt;p&gt;The full name of the continent.&lt;/p&gt;
-- @param SubdivisionName [GeoLocationSubdivisionName] &lt;p&gt;The full name of the subdivision, for example, a state in the United States or a province in Canada.&lt;/p&gt;
-- @param ContinentCode [GeoLocationContinentCode] &lt;p&gt;The two-letter code for the continent.&lt;/p&gt;
function M.GeoLocationDetails(CountryName, CountryCode, SubdivisionCode, ContinentName, SubdivisionName, ContinentCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GeoLocationDetails")
	local t = { 
		["CountryName"] = CountryName,
		["CountryCode"] = CountryCode,
		["SubdivisionCode"] = SubdivisionCode,
		["ContinentName"] = ContinentName,
		["SubdivisionName"] = SubdivisionName,
		["ContinentCode"] = ContinentCode,
	}
	M.AssertGeoLocationDetails(t)
	return t
end

local ListResourceRecordSetsRequest_keys = { "HostedZoneId" = true, "StartRecordName" = true, "StartRecordIdentifier" = true, "StartRecordType" = true, "MaxItems" = true, nil }

function M.AssertListResourceRecordSetsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListResourceRecordSetsRequest to be of type 'table'")
	assert(struct["HostedZoneId"], "Expected key HostedZoneId to exist in table")
	if struct["HostedZoneId"] then M.AssertResourceId(struct["HostedZoneId"]) end
	if struct["StartRecordName"] then M.AssertDNSName(struct["StartRecordName"]) end
	if struct["StartRecordIdentifier"] then M.AssertResourceRecordSetIdentifier(struct["StartRecordIdentifier"]) end
	if struct["StartRecordType"] then M.AssertRRType(struct["StartRecordType"]) end
	if struct["MaxItems"] then M.AssertPageMaxItems(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(ListResourceRecordSetsRequest_keys[k], "ListResourceRecordSetsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListResourceRecordSetsRequest
-- &lt;p&gt;A request for the resource record sets that are associated with a specified hosted zone.&lt;/p&gt;
-- @param HostedZoneId [ResourceId] &lt;p&gt;The ID of the hosted zone that contains the resource record sets that you want to list.&lt;/p&gt;
-- @param StartRecordName [DNSName] &lt;p&gt;The first name in the lexicographic ordering of resource record sets that you want to list.&lt;/p&gt;
-- @param StartRecordIdentifier [ResourceRecordSetIdentifier] &lt;p&gt; &lt;i&gt;Weighted resource record sets only:&lt;/i&gt; If results were truncated for a given DNS name and type, specify the value of &lt;code&gt;NextRecordIdentifier&lt;/code&gt; from the previous response to get the next resource record set that has the current DNS name and type.&lt;/p&gt;
-- @param StartRecordType [RRType] &lt;p&gt;The type of resource record set to begin the record listing from.&lt;/p&gt; &lt;p&gt;Valid values for basic resource record sets: &lt;code&gt;A&lt;/code&gt; | &lt;code&gt;AAAA&lt;/code&gt; | &lt;code&gt;CNAME&lt;/code&gt; | &lt;code&gt;MX&lt;/code&gt; | &lt;code&gt;NAPTR&lt;/code&gt; | &lt;code&gt;NS&lt;/code&gt; | &lt;code&gt;PTR&lt;/code&gt; | &lt;code&gt;SOA&lt;/code&gt; | &lt;code&gt;SPF&lt;/code&gt; | &lt;code&gt;SRV&lt;/code&gt; | &lt;code&gt;TXT&lt;/code&gt; &lt;/p&gt; &lt;p&gt;Values for weighted, latency, geo, and failover resource record sets: &lt;code&gt;A&lt;/code&gt; | &lt;code&gt;AAAA&lt;/code&gt; | &lt;code&gt;CNAME&lt;/code&gt; | &lt;code&gt;MX&lt;/code&gt; | &lt;code&gt;NAPTR&lt;/code&gt; | &lt;code&gt;PTR&lt;/code&gt; | &lt;code&gt;SPF&lt;/code&gt; | &lt;code&gt;SRV&lt;/code&gt; | &lt;code&gt;TXT&lt;/code&gt; &lt;/p&gt; &lt;p&gt;Values for alias resource record sets: &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;CloudFront distribution&lt;/b&gt;: A or AAAA&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Elastic Beanstalk environment that has a regionalized subdomain&lt;/b&gt;: A&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;ELB load balancer&lt;/b&gt;: A | AAAA&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Amazon S3 bucket&lt;/b&gt;: A&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;Constraint: Specifying &lt;code&gt;type&lt;/code&gt; without specifying &lt;code&gt;name&lt;/code&gt; returns an &lt;code&gt;InvalidInput&lt;/code&gt; error.&lt;/p&gt;
-- @param MaxItems [PageMaxItems] &lt;p&gt;(Optional) The maximum number of resource records sets to include in the response body for this request. If the response includes more than &lt;code&gt;maxitems&lt;/code&gt; resource record sets, the value of the &lt;code&gt;IsTruncated&lt;/code&gt; element in the response is &lt;code&gt;true&lt;/code&gt;, and the values of the &lt;code&gt;NextRecordName&lt;/code&gt; and &lt;code&gt;NextRecordType&lt;/code&gt; elements in the response identify the first resource record set in the next group of &lt;code&gt;maxitems&lt;/code&gt; resource record sets.&lt;/p&gt;
-- Required parameter: HostedZoneId
function M.ListResourceRecordSetsRequest(HostedZoneId, StartRecordName, StartRecordIdentifier, StartRecordType, MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListResourceRecordSetsRequest")
	local t = { 
		["HostedZoneId"] = HostedZoneId,
		["StartRecordName"] = StartRecordName,
		["StartRecordIdentifier"] = StartRecordIdentifier,
		["StartRecordType"] = StartRecordType,
		["MaxItems"] = MaxItems,
	}
	M.AssertListResourceRecordSetsRequest(t)
	return t
end

local GetReusableDelegationSetResponse_keys = { "DelegationSet" = true, nil }

function M.AssertGetReusableDelegationSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetReusableDelegationSetResponse to be of type 'table'")
	assert(struct["DelegationSet"], "Expected key DelegationSet to exist in table")
	if struct["DelegationSet"] then M.AssertDelegationSet(struct["DelegationSet"]) end
	for k,_ in pairs(struct) do
		assert(GetReusableDelegationSetResponse_keys[k], "GetReusableDelegationSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetReusableDelegationSetResponse
-- &lt;p&gt;A complex type that contains the response to the &lt;code&gt;GetReusableDelegationSet&lt;/code&gt; request.&lt;/p&gt;
-- @param DelegationSet [DelegationSet] &lt;p&gt;A complex type that contains information about the reusable delegation set.&lt;/p&gt;
-- Required parameter: DelegationSet
function M.GetReusableDelegationSetResponse(DelegationSet, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetReusableDelegationSetResponse")
	local t = { 
		["DelegationSet"] = DelegationSet,
	}
	M.AssertGetReusableDelegationSetResponse(t)
	return t
end

local ListTrafficPolicyInstancesResponse_keys = { "TrafficPolicyInstanceNameMarker" = true, "HostedZoneIdMarker" = true, "TrafficPolicyInstances" = true, "MaxItems" = true, "TrafficPolicyInstanceTypeMarker" = true, "IsTruncated" = true, nil }

function M.AssertListTrafficPolicyInstancesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTrafficPolicyInstancesResponse to be of type 'table'")
	assert(struct["TrafficPolicyInstances"], "Expected key TrafficPolicyInstances to exist in table")
	assert(struct["IsTruncated"], "Expected key IsTruncated to exist in table")
	assert(struct["MaxItems"], "Expected key MaxItems to exist in table")
	if struct["TrafficPolicyInstanceNameMarker"] then M.AssertDNSName(struct["TrafficPolicyInstanceNameMarker"]) end
	if struct["HostedZoneIdMarker"] then M.AssertResourceId(struct["HostedZoneIdMarker"]) end
	if struct["TrafficPolicyInstances"] then M.AssertTrafficPolicyInstances(struct["TrafficPolicyInstances"]) end
	if struct["MaxItems"] then M.AssertPageMaxItems(struct["MaxItems"]) end
	if struct["TrafficPolicyInstanceTypeMarker"] then M.AssertRRType(struct["TrafficPolicyInstanceTypeMarker"]) end
	if struct["IsTruncated"] then M.AssertPageTruncated(struct["IsTruncated"]) end
	for k,_ in pairs(struct) do
		assert(ListTrafficPolicyInstancesResponse_keys[k], "ListTrafficPolicyInstancesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTrafficPolicyInstancesResponse
-- &lt;p&gt;A complex type that contains the response information for the request.&lt;/p&gt;
-- @param TrafficPolicyInstanceNameMarker [DNSName] &lt;p&gt;If &lt;code&gt;IsTruncated&lt;/code&gt; is &lt;code&gt;true&lt;/code&gt;, &lt;code&gt;TrafficPolicyInstanceNameMarker&lt;/code&gt; is the name of the first traffic policy instance that Amazon Route 53 will return if you submit another &lt;code&gt;ListTrafficPolicyInstances&lt;/code&gt; request. &lt;/p&gt;
-- @param HostedZoneIdMarker [ResourceId] &lt;p&gt;If &lt;code&gt;IsTruncated&lt;/code&gt; is &lt;code&gt;true&lt;/code&gt;, &lt;code&gt;HostedZoneIdMarker&lt;/code&gt; is the ID of the hosted zone of the first traffic policy instance that Amazon Route 53 will return if you submit another &lt;code&gt;ListTrafficPolicyInstances&lt;/code&gt; request. &lt;/p&gt;
-- @param TrafficPolicyInstances [TrafficPolicyInstances] &lt;p&gt;A list that contains one &lt;code&gt;TrafficPolicyInstance&lt;/code&gt; element for each traffic policy instance that matches the elements in the request.&lt;/p&gt;
-- @param MaxItems [PageMaxItems] &lt;p&gt;The value that you specified for the &lt;code&gt;MaxItems&lt;/code&gt; parameter in the call to &lt;code&gt;ListTrafficPolicyInstances&lt;/code&gt; that produced the current response.&lt;/p&gt;
-- @param TrafficPolicyInstanceTypeMarker [RRType] &lt;p&gt;If &lt;code&gt;IsTruncated&lt;/code&gt; is &lt;code&gt;true&lt;/code&gt;, &lt;code&gt;TrafficPolicyInstanceTypeMarker&lt;/code&gt; is the DNS type of the resource record sets that are associated with the first traffic policy instance that Amazon Route 53 will return if you submit another &lt;code&gt;ListTrafficPolicyInstances&lt;/code&gt; request. &lt;/p&gt;
-- @param IsTruncated [PageTruncated] &lt;p&gt;A flag that indicates whether there are more traffic policy instances to be listed. If the response was truncated, you can get more traffic policy instances by calling &lt;code&gt;ListTrafficPolicyInstances&lt;/code&gt; again and specifying the values of the &lt;code&gt;HostedZoneIdMarker&lt;/code&gt;, &lt;code&gt;TrafficPolicyInstanceNameMarker&lt;/code&gt;, and &lt;code&gt;TrafficPolicyInstanceTypeMarker&lt;/code&gt; in the corresponding request parameters.&lt;/p&gt;
-- Required parameter: TrafficPolicyInstances
-- Required parameter: IsTruncated
-- Required parameter: MaxItems
function M.ListTrafficPolicyInstancesResponse(TrafficPolicyInstanceNameMarker, HostedZoneIdMarker, TrafficPolicyInstances, MaxItems, TrafficPolicyInstanceTypeMarker, IsTruncated, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTrafficPolicyInstancesResponse")
	local t = { 
		["TrafficPolicyInstanceNameMarker"] = TrafficPolicyInstanceNameMarker,
		["HostedZoneIdMarker"] = HostedZoneIdMarker,
		["TrafficPolicyInstances"] = TrafficPolicyInstances,
		["MaxItems"] = MaxItems,
		["TrafficPolicyInstanceTypeMarker"] = TrafficPolicyInstanceTypeMarker,
		["IsTruncated"] = IsTruncated,
	}
	M.AssertListTrafficPolicyInstancesResponse(t)
	return t
end

local GetTrafficPolicyInstanceRequest_keys = { "Id" = true, nil }

function M.AssertGetTrafficPolicyInstanceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTrafficPolicyInstanceRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then M.AssertTrafficPolicyInstanceId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(GetTrafficPolicyInstanceRequest_keys[k], "GetTrafficPolicyInstanceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTrafficPolicyInstanceRequest
-- &lt;p&gt;Gets information about a specified traffic policy instance.&lt;/p&gt;
-- @param Id [TrafficPolicyInstanceId] &lt;p&gt;The ID of the traffic policy instance that you want to get information about.&lt;/p&gt;
-- Required parameter: Id
function M.GetTrafficPolicyInstanceRequest(Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetTrafficPolicyInstanceRequest")
	local t = { 
		["Id"] = Id,
	}
	M.AssertGetTrafficPolicyInstanceRequest(t)
	return t
end

local CreateTrafficPolicyVersionRequest_keys = { "Comment" = true, "Document" = true, "Id" = true, nil }

function M.AssertCreateTrafficPolicyVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTrafficPolicyVersionRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["Document"], "Expected key Document to exist in table")
	if struct["Comment"] then M.AssertTrafficPolicyComment(struct["Comment"]) end
	if struct["Document"] then M.AssertTrafficPolicyDocument(struct["Document"]) end
	if struct["Id"] then M.AssertTrafficPolicyId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(CreateTrafficPolicyVersionRequest_keys[k], "CreateTrafficPolicyVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTrafficPolicyVersionRequest
-- &lt;p&gt;A complex type that contains information about the traffic policy that you want to create a new version for.&lt;/p&gt;
-- @param Comment [TrafficPolicyComment] &lt;p&gt;The comment that you specified in the &lt;code&gt;CreateTrafficPolicyVersion&lt;/code&gt; request, if any.&lt;/p&gt;
-- @param Document [TrafficPolicyDocument] &lt;p&gt;The definition of this version of the traffic policy, in JSON format. You specified the JSON in the &lt;code&gt;CreateTrafficPolicyVersion&lt;/code&gt; request. For more information about the JSON format, see &lt;a&gt;CreateTrafficPolicy&lt;/a&gt;.&lt;/p&gt;
-- @param Id [TrafficPolicyId] &lt;p&gt;The ID of the traffic policy for which you want to create a new version.&lt;/p&gt;
-- Required parameter: Id
-- Required parameter: Document
function M.CreateTrafficPolicyVersionRequest(Comment, Document, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateTrafficPolicyVersionRequest")
	local t = { 
		["Comment"] = Comment,
		["Document"] = Document,
		["Id"] = Id,
	}
	M.AssertCreateTrafficPolicyVersionRequest(t)
	return t
end

local HostedZoneConfig_keys = { "Comment" = true, "PrivateZone" = true, nil }

function M.AssertHostedZoneConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HostedZoneConfig to be of type 'table'")
	if struct["Comment"] then M.AssertResourceDescription(struct["Comment"]) end
	if struct["PrivateZone"] then M.AssertIsPrivateZone(struct["PrivateZone"]) end
	for k,_ in pairs(struct) do
		assert(HostedZoneConfig_keys[k], "HostedZoneConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HostedZoneConfig
-- &lt;p&gt;A complex type that contains an optional comment about your hosted zone. If you don't want to specify a comment, omit both the &lt;code&gt;HostedZoneConfig&lt;/code&gt; and &lt;code&gt;Comment&lt;/code&gt; elements.&lt;/p&gt;
-- @param Comment [ResourceDescription] &lt;p&gt;Any comments that you want to include about the hosted zone.&lt;/p&gt;
-- @param PrivateZone [IsPrivateZone] &lt;p&gt;A value that indicates whether this is a private hosted zone.&lt;/p&gt;
function M.HostedZoneConfig(Comment, PrivateZone, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating HostedZoneConfig")
	local t = { 
		["Comment"] = Comment,
		["PrivateZone"] = PrivateZone,
	}
	M.AssertHostedZoneConfig(t)
	return t
end

local DeleteHealthCheckResponse_keys = { nil }

function M.AssertDeleteHealthCheckResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteHealthCheckResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteHealthCheckResponse_keys[k], "DeleteHealthCheckResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteHealthCheckResponse
-- &lt;p&gt;An empty element.&lt;/p&gt;
function M.DeleteHealthCheckResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteHealthCheckResponse")
	local t = { 
	}
	M.AssertDeleteHealthCheckResponse(t)
	return t
end

local AssociateVPCWithHostedZoneRequest_keys = { "HostedZoneId" = true, "Comment" = true, "VPC" = true, nil }

function M.AssertAssociateVPCWithHostedZoneRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateVPCWithHostedZoneRequest to be of type 'table'")
	assert(struct["HostedZoneId"], "Expected key HostedZoneId to exist in table")
	assert(struct["VPC"], "Expected key VPC to exist in table")
	if struct["HostedZoneId"] then M.AssertResourceId(struct["HostedZoneId"]) end
	if struct["Comment"] then M.AssertAssociateVPCComment(struct["Comment"]) end
	if struct["VPC"] then M.AssertVPC(struct["VPC"]) end
	for k,_ in pairs(struct) do
		assert(AssociateVPCWithHostedZoneRequest_keys[k], "AssociateVPCWithHostedZoneRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateVPCWithHostedZoneRequest
-- &lt;p&gt;A complex type that contains information about the request to associate a VPC with a private hosted zone.&lt;/p&gt;
-- @param HostedZoneId [ResourceId] &lt;p&gt;The ID of the private hosted zone that you want to associate an Amazon VPC with.&lt;/p&gt; &lt;p&gt;Note that you can't associate a VPC with a hosted zone that doesn't have an existing VPC association.&lt;/p&gt;
-- @param Comment [AssociateVPCComment] &lt;p&gt; &lt;i&gt;Optional:&lt;/i&gt; A comment about the association request.&lt;/p&gt;
-- @param VPC [VPC] &lt;p&gt;A complex type that contains information about the VPC that you want to associate with a private hosted zone.&lt;/p&gt;
-- Required parameter: HostedZoneId
-- Required parameter: VPC
function M.AssociateVPCWithHostedZoneRequest(HostedZoneId, Comment, VPC, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssociateVPCWithHostedZoneRequest")
	local t = { 
		["HostedZoneId"] = HostedZoneId,
		["Comment"] = Comment,
		["VPC"] = VPC,
	}
	M.AssertAssociateVPCWithHostedZoneRequest(t)
	return t
end

local ChangeTagsForResourceResponse_keys = { nil }

function M.AssertChangeTagsForResourceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ChangeTagsForResourceResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ChangeTagsForResourceResponse_keys[k], "ChangeTagsForResourceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ChangeTagsForResourceResponse
-- &lt;p&gt;Empty response for the request.&lt;/p&gt;
function M.ChangeTagsForResourceResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ChangeTagsForResourceResponse")
	local t = { 
	}
	M.AssertChangeTagsForResourceResponse(t)
	return t
end

local CloudWatchAlarmConfiguration_keys = { "EvaluationPeriods" = true, "Dimensions" = true, "Namespace" = true, "Period" = true, "ComparisonOperator" = true, "Statistic" = true, "Threshold" = true, "MetricName" = true, nil }

function M.AssertCloudWatchAlarmConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloudWatchAlarmConfiguration to be of type 'table'")
	assert(struct["EvaluationPeriods"], "Expected key EvaluationPeriods to exist in table")
	assert(struct["Threshold"], "Expected key Threshold to exist in table")
	assert(struct["ComparisonOperator"], "Expected key ComparisonOperator to exist in table")
	assert(struct["Period"], "Expected key Period to exist in table")
	assert(struct["MetricName"], "Expected key MetricName to exist in table")
	assert(struct["Namespace"], "Expected key Namespace to exist in table")
	assert(struct["Statistic"], "Expected key Statistic to exist in table")
	if struct["EvaluationPeriods"] then M.AssertEvaluationPeriods(struct["EvaluationPeriods"]) end
	if struct["Dimensions"] then M.AssertDimensionList(struct["Dimensions"]) end
	if struct["Namespace"] then M.AssertNamespace(struct["Namespace"]) end
	if struct["Period"] then M.AssertPeriod(struct["Period"]) end
	if struct["ComparisonOperator"] then M.AssertComparisonOperator(struct["ComparisonOperator"]) end
	if struct["Statistic"] then M.AssertStatistic(struct["Statistic"]) end
	if struct["Threshold"] then M.AssertThreshold(struct["Threshold"]) end
	if struct["MetricName"] then M.AssertMetricName(struct["MetricName"]) end
	for k,_ in pairs(struct) do
		assert(CloudWatchAlarmConfiguration_keys[k], "CloudWatchAlarmConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloudWatchAlarmConfiguration
-- &lt;p&gt;A complex type that contains information about the CloudWatch alarm that Amazon Route 53 is monitoring for this health check.&lt;/p&gt;
-- @param EvaluationPeriods [EvaluationPeriods] &lt;p&gt;For the metric that the CloudWatch alarm is associated with, the number of periods that the metric is compared to the threshold.&lt;/p&gt;
-- @param Dimensions [DimensionList] &lt;p&gt;For the metric that the CloudWatch alarm is associated with, a complex type that contains information about the dimensions for the metric. For information, see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/CW_Support_For_AWS.html&quot;&gt;Amazon CloudWatch Namespaces, Dimensions, and Metrics Reference&lt;/a&gt; in the &lt;i&gt;Amazon CloudWatch User Guide&lt;/i&gt;.&lt;/p&gt;
-- @param Namespace [Namespace] &lt;p&gt;The namespace of the metric that the alarm is associated with. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/CW_Support_For_AWS.html&quot;&gt;Amazon CloudWatch Namespaces, Dimensions, and Metrics Reference&lt;/a&gt; in the &lt;i&gt;Amazon CloudWatch User Guide&lt;/i&gt;.&lt;/p&gt;
-- @param Period [Period] &lt;p&gt;For the metric that the CloudWatch alarm is associated with, the duration of one evaluation period in seconds.&lt;/p&gt;
-- @param ComparisonOperator [ComparisonOperator] &lt;p&gt;For the metric that the CloudWatch alarm is associated with, the arithmetic operation that is used for the comparison.&lt;/p&gt;
-- @param Statistic [Statistic] &lt;p&gt;For the metric that the CloudWatch alarm is associated with, the statistic that is applied to the metric.&lt;/p&gt;
-- @param Threshold [Threshold] &lt;p&gt;For the metric that the CloudWatch alarm is associated with, the value the metric is compared with.&lt;/p&gt;
-- @param MetricName [MetricName] &lt;p&gt;The name of the CloudWatch metric that the alarm is associated with.&lt;/p&gt;
-- Required parameter: EvaluationPeriods
-- Required parameter: Threshold
-- Required parameter: ComparisonOperator
-- Required parameter: Period
-- Required parameter: MetricName
-- Required parameter: Namespace
-- Required parameter: Statistic
function M.CloudWatchAlarmConfiguration(EvaluationPeriods, Dimensions, Namespace, Period, ComparisonOperator, Statistic, Threshold, MetricName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CloudWatchAlarmConfiguration")
	local t = { 
		["EvaluationPeriods"] = EvaluationPeriods,
		["Dimensions"] = Dimensions,
		["Namespace"] = Namespace,
		["Period"] = Period,
		["ComparisonOperator"] = ComparisonOperator,
		["Statistic"] = Statistic,
		["Threshold"] = Threshold,
		["MetricName"] = MetricName,
	}
	M.AssertCloudWatchAlarmConfiguration(t)
	return t
end

local ListTrafficPolicyVersionsResponse_keys = { "MaxItems" = true, "IsTruncated" = true, "TrafficPolicies" = true, "TrafficPolicyVersionMarker" = true, nil }

function M.AssertListTrafficPolicyVersionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTrafficPolicyVersionsResponse to be of type 'table'")
	assert(struct["TrafficPolicies"], "Expected key TrafficPolicies to exist in table")
	assert(struct["IsTruncated"], "Expected key IsTruncated to exist in table")
	assert(struct["TrafficPolicyVersionMarker"], "Expected key TrafficPolicyVersionMarker to exist in table")
	assert(struct["MaxItems"], "Expected key MaxItems to exist in table")
	if struct["MaxItems"] then M.AssertPageMaxItems(struct["MaxItems"]) end
	if struct["IsTruncated"] then M.AssertPageTruncated(struct["IsTruncated"]) end
	if struct["TrafficPolicies"] then M.AssertTrafficPolicies(struct["TrafficPolicies"]) end
	if struct["TrafficPolicyVersionMarker"] then M.AssertTrafficPolicyVersionMarker(struct["TrafficPolicyVersionMarker"]) end
	for k,_ in pairs(struct) do
		assert(ListTrafficPolicyVersionsResponse_keys[k], "ListTrafficPolicyVersionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTrafficPolicyVersionsResponse
-- &lt;p&gt;A complex type that contains the response information for the request.&lt;/p&gt;
-- @param MaxItems [PageMaxItems] &lt;p&gt;The value that you specified for the &lt;code&gt;maxitems&lt;/code&gt; parameter in the &lt;code&gt;ListTrafficPolicyVersions&lt;/code&gt; request that produced the current response.&lt;/p&gt;
-- @param IsTruncated [PageTruncated] &lt;p&gt;A flag that indicates whether there are more traffic policies to be listed. If the response was truncated, you can get the next group of traffic policies by submitting another &lt;code&gt;ListTrafficPolicyVersions&lt;/code&gt; request and specifying the value of &lt;code&gt;NextMarker&lt;/code&gt; in the &lt;code&gt;marker&lt;/code&gt; parameter.&lt;/p&gt;
-- @param TrafficPolicies [TrafficPolicies] &lt;p&gt;A list that contains one &lt;code&gt;TrafficPolicy&lt;/code&gt; element for each traffic policy version that is associated with the specified traffic policy.&lt;/p&gt;
-- @param TrafficPolicyVersionMarker [TrafficPolicyVersionMarker] &lt;p&gt;If &lt;code&gt;IsTruncated&lt;/code&gt; is &lt;code&gt;true&lt;/code&gt;, the value of &lt;code&gt;TrafficPolicyVersionMarker&lt;/code&gt; identifies the first traffic policy that Amazon Route 53 will return if you submit another request. Call &lt;code&gt;ListTrafficPolicyVersions&lt;/code&gt; again and specify the value of &lt;code&gt;TrafficPolicyVersionMarker&lt;/code&gt; in the &lt;code&gt;TrafficPolicyVersionMarker&lt;/code&gt; request parameter.&lt;/p&gt; &lt;p&gt;This element is present only if &lt;code&gt;IsTruncated&lt;/code&gt; is &lt;code&gt;true&lt;/code&gt;.&lt;/p&gt;
-- Required parameter: TrafficPolicies
-- Required parameter: IsTruncated
-- Required parameter: TrafficPolicyVersionMarker
-- Required parameter: MaxItems
function M.ListTrafficPolicyVersionsResponse(MaxItems, IsTruncated, TrafficPolicies, TrafficPolicyVersionMarker, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTrafficPolicyVersionsResponse")
	local t = { 
		["MaxItems"] = MaxItems,
		["IsTruncated"] = IsTruncated,
		["TrafficPolicies"] = TrafficPolicies,
		["TrafficPolicyVersionMarker"] = TrafficPolicyVersionMarker,
	}
	M.AssertListTrafficPolicyVersionsResponse(t)
	return t
end

local ConflictingDomainExists_keys = { "message" = true, nil }

function M.AssertConflictingDomainExists(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConflictingDomainExists to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ConflictingDomainExists_keys[k], "ConflictingDomainExists contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConflictingDomainExists
-- &lt;p&gt;The cause of this error depends on whether you're trying to create a public or a private hosted zone:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Public hosted zone:&lt;/b&gt; Two hosted zones that have the same name or that have a parent/child relationship (example.com and test.example.com) can't have any common name servers. You tried to create a hosted zone that has the same name as an existing hosted zone or that's the parent or child of an existing hosted zone, and you specified a delegation set that shares one or more name servers with the existing hosted zone. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Private hosted zone:&lt;/b&gt; You specified an Amazon VPC that you're already using for another hosted zone, and the domain that you specified for one of the hosted zones is a subdomain of the domain that you specified for the other hosted zone. For example, you can't use the same Amazon VPC for the hosted zones for example.com and test.example.com.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param message [ErrorMessage] &lt;p&gt;The cause of this error depends on whether you're trying to create a public or a private hosted zone:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Public hosted zone:&lt;/b&gt; Two hosted zones that have the same name or that have a parent/child relationship (example.com and test.example.com) can't have any common name servers. You tried to create a hosted zone that has the same name as an existing hosted zone or that's the parent or child of an existing hosted zone, and you specified a delegation set that shares one or more name servers with the existing hosted zone. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Private hosted zone:&lt;/b&gt; You specified an Amazon VPC that you're already using for another hosted zone, and the domain that you specified for one of the hosted zones is a subdomain of the domain that you specified for the other hosted zone. For example, you can't use the same Amazon VPC for the hosted zones for example.com and test.example.com.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
function M.ConflictingDomainExists(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConflictingDomainExists")
	local t = { 
		["message"] = message,
	}
	M.AssertConflictingDomainExists(t)
	return t
end

local ListHostedZonesByNameRequest_keys = { "HostedZoneId" = true, "DNSName" = true, "MaxItems" = true, nil }

function M.AssertListHostedZonesByNameRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListHostedZonesByNameRequest to be of type 'table'")
	if struct["HostedZoneId"] then M.AssertResourceId(struct["HostedZoneId"]) end
	if struct["DNSName"] then M.AssertDNSName(struct["DNSName"]) end
	if struct["MaxItems"] then M.AssertPageMaxItems(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(ListHostedZonesByNameRequest_keys[k], "ListHostedZonesByNameRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListHostedZonesByNameRequest
-- &lt;p&gt;Retrieves a list of the public and private hosted zones that are associated with the current AWS account in ASCII order by domain name. &lt;/p&gt;
-- @param HostedZoneId [ResourceId] &lt;p&gt;(Optional) For your first request to &lt;code&gt;ListHostedZonesByName&lt;/code&gt;, do not include the &lt;code&gt;hostedzoneid&lt;/code&gt; parameter.&lt;/p&gt; &lt;p&gt;If you have more hosted zones than the value of &lt;code&gt;maxitems&lt;/code&gt;, &lt;code&gt;ListHostedZonesByName&lt;/code&gt; returns only the first &lt;code&gt;maxitems&lt;/code&gt; hosted zones. To get the next group of &lt;code&gt;maxitems&lt;/code&gt; hosted zones, submit another request to &lt;code&gt;ListHostedZonesByName&lt;/code&gt; and include both &lt;code&gt;dnsname&lt;/code&gt; and &lt;code&gt;hostedzoneid&lt;/code&gt; parameters. For the value of &lt;code&gt;hostedzoneid&lt;/code&gt;, specify the value of the &lt;code&gt;NextHostedZoneId&lt;/code&gt; element from the previous response.&lt;/p&gt;
-- @param DNSName [DNSName] &lt;p&gt;(Optional) For your first request to &lt;code&gt;ListHostedZonesByName&lt;/code&gt;, include the &lt;code&gt;dnsname&lt;/code&gt; parameter only if you want to specify the name of the first hosted zone in the response. If you don't include the &lt;code&gt;dnsname&lt;/code&gt; parameter, Amazon Route 53 returns all of the hosted zones that were created by the current AWS account, in ASCII order. For subsequent requests, include both &lt;code&gt;dnsname&lt;/code&gt; and &lt;code&gt;hostedzoneid&lt;/code&gt; parameters. For &lt;code&gt;dnsname&lt;/code&gt;, specify the value of &lt;code&gt;NextDNSName&lt;/code&gt; from the previous response.&lt;/p&gt;
-- @param MaxItems [PageMaxItems] &lt;p&gt;The maximum number of hosted zones to be included in the response body for this request. If you have more than &lt;code&gt;maxitems&lt;/code&gt; hosted zones, then the value of the &lt;code&gt;IsTruncated&lt;/code&gt; element in the response is true, and the values of &lt;code&gt;NextDNSName&lt;/code&gt; and &lt;code&gt;NextHostedZoneId&lt;/code&gt; specify the first hosted zone in the next group of &lt;code&gt;maxitems&lt;/code&gt; hosted zones. &lt;/p&gt;
function M.ListHostedZonesByNameRequest(HostedZoneId, DNSName, MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListHostedZonesByNameRequest")
	local t = { 
		["HostedZoneId"] = HostedZoneId,
		["DNSName"] = DNSName,
		["MaxItems"] = MaxItems,
	}
	M.AssertListHostedZonesByNameRequest(t)
	return t
end

local UpdateTrafficPolicyCommentRequest_keys = { "Comment" = true, "Version" = true, "Id" = true, nil }

function M.AssertUpdateTrafficPolicyCommentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateTrafficPolicyCommentRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["Version"], "Expected key Version to exist in table")
	assert(struct["Comment"], "Expected key Comment to exist in table")
	if struct["Comment"] then M.AssertTrafficPolicyComment(struct["Comment"]) end
	if struct["Version"] then M.AssertTrafficPolicyVersion(struct["Version"]) end
	if struct["Id"] then M.AssertTrafficPolicyId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(UpdateTrafficPolicyCommentRequest_keys[k], "UpdateTrafficPolicyCommentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateTrafficPolicyCommentRequest
-- &lt;p&gt;A complex type that contains information about the traffic policy that you want to update the comment for.&lt;/p&gt;
-- @param Comment [TrafficPolicyComment] &lt;p&gt;The new comment for the specified traffic policy and version.&lt;/p&gt;
-- @param Version [TrafficPolicyVersion] &lt;p&gt;The value of &lt;code&gt;Version&lt;/code&gt; for the traffic policy that you want to update the comment for.&lt;/p&gt;
-- @param Id [TrafficPolicyId] &lt;p&gt;The value of &lt;code&gt;Id&lt;/code&gt; for the traffic policy that you want to update the comment for.&lt;/p&gt;
-- Required parameter: Id
-- Required parameter: Version
-- Required parameter: Comment
function M.UpdateTrafficPolicyCommentRequest(Comment, Version, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateTrafficPolicyCommentRequest")
	local t = { 
		["Comment"] = Comment,
		["Version"] = Version,
		["Id"] = Id,
	}
	M.AssertUpdateTrafficPolicyCommentRequest(t)
	return t
end

local DeleteReusableDelegationSetResponse_keys = { nil }

function M.AssertDeleteReusableDelegationSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteReusableDelegationSetResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteReusableDelegationSetResponse_keys[k], "DeleteReusableDelegationSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteReusableDelegationSetResponse
-- &lt;p&gt;An empty element.&lt;/p&gt;
function M.DeleteReusableDelegationSetResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteReusableDelegationSetResponse")
	local t = { 
	}
	M.AssertDeleteReusableDelegationSetResponse(t)
	return t
end

local ResourceTagSet_keys = { "ResourceType" = true, "ResourceId" = true, "Tags" = true, nil }

function M.AssertResourceTagSet(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceTagSet to be of type 'table'")
	if struct["ResourceType"] then M.AssertTagResourceType(struct["ResourceType"]) end
	if struct["ResourceId"] then M.AssertTagResourceId(struct["ResourceId"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(ResourceTagSet_keys[k], "ResourceTagSet contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceTagSet
-- &lt;p&gt;A complex type containing a resource and its associated tags.&lt;/p&gt;
-- @param ResourceType [TagResourceType] &lt;p&gt;The type of the resource.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;The resource type for health checks is &lt;code&gt;healthcheck&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;The resource type for hosted zones is &lt;code&gt;hostedzone&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param ResourceId [TagResourceId] &lt;p&gt;The ID for the specified resource.&lt;/p&gt;
-- @param Tags [TagList] &lt;p&gt;The tags associated with the specified resource.&lt;/p&gt;
function M.ResourceTagSet(ResourceType, ResourceId, Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceTagSet")
	local t = { 
		["ResourceType"] = ResourceType,
		["ResourceId"] = ResourceId,
		["Tags"] = Tags,
	}
	M.AssertResourceTagSet(t)
	return t
end

local HostedZoneAlreadyExists_keys = { "message" = true, nil }

function M.AssertHostedZoneAlreadyExists(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HostedZoneAlreadyExists to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(HostedZoneAlreadyExists_keys[k], "HostedZoneAlreadyExists contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HostedZoneAlreadyExists
-- &lt;p&gt;The hosted zone you're trying to create already exists. Amazon Route 53 returns this error when a hosted zone has already been created with the specified &lt;code&gt;CallerReference&lt;/code&gt;.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;Descriptive message for the error response.&lt;/p&gt;
function M.HostedZoneAlreadyExists(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating HostedZoneAlreadyExists")
	local t = { 
		["message"] = message,
	}
	M.AssertHostedZoneAlreadyExists(t)
	return t
end

local DelegationSet_keys = { "NameServers" = true, "CallerReference" = true, "Id" = true, nil }

function M.AssertDelegationSet(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DelegationSet to be of type 'table'")
	assert(struct["NameServers"], "Expected key NameServers to exist in table")
	if struct["NameServers"] then M.AssertDelegationSetNameServers(struct["NameServers"]) end
	if struct["CallerReference"] then M.AssertNonce(struct["CallerReference"]) end
	if struct["Id"] then M.AssertResourceId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(DelegationSet_keys[k], "DelegationSet contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DelegationSet
-- &lt;p&gt;A complex type that lists the name servers in a delegation set, as well as the &lt;code&gt;CallerReference&lt;/code&gt; and the &lt;code&gt;ID&lt;/code&gt; for the delegation set.&lt;/p&gt;
-- @param NameServers [DelegationSetNameServers] &lt;p&gt;A complex type that contains a list of the authoritative name servers for a hosted zone or for a reusable delegation set.&lt;/p&gt;
-- @param CallerReference [Nonce] &lt;p&gt;The value that you specified for &lt;code&gt;CallerReference&lt;/code&gt; when you created the reusable delegation set.&lt;/p&gt;
-- @param Id [ResourceId] &lt;p&gt;The ID that Amazon Route 53 assigns to a reusable delegation set.&lt;/p&gt;
-- Required parameter: NameServers
function M.DelegationSet(NameServers, CallerReference, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DelegationSet")
	local t = { 
		["NameServers"] = NameServers,
		["CallerReference"] = CallerReference,
		["Id"] = Id,
	}
	M.AssertDelegationSet(t)
	return t
end

local NoSuchTrafficPolicyInstance_keys = { "message" = true, nil }

function M.AssertNoSuchTrafficPolicyInstance(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoSuchTrafficPolicyInstance to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(NoSuchTrafficPolicyInstance_keys[k], "NoSuchTrafficPolicyInstance contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoSuchTrafficPolicyInstance
-- &lt;p&gt;No traffic policy instance exists with the specified ID.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;Descriptive message for the error response.&lt;/p&gt;
function M.NoSuchTrafficPolicyInstance(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NoSuchTrafficPolicyInstance")
	local t = { 
		["message"] = message,
	}
	M.AssertNoSuchTrafficPolicyInstance(t)
	return t
end

local HealthCheckObservation_keys = { "StatusReport" = true, "Region" = true, "IPAddress" = true, nil }

function M.AssertHealthCheckObservation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HealthCheckObservation to be of type 'table'")
	if struct["StatusReport"] then M.AssertStatusReport(struct["StatusReport"]) end
	if struct["Region"] then M.AssertHealthCheckRegion(struct["Region"]) end
	if struct["IPAddress"] then M.AssertIPAddress(struct["IPAddress"]) end
	for k,_ in pairs(struct) do
		assert(HealthCheckObservation_keys[k], "HealthCheckObservation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HealthCheckObservation
-- &lt;p&gt;A complex type that contains the last failure reason as reported by one Amazon Route 53 health checker.&lt;/p&gt;
-- @param StatusReport [StatusReport] &lt;p&gt;A complex type that contains the last failure reason as reported by one Amazon Route 53 health checker and the time of the failed health check.&lt;/p&gt;
-- @param Region [HealthCheckRegion] &lt;p&gt;The region of the Amazon Route 53 health checker that provided the status in &lt;code&gt;StatusReport&lt;/code&gt;.&lt;/p&gt;
-- @param IPAddress [IPAddress] &lt;p&gt;The IP address of the Amazon Route 53 health checker that provided the failure reason in &lt;code&gt;StatusReport&lt;/code&gt;.&lt;/p&gt;
function M.HealthCheckObservation(StatusReport, Region, IPAddress, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating HealthCheckObservation")
	local t = { 
		["StatusReport"] = StatusReport,
		["Region"] = Region,
		["IPAddress"] = IPAddress,
	}
	M.AssertHealthCheckObservation(t)
	return t
end

local GetTrafficPolicyRequest_keys = { "Version" = true, "Id" = true, nil }

function M.AssertGetTrafficPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTrafficPolicyRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["Version"], "Expected key Version to exist in table")
	if struct["Version"] then M.AssertTrafficPolicyVersion(struct["Version"]) end
	if struct["Id"] then M.AssertTrafficPolicyId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(GetTrafficPolicyRequest_keys[k], "GetTrafficPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTrafficPolicyRequest
-- &lt;p&gt;Gets information about a specific traffic policy version.&lt;/p&gt;
-- @param Version [TrafficPolicyVersion] &lt;p&gt;The version number of the traffic policy that you want to get information about.&lt;/p&gt;
-- @param Id [TrafficPolicyId] &lt;p&gt;The ID of the traffic policy that you want to get information about.&lt;/p&gt;
-- Required parameter: Id
-- Required parameter: Version
function M.GetTrafficPolicyRequest(Version, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetTrafficPolicyRequest")
	local t = { 
		["Version"] = Version,
		["Id"] = Id,
	}
	M.AssertGetTrafficPolicyRequest(t)
	return t
end

local TrafficPolicyAlreadyExists_keys = { "message" = true, nil }

function M.AssertTrafficPolicyAlreadyExists(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TrafficPolicyAlreadyExists to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(TrafficPolicyAlreadyExists_keys[k], "TrafficPolicyAlreadyExists contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TrafficPolicyAlreadyExists
-- &lt;p&gt;A traffic policy that has the same value for &lt;code&gt;Name&lt;/code&gt; already exists.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;Descriptive message for the error response.&lt;/p&gt;
function M.TrafficPolicyAlreadyExists(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TrafficPolicyAlreadyExists")
	local t = { 
		["message"] = message,
	}
	M.AssertTrafficPolicyAlreadyExists(t)
	return t
end

local DeleteTrafficPolicyInstanceResponse_keys = { nil }

function M.AssertDeleteTrafficPolicyInstanceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTrafficPolicyInstanceResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteTrafficPolicyInstanceResponse_keys[k], "DeleteTrafficPolicyInstanceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTrafficPolicyInstanceResponse
-- &lt;p&gt;An empty element.&lt;/p&gt;
function M.DeleteTrafficPolicyInstanceResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteTrafficPolicyInstanceResponse")
	local t = { 
	}
	M.AssertDeleteTrafficPolicyInstanceResponse(t)
	return t
end

local ListTrafficPolicyInstancesRequest_keys = { "HostedZoneIdMarker" = true, "TrafficPolicyInstanceTypeMarker" = true, "TrafficPolicyInstanceNameMarker" = true, "MaxItems" = true, nil }

function M.AssertListTrafficPolicyInstancesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTrafficPolicyInstancesRequest to be of type 'table'")
	if struct["HostedZoneIdMarker"] then M.AssertResourceId(struct["HostedZoneIdMarker"]) end
	if struct["TrafficPolicyInstanceTypeMarker"] then M.AssertRRType(struct["TrafficPolicyInstanceTypeMarker"]) end
	if struct["TrafficPolicyInstanceNameMarker"] then M.AssertDNSName(struct["TrafficPolicyInstanceNameMarker"]) end
	if struct["MaxItems"] then M.AssertPageMaxItems(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(ListTrafficPolicyInstancesRequest_keys[k], "ListTrafficPolicyInstancesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTrafficPolicyInstancesRequest
-- &lt;p&gt;A request to get information about the traffic policy instances that you created by using the current AWS account.&lt;/p&gt;
-- @param HostedZoneIdMarker [ResourceId] &lt;p&gt;If the value of &lt;code&gt;IsTruncated&lt;/code&gt; in the previous response was &lt;code&gt;true&lt;/code&gt;, you have more traffic policy instances. To get more traffic policy instances, submit another &lt;code&gt;ListTrafficPolicyInstances&lt;/code&gt; request. For the value of &lt;code&gt;HostedZoneId&lt;/code&gt;, specify the value of &lt;code&gt;HostedZoneIdMarker&lt;/code&gt; from the previous response, which is the hosted zone ID of the first traffic policy instance in the next group of traffic policy instances.&lt;/p&gt; &lt;p&gt;If the value of &lt;code&gt;IsTruncated&lt;/code&gt; in the previous response was &lt;code&gt;false&lt;/code&gt;, there are no more traffic policy instances to get.&lt;/p&gt;
-- @param TrafficPolicyInstanceTypeMarker [RRType] &lt;p&gt;If the value of &lt;code&gt;IsTruncated&lt;/code&gt; in the previous response was &lt;code&gt;true&lt;/code&gt;, you have more traffic policy instances. To get more traffic policy instances, submit another &lt;code&gt;ListTrafficPolicyInstances&lt;/code&gt; request. For the value of &lt;code&gt;trafficpolicyinstancetype&lt;/code&gt;, specify the value of &lt;code&gt;TrafficPolicyInstanceTypeMarker&lt;/code&gt; from the previous response, which is the type of the first traffic policy instance in the next group of traffic policy instances.&lt;/p&gt; &lt;p&gt;If the value of &lt;code&gt;IsTruncated&lt;/code&gt; in the previous response was &lt;code&gt;false&lt;/code&gt;, there are no more traffic policy instances to get.&lt;/p&gt;
-- @param TrafficPolicyInstanceNameMarker [DNSName] &lt;p&gt;If the value of &lt;code&gt;IsTruncated&lt;/code&gt; in the previous response was &lt;code&gt;true&lt;/code&gt;, you have more traffic policy instances. To get more traffic policy instances, submit another &lt;code&gt;ListTrafficPolicyInstances&lt;/code&gt; request. For the value of &lt;code&gt;trafficpolicyinstancename&lt;/code&gt;, specify the value of &lt;code&gt;TrafficPolicyInstanceNameMarker&lt;/code&gt; from the previous response, which is the name of the first traffic policy instance in the next group of traffic policy instances.&lt;/p&gt; &lt;p&gt;If the value of &lt;code&gt;IsTruncated&lt;/code&gt; in the previous response was &lt;code&gt;false&lt;/code&gt;, there are no more traffic policy instances to get.&lt;/p&gt;
-- @param MaxItems [PageMaxItems] &lt;p&gt;The maximum number of traffic policy instances that you want Amazon Route 53 to return in response to a &lt;code&gt;ListTrafficPolicyInstances&lt;/code&gt; request. If you have more than &lt;code&gt;MaxItems&lt;/code&gt; traffic policy instances, the value of the &lt;code&gt;IsTruncated&lt;/code&gt; element in the response is &lt;code&gt;true&lt;/code&gt;, and the values of &lt;code&gt;HostedZoneIdMarker&lt;/code&gt;, &lt;code&gt;TrafficPolicyInstanceNameMarker&lt;/code&gt;, and &lt;code&gt;TrafficPolicyInstanceTypeMarker&lt;/code&gt; represent the first traffic policy instance in the next group of &lt;code&gt;MaxItems&lt;/code&gt; traffic policy instances.&lt;/p&gt;
function M.ListTrafficPolicyInstancesRequest(HostedZoneIdMarker, TrafficPolicyInstanceTypeMarker, TrafficPolicyInstanceNameMarker, MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTrafficPolicyInstancesRequest")
	local t = { 
		["HostedZoneIdMarker"] = HostedZoneIdMarker,
		["TrafficPolicyInstanceTypeMarker"] = TrafficPolicyInstanceTypeMarker,
		["TrafficPolicyInstanceNameMarker"] = TrafficPolicyInstanceNameMarker,
		["MaxItems"] = MaxItems,
	}
	M.AssertListTrafficPolicyInstancesRequest(t)
	return t
end

local HealthCheckConfig_keys = { "FailureThreshold" = true, "SearchString" = true, "AlarmIdentifier" = true, "IPAddress" = true, "ResourcePath" = true, "ChildHealthChecks" = true, "Inverted" = true, "Regions" = true, "InsufficientDataHealthStatus" = true, "HealthThreshold" = true, "EnableSNI" = true, "MeasureLatency" = true, "RequestInterval" = true, "Type" = true, "Port" = true, "FullyQualifiedDomainName" = true, nil }

function M.AssertHealthCheckConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HealthCheckConfig to be of type 'table'")
	assert(struct["Type"], "Expected key Type to exist in table")
	if struct["FailureThreshold"] then M.AssertFailureThreshold(struct["FailureThreshold"]) end
	if struct["SearchString"] then M.AssertSearchString(struct["SearchString"]) end
	if struct["AlarmIdentifier"] then M.AssertAlarmIdentifier(struct["AlarmIdentifier"]) end
	if struct["IPAddress"] then M.AssertIPAddress(struct["IPAddress"]) end
	if struct["ResourcePath"] then M.AssertResourcePath(struct["ResourcePath"]) end
	if struct["ChildHealthChecks"] then M.AssertChildHealthCheckList(struct["ChildHealthChecks"]) end
	if struct["Inverted"] then M.AssertInverted(struct["Inverted"]) end
	if struct["Regions"] then M.AssertHealthCheckRegionList(struct["Regions"]) end
	if struct["InsufficientDataHealthStatus"] then M.AssertInsufficientDataHealthStatus(struct["InsufficientDataHealthStatus"]) end
	if struct["HealthThreshold"] then M.AssertHealthThreshold(struct["HealthThreshold"]) end
	if struct["EnableSNI"] then M.AssertEnableSNI(struct["EnableSNI"]) end
	if struct["MeasureLatency"] then M.AssertMeasureLatency(struct["MeasureLatency"]) end
	if struct["RequestInterval"] then M.AssertRequestInterval(struct["RequestInterval"]) end
	if struct["Type"] then M.AssertHealthCheckType(struct["Type"]) end
	if struct["Port"] then M.AssertPort(struct["Port"]) end
	if struct["FullyQualifiedDomainName"] then M.AssertFullyQualifiedDomainName(struct["FullyQualifiedDomainName"]) end
	for k,_ in pairs(struct) do
		assert(HealthCheckConfig_keys[k], "HealthCheckConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HealthCheckConfig
-- &lt;p&gt;A complex type that contains information about the health check.&lt;/p&gt;
-- @param FailureThreshold [FailureThreshold] &lt;p&gt;The number of consecutive health checks that an endpoint must pass or fail for Amazon Route 53 to change the current status of the endpoint from unhealthy to healthy or vice versa. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-determining-health-of-endpoints.html&quot;&gt;How Amazon Route 53 Determines Whether an Endpoint Is Healthy&lt;/a&gt; in the &lt;i&gt;Amazon Route 53 Developer Guide&lt;/i&gt;.&lt;/p&gt; &lt;p&gt;If you don't specify a value for &lt;code&gt;FailureThreshold&lt;/code&gt;, the default value is three health checks.&lt;/p&gt;
-- @param SearchString [SearchString] &lt;p&gt;If the value of Type is &lt;code&gt;HTTP_STR_MATCH&lt;/code&gt; or &lt;code&gt;HTTP_STR_MATCH&lt;/code&gt;, the string that you want Amazon Route 53 to search for in the response body from the specified resource. If the string appears in the response body, Amazon Route 53 considers the resource healthy.&lt;/p&gt; &lt;p&gt;Amazon Route 53 considers case when searching for &lt;code&gt;SearchString&lt;/code&gt; in the response body. &lt;/p&gt;
-- @param AlarmIdentifier [AlarmIdentifier] &lt;p&gt;A complex type that identifies the CloudWatch alarm that you want Amazon Route 53 health checkers to use to determine whether this health check is healthy.&lt;/p&gt;
-- @param IPAddress [IPAddress] &lt;p&gt;The IPv4 or IPv6 IP address of the endpoint that you want Amazon Route 53 to perform health checks on. If you don't specify a value for &lt;code&gt;IPAddress&lt;/code&gt;, Amazon Route 53 sends a DNS request to resolve the domain name that you specify in &lt;code&gt;FullyQualifiedDomainName&lt;/code&gt; at the interval that you specify in &lt;code&gt;RequestInterval&lt;/code&gt;. Using an IP address returned by DNS, Amazon Route 53 then checks the health of the endpoint.&lt;/p&gt; &lt;p&gt;Use one of the following formats for the value of &lt;code&gt;IPAddress&lt;/code&gt;: &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;IPv4 address&lt;/b&gt;: four values between 0 and 255, separated by periods (.), for example, &lt;code&gt;192.0.2.44&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;IPv6 address&lt;/b&gt;: eight groups of four hexadecimal values, separated by colons (:), for example, &lt;code&gt;2001:0db8:85a3:0000:0000:abcd:0001:2345&lt;/code&gt;. You can also shorten IPv6 addresses as described in RFC 5952, for example, &lt;code&gt;2001:db8:85a3::abcd:1:2345&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;If the endpoint is an EC2 instance, we recommend that you create an Elastic IP address, associate it with your EC2 instance, and specify the Elastic IP address for &lt;code&gt;IPAddress&lt;/code&gt;. This ensures that the IP address of your instance will never change.&lt;/p&gt; &lt;p&gt;For more information, see &lt;a&gt;HealthCheckConfig$FullyQualifiedDomainName&lt;/a&gt;.&lt;/p&gt; &lt;p&gt;Constraints: Amazon Route 53 can't check the health of endpoints for which the IP address is in local, private, non-routable, or multicast ranges. For more information about IP addresses for which you can't create health checks, see the following documents:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;a href=&quot;https://tools.ietf.org/html/rfc5735&quot;&gt;RFC 5735, Special Use IPv4 Addresses&lt;/a&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;a href=&quot;https://tools.ietf.org/html/rfc6598&quot;&gt;RFC 6598, IANA-Reserved IPv4 Prefix for Shared Address Space&lt;/a&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;a href=&quot;https://tools.ietf.org/html/rfc5156&quot;&gt;RFC 5156, Special-Use IPv6 Addresses&lt;/a&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;When the value of &lt;code&gt;Type&lt;/code&gt; is &lt;code&gt;CALCULATED&lt;/code&gt; or &lt;code&gt;CLOUDWATCH_METRIC&lt;/code&gt;, omit &lt;code&gt;IPAddress&lt;/code&gt;.&lt;/p&gt;
-- @param ResourcePath [ResourcePath] &lt;p&gt;The path, if any, that you want Amazon Route 53 to request when performing health checks. The path can be any value for which your endpoint will return an HTTP status code of 2xx or 3xx when the endpoint is healthy, for example, the file /docs/route53-health-check.html. &lt;/p&gt;
-- @param ChildHealthChecks [ChildHealthCheckList] &lt;p&gt;(CALCULATED Health Checks Only) A complex type that contains one &lt;code&gt;ChildHealthCheck&lt;/code&gt; element for each health check that you want to associate with a &lt;code&gt;CALCULATED&lt;/code&gt; health check.&lt;/p&gt;
-- @param Inverted [Inverted] &lt;p&gt;Specify whether you want Amazon Route 53 to invert the status of a health check, for example, to consider a health check unhealthy when it otherwise would be considered healthy.&lt;/p&gt;
-- @param Regions [HealthCheckRegionList] &lt;p&gt;A complex type that contains one &lt;code&gt;Region&lt;/code&gt; element for each region from which you want Amazon Route 53 health checkers to check the specified endpoint.&lt;/p&gt; &lt;p&gt;If you don't specify any regions, Amazon Route 53 health checkers automatically performs checks from all of the regions that are listed under &lt;b&gt;Valid Values&lt;/b&gt;.&lt;/p&gt; &lt;p&gt;If you update a health check to remove a region that has been performing health checks, Amazon Route 53 will briefly continue to perform checks from that region to ensure that some health checkers are always checking the endpoint (for example, if you replace three regions with four different regions). &lt;/p&gt;
-- @param InsufficientDataHealthStatus [InsufficientDataHealthStatus] &lt;p&gt;When CloudWatch has insufficient data about the metric to determine the alarm state, the status that you want Amazon Route 53 to assign to the health check:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Healthy&lt;/code&gt;: Amazon Route 53 considers the health check to be healthy.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Unhealthy&lt;/code&gt;: Amazon Route 53 considers the health check to be unhealthy.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;LastKnownStatus&lt;/code&gt;: Amazon Route 53 uses the status of the health check from the last time that CloudWatch had sufficient data to determine the alarm state. For new health checks that have no last known status, the default status for the health check is healthy.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param HealthThreshold [HealthThreshold] &lt;p&gt;The number of child health checks that are associated with a &lt;code&gt;CALCULATED&lt;/code&gt; health that Amazon Route 53 must consider healthy for the &lt;code&gt;CALCULATED&lt;/code&gt; health check to be considered healthy. To specify the child health checks that you want to associate with a &lt;code&gt;CALCULATED&lt;/code&gt; health check, use the &lt;a&gt;HealthCheckConfig$ChildHealthChecks&lt;/a&gt; and &lt;a&gt;HealthCheckConfig$ChildHealthChecks&lt;/a&gt; elements.&lt;/p&gt; &lt;p&gt;Note the following:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;If you specify a number greater than the number of child health checks, Amazon Route 53 always considers this health check to be unhealthy.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;If you specify &lt;code&gt;0&lt;/code&gt;, Amazon Route 53 always considers this health check to be healthy.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param EnableSNI [EnableSNI] &lt;p&gt;Specify whether you want Amazon Route 53 to send the value of &lt;code&gt;FullyQualifiedDomainName&lt;/code&gt; to the endpoint in the &lt;code&gt;client_hello&lt;/code&gt; message during TLS negotiation. This allows the endpoint to respond to &lt;code&gt;HTTPS&lt;/code&gt; health check requests with the applicable SSL/TLS certificate.&lt;/p&gt; &lt;p&gt;Some endpoints require that &lt;code&gt;HTTPS&lt;/code&gt; requests include the host name in the &lt;code&gt;client_hello&lt;/code&gt; message. If you don't enable SNI, the status of the health check will be &lt;code&gt;SSL alert handshake_failure&lt;/code&gt;. A health check can also have that status for other reasons. If SNI is enabled and you're still getting the error, check the SSL/TLS configuration on your endpoint and confirm that your certificate is valid.&lt;/p&gt; &lt;p&gt;The SSL/TLS certificate on your endpoint includes a domain name in the &lt;code&gt;Common Name&lt;/code&gt; field and possibly several more in the &lt;code&gt;Subject Alternative Names&lt;/code&gt; field. One of the domain names in the certificate should match the value that you specify for &lt;code&gt;FullyQualifiedDomainName&lt;/code&gt;. If the endpoint responds to the &lt;code&gt;client_hello&lt;/code&gt; message with a certificate that does not include the domain name that you specified in &lt;code&gt;FullyQualifiedDomainName&lt;/code&gt;, a health checker will retry the handshake. In the second attempt, the health checker will omit &lt;code&gt;FullyQualifiedDomainName&lt;/code&gt; from the &lt;code&gt;client_hello&lt;/code&gt; message.&lt;/p&gt;
-- @param MeasureLatency [MeasureLatency] &lt;p&gt;Specify whether you want Amazon Route 53 to measure the latency between health checkers in multiple AWS regions and your endpoint, and to display CloudWatch latency graphs on the &lt;b&gt;Health Checks&lt;/b&gt; page in the Amazon Route 53 console.&lt;/p&gt; &lt;important&gt; &lt;p&gt;You can't change the value of &lt;code&gt;MeasureLatency&lt;/code&gt; after you create a health check.&lt;/p&gt; &lt;/important&gt;
-- @param RequestInterval [RequestInterval] &lt;p&gt;The number of seconds between the time that Amazon Route 53 gets a response from your endpoint and the time that it sends the next health check request. Each Amazon Route 53 health checker makes requests at this interval.&lt;/p&gt; &lt;important&gt; &lt;p&gt;You can't change the value of &lt;code&gt;RequestInterval&lt;/code&gt; after you create a health check.&lt;/p&gt; &lt;/important&gt; &lt;p&gt;If you don't specify a value for &lt;code&gt;RequestInterval&lt;/code&gt;, the default value is &lt;code&gt;30&lt;/code&gt; seconds.&lt;/p&gt;
-- @param Type [HealthCheckType] &lt;p&gt;The type of health check that you want to create, which indicates how Amazon Route 53 determines whether an endpoint is healthy.&lt;/p&gt; &lt;important&gt; &lt;p&gt;You can't change the value of &lt;code&gt;Type&lt;/code&gt; after you create a health check.&lt;/p&gt; &lt;/important&gt; &lt;p&gt;You can create the following types of health checks:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;HTTP&lt;/b&gt;: Amazon Route 53 tries to establish a TCP connection. If successful, Amazon Route 53 submits an HTTP request and waits for an HTTP status code of 200 or greater and less than 400.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;HTTPS&lt;/b&gt;: Amazon Route 53 tries to establish a TCP connection. If successful, Amazon Route 53 submits an HTTPS request and waits for an HTTP status code of 200 or greater and less than 400.&lt;/p&gt; &lt;important&gt; &lt;p&gt;If you specify &lt;code&gt;HTTPS&lt;/code&gt; for the value of &lt;code&gt;Type&lt;/code&gt;, the endpoint must support TLS v1.0 or later.&lt;/p&gt; &lt;/important&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;HTTP_STR_MATCH&lt;/b&gt;: Amazon Route 53 tries to establish a TCP connection. If successful, Amazon Route 53 submits an HTTP request and searches the first 5,120 bytes of the response body for the string that you specify in &lt;code&gt;SearchString&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;HTTPS_STR_MATCH&lt;/b&gt;: Amazon Route 53 tries to establish a TCP connection. If successful, Amazon Route 53 submits an &lt;code&gt;HTTPS&lt;/code&gt; request and searches the first 5,120 bytes of the response body for the string that you specify in &lt;code&gt;SearchString&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;TCP&lt;/b&gt;: Amazon Route 53 tries to establish a TCP connection.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;CLOUDWATCH_METRIC&lt;/b&gt;: The health check is associated with a CloudWatch alarm. If the state of the alarm is &lt;code&gt;OK&lt;/code&gt;, the health check is considered healthy. If the state is &lt;code&gt;ALARM&lt;/code&gt;, the health check is considered unhealthy. If CloudWatch doesn't have sufficient data to determine whether the state is &lt;code&gt;OK&lt;/code&gt; or &lt;code&gt;ALARM&lt;/code&gt;, the health check status depends on the setting for &lt;code&gt;InsufficientDataHealthStatus&lt;/code&gt;: &lt;code&gt;Healthy&lt;/code&gt;, &lt;code&gt;Unhealthy&lt;/code&gt;, or &lt;code&gt;LastKnownStatus&lt;/code&gt;. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;CALCULATED&lt;/b&gt;: For health checks that monitor the status of other health checks, Amazon Route 53 adds up the number of health checks that Amazon Route 53 health checkers consider to be healthy and compares that number with the value of &lt;code&gt;HealthThreshold&lt;/code&gt;. &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-determining-health-of-endpoints.html&quot;&gt;How Amazon Route 53 Determines Whether an Endpoint Is Healthy&lt;/a&gt; in the &lt;i&gt;Amazon Route 53 Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param Port [Port] &lt;p&gt;The port on the endpoint on which you want Amazon Route 53 to perform health checks. Specify a value for &lt;code&gt;Port&lt;/code&gt; only when you specify a value for &lt;code&gt;IPAddress&lt;/code&gt;.&lt;/p&gt;
-- @param FullyQualifiedDomainName [FullyQualifiedDomainName] &lt;p&gt;Amazon Route 53 behavior depends on whether you specify a value for &lt;code&gt;IPAddress&lt;/code&gt;.&lt;/p&gt; &lt;p&gt; &lt;b&gt;If you specify a value for&lt;/b&gt; &lt;code&gt;IPAddress&lt;/code&gt;:&lt;/p&gt; &lt;p&gt;Amazon Route 53 sends health check requests to the specified IPv4 or IPv6 address and passes the value of &lt;code&gt;FullyQualifiedDomainName&lt;/code&gt; in the &lt;code&gt;Host&lt;/code&gt; header for all health checks except TCP health checks. This is typically the fully qualified DNS name of the endpoint on which you want Amazon Route 53 to perform health checks.&lt;/p&gt; &lt;p&gt;When Amazon Route 53 checks the health of an endpoint, here is how it constructs the &lt;code&gt;Host&lt;/code&gt; header:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;If you specify a value of &lt;code&gt;80&lt;/code&gt; for &lt;code&gt;Port&lt;/code&gt; and &lt;code&gt;HTTP&lt;/code&gt; or &lt;code&gt;HTTP_STR_MATCH&lt;/code&gt; for &lt;code&gt;Type&lt;/code&gt;, Amazon Route 53 passes the value of &lt;code&gt;FullyQualifiedDomainName&lt;/code&gt; to the endpoint in the Host header. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;If you specify a value of &lt;code&gt;443&lt;/code&gt; for &lt;code&gt;Port&lt;/code&gt; and &lt;code&gt;HTTPS&lt;/code&gt; or &lt;code&gt;HTTPS_STR_MATCH&lt;/code&gt; for &lt;code&gt;Type&lt;/code&gt;, Amazon Route 53 passes the value of &lt;code&gt;FullyQualifiedDomainName&lt;/code&gt; to the endpoint in the &lt;code&gt;Host&lt;/code&gt; header.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;If you specify another value for &lt;code&gt;Port&lt;/code&gt; and any value except &lt;code&gt;TCP&lt;/code&gt; for &lt;code&gt;Type&lt;/code&gt;, Amazon Route 53 passes &lt;code&gt;FullyQualifiedDomainName:Port&lt;/code&gt; to the endpoint in the &lt;code&gt;Host&lt;/code&gt; header.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;If you don't specify a value for &lt;code&gt;FullyQualifiedDomainName&lt;/code&gt;, Amazon Route 53 substitutes the value of &lt;code&gt;IPAddress&lt;/code&gt; in the &lt;code&gt;Host&lt;/code&gt; header in each of the preceding cases.&lt;/p&gt; &lt;p&gt; &lt;b&gt;If you don't specify a value for &lt;code&gt;IPAddress&lt;/code&gt; &lt;/b&gt;:&lt;/p&gt; &lt;p&gt;Amazon Route 53 sends a DNS request to the domain that you specify for &lt;code&gt;FullyQualifiedDomainName&lt;/code&gt; at the interval that you specify for &lt;code&gt;RequestInterval&lt;/code&gt;. Using an IPv4 address that DNS returns, Amazon Route 53 then checks the health of the endpoint.&lt;/p&gt; &lt;note&gt; &lt;p&gt;If you don't specify a value for &lt;code&gt;IPAddress&lt;/code&gt;, Amazon Route 53 uses only IPv4 to send health checks to the endpoint. If there's no resource record set with a type of A for the name that you specify for &lt;code&gt;FullyQualifiedDomainName&lt;/code&gt;, the health check fails with a &quot;DNS resolution failed&quot; error.&lt;/p&gt; &lt;/note&gt; &lt;p&gt;If you want to check the health of weighted, latency, or failover resource record sets and you choose to specify the endpoint only by &lt;code&gt;FullyQualifiedDomainName&lt;/code&gt;, we recommend that you create a separate health check for each endpoint. For example, create a health check for each HTTP server that is serving content for www.example.com. For the value of &lt;code&gt;FullyQualifiedDomainName&lt;/code&gt;, specify the domain name of the server (such as us-east-2-www.example.com), not the name of the resource record sets (www.example.com).&lt;/p&gt; &lt;important&gt; &lt;p&gt;In this configuration, if you create a health check for which the value of &lt;code&gt;FullyQualifiedDomainName&lt;/code&gt; matches the name of the resource record sets and you then associate the health check with those resource record sets, health check results will be unpredictable.&lt;/p&gt; &lt;/important&gt; &lt;p&gt;In addition, if the value that you specify for &lt;code&gt;Type&lt;/code&gt; is &lt;code&gt;HTTP&lt;/code&gt;, &lt;code&gt;HTTPS&lt;/code&gt;, &lt;code&gt;HTTP_STR_MATCH&lt;/code&gt;, or &lt;code&gt;HTTPS_STR_MATCH&lt;/code&gt;, Amazon Route 53 passes the value of &lt;code&gt;FullyQualifiedDomainName&lt;/code&gt; in the &lt;code&gt;Host&lt;/code&gt; header, as it does when you specify a value for &lt;code&gt;IPAddress&lt;/code&gt;. If the value of &lt;code&gt;Type&lt;/code&gt; is &lt;code&gt;TCP&lt;/code&gt;, Amazon Route 53 doesn't pass a &lt;code&gt;Host&lt;/code&gt; header.&lt;/p&gt;
-- Required parameter: Type
function M.HealthCheckConfig(FailureThreshold, SearchString, AlarmIdentifier, IPAddress, ResourcePath, ChildHealthChecks, Inverted, Regions, InsufficientDataHealthStatus, HealthThreshold, EnableSNI, MeasureLatency, RequestInterval, Type, Port, FullyQualifiedDomainName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating HealthCheckConfig")
	local t = { 
		["FailureThreshold"] = FailureThreshold,
		["SearchString"] = SearchString,
		["AlarmIdentifier"] = AlarmIdentifier,
		["IPAddress"] = IPAddress,
		["ResourcePath"] = ResourcePath,
		["ChildHealthChecks"] = ChildHealthChecks,
		["Inverted"] = Inverted,
		["Regions"] = Regions,
		["InsufficientDataHealthStatus"] = InsufficientDataHealthStatus,
		["HealthThreshold"] = HealthThreshold,
		["EnableSNI"] = EnableSNI,
		["MeasureLatency"] = MeasureLatency,
		["RequestInterval"] = RequestInterval,
		["Type"] = Type,
		["Port"] = Port,
		["FullyQualifiedDomainName"] = FullyQualifiedDomainName,
	}
	M.AssertHealthCheckConfig(t)
	return t
end

local NotAuthorizedException_keys = { "message" = true, nil }

function M.AssertNotAuthorizedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotAuthorizedException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(NotAuthorizedException_keys[k], "NotAuthorizedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotAuthorizedException
-- &lt;p&gt;Associating the specified VPC with the specified hosted zone has not been authorized.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;Descriptive message for the error response.&lt;/p&gt;
function M.NotAuthorizedException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NotAuthorizedException")
	local t = { 
		["message"] = message,
	}
	M.AssertNotAuthorizedException(t)
	return t
end

local GetCheckerIpRangesResponse_keys = { "CheckerIpRanges" = true, nil }

function M.AssertGetCheckerIpRangesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCheckerIpRangesResponse to be of type 'table'")
	assert(struct["CheckerIpRanges"], "Expected key CheckerIpRanges to exist in table")
	if struct["CheckerIpRanges"] then M.AssertCheckerIpRanges(struct["CheckerIpRanges"]) end
	for k,_ in pairs(struct) do
		assert(GetCheckerIpRangesResponse_keys[k], "GetCheckerIpRangesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCheckerIpRangesResponse
--  
-- @param CheckerIpRanges [CheckerIpRanges]  
-- Required parameter: CheckerIpRanges
function M.GetCheckerIpRangesResponse(CheckerIpRanges, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetCheckerIpRangesResponse")
	local t = { 
		["CheckerIpRanges"] = CheckerIpRanges,
	}
	M.AssertGetCheckerIpRangesResponse(t)
	return t
end

local InvalidDomainName_keys = { "message" = true, nil }

function M.AssertInvalidDomainName(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidDomainName to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidDomainName_keys[k], "InvalidDomainName contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidDomainName
-- &lt;p&gt;The specified domain name is not valid.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;Descriptive message for the error response.&lt;/p&gt;
function M.InvalidDomainName(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidDomainName")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidDomainName(t)
	return t
end

local DeleteVPCAssociationAuthorizationRequest_keys = { "HostedZoneId" = true, "VPC" = true, nil }

function M.AssertDeleteVPCAssociationAuthorizationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteVPCAssociationAuthorizationRequest to be of type 'table'")
	assert(struct["HostedZoneId"], "Expected key HostedZoneId to exist in table")
	assert(struct["VPC"], "Expected key VPC to exist in table")
	if struct["HostedZoneId"] then M.AssertResourceId(struct["HostedZoneId"]) end
	if struct["VPC"] then M.AssertVPC(struct["VPC"]) end
	for k,_ in pairs(struct) do
		assert(DeleteVPCAssociationAuthorizationRequest_keys[k], "DeleteVPCAssociationAuthorizationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteVPCAssociationAuthorizationRequest
-- &lt;p&gt;A complex type that contains information about the request to remove authorization to associate a VPC that was created by one AWS account with a hosted zone that was created with a different AWS account. &lt;/p&gt;
-- @param HostedZoneId [ResourceId] &lt;p&gt;When removing authorization to associate a VPC that was created by one AWS account with a hosted zone that was created with a different AWS account, the ID of the hosted zone.&lt;/p&gt;
-- @param VPC [VPC] &lt;p&gt;When removing authorization to associate a VPC that was created by one AWS account with a hosted zone that was created with a different AWS account, a complex type that includes the ID and region of the VPC.&lt;/p&gt;
-- Required parameter: HostedZoneId
-- Required parameter: VPC
function M.DeleteVPCAssociationAuthorizationRequest(HostedZoneId, VPC, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteVPCAssociationAuthorizationRequest")
	local t = { 
		["HostedZoneId"] = HostedZoneId,
		["VPC"] = VPC,
	}
	M.AssertDeleteVPCAssociationAuthorizationRequest(t)
	return t
end

local ThrottlingException_keys = { "message" = true, nil }

function M.AssertThrottlingException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ThrottlingException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ThrottlingException_keys[k], "ThrottlingException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ThrottlingException
-- &lt;p&gt;The limit on the number of requests per second was exceeded.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;The limit on the number of requests per second was exceeded.&lt;/p&gt;
function M.ThrottlingException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ThrottlingException")
	local t = { 
		["message"] = message,
	}
	M.AssertThrottlingException(t)
	return t
end

local ListGeoLocationsResponse_keys = { "GeoLocationDetailsList" = true, "NextSubdivisionCode" = true, "NextCountryCode" = true, "MaxItems" = true, "NextContinentCode" = true, "IsTruncated" = true, nil }

function M.AssertListGeoLocationsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListGeoLocationsResponse to be of type 'table'")
	assert(struct["GeoLocationDetailsList"], "Expected key GeoLocationDetailsList to exist in table")
	assert(struct["IsTruncated"], "Expected key IsTruncated to exist in table")
	assert(struct["MaxItems"], "Expected key MaxItems to exist in table")
	if struct["GeoLocationDetailsList"] then M.AssertGeoLocationDetailsList(struct["GeoLocationDetailsList"]) end
	if struct["NextSubdivisionCode"] then M.AssertGeoLocationSubdivisionCode(struct["NextSubdivisionCode"]) end
	if struct["NextCountryCode"] then M.AssertGeoLocationCountryCode(struct["NextCountryCode"]) end
	if struct["MaxItems"] then M.AssertPageMaxItems(struct["MaxItems"]) end
	if struct["NextContinentCode"] then M.AssertGeoLocationContinentCode(struct["NextContinentCode"]) end
	if struct["IsTruncated"] then M.AssertPageTruncated(struct["IsTruncated"]) end
	for k,_ in pairs(struct) do
		assert(ListGeoLocationsResponse_keys[k], "ListGeoLocationsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListGeoLocationsResponse
-- &lt;p&gt;A complex type containing the response information for the request.&lt;/p&gt;
-- @param GeoLocationDetailsList [GeoLocationDetailsList] &lt;p&gt;A complex type that contains one &lt;code&gt;GeoLocationDetails&lt;/code&gt; element for each location that Amazon Route 53 supports for geolocation.&lt;/p&gt;
-- @param NextSubdivisionCode [GeoLocationSubdivisionCode] &lt;p&gt;If &lt;code&gt;IsTruncated&lt;/code&gt; is &lt;code&gt;true&lt;/code&gt;, you can make a follow-up request to display more locations. Enter the value of &lt;code&gt;NextSubdivisionCode&lt;/code&gt; in the &lt;code&gt;StartSubdivisionCode&lt;/code&gt; parameter in another &lt;code&gt;ListGeoLocations&lt;/code&gt; request.&lt;/p&gt;
-- @param NextCountryCode [GeoLocationCountryCode] &lt;p&gt;If &lt;code&gt;IsTruncated&lt;/code&gt; is &lt;code&gt;true&lt;/code&gt;, you can make a follow-up request to display more locations. Enter the value of &lt;code&gt;NextCountryCode&lt;/code&gt; in the &lt;code&gt;StartCountryCode&lt;/code&gt; parameter in another &lt;code&gt;ListGeoLocations&lt;/code&gt; request.&lt;/p&gt;
-- @param MaxItems [PageMaxItems] &lt;p&gt;The value that you specified for &lt;code&gt;MaxItems&lt;/code&gt; in the request.&lt;/p&gt;
-- @param NextContinentCode [GeoLocationContinentCode] &lt;p&gt;If &lt;code&gt;IsTruncated&lt;/code&gt; is &lt;code&gt;true&lt;/code&gt;, you can make a follow-up request to display more locations. Enter the value of &lt;code&gt;NextContinentCode&lt;/code&gt; in the &lt;code&gt;StartContinentCode&lt;/code&gt; parameter in another &lt;code&gt;ListGeoLocations&lt;/code&gt; request.&lt;/p&gt;
-- @param IsTruncated [PageTruncated] &lt;p&gt;A value that indicates whether more locations remain to be listed after the last location in this response. If so, the value of &lt;code&gt;IsTruncated&lt;/code&gt; is &lt;code&gt;true&lt;/code&gt;. To get more values, submit another request and include the values of &lt;code&gt;NextContinentCode&lt;/code&gt;, &lt;code&gt;NextCountryCode&lt;/code&gt;, and &lt;code&gt;NextSubdivisionCode&lt;/code&gt; in the &lt;code&gt;StartContinentCode&lt;/code&gt;, &lt;code&gt;StartCountryCode&lt;/code&gt;, and &lt;code&gt;StartSubdivisionCode&lt;/code&gt;, as applicable.&lt;/p&gt;
-- Required parameter: GeoLocationDetailsList
-- Required parameter: IsTruncated
-- Required parameter: MaxItems
function M.ListGeoLocationsResponse(GeoLocationDetailsList, NextSubdivisionCode, NextCountryCode, MaxItems, NextContinentCode, IsTruncated, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListGeoLocationsResponse")
	local t = { 
		["GeoLocationDetailsList"] = GeoLocationDetailsList,
		["NextSubdivisionCode"] = NextSubdivisionCode,
		["NextCountryCode"] = NextCountryCode,
		["MaxItems"] = MaxItems,
		["NextContinentCode"] = NextContinentCode,
		["IsTruncated"] = IsTruncated,
	}
	M.AssertListGeoLocationsResponse(t)
	return t
end

local CreateTrafficPolicyInstanceResponse_keys = { "TrafficPolicyInstance" = true, "Location" = true, nil }

function M.AssertCreateTrafficPolicyInstanceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTrafficPolicyInstanceResponse to be of type 'table'")
	assert(struct["TrafficPolicyInstance"], "Expected key TrafficPolicyInstance to exist in table")
	assert(struct["Location"], "Expected key Location to exist in table")
	if struct["TrafficPolicyInstance"] then M.AssertTrafficPolicyInstance(struct["TrafficPolicyInstance"]) end
	if struct["Location"] then M.AssertResourceURI(struct["Location"]) end
	for k,_ in pairs(struct) do
		assert(CreateTrafficPolicyInstanceResponse_keys[k], "CreateTrafficPolicyInstanceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTrafficPolicyInstanceResponse
-- &lt;p&gt;A complex type that contains the response information for the &lt;code&gt;CreateTrafficPolicyInstance&lt;/code&gt; request.&lt;/p&gt;
-- @param TrafficPolicyInstance [TrafficPolicyInstance] &lt;p&gt;A complex type that contains settings for the new traffic policy instance.&lt;/p&gt;
-- @param Location [ResourceURI] &lt;p&gt;A unique URL that represents a new traffic policy instance.&lt;/p&gt;
-- Required parameter: TrafficPolicyInstance
-- Required parameter: Location
function M.CreateTrafficPolicyInstanceResponse(TrafficPolicyInstance, Location, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateTrafficPolicyInstanceResponse")
	local t = { 
		["TrafficPolicyInstance"] = TrafficPolicyInstance,
		["Location"] = Location,
	}
	M.AssertCreateTrafficPolicyInstanceResponse(t)
	return t
end

local GetHostedZoneCountResponse_keys = { "HostedZoneCount" = true, nil }

function M.AssertGetHostedZoneCountResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetHostedZoneCountResponse to be of type 'table'")
	assert(struct["HostedZoneCount"], "Expected key HostedZoneCount to exist in table")
	if struct["HostedZoneCount"] then M.AssertHostedZoneCount(struct["HostedZoneCount"]) end
	for k,_ in pairs(struct) do
		assert(GetHostedZoneCountResponse_keys[k], "GetHostedZoneCountResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetHostedZoneCountResponse
-- &lt;p&gt;A complex type that contains the response to a &lt;code&gt;GetHostedZoneCount&lt;/code&gt; request.&lt;/p&gt;
-- @param HostedZoneCount [HostedZoneCount] &lt;p&gt;The total number of public and private hosted zones that are associated with the current AWS account.&lt;/p&gt;
-- Required parameter: HostedZoneCount
function M.GetHostedZoneCountResponse(HostedZoneCount, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetHostedZoneCountResponse")
	local t = { 
		["HostedZoneCount"] = HostedZoneCount,
	}
	M.AssertGetHostedZoneCountResponse(t)
	return t
end

local ListVPCAssociationAuthorizationsRequest_keys = { "HostedZoneId" = true, "NextToken" = true, "MaxResults" = true, nil }

function M.AssertListVPCAssociationAuthorizationsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListVPCAssociationAuthorizationsRequest to be of type 'table'")
	assert(struct["HostedZoneId"], "Expected key HostedZoneId to exist in table")
	if struct["HostedZoneId"] then M.AssertResourceId(struct["HostedZoneId"]) end
	if struct["NextToken"] then M.AssertPaginationToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListVPCAssociationAuthorizationsRequest_keys[k], "ListVPCAssociationAuthorizationsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListVPCAssociationAuthorizationsRequest
-- &lt;p&gt;A complex type that contains information about that can be associated with your hosted zone.&lt;/p&gt;
-- @param HostedZoneId [ResourceId] &lt;p&gt;The ID of the hosted zone for which you want a list of VPCs that can be associated with the hosted zone.&lt;/p&gt;
-- @param NextToken [PaginationToken] &lt;p&gt; &lt;i&gt;Optional&lt;/i&gt;: If a response includes a &lt;code&gt;NextToken&lt;/code&gt; element, there are more VPCs that can be associated with the specified hosted zone. To get the next page of results, submit another request, and include the value of &lt;code&gt;NextToken&lt;/code&gt; from the response in the &lt;code&gt;nexttoken&lt;/code&gt; parameter in another &lt;code&gt;ListVPCAssociationAuthorizations&lt;/code&gt; request.&lt;/p&gt;
-- @param MaxResults [MaxResults] &lt;p&gt; &lt;i&gt;Optional&lt;/i&gt;: An integer that specifies the maximum number of VPCs that you want Amazon Route 53 to return. If you don't specify a value for &lt;code&gt;MaxResults&lt;/code&gt;, Amazon Route 53 returns up to 50 VPCs per page.&lt;/p&gt;
-- Required parameter: HostedZoneId
function M.ListVPCAssociationAuthorizationsRequest(HostedZoneId, NextToken, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListVPCAssociationAuthorizationsRequest")
	local t = { 
		["HostedZoneId"] = HostedZoneId,
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
	}
	M.AssertListVPCAssociationAuthorizationsRequest(t)
	return t
end

local HealthCheck_keys = { "HealthCheckConfig" = true, "CallerReference" = true, "HealthCheckVersion" = true, "Id" = true, "CloudWatchAlarmConfiguration" = true, nil }

function M.AssertHealthCheck(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HealthCheck to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["CallerReference"], "Expected key CallerReference to exist in table")
	assert(struct["HealthCheckConfig"], "Expected key HealthCheckConfig to exist in table")
	assert(struct["HealthCheckVersion"], "Expected key HealthCheckVersion to exist in table")
	if struct["HealthCheckConfig"] then M.AssertHealthCheckConfig(struct["HealthCheckConfig"]) end
	if struct["CallerReference"] then M.AssertHealthCheckNonce(struct["CallerReference"]) end
	if struct["HealthCheckVersion"] then M.AssertHealthCheckVersion(struct["HealthCheckVersion"]) end
	if struct["Id"] then M.AssertHealthCheckId(struct["Id"]) end
	if struct["CloudWatchAlarmConfiguration"] then M.AssertCloudWatchAlarmConfiguration(struct["CloudWatchAlarmConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(HealthCheck_keys[k], "HealthCheck contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HealthCheck
-- &lt;p&gt;A complex type that contains information about one health check that is associated with the current AWS account.&lt;/p&gt;
-- @param HealthCheckConfig [HealthCheckConfig] &lt;p&gt;A complex type that contains detailed information about one health check.&lt;/p&gt;
-- @param CallerReference [HealthCheckNonce] &lt;p&gt;A unique string that you specified when you created the health check.&lt;/p&gt;
-- @param HealthCheckVersion [HealthCheckVersion] &lt;p&gt;The version of the health check. You can optionally pass this value in a call to &lt;code&gt;UpdateHealthCheck&lt;/code&gt; to prevent overwriting another change to the health check.&lt;/p&gt;
-- @param Id [HealthCheckId] &lt;p&gt;The identifier that Amazon Route 53assigned to the health check when you created it. When you add or update a resource record set, you use this value to specify which health check to use. The value can be up to 64 characters long. &lt;/p&gt;
-- @param CloudWatchAlarmConfiguration [CloudWatchAlarmConfiguration] &lt;p&gt;A complex type that contains information about the CloudWatch alarm that Amazon Route 53 is monitoring for this health check.&lt;/p&gt;
-- Required parameter: Id
-- Required parameter: CallerReference
-- Required parameter: HealthCheckConfig
-- Required parameter: HealthCheckVersion
function M.HealthCheck(HealthCheckConfig, CallerReference, HealthCheckVersion, Id, CloudWatchAlarmConfiguration, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating HealthCheck")
	local t = { 
		["HealthCheckConfig"] = HealthCheckConfig,
		["CallerReference"] = CallerReference,
		["HealthCheckVersion"] = HealthCheckVersion,
		["Id"] = Id,
		["CloudWatchAlarmConfiguration"] = CloudWatchAlarmConfiguration,
	}
	M.AssertHealthCheck(t)
	return t
end

local DisassociateVPCFromHostedZoneResponse_keys = { "ChangeInfo" = true, nil }

function M.AssertDisassociateVPCFromHostedZoneResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateVPCFromHostedZoneResponse to be of type 'table'")
	assert(struct["ChangeInfo"], "Expected key ChangeInfo to exist in table")
	if struct["ChangeInfo"] then M.AssertChangeInfo(struct["ChangeInfo"]) end
	for k,_ in pairs(struct) do
		assert(DisassociateVPCFromHostedZoneResponse_keys[k], "DisassociateVPCFromHostedZoneResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateVPCFromHostedZoneResponse
-- &lt;p&gt;A complex type that contains the response information for the disassociate request.&lt;/p&gt;
-- @param ChangeInfo [ChangeInfo] &lt;p&gt;A complex type that describes the changes made to the specified private hosted zone.&lt;/p&gt;
-- Required parameter: ChangeInfo
function M.DisassociateVPCFromHostedZoneResponse(ChangeInfo, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisassociateVPCFromHostedZoneResponse")
	local t = { 
		["ChangeInfo"] = ChangeInfo,
	}
	M.AssertDisassociateVPCFromHostedZoneResponse(t)
	return t
end

local CreateReusableDelegationSetResponse_keys = { "Location" = true, "DelegationSet" = true, nil }

function M.AssertCreateReusableDelegationSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateReusableDelegationSetResponse to be of type 'table'")
	assert(struct["DelegationSet"], "Expected key DelegationSet to exist in table")
	assert(struct["Location"], "Expected key Location to exist in table")
	if struct["Location"] then M.AssertResourceURI(struct["Location"]) end
	if struct["DelegationSet"] then M.AssertDelegationSet(struct["DelegationSet"]) end
	for k,_ in pairs(struct) do
		assert(CreateReusableDelegationSetResponse_keys[k], "CreateReusableDelegationSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateReusableDelegationSetResponse
--  
-- @param Location [ResourceURI] &lt;p&gt;The unique URL representing the new reusable delegation set.&lt;/p&gt;
-- @param DelegationSet [DelegationSet] &lt;p&gt;A complex type that contains name server information.&lt;/p&gt;
-- Required parameter: DelegationSet
-- Required parameter: Location
function M.CreateReusableDelegationSetResponse(Location, DelegationSet, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateReusableDelegationSetResponse")
	local t = { 
		["Location"] = Location,
		["DelegationSet"] = DelegationSet,
	}
	M.AssertCreateReusableDelegationSetResponse(t)
	return t
end

local ListHealthChecksRequest_keys = { "Marker" = true, "MaxItems" = true, nil }

function M.AssertListHealthChecksRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListHealthChecksRequest to be of type 'table'")
	if struct["Marker"] then M.AssertPageMarker(struct["Marker"]) end
	if struct["MaxItems"] then M.AssertPageMaxItems(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(ListHealthChecksRequest_keys[k], "ListHealthChecksRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListHealthChecksRequest
-- &lt;p&gt;A request to retrieve a list of the health checks that are associated with the current AWS account.&lt;/p&gt;
-- @param Marker [PageMarker] &lt;p&gt;If the value of &lt;code&gt;IsTruncated&lt;/code&gt; in the previous response was &lt;code&gt;true&lt;/code&gt;, you have more health checks. To get another group, submit another &lt;code&gt;ListHealthChecks&lt;/code&gt; request. &lt;/p&gt; &lt;p&gt;For the value of &lt;code&gt;marker&lt;/code&gt;, specify the value of &lt;code&gt;NextMarker&lt;/code&gt; from the previous response, which is the ID of the first health check that Amazon Route 53 will return if you submit another request.&lt;/p&gt; &lt;p&gt;If the value of &lt;code&gt;IsTruncated&lt;/code&gt; in the previous response was &lt;code&gt;false&lt;/code&gt;, there are no more health checks to get.&lt;/p&gt;
-- @param MaxItems [PageMaxItems] &lt;p&gt;The maximum number of health checks that you want &lt;code&gt;ListHealthChecks&lt;/code&gt; to return in response to the current request. Amazon Route 53 returns a maximum of 100 items. If you set &lt;code&gt;MaxItems&lt;/code&gt; to a value greater than 100, Amazon Route 53 returns only the first 100 health checks. &lt;/p&gt;
function M.ListHealthChecksRequest(Marker, MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListHealthChecksRequest")
	local t = { 
		["Marker"] = Marker,
		["MaxItems"] = MaxItems,
	}
	M.AssertListHealthChecksRequest(t)
	return t
end

local ChangeResourceRecordSetsResponse_keys = { "ChangeInfo" = true, nil }

function M.AssertChangeResourceRecordSetsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ChangeResourceRecordSetsResponse to be of type 'table'")
	assert(struct["ChangeInfo"], "Expected key ChangeInfo to exist in table")
	if struct["ChangeInfo"] then M.AssertChangeInfo(struct["ChangeInfo"]) end
	for k,_ in pairs(struct) do
		assert(ChangeResourceRecordSetsResponse_keys[k], "ChangeResourceRecordSetsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ChangeResourceRecordSetsResponse
-- &lt;p&gt;A complex type containing the response for the request.&lt;/p&gt;
-- @param ChangeInfo [ChangeInfo] &lt;p&gt;A complex type that contains information about changes made to your hosted zone.&lt;/p&gt; &lt;p&gt;This element contains an ID that you use when performing a &lt;a&gt;GetChange&lt;/a&gt; action to get detailed information about the change.&lt;/p&gt;
-- Required parameter: ChangeInfo
function M.ChangeResourceRecordSetsResponse(ChangeInfo, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ChangeResourceRecordSetsResponse")
	local t = { 
		["ChangeInfo"] = ChangeInfo,
	}
	M.AssertChangeResourceRecordSetsResponse(t)
	return t
end

local DisassociateVPCFromHostedZoneRequest_keys = { "HostedZoneId" = true, "Comment" = true, "VPC" = true, nil }

function M.AssertDisassociateVPCFromHostedZoneRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateVPCFromHostedZoneRequest to be of type 'table'")
	assert(struct["HostedZoneId"], "Expected key HostedZoneId to exist in table")
	assert(struct["VPC"], "Expected key VPC to exist in table")
	if struct["HostedZoneId"] then M.AssertResourceId(struct["HostedZoneId"]) end
	if struct["Comment"] then M.AssertDisassociateVPCComment(struct["Comment"]) end
	if struct["VPC"] then M.AssertVPC(struct["VPC"]) end
	for k,_ in pairs(struct) do
		assert(DisassociateVPCFromHostedZoneRequest_keys[k], "DisassociateVPCFromHostedZoneRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateVPCFromHostedZoneRequest
-- &lt;p&gt;A complex type that contains information about the VPC that you want to disassociate from a specified private hosted zone.&lt;/p&gt;
-- @param HostedZoneId [ResourceId] &lt;p&gt;The ID of the private hosted zone that you want to disassociate a VPC from.&lt;/p&gt;
-- @param Comment [DisassociateVPCComment] &lt;p&gt; &lt;i&gt;Optional:&lt;/i&gt; A comment about the disassociation request.&lt;/p&gt;
-- @param VPC [VPC] &lt;p&gt;A complex type that contains information about the VPC that you're disassociating from the specified hosted zone.&lt;/p&gt;
-- Required parameter: HostedZoneId
-- Required parameter: VPC
function M.DisassociateVPCFromHostedZoneRequest(HostedZoneId, Comment, VPC, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisassociateVPCFromHostedZoneRequest")
	local t = { 
		["HostedZoneId"] = HostedZoneId,
		["Comment"] = Comment,
		["VPC"] = VPC,
	}
	M.AssertDisassociateVPCFromHostedZoneRequest(t)
	return t
end

local TestDNSAnswerRequest_keys = { "ResolverIP" = true, "RecordType" = true, "RecordName" = true, "EDNS0ClientSubnetMask" = true, "EDNS0ClientSubnetIP" = true, "HostedZoneId" = true, nil }

function M.AssertTestDNSAnswerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TestDNSAnswerRequest to be of type 'table'")
	assert(struct["HostedZoneId"], "Expected key HostedZoneId to exist in table")
	assert(struct["RecordName"], "Expected key RecordName to exist in table")
	assert(struct["RecordType"], "Expected key RecordType to exist in table")
	if struct["ResolverIP"] then M.AssertIPAddress(struct["ResolverIP"]) end
	if struct["RecordType"] then M.AssertRRType(struct["RecordType"]) end
	if struct["RecordName"] then M.AssertDNSName(struct["RecordName"]) end
	if struct["EDNS0ClientSubnetMask"] then M.AssertSubnetMask(struct["EDNS0ClientSubnetMask"]) end
	if struct["EDNS0ClientSubnetIP"] then M.AssertIPAddress(struct["EDNS0ClientSubnetIP"]) end
	if struct["HostedZoneId"] then M.AssertResourceId(struct["HostedZoneId"]) end
	for k,_ in pairs(struct) do
		assert(TestDNSAnswerRequest_keys[k], "TestDNSAnswerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TestDNSAnswerRequest
-- &lt;p&gt;Gets the value that Amazon Route 53 returns in response to a DNS request for a specified record name and type. You can optionally specify the IP address of a DNS resolver, an EDNS0 client subnet IP address, and a subnet mask. &lt;/p&gt;
-- @param ResolverIP [IPAddress] &lt;p&gt;If you want to simulate a request from a specific DNS resolver, specify the IP address for that resolver. If you omit this value, &lt;code&gt;TestDnsAnswer&lt;/code&gt; uses the IP address of a DNS resolver in the AWS US East (N. Virginia) Region (&lt;code&gt;us-east-1&lt;/code&gt;).&lt;/p&gt;
-- @param RecordType [RRType] &lt;p&gt;The type of the resource record set.&lt;/p&gt;
-- @param RecordName [DNSName] &lt;p&gt;The name of the resource record set that you want Amazon Route 53 to simulate a query for.&lt;/p&gt;
-- @param EDNS0ClientSubnetMask [SubnetMask] &lt;p&gt;If you specify an IP address for &lt;code&gt;edns0clientsubnetip&lt;/code&gt;, you can optionally specify the number of bits of the IP address that you want the checking tool to include in the DNS query. For example, if you specify &lt;code&gt;192.0.2.44&lt;/code&gt; for &lt;code&gt;edns0clientsubnetip&lt;/code&gt; and &lt;code&gt;24&lt;/code&gt; for &lt;code&gt;edns0clientsubnetmask&lt;/code&gt;, the checking tool will simulate a request from 192.0.2.0/24. The default value is 24 bits for IPv4 addresses and 64 bits for IPv6 addresses.&lt;/p&gt;
-- @param EDNS0ClientSubnetIP [IPAddress] &lt;p&gt;If the resolver that you specified for resolverip supports EDNS0, specify the IPv4 or IPv6 address of a client in the applicable location, for example, &lt;code&gt;192.0.2.44&lt;/code&gt; or &lt;code&gt;2001:db8:85a3::8a2e:370:7334&lt;/code&gt;.&lt;/p&gt;
-- @param HostedZoneId [ResourceId] &lt;p&gt;The ID of the hosted zone that you want Amazon Route 53 to simulate a query for.&lt;/p&gt;
-- Required parameter: HostedZoneId
-- Required parameter: RecordName
-- Required parameter: RecordType
function M.TestDNSAnswerRequest(ResolverIP, RecordType, RecordName, EDNS0ClientSubnetMask, EDNS0ClientSubnetIP, HostedZoneId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TestDNSAnswerRequest")
	local t = { 
		["ResolverIP"] = ResolverIP,
		["RecordType"] = RecordType,
		["RecordName"] = RecordName,
		["EDNS0ClientSubnetMask"] = EDNS0ClientSubnetMask,
		["EDNS0ClientSubnetIP"] = EDNS0ClientSubnetIP,
		["HostedZoneId"] = HostedZoneId,
	}
	M.AssertTestDNSAnswerRequest(t)
	return t
end

local TrafficPolicyInstance_keys = { "Name" = true, "TrafficPolicyVersion" = true, "TrafficPolicyType" = true, "State" = true, "TrafficPolicyId" = true, "TTL" = true, "HostedZoneId" = true, "Message" = true, "Id" = true, nil }

function M.AssertTrafficPolicyInstance(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TrafficPolicyInstance to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["HostedZoneId"], "Expected key HostedZoneId to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["TTL"], "Expected key TTL to exist in table")
	assert(struct["State"], "Expected key State to exist in table")
	assert(struct["Message"], "Expected key Message to exist in table")
	assert(struct["TrafficPolicyId"], "Expected key TrafficPolicyId to exist in table")
	assert(struct["TrafficPolicyVersion"], "Expected key TrafficPolicyVersion to exist in table")
	assert(struct["TrafficPolicyType"], "Expected key TrafficPolicyType to exist in table")
	if struct["Name"] then M.AssertDNSName(struct["Name"]) end
	if struct["TrafficPolicyVersion"] then M.AssertTrafficPolicyVersion(struct["TrafficPolicyVersion"]) end
	if struct["TrafficPolicyType"] then M.AssertRRType(struct["TrafficPolicyType"]) end
	if struct["State"] then M.AssertTrafficPolicyInstanceState(struct["State"]) end
	if struct["TrafficPolicyId"] then M.AssertTrafficPolicyId(struct["TrafficPolicyId"]) end
	if struct["TTL"] then M.AssertTTL(struct["TTL"]) end
	if struct["HostedZoneId"] then M.AssertResourceId(struct["HostedZoneId"]) end
	if struct["Message"] then M.AssertMessage(struct["Message"]) end
	if struct["Id"] then M.AssertTrafficPolicyInstanceId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(TrafficPolicyInstance_keys[k], "TrafficPolicyInstance contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TrafficPolicyInstance
-- &lt;p&gt;A complex type that contains settings for the new traffic policy instance.&lt;/p&gt;
-- @param Name [DNSName] &lt;p&gt;The DNS name, such as www.example.com, for which Amazon Route 53 responds to queries by using the resource record sets that are associated with this traffic policy instance. &lt;/p&gt;
-- @param TrafficPolicyVersion [TrafficPolicyVersion] &lt;p&gt;The version of the traffic policy that Amazon Route 53 used to create resource record sets in the specified hosted zone.&lt;/p&gt;
-- @param TrafficPolicyType [RRType] &lt;p&gt;The DNS type that Amazon Route 53 assigned to all of the resource record sets that it created for this traffic policy instance. &lt;/p&gt;
-- @param State [TrafficPolicyInstanceState] &lt;p&gt;The value of &lt;code&gt;State&lt;/code&gt; is one of the following values:&lt;/p&gt; &lt;dl&gt; &lt;dt&gt;Applied&lt;/dt&gt; &lt;dd&gt; &lt;p&gt;Amazon Route 53 has finished creating resource record sets, and changes have propagated to all Amazon Route 53 edge locations.&lt;/p&gt; &lt;/dd&gt; &lt;dt&gt;Creating&lt;/dt&gt; &lt;dd&gt; &lt;p&gt;Amazon Route 53 is creating the resource record sets. Use &lt;code&gt;GetTrafficPolicyInstance&lt;/code&gt; to confirm that the &lt;code&gt;CreateTrafficPolicyInstance&lt;/code&gt; request completed successfully.&lt;/p&gt; &lt;/dd&gt; &lt;dt&gt;Failed&lt;/dt&gt; &lt;dd&gt; &lt;p&gt;Amazon Route 53 wasn't able to create or update the resource record sets. When the value of &lt;code&gt;State&lt;/code&gt; is &lt;code&gt;Failed&lt;/code&gt;, see &lt;code&gt;Message&lt;/code&gt; for an explanation of what caused the request to fail.&lt;/p&gt; &lt;/dd&gt; &lt;/dl&gt;
-- @param TrafficPolicyId [TrafficPolicyId] &lt;p&gt;The ID of the traffic policy that Amazon Route 53 used to create resource record sets in the specified hosted zone.&lt;/p&gt;
-- @param TTL [TTL] &lt;p&gt;The TTL that Amazon Route 53 assigned to all of the resource record sets that it created in the specified hosted zone.&lt;/p&gt;
-- @param HostedZoneId [ResourceId] &lt;p&gt;The ID of the hosted zone that Amazon Route 53 created resource record sets in.&lt;/p&gt;
-- @param Message [Message] &lt;p&gt;If &lt;code&gt;State&lt;/code&gt; is &lt;code&gt;Failed&lt;/code&gt;, an explanation of the reason for the failure. If &lt;code&gt;State&lt;/code&gt; is another value, &lt;code&gt;Message&lt;/code&gt; is empty.&lt;/p&gt;
-- @param Id [TrafficPolicyInstanceId] &lt;p&gt;The ID that Amazon Route 53 assigned to the new traffic policy instance.&lt;/p&gt;
-- Required parameter: Id
-- Required parameter: HostedZoneId
-- Required parameter: Name
-- Required parameter: TTL
-- Required parameter: State
-- Required parameter: Message
-- Required parameter: TrafficPolicyId
-- Required parameter: TrafficPolicyVersion
-- Required parameter: TrafficPolicyType
function M.TrafficPolicyInstance(Name, TrafficPolicyVersion, TrafficPolicyType, State, TrafficPolicyId, TTL, HostedZoneId, Message, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TrafficPolicyInstance")
	local t = { 
		["Name"] = Name,
		["TrafficPolicyVersion"] = TrafficPolicyVersion,
		["TrafficPolicyType"] = TrafficPolicyType,
		["State"] = State,
		["TrafficPolicyId"] = TrafficPolicyId,
		["TTL"] = TTL,
		["HostedZoneId"] = HostedZoneId,
		["Message"] = Message,
		["Id"] = Id,
	}
	M.AssertTrafficPolicyInstance(t)
	return t
end

local TrafficPolicyInUse_keys = { "message" = true, nil }

function M.AssertTrafficPolicyInUse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TrafficPolicyInUse to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(TrafficPolicyInUse_keys[k], "TrafficPolicyInUse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TrafficPolicyInUse
-- &lt;p&gt;One or more traffic policy instances were created by using the specified traffic policy.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;Descriptive message for the error response.&lt;/p&gt;
function M.TrafficPolicyInUse(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TrafficPolicyInUse")
	local t = { 
		["message"] = message,
	}
	M.AssertTrafficPolicyInUse(t)
	return t
end

local ChangeInfo_keys = { "Status" = true, "Comment" = true, "SubmittedAt" = true, "Id" = true, nil }

function M.AssertChangeInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ChangeInfo to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	assert(struct["SubmittedAt"], "Expected key SubmittedAt to exist in table")
	if struct["Status"] then M.AssertChangeStatus(struct["Status"]) end
	if struct["Comment"] then M.AssertResourceDescription(struct["Comment"]) end
	if struct["SubmittedAt"] then M.AssertTimeStamp(struct["SubmittedAt"]) end
	if struct["Id"] then M.AssertResourceId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(ChangeInfo_keys[k], "ChangeInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ChangeInfo
-- &lt;p&gt;A complex type that describes change information about changes made to your hosted zone.&lt;/p&gt;
-- @param Status [ChangeStatus] &lt;p&gt;The current state of the request. &lt;code&gt;PENDING&lt;/code&gt; indicates that this request has not yet been applied to all Amazon Route 53 DNS servers.&lt;/p&gt;
-- @param Comment [ResourceDescription] &lt;p&gt;A complex type that describes change information about changes made to your hosted zone.&lt;/p&gt; &lt;p&gt;This element contains an ID that you use when performing a &lt;a&gt;GetChange&lt;/a&gt; action to get detailed information about the change.&lt;/p&gt;
-- @param SubmittedAt [TimeStamp] &lt;p&gt;The date and time that the change request was submitted in &lt;a href=&quot;https://en.wikipedia.org/wiki/ISO_8601&quot;&gt;ISO 8601 format&lt;/a&gt; and Coordinated Universal Time (UTC). For example, the value &lt;code&gt;2017-03-27T17:48:16.751Z&lt;/code&gt; represents March 27, 2017 at 17:48:16.751 UTC.&lt;/p&gt;
-- @param Id [ResourceId] &lt;p&gt;The ID of the request.&lt;/p&gt;
-- Required parameter: Id
-- Required parameter: Status
-- Required parameter: SubmittedAt
function M.ChangeInfo(Status, Comment, SubmittedAt, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ChangeInfo")
	local t = { 
		["Status"] = Status,
		["Comment"] = Comment,
		["SubmittedAt"] = SubmittedAt,
		["Id"] = Id,
	}
	M.AssertChangeInfo(t)
	return t
end

local ListTrafficPolicyInstancesByHostedZoneResponse_keys = { "TrafficPolicyInstanceTypeMarker" = true, "TrafficPolicyInstanceNameMarker" = true, "TrafficPolicyInstances" = true, "MaxItems" = true, "IsTruncated" = true, nil }

function M.AssertListTrafficPolicyInstancesByHostedZoneResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTrafficPolicyInstancesByHostedZoneResponse to be of type 'table'")
	assert(struct["TrafficPolicyInstances"], "Expected key TrafficPolicyInstances to exist in table")
	assert(struct["IsTruncated"], "Expected key IsTruncated to exist in table")
	assert(struct["MaxItems"], "Expected key MaxItems to exist in table")
	if struct["TrafficPolicyInstanceTypeMarker"] then M.AssertRRType(struct["TrafficPolicyInstanceTypeMarker"]) end
	if struct["TrafficPolicyInstanceNameMarker"] then M.AssertDNSName(struct["TrafficPolicyInstanceNameMarker"]) end
	if struct["TrafficPolicyInstances"] then M.AssertTrafficPolicyInstances(struct["TrafficPolicyInstances"]) end
	if struct["MaxItems"] then M.AssertPageMaxItems(struct["MaxItems"]) end
	if struct["IsTruncated"] then M.AssertPageTruncated(struct["IsTruncated"]) end
	for k,_ in pairs(struct) do
		assert(ListTrafficPolicyInstancesByHostedZoneResponse_keys[k], "ListTrafficPolicyInstancesByHostedZoneResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTrafficPolicyInstancesByHostedZoneResponse
-- &lt;p&gt;A complex type that contains the response information for the request.&lt;/p&gt;
-- @param TrafficPolicyInstanceTypeMarker [RRType] &lt;p&gt;If &lt;code&gt;IsTruncated&lt;/code&gt; is true, &lt;code&gt;TrafficPolicyInstanceTypeMarker&lt;/code&gt; is the DNS type of the resource record sets that are associated with the first traffic policy instance in the next group of traffic policy instances.&lt;/p&gt;
-- @param TrafficPolicyInstanceNameMarker [DNSName] &lt;p&gt;If &lt;code&gt;IsTruncated&lt;/code&gt; is &lt;code&gt;true&lt;/code&gt;, &lt;code&gt;TrafficPolicyInstanceNameMarker&lt;/code&gt; is the name of the first traffic policy instance in the next group of traffic policy instances.&lt;/p&gt;
-- @param TrafficPolicyInstances [TrafficPolicyInstances] &lt;p&gt;A list that contains one &lt;code&gt;TrafficPolicyInstance&lt;/code&gt; element for each traffic policy instance that matches the elements in the request. &lt;/p&gt;
-- @param MaxItems [PageMaxItems] &lt;p&gt;The value that you specified for the &lt;code&gt;MaxItems&lt;/code&gt; parameter in the &lt;code&gt;ListTrafficPolicyInstancesByHostedZone&lt;/code&gt; request that produced the current response.&lt;/p&gt;
-- @param IsTruncated [PageTruncated] &lt;p&gt;A flag that indicates whether there are more traffic policy instances to be listed. If the response was truncated, you can get the next group of traffic policy instances by submitting another &lt;code&gt;ListTrafficPolicyInstancesByHostedZone&lt;/code&gt; request and specifying the values of &lt;code&gt;HostedZoneIdMarker&lt;/code&gt;, &lt;code&gt;TrafficPolicyInstanceNameMarker&lt;/code&gt;, and &lt;code&gt;TrafficPolicyInstanceTypeMarker&lt;/code&gt; in the corresponding request parameters.&lt;/p&gt;
-- Required parameter: TrafficPolicyInstances
-- Required parameter: IsTruncated
-- Required parameter: MaxItems
function M.ListTrafficPolicyInstancesByHostedZoneResponse(TrafficPolicyInstanceTypeMarker, TrafficPolicyInstanceNameMarker, TrafficPolicyInstances, MaxItems, IsTruncated, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTrafficPolicyInstancesByHostedZoneResponse")
	local t = { 
		["TrafficPolicyInstanceTypeMarker"] = TrafficPolicyInstanceTypeMarker,
		["TrafficPolicyInstanceNameMarker"] = TrafficPolicyInstanceNameMarker,
		["TrafficPolicyInstances"] = TrafficPolicyInstances,
		["MaxItems"] = MaxItems,
		["IsTruncated"] = IsTruncated,
	}
	M.AssertListTrafficPolicyInstancesByHostedZoneResponse(t)
	return t
end

local GetHealthCheckLastFailureReasonResponse_keys = { "HealthCheckObservations" = true, nil }

function M.AssertGetHealthCheckLastFailureReasonResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetHealthCheckLastFailureReasonResponse to be of type 'table'")
	assert(struct["HealthCheckObservations"], "Expected key HealthCheckObservations to exist in table")
	if struct["HealthCheckObservations"] then M.AssertHealthCheckObservations(struct["HealthCheckObservations"]) end
	for k,_ in pairs(struct) do
		assert(GetHealthCheckLastFailureReasonResponse_keys[k], "GetHealthCheckLastFailureReasonResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetHealthCheckLastFailureReasonResponse
-- &lt;p&gt;A complex type that contains the response to a &lt;code&gt;GetHealthCheckLastFailureReason&lt;/code&gt; request.&lt;/p&gt;
-- @param HealthCheckObservations [HealthCheckObservations] &lt;p&gt;A list that contains one &lt;code&gt;Observation&lt;/code&gt; element for each Amazon Route 53 health checker that is reporting a last failure reason. &lt;/p&gt;
-- Required parameter: HealthCheckObservations
function M.GetHealthCheckLastFailureReasonResponse(HealthCheckObservations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetHealthCheckLastFailureReasonResponse")
	local t = { 
		["HealthCheckObservations"] = HealthCheckObservations,
	}
	M.AssertGetHealthCheckLastFailureReasonResponse(t)
	return t
end

local DelegationSetAlreadyReusable_keys = { "message" = true, nil }

function M.AssertDelegationSetAlreadyReusable(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DelegationSetAlreadyReusable to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(DelegationSetAlreadyReusable_keys[k], "DelegationSetAlreadyReusable contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DelegationSetAlreadyReusable
-- &lt;p&gt;The specified delegation set has already been marked as reusable.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;Descriptive message for the error response.&lt;/p&gt;
function M.DelegationSetAlreadyReusable(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DelegationSetAlreadyReusable")
	local t = { 
		["message"] = message,
	}
	M.AssertDelegationSetAlreadyReusable(t)
	return t
end

local LimitsExceeded_keys = { "message" = true, nil }

function M.AssertLimitsExceeded(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitsExceeded to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(LimitsExceeded_keys[k], "LimitsExceeded contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitsExceeded
-- &lt;p&gt;The limits specified for a resource have been exceeded.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;Descriptive message for the error response.&lt;/p&gt;
function M.LimitsExceeded(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitsExceeded")
	local t = { 
		["message"] = message,
	}
	M.AssertLimitsExceeded(t)
	return t
end

local GetHealthCheckStatusRequest_keys = { "HealthCheckId" = true, nil }

function M.AssertGetHealthCheckStatusRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetHealthCheckStatusRequest to be of type 'table'")
	assert(struct["HealthCheckId"], "Expected key HealthCheckId to exist in table")
	if struct["HealthCheckId"] then M.AssertHealthCheckId(struct["HealthCheckId"]) end
	for k,_ in pairs(struct) do
		assert(GetHealthCheckStatusRequest_keys[k], "GetHealthCheckStatusRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetHealthCheckStatusRequest
-- &lt;p&gt;A request to get the status for a health check.&lt;/p&gt;
-- @param HealthCheckId [HealthCheckId] &lt;p&gt;The ID for the health check that you want the current status for. When you created the health check, &lt;code&gt;CreateHealthCheck&lt;/code&gt; returned the ID in the response, in the &lt;code&gt;HealthCheckId&lt;/code&gt; element.&lt;/p&gt; &lt;note&gt; &lt;p&gt;If you want to check the status of a calculated health check, you must use the Amazon Route 53 console or the CloudWatch console. You can't use &lt;code&gt;GetHealthCheckStatus&lt;/code&gt; to get the status of a calculated health check.&lt;/p&gt; &lt;/note&gt;
-- Required parameter: HealthCheckId
function M.GetHealthCheckStatusRequest(HealthCheckId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetHealthCheckStatusRequest")
	local t = { 
		["HealthCheckId"] = HealthCheckId,
	}
	M.AssertGetHealthCheckStatusRequest(t)
	return t
end

local ListTagsForResourceResponse_keys = { "ResourceTagSet" = true, nil }

function M.AssertListTagsForResourceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForResourceResponse to be of type 'table'")
	assert(struct["ResourceTagSet"], "Expected key ResourceTagSet to exist in table")
	if struct["ResourceTagSet"] then M.AssertResourceTagSet(struct["ResourceTagSet"]) end
	for k,_ in pairs(struct) do
		assert(ListTagsForResourceResponse_keys[k], "ListTagsForResourceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForResourceResponse
-- &lt;p&gt;A complex type that contains information about the health checks or hosted zones for which you want to list tags.&lt;/p&gt;
-- @param ResourceTagSet [ResourceTagSet] &lt;p&gt;A &lt;code&gt;ResourceTagSet&lt;/code&gt; containing tags associated with the specified resource.&lt;/p&gt;
-- Required parameter: ResourceTagSet
function M.ListTagsForResourceResponse(ResourceTagSet, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsForResourceResponse")
	local t = { 
		["ResourceTagSet"] = ResourceTagSet,
	}
	M.AssertListTagsForResourceResponse(t)
	return t
end

local AliasTarget_keys = { "HostedZoneId" = true, "EvaluateTargetHealth" = true, "DNSName" = true, nil }

function M.AssertAliasTarget(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AliasTarget to be of type 'table'")
	assert(struct["HostedZoneId"], "Expected key HostedZoneId to exist in table")
	assert(struct["DNSName"], "Expected key DNSName to exist in table")
	assert(struct["EvaluateTargetHealth"], "Expected key EvaluateTargetHealth to exist in table")
	if struct["HostedZoneId"] then M.AssertResourceId(struct["HostedZoneId"]) end
	if struct["EvaluateTargetHealth"] then M.AssertAliasHealthEnabled(struct["EvaluateTargetHealth"]) end
	if struct["DNSName"] then M.AssertDNSName(struct["DNSName"]) end
	for k,_ in pairs(struct) do
		assert(AliasTarget_keys[k], "AliasTarget contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AliasTarget
-- &lt;p&gt; &lt;i&gt;Alias resource record sets only:&lt;/i&gt; Information about the CloudFront distribution, Elastic Beanstalk environment, ELB load balancer, Amazon S3 bucket, or Amazon Route 53 resource record set that you're redirecting queries to. An Elastic Beanstalk environment must have a regionalized subdomain.&lt;/p&gt; &lt;p&gt;When creating resource record sets for a private hosted zone, note the following:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Resource record sets can't be created for CloudFront distributions in a private hosted zone.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Creating geolocation alias resource record sets or latency alias resource record sets in a private hosted zone is unsupported.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;For information about creating failover resource record sets in a private hosted zone, see &lt;a href=&quot;http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-private-hosted-zones.html&quot;&gt;Configuring Failover in a Private Hosted Zone&lt;/a&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param HostedZoneId [ResourceId] &lt;p&gt; &lt;i&gt;Alias resource records sets only&lt;/i&gt;: The value used depends on where you want to route traffic:&lt;/p&gt; &lt;dl&gt; &lt;dt&gt;CloudFront distribution&lt;/dt&gt; &lt;dd&gt; &lt;p&gt;Specify &lt;code&gt;Z2FDTNDATAQYW2&lt;/code&gt;.&lt;/p&gt; &lt;note&gt; &lt;p&gt;Alias resource record sets for CloudFront can't be created in a private zone.&lt;/p&gt; &lt;/note&gt; &lt;/dd&gt; &lt;dt&gt;Elastic Beanstalk environment&lt;/dt&gt; &lt;dd&gt; &lt;p&gt;Specify the hosted zone ID for the region in which you created the environment. The environment must have a regionalized subdomain. For a list of regions and the corresponding hosted zone IDs, see &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/rande.html#elasticbeanstalk_region&quot;&gt;AWS Elastic Beanstalk&lt;/a&gt; in the &quot;AWS Regions and Endpoints&quot; chapter of the &lt;i&gt;Amazon Web Services General Reference&lt;/i&gt;.&lt;/p&gt; &lt;/dd&gt; &lt;dt&gt;ELB load balancer&lt;/dt&gt; &lt;dd&gt; &lt;p&gt;Specify the value of the hosted zone ID for the load balancer. Use the following methods to get the hosted zone ID:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/rande.html#elb_region&quot;&gt;Elastic Load Balancing&lt;/a&gt; table in the &quot;AWS Regions and Endpoints&quot; chapter of the &lt;i&gt;Amazon Web Services General Reference&lt;/i&gt;: Use the value in the &quot;Amazon Route 53 Hosted Zone ID&quot; column that corresponds with the region that you created your load balancer in.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;AWS Management Console&lt;/b&gt;: Go to the Amazon EC2 page, click &lt;b&gt;Load Balancers&lt;/b&gt; in the navigation pane, select the load balancer, and get the value of the &lt;b&gt;Hosted zone&lt;/b&gt; field on the &lt;b&gt;Description&lt;/b&gt; tab.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Elastic Load Balancing API&lt;/b&gt;: Use &lt;code&gt;DescribeLoadBalancers&lt;/code&gt; to get the value of &lt;code&gt;CanonicalHostedZoneNameId&lt;/code&gt;. For more information, see the applicable guide:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Classic Load Balancer: &lt;a href=&quot;http://docs.aws.amazon.com/elasticloadbalancing/2012-06-01/APIReference/API_DescribeLoadBalancers.html&quot;&gt;DescribeLoadBalancers&lt;/a&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Application Load Balancer: &lt;a href=&quot;http://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeLoadBalancers.html&quot;&gt;DescribeLoadBalancers&lt;/a&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;AWS CLI&lt;/b&gt;: Use &lt;code&gt; &lt;a href=&quot;http://docs.aws.amazon.com/cli/latest/reference/elb/describe-load-balancers.html&quot;&gt;describe-load-balancers&lt;/a&gt; &lt;/code&gt; to get the value of &lt;code&gt;CanonicalHostedZoneNameID&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/dd&gt; &lt;dt&gt;An Amazon S3 bucket configured as a static website&lt;/dt&gt; &lt;dd&gt; &lt;p&gt;Specify the hosted zone ID for the region that you created the bucket in. For more information about valid values, see the &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region&quot;&gt;Amazon Simple Storage Service Website Endpoints&lt;/a&gt; table in the &quot;AWS Regions and Endpoints&quot; chapter of the &lt;i&gt;Amazon Web Services General Reference&lt;/i&gt;.&lt;/p&gt; &lt;/dd&gt; &lt;dt&gt;Another Amazon Route 53 resource record set in your hosted zone&lt;/dt&gt; &lt;dd&gt; &lt;p&gt;Specify the hosted zone ID of your hosted zone. (An alias resource record set can't reference a resource record set in a different hosted zone.)&lt;/p&gt; &lt;/dd&gt; &lt;/dl&gt;
-- @param EvaluateTargetHealth [AliasHealthEnabled] &lt;p&gt; &lt;i&gt;Applies only to alias, failover alias, geolocation alias, latency alias, and weighted alias resource record sets:&lt;/i&gt; When &lt;code&gt;EvaluateTargetHealth&lt;/code&gt; is &lt;code&gt;true&lt;/code&gt;, an alias resource record set inherits the health of the referenced AWS resource, such as an ELB load balancer, or the referenced resource record set.&lt;/p&gt; &lt;p&gt;Note the following:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;You can't set &lt;code&gt;EvaluateTargetHealth&lt;/code&gt; to &lt;code&gt;true&lt;/code&gt; when the alias target is a CloudFront distribution.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;If the AWS resource that you specify in &lt;code&gt;AliasTarget&lt;/code&gt; is a resource record set or a group of resource record sets (for example, a group of weighted resource record sets), but it is not another alias resource record set, we recommend that you associate a health check with all of the resource record sets in the alias target. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-complex-configs.html#dns-failover-complex-configs-hc-omitting&quot;&gt;What Happens When You Omit Health Checks?&lt;/a&gt; in the &lt;i&gt;Amazon Route 53 Developer Guide&lt;/i&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;If you specify an Elastic Beanstalk environment in &lt;code&gt;HostedZoneId&lt;/code&gt; and &lt;code&gt;DNSName&lt;/code&gt;, and if the environment contains an ELB load balancer, Elastic Load Balancing routes queries only to the healthy Amazon EC2 instances that are registered with the load balancer. (An environment automatically contains an ELB load balancer if it includes more than one EC2 instance.) If you set &lt;code&gt;EvaluateTargetHealth&lt;/code&gt; to &lt;code&gt;true&lt;/code&gt; and either no EC2 instances are healthy or the load balancer itself is unhealthy, Amazon Route 53 routes queries to other available resources that are healthy, if any.&lt;/p&gt; &lt;p&gt;If the environment contains a single EC2 instance, there are no special requirements.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;If you specify an ELB load balancer in &lt;code&gt; &lt;a&gt;AliasTarget&lt;/a&gt; &lt;/code&gt;, ELB routes queries only to the healthy EC2 instances that are registered with the load balancer. If no EC2 instances are healthy or if the load balancer itself is unhealthy, and if &lt;code&gt;EvaluateTargetHealth&lt;/code&gt; is true for the corresponding alias resource record set, Amazon Route 53 routes queries to other resources. When you create a load balancer, you configure settings for ELB health checks; they're not Amazon Route 53 health checks, but they perform a similar function. Do not create Amazon Route 53 health checks for the EC2 instances that you register with an ELB load balancer.&lt;/p&gt; &lt;p&gt;For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-complex-configs.html&quot;&gt;How Health Checks Work in More Complex Amazon Route 53 Configurations&lt;/a&gt; in the &lt;i&gt;Amazon Route 53 Developer Guide&lt;/i&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;We recommend that you set &lt;code&gt;EvaluateTargetHealth&lt;/code&gt; to true only when you have enough idle capacity to handle the failure of one or more endpoints.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;For more information and examples, see &lt;a href=&quot;http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover.html&quot;&gt;Amazon Route 53 Health Checks and DNS Failover&lt;/a&gt; in the &lt;i&gt;Amazon Route 53 Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param DNSName [DNSName] &lt;p&gt; &lt;i&gt;Alias resource record sets only:&lt;/i&gt; The value that you specify depends on where you want to route queries:&lt;/p&gt; &lt;dl&gt; &lt;dt&gt;CloudFront distribution&lt;/dt&gt; &lt;dd&gt; &lt;p&gt;Specify the domain name that CloudFront assigned when you created your distribution.&lt;/p&gt; &lt;p&gt;Your CloudFront distribution must include an alternate domain name that matches the name of the resource record set. For example, if the name of the resource record set is &lt;i&gt;acme.example.com&lt;/i&gt;, your CloudFront distribution must include &lt;i&gt;acme.example.com&lt;/i&gt; as one of the alternate domain names. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/CNAMEs.html&quot;&gt;Using Alternate Domain Names (CNAMEs)&lt;/a&gt; in the &lt;i&gt;Amazon CloudFront Developer Guide&lt;/i&gt;.&lt;/p&gt; &lt;/dd&gt; &lt;dt&gt;Elastic Beanstalk environment&lt;/dt&gt; &lt;dd&gt; &lt;p&gt;Specify the &lt;code&gt;CNAME&lt;/code&gt; attribute for the environment. (The environment must have a regionalized domain name.) You can use the following methods to get the value of the CNAME attribute:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;i&gt;AWS Management Console&lt;/i&gt;: For information about how to get the value by using the console, see &lt;a href=&quot;http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/customdomains.html&quot;&gt;Using Custom Domains with AWS Elastic Beanstalk&lt;/a&gt; in the &lt;i&gt;AWS Elastic Beanstalk Developer Guide&lt;/i&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;i&gt;Elastic Beanstalk API&lt;/i&gt;: Use the &lt;code&gt;DescribeEnvironments&lt;/code&gt; action to get the value of the &lt;code&gt;CNAME&lt;/code&gt; attribute. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/elasticbeanstalk/latest/api/API_DescribeEnvironments.html&quot;&gt;DescribeEnvironments&lt;/a&gt; in the &lt;i&gt;AWS Elastic Beanstalk API Reference&lt;/i&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;i&gt;AWS CLI&lt;/i&gt;: Use the &lt;code&gt;describe-environments&lt;/code&gt; command to get the value of the &lt;code&gt;CNAME&lt;/code&gt; attribute. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/cli/latest/reference/elasticbeanstalk/describe-environments.html&quot;&gt;describe-environments&lt;/a&gt; in the &lt;i&gt;AWS Command Line Interface Reference&lt;/i&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/dd&gt; &lt;dt&gt;ELB load balancer&lt;/dt&gt; &lt;dd&gt; &lt;p&gt;Specify the DNS name that is associated with the load balancer. Get the DNS name by using the AWS Management Console, the ELB API, or the AWS CLI. &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;AWS Management Console&lt;/b&gt;: Go to the EC2 page, choose &lt;b&gt;Load Balancers&lt;/b&gt; in the navigation pane, choose the load balancer, choose the &lt;b&gt;Description&lt;/b&gt; tab, and get the value of the &lt;b&gt;DNS name&lt;/b&gt; field. (If you're routing traffic to a Classic Load Balancer, get the value that begins with &lt;b&gt;dualstack&lt;/b&gt;.) &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Elastic Load Balancing API&lt;/b&gt;: Use &lt;code&gt;DescribeLoadBalancers&lt;/code&gt; to get the value of &lt;code&gt;DNSName&lt;/code&gt;. For more information, see the applicable guide:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Classic Load Balancer: &lt;a href=&quot;http://docs.aws.amazon.com/elasticloadbalancing/2012-06-01/APIReference/API_DescribeLoadBalancers.html&quot;&gt;DescribeLoadBalancers&lt;/a&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Application Load Balancer: &lt;a href=&quot;http://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeLoadBalancers.html&quot;&gt;DescribeLoadBalancers&lt;/a&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;AWS CLI&lt;/b&gt;: Use &lt;code&gt; &lt;a href=&quot;http://docs.aws.amazon.com/cli/latest/reference/elb/describe-load-balancers.html&quot;&gt;describe-load-balancers&lt;/a&gt; &lt;/code&gt; to get the value of &lt;code&gt;DNSName&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/dd&gt; &lt;dt&gt;Amazon S3 bucket that is configured as a static website&lt;/dt&gt; &lt;dd&gt; &lt;p&gt;Specify the domain name of the Amazon S3 website endpoint in which you created the bucket, for example, &lt;code&gt;s3-website-us-east-2.amazonaws.com&lt;/code&gt;. For more information about valid values, see the table &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region&quot;&gt;Amazon Simple Storage Service (S3) Website Endpoints&lt;/a&gt; in the &lt;i&gt;Amazon Web Services General Reference&lt;/i&gt;. For more information about using S3 buckets for websites, see &lt;a href=&quot;http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/getting-started.html&quot;&gt;Getting Started with Amazon Route 53&lt;/a&gt; in the &lt;i&gt;Amazon Route 53 Developer Guide.&lt;/i&gt; &lt;/p&gt; &lt;/dd&gt; &lt;dt&gt;Another Amazon Route 53 resource record set&lt;/dt&gt; &lt;dd&gt; &lt;p&gt;Specify the value of the &lt;code&gt;Name&lt;/code&gt; element for a resource record set in the current hosted zone.&lt;/p&gt; &lt;/dd&gt; &lt;/dl&gt;
-- Required parameter: HostedZoneId
-- Required parameter: DNSName
-- Required parameter: EvaluateTargetHealth
function M.AliasTarget(HostedZoneId, EvaluateTargetHealth, DNSName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AliasTarget")
	local t = { 
		["HostedZoneId"] = HostedZoneId,
		["EvaluateTargetHealth"] = EvaluateTargetHealth,
		["DNSName"] = DNSName,
	}
	M.AssertAliasTarget(t)
	return t
end

local GetHostedZoneCountRequest_keys = { nil }

function M.AssertGetHostedZoneCountRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetHostedZoneCountRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(GetHostedZoneCountRequest_keys[k], "GetHostedZoneCountRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetHostedZoneCountRequest
-- &lt;p&gt;A request to retrieve a count of all the hosted zones that are associated with the current AWS account.&lt;/p&gt;
function M.GetHostedZoneCountRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetHostedZoneCountRequest")
	local t = { 
	}
	M.AssertGetHostedZoneCountRequest(t)
	return t
end

local GetHealthCheckLastFailureReasonRequest_keys = { "HealthCheckId" = true, nil }

function M.AssertGetHealthCheckLastFailureReasonRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetHealthCheckLastFailureReasonRequest to be of type 'table'")
	assert(struct["HealthCheckId"], "Expected key HealthCheckId to exist in table")
	if struct["HealthCheckId"] then M.AssertHealthCheckId(struct["HealthCheckId"]) end
	for k,_ in pairs(struct) do
		assert(GetHealthCheckLastFailureReasonRequest_keys[k], "GetHealthCheckLastFailureReasonRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetHealthCheckLastFailureReasonRequest
-- &lt;p&gt;A request for the reason that a health check failed most recently.&lt;/p&gt;
-- @param HealthCheckId [HealthCheckId] &lt;p&gt;The ID for the health check for which you want the last failure reason. When you created the health check, &lt;code&gt;CreateHealthCheck&lt;/code&gt; returned the ID in the response, in the &lt;code&gt;HealthCheckId&lt;/code&gt; element.&lt;/p&gt;
-- Required parameter: HealthCheckId
function M.GetHealthCheckLastFailureReasonRequest(HealthCheckId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetHealthCheckLastFailureReasonRequest")
	local t = { 
		["HealthCheckId"] = HealthCheckId,
	}
	M.AssertGetHealthCheckLastFailureReasonRequest(t)
	return t
end

local UpdateHealthCheckResponse_keys = { "HealthCheck" = true, nil }

function M.AssertUpdateHealthCheckResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateHealthCheckResponse to be of type 'table'")
	assert(struct["HealthCheck"], "Expected key HealthCheck to exist in table")
	if struct["HealthCheck"] then M.AssertHealthCheck(struct["HealthCheck"]) end
	for k,_ in pairs(struct) do
		assert(UpdateHealthCheckResponse_keys[k], "UpdateHealthCheckResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateHealthCheckResponse
--  
-- @param HealthCheck [HealthCheck]  
-- Required parameter: HealthCheck
function M.UpdateHealthCheckResponse(HealthCheck, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateHealthCheckResponse")
	local t = { 
		["HealthCheck"] = HealthCheck,
	}
	M.AssertUpdateHealthCheckResponse(t)
	return t
end

local TooManyHostedZones_keys = { "message" = true, nil }

function M.AssertTooManyHostedZones(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyHostedZones to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(TooManyHostedZones_keys[k], "TooManyHostedZones contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyHostedZones
-- &lt;p&gt;This hosted zone can't be created because the hosted zone limit is exceeded. To request a limit increase, go to the Amazon Route 53 &lt;a href=&quot;http://aws.amazon.com/route53-request/&quot;&gt;Contact Us&lt;/a&gt; page.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;Descriptive message for the error response.&lt;/p&gt;
function M.TooManyHostedZones(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyHostedZones")
	local t = { 
		["message"] = message,
	}
	M.AssertTooManyHostedZones(t)
	return t
end

local Tag_keys = { "Value" = true, "Key" = true, nil }

function M.AssertTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tag to be of type 'table'")
	if struct["Value"] then M.AssertTagValue(struct["Value"]) end
	if struct["Key"] then M.AssertTagKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(Tag_keys[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- &lt;p&gt;A complex type that contains information about a tag that you want to add or edit for the specified health check or hosted zone.&lt;/p&gt;
-- @param Value [TagValue] &lt;p&gt;The value of &lt;code&gt;Value&lt;/code&gt; depends on the operation that you want to perform:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Add a tag to a health check or hosted zone&lt;/b&gt;: &lt;code&gt;Value&lt;/code&gt; is the value that you want to give the new tag.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Edit a tag&lt;/b&gt;: &lt;code&gt;Value&lt;/code&gt; is the new value that you want to assign the tag.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param Key [TagKey] &lt;p&gt;The value of &lt;code&gt;Key&lt;/code&gt; depends on the operation that you want to perform:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Add a tag to a health check or hosted zone&lt;/b&gt;: &lt;code&gt;Key&lt;/code&gt; is the name that you want to give the new tag.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Edit a tag&lt;/b&gt;: &lt;code&gt;Key&lt;/code&gt; is the name of the tag that you want to change the &lt;code&gt;Value&lt;/code&gt; for.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt; Delete a key&lt;/b&gt;: &lt;code&gt;Key&lt;/code&gt; is the name of the tag you want to remove.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Give a name to a health check&lt;/b&gt;: Edit the default &lt;code&gt;Name&lt;/code&gt; tag. In the Amazon Route 53 console, the list of your health checks includes a &lt;b&gt;Name&lt;/b&gt; column that lets you see the name that you've given to each health check.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
function M.Tag(Value, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Tag")
	local t = { 
		["Value"] = Value,
		["Key"] = Key,
	}
	M.AssertTag(t)
	return t
end

local CreateTrafficPolicyVersionResponse_keys = { "TrafficPolicy" = true, "Location" = true, nil }

function M.AssertCreateTrafficPolicyVersionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTrafficPolicyVersionResponse to be of type 'table'")
	assert(struct["TrafficPolicy"], "Expected key TrafficPolicy to exist in table")
	assert(struct["Location"], "Expected key Location to exist in table")
	if struct["TrafficPolicy"] then M.AssertTrafficPolicy(struct["TrafficPolicy"]) end
	if struct["Location"] then M.AssertResourceURI(struct["Location"]) end
	for k,_ in pairs(struct) do
		assert(CreateTrafficPolicyVersionResponse_keys[k], "CreateTrafficPolicyVersionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTrafficPolicyVersionResponse
-- &lt;p&gt;A complex type that contains the response information for the &lt;code&gt;CreateTrafficPolicyVersion&lt;/code&gt; request.&lt;/p&gt;
-- @param TrafficPolicy [TrafficPolicy] &lt;p&gt;A complex type that contains settings for the new version of the traffic policy.&lt;/p&gt;
-- @param Location [ResourceURI] &lt;p&gt;A unique URL that represents a new traffic policy version.&lt;/p&gt;
-- Required parameter: TrafficPolicy
-- Required parameter: Location
function M.CreateTrafficPolicyVersionResponse(TrafficPolicy, Location, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateTrafficPolicyVersionResponse")
	local t = { 
		["TrafficPolicy"] = TrafficPolicy,
		["Location"] = Location,
	}
	M.AssertCreateTrafficPolicyVersionResponse(t)
	return t
end

local ResourceRecordSet_keys = { "GeoLocation" = true, "HealthCheckId" = true, "Name" = true, "Weight" = true, "Type" = true, "Region" = true, "AliasTarget" = true, "ResourceRecords" = true, "MultiValueAnswer" = true, "TTL" = true, "TrafficPolicyInstanceId" = true, "SetIdentifier" = true, "Failover" = true, nil }

function M.AssertResourceRecordSet(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceRecordSet to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Type"], "Expected key Type to exist in table")
	if struct["GeoLocation"] then M.AssertGeoLocation(struct["GeoLocation"]) end
	if struct["HealthCheckId"] then M.AssertHealthCheckId(struct["HealthCheckId"]) end
	if struct["Name"] then M.AssertDNSName(struct["Name"]) end
	if struct["Weight"] then M.AssertResourceRecordSetWeight(struct["Weight"]) end
	if struct["Type"] then M.AssertRRType(struct["Type"]) end
	if struct["Region"] then M.AssertResourceRecordSetRegion(struct["Region"]) end
	if struct["AliasTarget"] then M.AssertAliasTarget(struct["AliasTarget"]) end
	if struct["ResourceRecords"] then M.AssertResourceRecords(struct["ResourceRecords"]) end
	if struct["MultiValueAnswer"] then M.AssertResourceRecordSetMultiValueAnswer(struct["MultiValueAnswer"]) end
	if struct["TTL"] then M.AssertTTL(struct["TTL"]) end
	if struct["TrafficPolicyInstanceId"] then M.AssertTrafficPolicyInstanceId(struct["TrafficPolicyInstanceId"]) end
	if struct["SetIdentifier"] then M.AssertResourceRecordSetIdentifier(struct["SetIdentifier"]) end
	if struct["Failover"] then M.AssertResourceRecordSetFailover(struct["Failover"]) end
	for k,_ in pairs(struct) do
		assert(ResourceRecordSet_keys[k], "ResourceRecordSet contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceRecordSet
-- &lt;p&gt;Information about the resource record set to create or delete.&lt;/p&gt;
-- @param GeoLocation [GeoLocation] &lt;p&gt; &lt;i&gt;Geo location resource record sets only:&lt;/i&gt; A complex type that lets you control how Amazon Route 53 responds to DNS queries based on the geographic origin of the query. For example, if you want all queries from Africa to be routed to a web server with an IP address of &lt;code&gt;192.0.2.111&lt;/code&gt;, create a resource record set with a &lt;code&gt;Type&lt;/code&gt; of &lt;code&gt;A&lt;/code&gt; and a &lt;code&gt;ContinentCode&lt;/code&gt; of &lt;code&gt;AF&lt;/code&gt;.&lt;/p&gt; &lt;note&gt; &lt;p&gt;Creating geolocation and geolocation alias resource record sets in private hosted zones is not supported.&lt;/p&gt; &lt;/note&gt; &lt;p&gt;If you create separate resource record sets for overlapping geographic regions (for example, one resource record set for a continent and one for a country on the same continent), priority goes to the smallest geographic region. This allows you to route most queries for a continent to one resource and to route queries for a country on that continent to a different resource.&lt;/p&gt; &lt;p&gt;You can't create two geolocation resource record sets that specify the same geographic location.&lt;/p&gt; &lt;p&gt;The value &lt;code&gt;*&lt;/code&gt; in the &lt;code&gt;CountryCode&lt;/code&gt; element matches all geographic locations that aren't specified in other geolocation resource record sets that have the same values for the &lt;code&gt;Name&lt;/code&gt; and &lt;code&gt;Type&lt;/code&gt; elements.&lt;/p&gt; &lt;important&gt; &lt;p&gt;Geolocation works by mapping IP addresses to locations. However, some IP addresses aren't mapped to geographic locations, so even if you create geolocation resource record sets that cover all seven continents, Amazon Route 53 will receive some DNS queries from locations that it can't identify. We recommend that you create a resource record set for which the value of &lt;code&gt;CountryCode&lt;/code&gt; is &lt;code&gt;*&lt;/code&gt;, which handles both queries that come from locations for which you haven't created geolocation resource record sets and queries from IP addresses that aren't mapped to a location. If you don't create a &lt;code&gt;*&lt;/code&gt; resource record set, Amazon Route 53 returns a &quot;no answer&quot; response for queries from those locations.&lt;/p&gt; &lt;/important&gt; &lt;p&gt;You can't create non-geolocation resource record sets that have the same values for the &lt;code&gt;Name&lt;/code&gt; and &lt;code&gt;Type&lt;/code&gt; elements as geolocation resource record sets.&lt;/p&gt;
-- @param HealthCheckId [HealthCheckId] &lt;p&gt;If you want Amazon Route 53 to return this resource record set in response to a DNS query only when a health check is passing, include the &lt;code&gt;HealthCheckId&lt;/code&gt; element and specify the ID of the applicable health check.&lt;/p&gt; &lt;p&gt;Amazon Route 53 determines whether a resource record set is healthy based on one of the following:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;By periodically sending a request to the endpoint that is specified in the health check&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;By aggregating the status of a specified group of health checks (calculated health checks)&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;By determining the current state of a CloudWatch alarm (CloudWatch metric health checks)&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-determining-health-of-endpoints.html&quot;&gt;How Amazon Route 53 Determines Whether an Endpoint Is Healthy&lt;/a&gt;.&lt;/p&gt; &lt;p&gt;The &lt;code&gt;HealthCheckId&lt;/code&gt; element is only useful when Amazon Route 53 is choosing between two or more resource record sets to respond to a DNS query, and you want Amazon Route 53 to base the choice in part on the status of a health check. Configuring health checks only makes sense in the following configurations:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;You're checking the health of the resource record sets in a group of weighted, latency, geolocation, or failover resource record sets, and you specify health check IDs for all of the resource record sets. If the health check for one resource record set specifies an endpoint that is not healthy, Amazon Route 53 stops responding to queries using the value for that resource record set.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You set &lt;code&gt;EvaluateTargetHealth&lt;/code&gt; to true for the resource record sets in a group of alias, weighted alias, latency alias, geolocation alias, or failover alias resource record sets, and you specify health check IDs for all of the resource record sets that are referenced by the alias resource record sets.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;important&gt; &lt;p&gt;Amazon Route 53 doesn't check the health of the endpoint specified in the resource record set, for example, the endpoint specified by the IP address in the &lt;code&gt;Value&lt;/code&gt; element. When you add a &lt;code&gt;HealthCheckId&lt;/code&gt; element to a resource record set, Amazon Route 53 checks the health of the endpoint that you specified in the health check. &lt;/p&gt; &lt;/important&gt; &lt;p&gt;For geolocation resource record sets, if an endpoint is unhealthy, Amazon Route 53 looks for a resource record set for the larger, associated geographic region. For example, suppose you have resource record sets for a state in the United States, for the United States, for North America, and for all locations. If the endpoint for the state resource record set is unhealthy, Amazon Route 53 checks the resource record sets for the United States, for North America, and for all locations (a resource record set for which the value of &lt;code&gt;CountryCode&lt;/code&gt; is &lt;code&gt;*&lt;/code&gt;), in that order, until it finds a resource record set for which the endpoint is healthy. &lt;/p&gt; &lt;p&gt;If your health checks specify the endpoint only by domain name, we recommend that you create a separate health check for each endpoint. For example, create a health check for each &lt;code&gt;HTTP&lt;/code&gt; server that is serving content for &lt;code&gt;www.example.com&lt;/code&gt;. For the value of &lt;code&gt;FullyQualifiedDomainName&lt;/code&gt;, specify the domain name of the server (such as &lt;code&gt;us-east-2-www.example.com&lt;/code&gt;), not the name of the resource record sets (example.com).&lt;/p&gt; &lt;important&gt; &lt;p&gt;n this configuration, if you create a health check for which the value of &lt;code&gt;FullyQualifiedDomainName&lt;/code&gt; matches the name of the resource record sets and then associate the health check with those resource record sets, health check results will be unpredictable.&lt;/p&gt; &lt;/important&gt; &lt;p&gt;For more information, see the following topics in the &lt;i&gt;Amazon Route 53 Developer Guide&lt;/i&gt;:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;a href=&quot;http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover.html&quot;&gt;Amazon Route 53 Health Checks and DNS Failover&lt;/a&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;a href=&quot;http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-private-hosted-zones.html&quot;&gt;Configuring Failover in a Private Hosted Zone&lt;/a&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param Name [DNSName] &lt;p&gt;The name of the domain you want to perform the action on.&lt;/p&gt; &lt;p&gt;Enter a fully qualified domain name, for example, &lt;code&gt;www.example.com&lt;/code&gt;. You can optionally include a trailing dot. If you omit the trailing dot, Amazon Route 53 still assumes that the domain name that you specify is fully qualified. This means that Amazon Route 53 treats &lt;code&gt;www.example.com&lt;/code&gt; (without a trailing dot) and &lt;code&gt;www.example.com.&lt;/code&gt; (with a trailing dot) as identical.&lt;/p&gt; &lt;p&gt;For information about how to specify characters other than &lt;code&gt;a-z&lt;/code&gt;, &lt;code&gt;0-9&lt;/code&gt;, and &lt;code&gt;-&lt;/code&gt; (hyphen) and how to specify internationalized domain names, see &lt;a href=&quot;http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DomainNameFormat.html&quot;&gt;DNS Domain Name Format&lt;/a&gt; in the &lt;i&gt;Amazon Route 53 Developer Guide&lt;/i&gt;.&lt;/p&gt; &lt;p&gt;You can use the asterisk (*) wildcard to replace the leftmost label in a domain name, for example, &lt;code&gt;*.example.com&lt;/code&gt;. Note the following:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;The * must replace the entire label. For example, you can't specify &lt;code&gt;*prod.example.com&lt;/code&gt; or &lt;code&gt;prod*.example.com&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;The * can't replace any of the middle labels, for example, marketing.*.example.com.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;If you include * in any position other than the leftmost label in a domain name, DNS treats it as an * character (ASCII 42), not as a wildcard.&lt;/p&gt; &lt;important&gt; &lt;p&gt;You can't use the * wildcard for resource records sets that have a type of NS.&lt;/p&gt; &lt;/important&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;You can use the * wildcard as the leftmost label in a domain name, for example, &lt;code&gt;*.example.com&lt;/code&gt;. You can't use an * for one of the middle labels, for example, &lt;code&gt;marketing.*.example.com&lt;/code&gt;. In addition, the * must replace the entire label; for example, you can't specify &lt;code&gt;prod*.example.com&lt;/code&gt;.&lt;/p&gt;
-- @param Weight [ResourceRecordSetWeight] &lt;p&gt; &lt;i&gt;Weighted resource record sets only:&lt;/i&gt; Among resource record sets that have the same combination of DNS name and type, a value that determines the proportion of DNS queries that Amazon Route 53 responds to using the current resource record set. Amazon Route 53 calculates the sum of the weights for the resource record sets that have the same combination of DNS name and type. Amazon Route 53 then responds to queries based on the ratio of a resource's weight to the total. Note the following:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;You must specify a value for the &lt;code&gt;Weight&lt;/code&gt; element for every weighted resource record set.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You can only specify one &lt;code&gt;ResourceRecord&lt;/code&gt; per weighted resource record set.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You can't create latency, failover, or geolocation resource record sets that have the same values for the &lt;code&gt;Name&lt;/code&gt; and &lt;code&gt;Type&lt;/code&gt; elements as weighted resource record sets.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You can create a maximum of 100 weighted resource record sets that have the same values for the &lt;code&gt;Name&lt;/code&gt; and &lt;code&gt;Type&lt;/code&gt; elements.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;For weighted (but not weighted alias) resource record sets, if you set &lt;code&gt;Weight&lt;/code&gt; to &lt;code&gt;0&lt;/code&gt; for a resource record set, Amazon Route 53 never responds to queries with the applicable value for that resource record set. However, if you set &lt;code&gt;Weight&lt;/code&gt; to &lt;code&gt;0&lt;/code&gt; for all resource record sets that have the same combination of DNS name and type, traffic is routed to all resources with equal probability.&lt;/p&gt; &lt;p&gt;The effect of setting &lt;code&gt;Weight&lt;/code&gt; to &lt;code&gt;0&lt;/code&gt; is different when you associate health checks with weighted resource record sets. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-configuring-options.html&quot;&gt;Options for Configuring Amazon Route 53 Active-Active and Active-Passive Failover&lt;/a&gt; in the &lt;i&gt;Amazon Route 53 Developer Guide&lt;/i&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param Type [RRType] &lt;p&gt;The DNS record type. For information about different record types and how data is encoded for them, see &lt;a href=&quot;http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/ResourceRecordTypes.html&quot;&gt;Supported DNS Resource Record Types&lt;/a&gt; in the &lt;i&gt;Amazon Route 53 Developer Guide&lt;/i&gt;.&lt;/p&gt; &lt;p&gt;Valid values for basic resource record sets: &lt;code&gt;A&lt;/code&gt; | &lt;code&gt;AAAA&lt;/code&gt; | &lt;code&gt;CNAME&lt;/code&gt; | &lt;code&gt;MX&lt;/code&gt; | &lt;code&gt;NAPTR&lt;/code&gt; | &lt;code&gt;NS&lt;/code&gt; | &lt;code&gt;PTR&lt;/code&gt; | &lt;code&gt;SOA&lt;/code&gt; | &lt;code&gt;SPF&lt;/code&gt; | &lt;code&gt;SRV&lt;/code&gt; | &lt;code&gt;TXT&lt;/code&gt; &lt;/p&gt; &lt;p&gt;Values for weighted, latency, geolocation, and failover resource record sets: &lt;code&gt;A&lt;/code&gt; | &lt;code&gt;AAAA&lt;/code&gt; | &lt;code&gt;CNAME&lt;/code&gt; | &lt;code&gt;MX&lt;/code&gt; | &lt;code&gt;NAPTR&lt;/code&gt; | &lt;code&gt;PTR&lt;/code&gt; | &lt;code&gt;SPF&lt;/code&gt; | &lt;code&gt;SRV&lt;/code&gt; | &lt;code&gt;TXT&lt;/code&gt;. When creating a group of weighted, latency, geolocation, or failover resource record sets, specify the same value for all of the resource record sets in the group.&lt;/p&gt; &lt;p&gt;Valid values for multivalue answer resource record sets: &lt;code&gt;A&lt;/code&gt; | &lt;code&gt;AAAA&lt;/code&gt; | &lt;code&gt;MX&lt;/code&gt; | &lt;code&gt;NAPTR&lt;/code&gt; | &lt;code&gt;PTR&lt;/code&gt; | &lt;code&gt;SPF&lt;/code&gt; | &lt;code&gt;SRV&lt;/code&gt; | &lt;code&gt;TXT&lt;/code&gt; &lt;/p&gt; &lt;note&gt; &lt;p&gt;SPF records were formerly used to verify the identity of the sender of email messages. However, we no longer recommend that you create resource record sets for which the value of &lt;code&gt;Type&lt;/code&gt; is &lt;code&gt;SPF&lt;/code&gt;. RFC 7208, &lt;i&gt;Sender Policy Framework (SPF) for Authorizing Use of Domains in Email, Version 1&lt;/i&gt;, has been updated to say, &quot;...[I]ts existence and mechanism defined in [RFC4408] have led to some interoperability issues. Accordingly, its use is no longer appropriate for SPF version 1; implementations are not to use it.&quot; In RFC 7208, see section 14.1, &lt;a href=&quot;http://tools.ietf.org/html/rfc7208#section-14.1&quot;&gt;The SPF DNS Record Type&lt;/a&gt;.&lt;/p&gt; &lt;/note&gt; &lt;p&gt;Values for alias resource record sets:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;CloudFront distributions:&lt;/b&gt; &lt;code&gt;A&lt;/code&gt; &lt;/p&gt; &lt;p&gt;If IPv6 is enabled for the distribution, create two resource record sets to route traffic to your distribution, one with a value of &lt;code&gt;A&lt;/code&gt; and one with a value of &lt;code&gt;AAAA&lt;/code&gt;. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;AWS Elastic Beanstalk environment that has a regionalized subdomain&lt;/b&gt;: &lt;code&gt;A&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;ELB load balancers:&lt;/b&gt; &lt;code&gt;A&lt;/code&gt; | &lt;code&gt;AAAA&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Amazon S3 buckets:&lt;/b&gt; &lt;code&gt;A&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Another resource record set in this hosted zone:&lt;/b&gt; Specify the type of the resource record set that you're creating the alias for. All values are supported except &lt;code&gt;NS&lt;/code&gt; and &lt;code&gt;SOA&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param Region [ResourceRecordSetRegion] &lt;p&gt; &lt;i&gt;Latency-based resource record sets only:&lt;/i&gt; The Amazon EC2 Region where you created the resource that this resource record set refers to. The resource typically is an AWS resource, such as an EC2 instance or an ELB load balancer, and is referred to by an IP address or a DNS domain name, depending on the record type.&lt;/p&gt; &lt;note&gt; &lt;p&gt;Creating latency and latency alias resource record sets in private hosted zones is not supported.&lt;/p&gt; &lt;/note&gt; &lt;p&gt;When Amazon Route 53 receives a DNS query for a domain name and type for which you have created latency resource record sets, Amazon Route 53 selects the latency resource record set that has the lowest latency between the end user and the associated Amazon EC2 Region. Amazon Route 53 then returns the value that is associated with the selected resource record set.&lt;/p&gt; &lt;p&gt;Note the following:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;You can only specify one &lt;code&gt;ResourceRecord&lt;/code&gt; per latency resource record set.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You can only create one latency resource record set for each Amazon EC2 Region.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You aren't required to create latency resource record sets for all Amazon EC2 Regions. Amazon Route 53 will choose the region with the best latency from among the regions that you create latency resource record sets for.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You can't create non-latency resource record sets that have the same values for the &lt;code&gt;Name&lt;/code&gt; and &lt;code&gt;Type&lt;/code&gt; elements as latency resource record sets.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param AliasTarget [AliasTarget] &lt;p&gt; &lt;i&gt;Alias resource record sets only:&lt;/i&gt; Information about the CloudFront distribution, AWS Elastic Beanstalk environment, ELB load balancer, Amazon S3 bucket, or Amazon Route 53 resource record set to which you're redirecting queries. The AWS Elastic Beanstalk environment must have a regionalized subdomain.&lt;/p&gt; &lt;p&gt;If you're creating resource records sets for a private hosted zone, note the following:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;You can't create alias resource record sets for CloudFront distributions in a private hosted zone.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Creating geolocation alias resource record sets or latency alias resource record sets in a private hosted zone is unsupported.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;For information about creating failover resource record sets in a private hosted zone, see &lt;a href=&quot;http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-private-hosted-zones.html&quot;&gt;Configuring Failover in a Private Hosted Zone&lt;/a&gt; in the &lt;i&gt;Amazon Route 53 Developer Guide&lt;/i&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param ResourceRecords [ResourceRecords] &lt;p&gt;Information about the resource records to act upon.&lt;/p&gt; &lt;note&gt; &lt;p&gt;If you're creating an alias resource record set, omit &lt;code&gt;ResourceRecords&lt;/code&gt;.&lt;/p&gt; &lt;/note&gt;
-- @param MultiValueAnswer [ResourceRecordSetMultiValueAnswer] &lt;p&gt; &lt;i&gt;Multivalue answer resource record sets only&lt;/i&gt;: To route traffic approximately randomly to multiple resources, such as web servers, create one multivalue answer record for each resource and specify &lt;code&gt;true&lt;/code&gt; for &lt;code&gt;MultiValueAnswer&lt;/code&gt;. Note the following:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;If you associate a health check with a multivalue answer resource record set, Amazon Route 53 responds to DNS queries with the corresponding IP address only when the health check is healthy.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;If you don't associate a health check with a multivalue answer record, Amazon Route 53 always considers the record to be healthy.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Amazon Route 53 responds to DNS queries with up to eight healthy records; if you have eight or fewer healthy records, Amazon Route 53 responds to all DNS queries with all the healthy records.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;If you have more than eight healthy records, Amazon Route 53 responds to different DNS resolvers with different combinations of healthy records.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;When all records are unhealthy, Amazon Route 53 responds to DNS queries with up to eight unhealthy records.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;If a resource becomes unavailable after a resolver caches a response, client software typically tries another of the IP addresses in the response.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;You can't create multivalue answer alias records.&lt;/p&gt;
-- @param TTL [TTL] &lt;p&gt;The resource record cache time to live (TTL), in seconds. Note the following:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;If you're creating or updating an alias resource record set, omit &lt;code&gt;TTL&lt;/code&gt;. Amazon Route 53 uses the value of &lt;code&gt;TTL&lt;/code&gt; for the alias target. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;If you're associating this resource record set with a health check (if you're adding a &lt;code&gt;HealthCheckId&lt;/code&gt; element), we recommend that you specify a &lt;code&gt;TTL&lt;/code&gt; of 60 seconds or less so clients respond quickly to changes in health status.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;All of the resource record sets in a group of weighted resource record sets must have the same value for &lt;code&gt;TTL&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;If a group of weighted resource record sets includes one or more weighted alias resource record sets for which the alias target is an ELB load balancer, we recommend that you specify a &lt;code&gt;TTL&lt;/code&gt; of 60 seconds for all of the non-alias weighted resource record sets that have the same name and type. Values other than 60 seconds (the TTL for load balancers) will change the effect of the values that you specify for &lt;code&gt;Weight&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param TrafficPolicyInstanceId [TrafficPolicyInstanceId] &lt;p&gt;When you create a traffic policy instance, Amazon Route 53 automatically creates a resource record set. &lt;code&gt;TrafficPolicyInstanceId&lt;/code&gt; is the ID of the traffic policy instance that Amazon Route 53 created this resource record set for.&lt;/p&gt; &lt;important&gt; &lt;p&gt;To delete the resource record set that is associated with a traffic policy instance, use &lt;code&gt;DeleteTrafficPolicyInstance&lt;/code&gt;. Amazon Route 53 will delete the resource record set automatically. If you delete the resource record set by using &lt;code&gt;ChangeResourceRecordSets&lt;/code&gt;, Amazon Route 53 doesn't automatically delete the traffic policy instance, and you'll continue to be charged for it even though it's no longer in use. &lt;/p&gt; &lt;/important&gt;
-- @param SetIdentifier [ResourceRecordSetIdentifier] &lt;p&gt; &lt;i&gt;Weighted, Latency, Geo, and Failover resource record sets only:&lt;/i&gt; An identifier that differentiates among multiple resource record sets that have the same combination of DNS name and type. The value of &lt;code&gt;SetIdentifier&lt;/code&gt; must be unique for each resource record set that has the same combination of DNS name and type. Omit &lt;code&gt;SetIdentifier&lt;/code&gt; for any other types of record sets.&lt;/p&gt;
-- @param Failover [ResourceRecordSetFailover] &lt;p&gt; &lt;i&gt;Failover resource record sets only:&lt;/i&gt; To configure failover, you add the &lt;code&gt;Failover&lt;/code&gt; element to two resource record sets. For one resource record set, you specify &lt;code&gt;PRIMARY&lt;/code&gt; as the value for &lt;code&gt;Failover&lt;/code&gt;; for the other resource record set, you specify &lt;code&gt;SECONDARY&lt;/code&gt;. In addition, you include the &lt;code&gt;HealthCheckId&lt;/code&gt; element and specify the health check that you want Amazon Route 53 to perform for each resource record set.&lt;/p&gt; &lt;p&gt;Except where noted, the following failover behaviors assume that you have included the &lt;code&gt;HealthCheckId&lt;/code&gt; element in both resource record sets:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;When the primary resource record set is healthy, Amazon Route 53 responds to DNS queries with the applicable value from the primary resource record set regardless of the health of the secondary resource record set.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;When the primary resource record set is unhealthy and the secondary resource record set is healthy, Amazon Route 53 responds to DNS queries with the applicable value from the secondary resource record set.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;When the secondary resource record set is unhealthy, Amazon Route 53 responds to DNS queries with the applicable value from the primary resource record set regardless of the health of the primary resource record set.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;If you omit the &lt;code&gt;HealthCheckId&lt;/code&gt; element for the secondary resource record set, and if the primary resource record set is unhealthy, Amazon Route 53 always responds to DNS queries with the applicable value from the secondary resource record set. This is true regardless of the health of the associated endpoint.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;You can't create non-failover resource record sets that have the same values for the &lt;code&gt;Name&lt;/code&gt; and &lt;code&gt;Type&lt;/code&gt; elements as failover resource record sets.&lt;/p&gt; &lt;p&gt;For failover alias resource record sets, you must also include the &lt;code&gt;EvaluateTargetHealth&lt;/code&gt; element and set the value to true.&lt;/p&gt; &lt;p&gt;For more information about configuring failover for Amazon Route 53, see the following topics in the &lt;i&gt;Amazon Route 53 Developer Guide&lt;/i&gt;: &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;a href=&quot;http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover.html&quot;&gt;Amazon Route 53 Health Checks and DNS Failover&lt;/a&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;a href=&quot;http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-private-hosted-zones.html&quot;&gt;Configuring Failover in a Private Hosted Zone&lt;/a&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- Required parameter: Name
-- Required parameter: Type
function M.ResourceRecordSet(GeoLocation, HealthCheckId, Name, Weight, Type, Region, AliasTarget, ResourceRecords, MultiValueAnswer, TTL, TrafficPolicyInstanceId, SetIdentifier, Failover, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceRecordSet")
	local t = { 
		["GeoLocation"] = GeoLocation,
		["HealthCheckId"] = HealthCheckId,
		["Name"] = Name,
		["Weight"] = Weight,
		["Type"] = Type,
		["Region"] = Region,
		["AliasTarget"] = AliasTarget,
		["ResourceRecords"] = ResourceRecords,
		["MultiValueAnswer"] = MultiValueAnswer,
		["TTL"] = TTL,
		["TrafficPolicyInstanceId"] = TrafficPolicyInstanceId,
		["SetIdentifier"] = SetIdentifier,
		["Failover"] = Failover,
	}
	M.AssertResourceRecordSet(t)
	return t
end

local InvalidPaginationToken_keys = { "message" = true, nil }

function M.AssertInvalidPaginationToken(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidPaginationToken to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidPaginationToken_keys[k], "InvalidPaginationToken contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidPaginationToken
--  
-- @param message [ErrorMessage]  
function M.InvalidPaginationToken(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidPaginationToken")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidPaginationToken(t)
	return t
end

local NoSuchGeoLocation_keys = { "message" = true, nil }

function M.AssertNoSuchGeoLocation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoSuchGeoLocation to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(NoSuchGeoLocation_keys[k], "NoSuchGeoLocation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoSuchGeoLocation
-- &lt;p&gt;Amazon Route 53 doesn't support the specified geolocation.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;Descriptive message for the error response.&lt;/p&gt;
function M.NoSuchGeoLocation(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NoSuchGeoLocation")
	local t = { 
		["message"] = message,
	}
	M.AssertNoSuchGeoLocation(t)
	return t
end

local TooManyTrafficPolicies_keys = { "message" = true, nil }

function M.AssertTooManyTrafficPolicies(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyTrafficPolicies to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(TooManyTrafficPolicies_keys[k], "TooManyTrafficPolicies contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyTrafficPolicies
-- &lt;p&gt;You've created the maximum number of traffic policies that can be created for the current AWS account. You can request an increase to the limit on the &lt;a href=&quot;http://aws.amazon.com/route53-request/&quot;&gt;Contact Us&lt;/a&gt; page.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;Descriptive message for the error response.&lt;/p&gt;
function M.TooManyTrafficPolicies(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyTrafficPolicies")
	local t = { 
		["message"] = message,
	}
	M.AssertTooManyTrafficPolicies(t)
	return t
end

local ChangeResourceRecordSetsRequest_keys = { "HostedZoneId" = true, "ChangeBatch" = true, nil }

function M.AssertChangeResourceRecordSetsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ChangeResourceRecordSetsRequest to be of type 'table'")
	assert(struct["HostedZoneId"], "Expected key HostedZoneId to exist in table")
	assert(struct["ChangeBatch"], "Expected key ChangeBatch to exist in table")
	if struct["HostedZoneId"] then M.AssertResourceId(struct["HostedZoneId"]) end
	if struct["ChangeBatch"] then M.AssertChangeBatch(struct["ChangeBatch"]) end
	for k,_ in pairs(struct) do
		assert(ChangeResourceRecordSetsRequest_keys[k], "ChangeResourceRecordSetsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ChangeResourceRecordSetsRequest
-- &lt;p&gt;A complex type that contains change information for the resource record set.&lt;/p&gt;
-- @param HostedZoneId [ResourceId] &lt;p&gt;The ID of the hosted zone that contains the resource record sets that you want to change.&lt;/p&gt;
-- @param ChangeBatch [ChangeBatch] &lt;p&gt;A complex type that contains an optional comment and the &lt;code&gt;Changes&lt;/code&gt; element.&lt;/p&gt;
-- Required parameter: HostedZoneId
-- Required parameter: ChangeBatch
function M.ChangeResourceRecordSetsRequest(HostedZoneId, ChangeBatch, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ChangeResourceRecordSetsRequest")
	local t = { 
		["HostedZoneId"] = HostedZoneId,
		["ChangeBatch"] = ChangeBatch,
	}
	M.AssertChangeResourceRecordSetsRequest(t)
	return t
end

local ListTagsForResourcesResponse_keys = { "ResourceTagSets" = true, nil }

function M.AssertListTagsForResourcesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForResourcesResponse to be of type 'table'")
	assert(struct["ResourceTagSets"], "Expected key ResourceTagSets to exist in table")
	if struct["ResourceTagSets"] then M.AssertResourceTagSetList(struct["ResourceTagSets"]) end
	for k,_ in pairs(struct) do
		assert(ListTagsForResourcesResponse_keys[k], "ListTagsForResourcesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForResourcesResponse
-- &lt;p&gt;A complex type containing tags for the specified resources.&lt;/p&gt;
-- @param ResourceTagSets [ResourceTagSetList] &lt;p&gt;A list of &lt;code&gt;ResourceTagSet&lt;/code&gt;s containing tags associated with the specified resources.&lt;/p&gt;
-- Required parameter: ResourceTagSets
function M.ListTagsForResourcesResponse(ResourceTagSets, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsForResourcesResponse")
	local t = { 
		["ResourceTagSets"] = ResourceTagSets,
	}
	M.AssertListTagsForResourcesResponse(t)
	return t
end

local AssociateVPCWithHostedZoneResponse_keys = { "ChangeInfo" = true, nil }

function M.AssertAssociateVPCWithHostedZoneResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateVPCWithHostedZoneResponse to be of type 'table'")
	assert(struct["ChangeInfo"], "Expected key ChangeInfo to exist in table")
	if struct["ChangeInfo"] then M.AssertChangeInfo(struct["ChangeInfo"]) end
	for k,_ in pairs(struct) do
		assert(AssociateVPCWithHostedZoneResponse_keys[k], "AssociateVPCWithHostedZoneResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateVPCWithHostedZoneResponse
-- &lt;p&gt;A complex type that contains the response information for the &lt;code&gt;AssociateVPCWithHostedZone&lt;/code&gt; request.&lt;/p&gt;
-- @param ChangeInfo [ChangeInfo] &lt;p&gt;A complex type that describes the changes made to your hosted zone.&lt;/p&gt;
-- Required parameter: ChangeInfo
function M.AssociateVPCWithHostedZoneResponse(ChangeInfo, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssociateVPCWithHostedZoneResponse")
	local t = { 
		["ChangeInfo"] = ChangeInfo,
	}
	M.AssertAssociateVPCWithHostedZoneResponse(t)
	return t
end

local GetChangeRequest_keys = { "Id" = true, nil }

function M.AssertGetChangeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetChangeRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then M.AssertResourceId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(GetChangeRequest_keys[k], "GetChangeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetChangeRequest
-- &lt;p&gt;The input for a GetChange request.&lt;/p&gt;
-- @param Id [ResourceId] &lt;p&gt;The ID of the change batch request. The value that you specify here is the value that &lt;code&gt;ChangeResourceRecordSets&lt;/code&gt; returned in the &lt;code&gt;Id&lt;/code&gt; element when you submitted the request.&lt;/p&gt;
-- Required parameter: Id
function M.GetChangeRequest(Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetChangeRequest")
	local t = { 
		["Id"] = Id,
	}
	M.AssertGetChangeRequest(t)
	return t
end

local ListTrafficPolicyInstancesByHostedZoneRequest_keys = { "HostedZoneId" = true, "TrafficPolicyInstanceTypeMarker" = true, "TrafficPolicyInstanceNameMarker" = true, "MaxItems" = true, nil }

function M.AssertListTrafficPolicyInstancesByHostedZoneRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTrafficPolicyInstancesByHostedZoneRequest to be of type 'table'")
	assert(struct["HostedZoneId"], "Expected key HostedZoneId to exist in table")
	if struct["HostedZoneId"] then M.AssertResourceId(struct["HostedZoneId"]) end
	if struct["TrafficPolicyInstanceTypeMarker"] then M.AssertRRType(struct["TrafficPolicyInstanceTypeMarker"]) end
	if struct["TrafficPolicyInstanceNameMarker"] then M.AssertDNSName(struct["TrafficPolicyInstanceNameMarker"]) end
	if struct["MaxItems"] then M.AssertPageMaxItems(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(ListTrafficPolicyInstancesByHostedZoneRequest_keys[k], "ListTrafficPolicyInstancesByHostedZoneRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTrafficPolicyInstancesByHostedZoneRequest
-- &lt;p&gt;A request for the traffic policy instances that you created in a specified hosted zone.&lt;/p&gt;
-- @param HostedZoneId [ResourceId] &lt;p&gt;The ID of the hosted zone that you want to list traffic policy instances for.&lt;/p&gt;
-- @param TrafficPolicyInstanceTypeMarker [RRType] &lt;p&gt;If the value of &lt;code&gt;IsTruncated&lt;/code&gt; in the previous response is true, you have more traffic policy instances. To get more traffic policy instances, submit another &lt;code&gt;ListTrafficPolicyInstances&lt;/code&gt; request. For the value of &lt;code&gt;trafficpolicyinstancetype&lt;/code&gt;, specify the value of &lt;code&gt;TrafficPolicyInstanceTypeMarker&lt;/code&gt; from the previous response, which is the type of the first traffic policy instance in the next group of traffic policy instances.&lt;/p&gt; &lt;p&gt;If the value of &lt;code&gt;IsTruncated&lt;/code&gt; in the previous response was &lt;code&gt;false&lt;/code&gt;, there are no more traffic policy instances to get.&lt;/p&gt;
-- @param TrafficPolicyInstanceNameMarker [DNSName] &lt;p&gt;If the value of &lt;code&gt;IsTruncated&lt;/code&gt; in the previous response is true, you have more traffic policy instances. To get more traffic policy instances, submit another &lt;code&gt;ListTrafficPolicyInstances&lt;/code&gt; request. For the value of &lt;code&gt;trafficpolicyinstancename&lt;/code&gt;, specify the value of &lt;code&gt;TrafficPolicyInstanceNameMarker&lt;/code&gt; from the previous response, which is the name of the first traffic policy instance in the next group of traffic policy instances.&lt;/p&gt; &lt;p&gt;If the value of &lt;code&gt;IsTruncated&lt;/code&gt; in the previous response was &lt;code&gt;false&lt;/code&gt;, there are no more traffic policy instances to get.&lt;/p&gt;
-- @param MaxItems [PageMaxItems] &lt;p&gt;The maximum number of traffic policy instances to be included in the response body for this request. If you have more than &lt;code&gt;MaxItems&lt;/code&gt; traffic policy instances, the value of the &lt;code&gt;IsTruncated&lt;/code&gt; element in the response is &lt;code&gt;true&lt;/code&gt;, and the values of &lt;code&gt;HostedZoneIdMarker&lt;/code&gt;, &lt;code&gt;TrafficPolicyInstanceNameMarker&lt;/code&gt;, and &lt;code&gt;TrafficPolicyInstanceTypeMarker&lt;/code&gt; represent the first traffic policy instance that Amazon Route 53 will return if you submit another request.&lt;/p&gt;
-- Required parameter: HostedZoneId
function M.ListTrafficPolicyInstancesByHostedZoneRequest(HostedZoneId, TrafficPolicyInstanceTypeMarker, TrafficPolicyInstanceNameMarker, MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTrafficPolicyInstancesByHostedZoneRequest")
	local t = { 
		["HostedZoneId"] = HostedZoneId,
		["TrafficPolicyInstanceTypeMarker"] = TrafficPolicyInstanceTypeMarker,
		["TrafficPolicyInstanceNameMarker"] = TrafficPolicyInstanceNameMarker,
		["MaxItems"] = MaxItems,
	}
	M.AssertListTrafficPolicyInstancesByHostedZoneRequest(t)
	return t
end

local PriorRequestNotComplete_keys = { "message" = true, nil }

function M.AssertPriorRequestNotComplete(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PriorRequestNotComplete to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(PriorRequestNotComplete_keys[k], "PriorRequestNotComplete contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PriorRequestNotComplete
-- &lt;p&gt;If Amazon Route 53 can't process a request before the next request arrives, it will reject subsequent requests for the same hosted zone and return an &lt;code&gt;HTTP 400 error&lt;/code&gt; (&lt;code&gt;Bad request&lt;/code&gt;). If Amazon Route 53 returns this error repeatedly for the same request, we recommend that you wait, in intervals of increasing duration, before you try the request again.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;If Amazon Route 53 can't process a request before the next request arrives, it will reject subsequent requests for the same hosted zone and return an &lt;code&gt;HTTP 400 error&lt;/code&gt; (&lt;code&gt;Bad request&lt;/code&gt;). If Amazon Route 53 returns this error repeatedly for the same request, we recommend that you wait, in intervals of increasing duration, before you try the request again.&lt;/p&gt;
function M.PriorRequestNotComplete(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PriorRequestNotComplete")
	local t = { 
		["message"] = message,
	}
	M.AssertPriorRequestNotComplete(t)
	return t
end

local NoSuchHealthCheck_keys = { "message" = true, nil }

function M.AssertNoSuchHealthCheck(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoSuchHealthCheck to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(NoSuchHealthCheck_keys[k], "NoSuchHealthCheck contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoSuchHealthCheck
-- &lt;p&gt;No health check exists with the ID that you specified in the &lt;code&gt;DeleteHealthCheck&lt;/code&gt; request.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;Descriptive message for the error response.&lt;/p&gt;
function M.NoSuchHealthCheck(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NoSuchHealthCheck")
	local t = { 
		["message"] = message,
	}
	M.AssertNoSuchHealthCheck(t)
	return t
end

local NoSuchDelegationSet_keys = { "message" = true, nil }

function M.AssertNoSuchDelegationSet(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoSuchDelegationSet to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(NoSuchDelegationSet_keys[k], "NoSuchDelegationSet contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoSuchDelegationSet
-- &lt;p&gt;A reusable delegation set with the specified ID does not exist.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;Descriptive message for the error response.&lt;/p&gt;
function M.NoSuchDelegationSet(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NoSuchDelegationSet")
	local t = { 
		["message"] = message,
	}
	M.AssertNoSuchDelegationSet(t)
	return t
end

local TestDNSAnswerResponse_keys = { "Protocol" = true, "RecordType" = true, "RecordName" = true, "ResponseCode" = true, "Nameserver" = true, "RecordData" = true, nil }

function M.AssertTestDNSAnswerResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TestDNSAnswerResponse to be of type 'table'")
	assert(struct["Nameserver"], "Expected key Nameserver to exist in table")
	assert(struct["RecordName"], "Expected key RecordName to exist in table")
	assert(struct["RecordType"], "Expected key RecordType to exist in table")
	assert(struct["RecordData"], "Expected key RecordData to exist in table")
	assert(struct["ResponseCode"], "Expected key ResponseCode to exist in table")
	assert(struct["Protocol"], "Expected key Protocol to exist in table")
	if struct["Protocol"] then M.AssertTransportProtocol(struct["Protocol"]) end
	if struct["RecordType"] then M.AssertRRType(struct["RecordType"]) end
	if struct["RecordName"] then M.AssertDNSName(struct["RecordName"]) end
	if struct["ResponseCode"] then M.AssertDNSRCode(struct["ResponseCode"]) end
	if struct["Nameserver"] then M.AssertNameserver(struct["Nameserver"]) end
	if struct["RecordData"] then M.AssertRecordData(struct["RecordData"]) end
	for k,_ in pairs(struct) do
		assert(TestDNSAnswerResponse_keys[k], "TestDNSAnswerResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TestDNSAnswerResponse
-- &lt;p&gt;A complex type that contains the response to a &lt;code&gt;TestDNSAnswer&lt;/code&gt; request. &lt;/p&gt;
-- @param Protocol [TransportProtocol] &lt;p&gt;The protocol that Amazon Route 53 used to respond to the request, either &lt;code&gt;UDP&lt;/code&gt; or &lt;code&gt;TCP&lt;/code&gt;. &lt;/p&gt;
-- @param RecordType [RRType] &lt;p&gt;The type of the resource record set that you submitted a request for.&lt;/p&gt;
-- @param RecordName [DNSName] &lt;p&gt;The name of the resource record set that you submitted a request for.&lt;/p&gt;
-- @param ResponseCode [DNSRCode] &lt;p&gt;A code that indicates whether the request is valid or not. The most common response code is &lt;code&gt;NOERROR&lt;/code&gt;, meaning that the request is valid. If the response is not valid, Amazon Route 53 returns a response code that describes the error. For a list of possible response codes, see &lt;a href=&quot;http://www.iana.org/assignments/dns-parameters/dns-parameters.xhtml#dns-parameters-6&quot;&gt;DNS RCODES&lt;/a&gt; on the IANA website. &lt;/p&gt;
-- @param Nameserver [Nameserver] &lt;p&gt;The Amazon Route 53 name server used to respond to the request.&lt;/p&gt;
-- @param RecordData [RecordData] &lt;p&gt;A list that contains values that Amazon Route 53 returned for this resource record set.&lt;/p&gt;
-- Required parameter: Nameserver
-- Required parameter: RecordName
-- Required parameter: RecordType
-- Required parameter: RecordData
-- Required parameter: ResponseCode
-- Required parameter: Protocol
function M.TestDNSAnswerResponse(Protocol, RecordType, RecordName, ResponseCode, Nameserver, RecordData, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TestDNSAnswerResponse")
	local t = { 
		["Protocol"] = Protocol,
		["RecordType"] = RecordType,
		["RecordName"] = RecordName,
		["ResponseCode"] = ResponseCode,
		["Nameserver"] = Nameserver,
		["RecordData"] = RecordData,
	}
	M.AssertTestDNSAnswerResponse(t)
	return t
end

local VPCAssociationAuthorizationNotFound_keys = { "message" = true, nil }

function M.AssertVPCAssociationAuthorizationNotFound(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VPCAssociationAuthorizationNotFound to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(VPCAssociationAuthorizationNotFound_keys[k], "VPCAssociationAuthorizationNotFound contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VPCAssociationAuthorizationNotFound
-- &lt;p&gt;The VPC that you specified is not authorized to be associated with the hosted zone.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;Descriptive message for the error response.&lt;/p&gt;
function M.VPCAssociationAuthorizationNotFound(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VPCAssociationAuthorizationNotFound")
	local t = { 
		["message"] = message,
	}
	M.AssertVPCAssociationAuthorizationNotFound(t)
	return t
end

local InvalidInput_keys = { "message" = true, nil }

function M.AssertInvalidInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidInput to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidInput_keys[k], "InvalidInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidInput
-- &lt;p&gt;The input is not valid.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;Descriptive message for the error response.&lt;/p&gt;
function M.InvalidInput(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidInput")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidInput(t)
	return t
end

local CreateVPCAssociationAuthorizationResponse_keys = { "HostedZoneId" = true, "VPC" = true, nil }

function M.AssertCreateVPCAssociationAuthorizationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateVPCAssociationAuthorizationResponse to be of type 'table'")
	assert(struct["HostedZoneId"], "Expected key HostedZoneId to exist in table")
	assert(struct["VPC"], "Expected key VPC to exist in table")
	if struct["HostedZoneId"] then M.AssertResourceId(struct["HostedZoneId"]) end
	if struct["VPC"] then M.AssertVPC(struct["VPC"]) end
	for k,_ in pairs(struct) do
		assert(CreateVPCAssociationAuthorizationResponse_keys[k], "CreateVPCAssociationAuthorizationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateVPCAssociationAuthorizationResponse
-- &lt;p&gt;A complex type that contains the response information from a &lt;code&gt;CreateVPCAssociationAuthorization&lt;/code&gt; request.&lt;/p&gt;
-- @param HostedZoneId [ResourceId] &lt;p&gt;The ID of the hosted zone that you authorized associating a VPC with.&lt;/p&gt;
-- @param VPC [VPC] &lt;p&gt;The VPC that you authorized associating with a hosted zone.&lt;/p&gt;
-- Required parameter: HostedZoneId
-- Required parameter: VPC
function M.CreateVPCAssociationAuthorizationResponse(HostedZoneId, VPC, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateVPCAssociationAuthorizationResponse")
	local t = { 
		["HostedZoneId"] = HostedZoneId,
		["VPC"] = VPC,
	}
	M.AssertCreateVPCAssociationAuthorizationResponse(t)
	return t
end

local HealthCheckAlreadyExists_keys = { "message" = true, nil }

function M.AssertHealthCheckAlreadyExists(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HealthCheckAlreadyExists to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(HealthCheckAlreadyExists_keys[k], "HealthCheckAlreadyExists contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HealthCheckAlreadyExists
-- &lt;p&gt; The health check you're attempting to create already exists. Amazon Route 53 returns this error when you submit a request that has the following values:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;The same value for &lt;code&gt;CallerReference&lt;/code&gt; as an existing health check, and one or more values that differ from the existing health check that has the same caller reference.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;The same value for &lt;code&gt;CallerReference&lt;/code&gt; as a health check that you created and later deleted, regardless of the other settings in the request.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param message [ErrorMessage] &lt;p&gt;Descriptive message for the error response.&lt;/p&gt;
function M.HealthCheckAlreadyExists(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating HealthCheckAlreadyExists")
	local t = { 
		["message"] = message,
	}
	M.AssertHealthCheckAlreadyExists(t)
	return t
end

local LastVPCAssociation_keys = { "message" = true, nil }

function M.AssertLastVPCAssociation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LastVPCAssociation to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(LastVPCAssociation_keys[k], "LastVPCAssociation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LastVPCAssociation
-- &lt;p&gt;The VPC that you're trying to disassociate from the private hosted zone is the last VPC that is associated with the hosted zone. Amazon Route 53 doesn't support disassociating the last VPC from a hosted zone.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;Descriptive message for the error response.&lt;/p&gt;
function M.LastVPCAssociation(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LastVPCAssociation")
	local t = { 
		["message"] = message,
	}
	M.AssertLastVPCAssociation(t)
	return t
end

local ListHostedZonesRequest_keys = { "Marker" = true, "DelegationSetId" = true, "MaxItems" = true, nil }

function M.AssertListHostedZonesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListHostedZonesRequest to be of type 'table'")
	if struct["Marker"] then M.AssertPageMarker(struct["Marker"]) end
	if struct["DelegationSetId"] then M.AssertResourceId(struct["DelegationSetId"]) end
	if struct["MaxItems"] then M.AssertPageMaxItems(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(ListHostedZonesRequest_keys[k], "ListHostedZonesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListHostedZonesRequest
-- &lt;p&gt;A request to retrieve a list of the public and private hosted zones that are associated with the current AWS account.&lt;/p&gt;
-- @param Marker [PageMarker] &lt;p&gt;If the value of &lt;code&gt;IsTruncated&lt;/code&gt; in the previous response was &lt;code&gt;true&lt;/code&gt;, you have more hosted zones. To get more hosted zones, submit another &lt;code&gt;ListHostedZones&lt;/code&gt; request. &lt;/p&gt; &lt;p&gt;For the value of &lt;code&gt;marker&lt;/code&gt;, specify the value of &lt;code&gt;NextMarker&lt;/code&gt; from the previous response, which is the ID of the first hosted zone that Amazon Route 53 will return if you submit another request.&lt;/p&gt; &lt;p&gt;If the value of &lt;code&gt;IsTruncated&lt;/code&gt; in the previous response was &lt;code&gt;false&lt;/code&gt;, there are no more hosted zones to get.&lt;/p&gt;
-- @param DelegationSetId [ResourceId] &lt;p&gt;If you're using reusable delegation sets and you want to list all of the hosted zones that are associated with a reusable delegation set, specify the ID of that reusable delegation set. &lt;/p&gt;
-- @param MaxItems [PageMaxItems] &lt;p&gt;(Optional) The maximum number of hosted zones that you want Amazon Route 53 to return. If you have more than &lt;code&gt;maxitems&lt;/code&gt; hosted zones, the value of &lt;code&gt;IsTruncated&lt;/code&gt; in the response is &lt;code&gt;true&lt;/code&gt;, and the value of &lt;code&gt;NextMarker&lt;/code&gt; is the hosted zone ID of the first hosted zone that Amazon Route 53 will return if you submit another request.&lt;/p&gt;
function M.ListHostedZonesRequest(Marker, DelegationSetId, MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListHostedZonesRequest")
	local t = { 
		["Marker"] = Marker,
		["DelegationSetId"] = DelegationSetId,
		["MaxItems"] = MaxItems,
	}
	M.AssertListHostedZonesRequest(t)
	return t
end

function M.AssertDNSName(str)
	assert(str)
	assert(type(str) == "string", "Expected DNSName to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
end

--  
function M.DNSName(str)
	M.AssertDNSName(str)
	return str
end

function M.AssertTagResourceType(str)
	assert(str)
	assert(type(str) == "string", "Expected TagResourceType to be of type 'string'")
end

--  
function M.TagResourceType(str)
	M.AssertTagResourceType(str)
	return str
end

function M.AssertNonce(str)
	assert(str)
	assert(type(str) == "string", "Expected Nonce to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Nonce(str)
	M.AssertNonce(str)
	return str
end

function M.AssertAssociateVPCComment(str)
	assert(str)
	assert(type(str) == "string", "Expected AssociateVPCComment to be of type 'string'")
end

--  
function M.AssociateVPCComment(str)
	M.AssertAssociateVPCComment(str)
	return str
end

function M.AssertTagKey(str)
	assert(str)
	assert(type(str) == "string", "Expected TagKey to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
end

--  
function M.TagKey(str)
	M.AssertTagKey(str)
	return str
end

function M.AssertPageMarker(str)
	assert(str)
	assert(type(str) == "string", "Expected PageMarker to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
end

--  
function M.PageMarker(str)
	M.AssertPageMarker(str)
	return str
end

function M.AssertGeoLocationCountryName(str)
	assert(str)
	assert(type(str) == "string", "Expected GeoLocationCountryName to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.GeoLocationCountryName(str)
	M.AssertGeoLocationCountryName(str)
	return str
end

function M.AssertGeoLocationSubdivisionCode(str)
	assert(str)
	assert(type(str) == "string", "Expected GeoLocationSubdivisionCode to be of type 'string'")
	assert(#str <= 3, "Expected string to be max 3 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.GeoLocationSubdivisionCode(str)
	M.AssertGeoLocationSubdivisionCode(str)
	return str
end

function M.AssertRData(str)
	assert(str)
	assert(type(str) == "string", "Expected RData to be of type 'string'")
	assert(#str <= 4000, "Expected string to be max 4000 characters")
end

--  
function M.RData(str)
	M.AssertRData(str)
	return str
end

function M.AssertRRType(str)
	assert(str)
	assert(type(str) == "string", "Expected RRType to be of type 'string'")
end

--  
function M.RRType(str)
	M.AssertRRType(str)
	return str
end

function M.AssertGeoLocationContinentName(str)
	assert(str)
	assert(type(str) == "string", "Expected GeoLocationContinentName to be of type 'string'")
	assert(#str <= 32, "Expected string to be max 32 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.GeoLocationContinentName(str)
	M.AssertGeoLocationContinentName(str)
	return str
end

function M.AssertResourcePath(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourcePath to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
end

--  
function M.ResourcePath(str)
	M.AssertResourcePath(str)
	return str
end

function M.AssertStatistic(str)
	assert(str)
	assert(type(str) == "string", "Expected Statistic to be of type 'string'")
end

--  
function M.Statistic(str)
	M.AssertStatistic(str)
	return str
end

function M.AssertIPAddressCidr(str)
	assert(str)
	assert(type(str) == "string", "Expected IPAddressCidr to be of type 'string'")
end

--  
function M.IPAddressCidr(str)
	M.AssertIPAddressCidr(str)
	return str
end

function M.AssertVPCId(str)
	assert(str)
	assert(type(str) == "string", "Expected VPCId to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
end

-- &lt;p&gt;(Private hosted zones only) The ID of an Amazon VPC. &lt;/p&gt;
function M.VPCId(str)
	M.AssertVPCId(str)
	return str
end

function M.AssertPaginationToken(str)
	assert(str)
	assert(type(str) == "string", "Expected PaginationToken to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.PaginationToken(str)
	M.AssertPaginationToken(str)
	return str
end

function M.AssertMetricName(str)
	assert(str)
	assert(type(str) == "string", "Expected MetricName to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.MetricName(str)
	M.AssertMetricName(str)
	return str
end

function M.AssertComparisonOperator(str)
	assert(str)
	assert(type(str) == "string", "Expected ComparisonOperator to be of type 'string'")
end

--  
function M.ComparisonOperator(str)
	M.AssertComparisonOperator(str)
	return str
end

function M.AssertAlarmName(str)
	assert(str)
	assert(type(str) == "string", "Expected AlarmName to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AlarmName(str)
	M.AssertAlarmName(str)
	return str
end

function M.AssertResourceRecordSetFailover(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceRecordSetFailover to be of type 'string'")
end

--  
function M.ResourceRecordSetFailover(str)
	M.AssertResourceRecordSetFailover(str)
	return str
end

function M.AssertTrafficPolicyName(str)
	assert(str)
	assert(type(str) == "string", "Expected TrafficPolicyName to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
end

--  
function M.TrafficPolicyName(str)
	M.AssertTrafficPolicyName(str)
	return str
end

function M.AssertChangeAction(str)
	assert(str)
	assert(type(str) == "string", "Expected ChangeAction to be of type 'string'")
end

--  
function M.ChangeAction(str)
	M.AssertChangeAction(str)
	return str
end

function M.AssertDisassociateVPCComment(str)
	assert(str)
	assert(type(str) == "string", "Expected DisassociateVPCComment to be of type 'string'")
end

--  
function M.DisassociateVPCComment(str)
	M.AssertDisassociateVPCComment(str)
	return str
end

function M.AssertChangeStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ChangeStatus to be of type 'string'")
end

--  
function M.ChangeStatus(str)
	M.AssertChangeStatus(str)
	return str
end

function M.AssertTagValue(str)
	assert(str)
	assert(type(str) == "string", "Expected TagValue to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.TagValue(str)
	M.AssertTagValue(str)
	return str
end

function M.AssertErrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorMessage to be of type 'string'")
end

--  
function M.ErrorMessage(str)
	M.AssertErrorMessage(str)
	return str
end

function M.AssertInsufficientDataHealthStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected InsufficientDataHealthStatus to be of type 'string'")
end

--  
function M.InsufficientDataHealthStatus(str)
	M.AssertInsufficientDataHealthStatus(str)
	return str
end

function M.AssertMaxResults(str)
	assert(str)
	assert(type(str) == "string", "Expected MaxResults to be of type 'string'")
end

--  
function M.MaxResults(str)
	M.AssertMaxResults(str)
	return str
end

function M.AssertVPCRegion(str)
	assert(str)
	assert(type(str) == "string", "Expected VPCRegion to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.VPCRegion(str)
	M.AssertVPCRegion(str)
	return str
end

function M.AssertMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected Message to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
end

--  
function M.Message(str)
	M.AssertMessage(str)
	return str
end

function M.AssertHealthCheckId(str)
	assert(str)
	assert(type(str) == "string", "Expected HealthCheckId to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
end

--  
function M.HealthCheckId(str)
	M.AssertHealthCheckId(str)
	return str
end

function M.AssertSearchString(str)
	assert(str)
	assert(type(str) == "string", "Expected SearchString to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
end

--  
function M.SearchString(str)
	M.AssertSearchString(str)
	return str
end

function M.AssertTrafficPolicyInstanceId(str)
	assert(str)
	assert(type(str) == "string", "Expected TrafficPolicyInstanceId to be of type 'string'")
	assert(#str <= 36, "Expected string to be max 36 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TrafficPolicyInstanceId(str)
	M.AssertTrafficPolicyInstanceId(str)
	return str
end

function M.AssertHealthCheckNonce(str)
	assert(str)
	assert(type(str) == "string", "Expected HealthCheckNonce to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.HealthCheckNonce(str)
	M.AssertHealthCheckNonce(str)
	return str
end

function M.AssertNamespace(str)
	assert(str)
	assert(type(str) == "string", "Expected Namespace to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Namespace(str)
	M.AssertNamespace(str)
	return str
end

function M.AssertDNSRCode(str)
	assert(str)
	assert(type(str) == "string", "Expected DNSRCode to be of type 'string'")
end

--  
function M.DNSRCode(str)
	M.AssertDNSRCode(str)
	return str
end

function M.AssertTrafficPolicyComment(str)
	assert(str)
	assert(type(str) == "string", "Expected TrafficPolicyComment to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
end

--  
function M.TrafficPolicyComment(str)
	M.AssertTrafficPolicyComment(str)
	return str
end

function M.AssertNameserver(str)
	assert(str)
	assert(type(str) == "string", "Expected Nameserver to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
end

--  
function M.Nameserver(str)
	M.AssertNameserver(str)
	return str
end

function M.AssertDimensionField(str)
	assert(str)
	assert(type(str) == "string", "Expected DimensionField to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DimensionField(str)
	M.AssertDimensionField(str)
	return str
end

function M.AssertResourceRecordSetIdentifier(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceRecordSetIdentifier to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ResourceRecordSetIdentifier(str)
	M.AssertResourceRecordSetIdentifier(str)
	return str
end

function M.AssertIPAddress(str)
	assert(str)
	assert(type(str) == "string", "Expected IPAddress to be of type 'string'")
	assert(#str <= 45, "Expected string to be max 45 characters")
	assert(str:match("(^((([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])%.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5]))$|^(([0-9a-fA-F]{1,4}:){7,7}[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,7}:|([0-9a-fA-F]{1,4}:){1,6}:[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,5}(:[0-9a-fA-F]{1,4}){1,2}|([0-9a-fA-F]{1,4}:){1,4}(:[0-9a-fA-F]{1,4}){1,3}|([0-9a-fA-F]{1,4}:){1,3}(:[0-9a-fA-F]{1,4}){1,4}|([0-9a-fA-F]{1,4}:){1,2}(:[0-9a-fA-F]{1,4}){1,5}|[0-9a-fA-F]{1,4}:((:[0-9a-fA-F]{1,4}){1,6})|:((:[0-9a-fA-F]{1,4}){1,7}|:)|fe80:(:[0-9a-fA-F]{0,4}){0,4}%[0-9a-zA-Z]{1,}|::(ffff(:0{1,4}){0,1}:){0,1}((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])%.){3,3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])|([0-9a-fA-F]{1,4}:){1,4}:((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])%.){3,3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9]))$)"), "Expected string to match pattern '(^((([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])%.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5]))$|^(([0-9a-fA-F]{1,4}:){7,7}[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,7}:|([0-9a-fA-F]{1,4}:){1,6}:[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,5}(:[0-9a-fA-F]{1,4}){1,2}|([0-9a-fA-F]{1,4}:){1,4}(:[0-9a-fA-F]{1,4}){1,3}|([0-9a-fA-F]{1,4}:){1,3}(:[0-9a-fA-F]{1,4}){1,4}|([0-9a-fA-F]{1,4}:){1,2}(:[0-9a-fA-F]{1,4}){1,5}|[0-9a-fA-F]{1,4}:((:[0-9a-fA-F]{1,4}){1,6})|:((:[0-9a-fA-F]{1,4}){1,7}|:)|fe80:(:[0-9a-fA-F]{0,4}){0,4}%[0-9a-zA-Z]{1,}|::(ffff(:0{1,4}){0,1}:){0,1}((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])%.){3,3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])|([0-9a-fA-F]{1,4}:){1,4}:((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])%.){3,3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9]))$)'")
end

--  
function M.IPAddress(str)
	M.AssertIPAddress(str)
	return str
end

function M.AssertPageMaxItems(str)
	assert(str)
	assert(type(str) == "string", "Expected PageMaxItems to be of type 'string'")
end

--  
function M.PageMaxItems(str)
	M.AssertPageMaxItems(str)
	return str
end

function M.AssertGeoLocationContinentCode(str)
	assert(str)
	assert(type(str) == "string", "Expected GeoLocationContinentCode to be of type 'string'")
	assert(#str <= 2, "Expected string to be max 2 characters")
	assert(#str >= 2, "Expected string to be min 2 characters")
end

--  
function M.GeoLocationContinentCode(str)
	M.AssertGeoLocationContinentCode(str)
	return str
end

function M.AssertTrafficPolicyInstanceState(str)
	assert(str)
	assert(type(str) == "string", "Expected TrafficPolicyInstanceState to be of type 'string'")
end

--  
function M.TrafficPolicyInstanceState(str)
	M.AssertTrafficPolicyInstanceState(str)
	return str
end

function M.AssertFullyQualifiedDomainName(str)
	assert(str)
	assert(type(str) == "string", "Expected FullyQualifiedDomainName to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
end

--  
function M.FullyQualifiedDomainName(str)
	M.AssertFullyQualifiedDomainName(str)
	return str
end

function M.AssertResourceURI(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceURI to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
end

--  
function M.ResourceURI(str)
	M.AssertResourceURI(str)
	return str
end

function M.AssertTransportProtocol(str)
	assert(str)
	assert(type(str) == "string", "Expected TransportProtocol to be of type 'string'")
end

--  
function M.TransportProtocol(str)
	M.AssertTransportProtocol(str)
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

function M.AssertCloudWatchRegion(str)
	assert(str)
	assert(type(str) == "string", "Expected CloudWatchRegion to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.CloudWatchRegion(str)
	M.AssertCloudWatchRegion(str)
	return str
end

function M.AssertTrafficPolicyId(str)
	assert(str)
	assert(type(str) == "string", "Expected TrafficPolicyId to be of type 'string'")
	assert(#str <= 36, "Expected string to be max 36 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TrafficPolicyId(str)
	M.AssertTrafficPolicyId(str)
	return str
end

function M.AssertResourceDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceDescription to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.ResourceDescription(str)
	M.AssertResourceDescription(str)
	return str
end

function M.AssertTrafficPolicyDocument(str)
	assert(str)
	assert(type(str) == "string", "Expected TrafficPolicyDocument to be of type 'string'")
	assert(#str <= 102400, "Expected string to be max 102400 characters")
end

--  
function M.TrafficPolicyDocument(str)
	M.AssertTrafficPolicyDocument(str)
	return str
end

function M.AssertTrafficPolicyVersionMarker(str)
	assert(str)
	assert(type(str) == "string", "Expected TrafficPolicyVersionMarker to be of type 'string'")
	assert(#str <= 4, "Expected string to be max 4 characters")
end

--  
function M.TrafficPolicyVersionMarker(str)
	M.AssertTrafficPolicyVersionMarker(str)
	return str
end

function M.AssertResourceId(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceId to be of type 'string'")
	assert(#str <= 32, "Expected string to be max 32 characters")
end

--  
function M.ResourceId(str)
	M.AssertResourceId(str)
	return str
end

function M.AssertRecordDataEntry(str)
	assert(str)
	assert(type(str) == "string", "Expected RecordDataEntry to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
end

-- &lt;p&gt;A value that Amazon Route 53 returned for this resource record set. A &lt;code&gt;RecordDataEntry&lt;/code&gt; element is one of the following:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;For non-alias resource record sets, a &lt;code&gt;RecordDataEntry&lt;/code&gt; element contains one value in the resource record set. If the resource record set contains multiple values, the response includes one &lt;code&gt;RecordDataEntry&lt;/code&gt; element for each value.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;For multiple resource record sets that have the same name and type, which includes weighted, latency, geolocation, and failover, a &lt;code&gt;RecordDataEntry&lt;/code&gt; element contains the value from the appropriate resource record set based on the request.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;For alias resource record sets that refer to AWS resources other than another resource record set, the &lt;code&gt;RecordDataEntry&lt;/code&gt; element contains an IP address or a domain name for the AWS resource, depending on the type of resource.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;For alias resource record sets that refer to other resource record sets, a &lt;code&gt;RecordDataEntry&lt;/code&gt; element contains one value from the referenced resource record set. If the referenced resource record set contains multiple values, the response includes one &lt;code&gt;RecordDataEntry&lt;/code&gt; element for each value.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
function M.RecordDataEntry(str)
	M.AssertRecordDataEntry(str)
	return str
end

function M.AssertGeoLocationSubdivisionName(str)
	assert(str)
	assert(type(str) == "string", "Expected GeoLocationSubdivisionName to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.GeoLocationSubdivisionName(str)
	M.AssertGeoLocationSubdivisionName(str)
	return str
end

function M.AssertSubnetMask(str)
	assert(str)
	assert(type(str) == "string", "Expected SubnetMask to be of type 'string'")
	assert(#str <= 3, "Expected string to be max 3 characters")
end

--  
function M.SubnetMask(str)
	M.AssertSubnetMask(str)
	return str
end

function M.AssertHealthCheckType(str)
	assert(str)
	assert(type(str) == "string", "Expected HealthCheckType to be of type 'string'")
end

--  
function M.HealthCheckType(str)
	M.AssertHealthCheckType(str)
	return str
end

function M.AssertHealthCheckRegion(str)
	assert(str)
	assert(type(str) == "string", "Expected HealthCheckRegion to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.HealthCheckRegion(str)
	M.AssertHealthCheckRegion(str)
	return str
end

function M.AssertTagResourceId(str)
	assert(str)
	assert(type(str) == "string", "Expected TagResourceId to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
end

--  
function M.TagResourceId(str)
	M.AssertTagResourceId(str)
	return str
end

function M.AssertResourceRecordSetRegion(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceRecordSetRegion to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ResourceRecordSetRegion(str)
	M.AssertResourceRecordSetRegion(str)
	return str
end

function M.AssertGeoLocationCountryCode(str)
	assert(str)
	assert(type(str) == "string", "Expected GeoLocationCountryCode to be of type 'string'")
	assert(#str <= 2, "Expected string to be max 2 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.GeoLocationCountryCode(str)
	M.AssertGeoLocationCountryCode(str)
	return str
end

function M.AssertThreshold(double)
	assert(double)
	assert(type(double) == "number", "Expected Threshold to be of type 'number'")
end

function M.Threshold(double)
	M.AssertThreshold(double)
	return double
end

function M.AssertHostedZoneRRSetCount(long)
	assert(long)
	assert(type(long) == "number", "Expected HostedZoneRRSetCount to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.HostedZoneRRSetCount(long)
	M.AssertHostedZoneRRSetCount(long)
	return long
end

function M.AssertTTL(long)
	assert(long)
	assert(type(long) == "number", "Expected TTL to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.TTL(long)
	M.AssertTTL(long)
	return long
end

function M.AssertHealthCheckCount(long)
	assert(long)
	assert(type(long) == "number", "Expected HealthCheckCount to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.HealthCheckCount(long)
	M.AssertHealthCheckCount(long)
	return long
end

function M.AssertHostedZoneCount(long)
	assert(long)
	assert(type(long) == "number", "Expected HostedZoneCount to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.HostedZoneCount(long)
	M.AssertHostedZoneCount(long)
	return long
end

function M.AssertResourceRecordSetWeight(long)
	assert(long)
	assert(type(long) == "number", "Expected ResourceRecordSetWeight to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.ResourceRecordSetWeight(long)
	M.AssertResourceRecordSetWeight(long)
	return long
end

function M.AssertHealthCheckVersion(long)
	assert(long)
	assert(type(long) == "number", "Expected HealthCheckVersion to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.HealthCheckVersion(long)
	M.AssertHealthCheckVersion(long)
	return long
end

function M.AssertPeriod(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Period to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 60, "Expected integer to be min 60")
end

function M.Period(integer)
	M.AssertPeriod(integer)
	return integer
end

function M.AssertEvaluationPeriods(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected EvaluationPeriods to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.EvaluationPeriods(integer)
	M.AssertEvaluationPeriods(integer)
	return integer
end

function M.AssertHealthThreshold(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected HealthThreshold to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 256, "Expected integer to be max 256")
end

function M.HealthThreshold(integer)
	M.AssertHealthThreshold(integer)
	return integer
end

function M.AssertTrafficPolicyVersion(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected TrafficPolicyVersion to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 1000, "Expected integer to be max 1000")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.TrafficPolicyVersion(integer)
	M.AssertTrafficPolicyVersion(integer)
	return integer
end

function M.AssertTrafficPolicyInstanceCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected TrafficPolicyInstanceCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.TrafficPolicyInstanceCount(integer)
	M.AssertTrafficPolicyInstanceCount(integer)
	return integer
end

function M.AssertFailureThreshold(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected FailureThreshold to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 10, "Expected integer to be max 10")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.FailureThreshold(integer)
	M.AssertFailureThreshold(integer)
	return integer
end

function M.AssertRequestInterval(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected RequestInterval to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 30, "Expected integer to be max 30")
	assert(integer >= 10, "Expected integer to be min 10")
end

function M.RequestInterval(integer)
	M.AssertRequestInterval(integer)
	return integer
end

function M.AssertPort(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Port to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 65535, "Expected integer to be max 65535")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.Port(integer)
	M.AssertPort(integer)
	return integer
end

function M.AssertMeasureLatency(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected MeasureLatency to be of type 'boolean'")
end

function M.MeasureLatency(boolean)
	M.AssertMeasureLatency(boolean)
	return boolean
end

function M.AssertAliasHealthEnabled(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected AliasHealthEnabled to be of type 'boolean'")
end

function M.AliasHealthEnabled(boolean)
	M.AssertAliasHealthEnabled(boolean)
	return boolean
end

function M.AssertEnableSNI(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected EnableSNI to be of type 'boolean'")
end

function M.EnableSNI(boolean)
	M.AssertEnableSNI(boolean)
	return boolean
end

function M.AssertPageTruncated(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected PageTruncated to be of type 'boolean'")
end

function M.PageTruncated(boolean)
	M.AssertPageTruncated(boolean)
	return boolean
end

function M.AssertInverted(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Inverted to be of type 'boolean'")
end

function M.Inverted(boolean)
	M.AssertInverted(boolean)
	return boolean
end

function M.AssertIsPrivateZone(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected IsPrivateZone to be of type 'boolean'")
end

function M.IsPrivateZone(boolean)
	M.AssertIsPrivateZone(boolean)
	return boolean
end

function M.AssertResourceRecordSetMultiValueAnswer(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected ResourceRecordSetMultiValueAnswer to be of type 'boolean'")
end

function M.ResourceRecordSetMultiValueAnswer(boolean)
	M.AssertResourceRecordSetMultiValueAnswer(boolean)
	return boolean
end

function M.AssertTimeStamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected TimeStamp to be of type 'string'")
end

function M.TimeStamp(timestamp)
	M.AssertTimeStamp(timestamp)
	return timestamp
end

function M.AssertErrorMessages(list)
	assert(list)
	assert(type(list) == "table", "Expected ErrorMessages to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertErrorMessage(v)
	end
end

--  
-- List of ErrorMessage objects
function M.ErrorMessages(list)
	M.AssertErrorMessages(list)
	return list
end

function M.AssertTagResourceIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagResourceIdList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertTagResourceId(v)
	end
end

--  
-- List of TagResourceId objects
function M.TagResourceIdList(list)
	M.AssertTagResourceIdList(list)
	return list
end

function M.AssertRecordData(list)
	assert(list)
	assert(type(list) == "table", "Expected RecordData to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertRecordDataEntry(v)
	end
end

--  
-- List of RecordDataEntry objects
function M.RecordData(list)
	M.AssertRecordData(list)
	return list
end

function M.AssertDelegationSets(list)
	assert(list)
	assert(type(list) == "table", "Expected DelegationSets to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDelegationSet(v)
	end
end

--  
-- List of DelegationSet objects
function M.DelegationSets(list)
	M.AssertDelegationSets(list)
	return list
end

function M.AssertHostedZones(list)
	assert(list)
	assert(type(list) == "table", "Expected HostedZones to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertHostedZone(v)
	end
end

--  
-- List of HostedZone objects
function M.HostedZones(list)
	M.AssertHostedZones(list)
	return list
end

function M.AssertTagKeyList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagKeyList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertTagKey(v)
	end
end

--  
-- List of TagKey objects
function M.TagKeyList(list)
	M.AssertTagKeyList(list)
	return list
end

function M.AssertGeoLocationDetailsList(list)
	assert(list)
	assert(type(list) == "table", "Expected GeoLocationDetailsList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertGeoLocationDetails(v)
	end
end

--  
-- List of GeoLocationDetails objects
function M.GeoLocationDetailsList(list)
	M.AssertGeoLocationDetailsList(list)
	return list
end

function M.AssertHealthChecks(list)
	assert(list)
	assert(type(list) == "table", "Expected HealthChecks to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertHealthCheck(v)
	end
end

--  
-- List of HealthCheck objects
function M.HealthChecks(list)
	M.AssertHealthChecks(list)
	return list
end

function M.AssertHealthCheckRegionList(list)
	assert(list)
	assert(type(list) == "table", "Expected HealthCheckRegionList to be of type ''table")
	assert(#list <= 64, "Expected list to be contain 64 elements")
	assert(#list >= 3, "Expected list to be contain 3 elements")
	for _,v in ipairs(list) do
		M.AssertHealthCheckRegion(v)
	end
end

--  
-- List of HealthCheckRegion objects
function M.HealthCheckRegionList(list)
	M.AssertHealthCheckRegionList(list)
	return list
end

function M.AssertChanges(list)
	assert(list)
	assert(type(list) == "table", "Expected Changes to be of type ''table")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertChange(v)
	end
end

--  
-- List of Change objects
function M.Changes(list)
	M.AssertChanges(list)
	return list
end

function M.AssertVPCs(list)
	assert(list)
	assert(type(list) == "table", "Expected VPCs to be of type ''table")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertVPC(v)
	end
end

-- &lt;p&gt;(Private hosted zones only) A list of &lt;code&gt;VPC&lt;/code&gt; elements.&lt;/p&gt;
-- List of VPC objects
function M.VPCs(list)
	M.AssertVPCs(list)
	return list
end

function M.AssertResourceRecords(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceRecords to be of type ''table")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertResourceRecord(v)
	end
end

--  
-- List of ResourceRecord objects
function M.ResourceRecords(list)
	M.AssertResourceRecords(list)
	return list
end

function M.AssertDelegationSetNameServers(list)
	assert(list)
	assert(type(list) == "table", "Expected DelegationSetNameServers to be of type ''table")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertDNSName(v)
	end
end

--  
-- List of DNSName objects
function M.DelegationSetNameServers(list)
	M.AssertDelegationSetNameServers(list)
	return list
end

function M.AssertTrafficPolicySummaries(list)
	assert(list)
	assert(type(list) == "table", "Expected TrafficPolicySummaries to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTrafficPolicySummary(v)
	end
end

--  
-- List of TrafficPolicySummary objects
function M.TrafficPolicySummaries(list)
	M.AssertTrafficPolicySummaries(list)
	return list
end

function M.AssertResourceRecordSets(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceRecordSets to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertResourceRecordSet(v)
	end
end

--  
-- List of ResourceRecordSet objects
function M.ResourceRecordSets(list)
	M.AssertResourceRecordSets(list)
	return list
end

function M.AssertTrafficPolicyInstances(list)
	assert(list)
	assert(type(list) == "table", "Expected TrafficPolicyInstances to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTrafficPolicyInstance(v)
	end
end

--  
-- List of TrafficPolicyInstance objects
function M.TrafficPolicyInstances(list)
	M.AssertTrafficPolicyInstances(list)
	return list
end

function M.AssertDimensionList(list)
	assert(list)
	assert(type(list) == "table", "Expected DimensionList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	for _,v in ipairs(list) do
		M.AssertDimension(v)
	end
end

--  
-- List of Dimension objects
function M.DimensionList(list)
	M.AssertDimensionList(list)
	return list
end

function M.AssertChildHealthCheckList(list)
	assert(list)
	assert(type(list) == "table", "Expected ChildHealthCheckList to be of type ''table")
	assert(#list <= 256, "Expected list to be contain 256 elements")
	for _,v in ipairs(list) do
		M.AssertHealthCheckId(v)
	end
end

--  
-- List of HealthCheckId objects
function M.ChildHealthCheckList(list)
	M.AssertChildHealthCheckList(list)
	return list
end

function M.AssertHealthCheckObservations(list)
	assert(list)
	assert(type(list) == "table", "Expected HealthCheckObservations to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertHealthCheckObservation(v)
	end
end

--  
-- List of HealthCheckObservation objects
function M.HealthCheckObservations(list)
	M.AssertHealthCheckObservations(list)
	return list
end

function M.AssertResourceTagSetList(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceTagSetList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertResourceTagSet(v)
	end
end

--  
-- List of ResourceTagSet objects
function M.ResourceTagSetList(list)
	M.AssertResourceTagSetList(list)
	return list
end

function M.AssertTrafficPolicies(list)
	assert(list)
	assert(type(list) == "table", "Expected TrafficPolicies to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTrafficPolicy(v)
	end
end

--  
-- List of TrafficPolicy objects
function M.TrafficPolicies(list)
	M.AssertTrafficPolicies(list)
	return list
end

function M.AssertCheckerIpRanges(list)
	assert(list)
	assert(type(list) == "table", "Expected CheckerIpRanges to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertIPAddressCidr(v)
	end
end

--  
-- List of IPAddressCidr objects
function M.CheckerIpRanges(list)
	M.AssertCheckerIpRanges(list)
	return list
end

function M.AssertTagList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertTag(v)
	end
end

--  
-- List of Tag objects
function M.TagList(list)
	M.AssertTagList(list)
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
			return "route53.amazonaws.com"
		end
	end
	local ss = { "route53" }
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
--- ListTrafficPolicyInstancesByHostedZone
-- @param ListTrafficPolicyInstancesByHostedZoneRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListTrafficPolicyInstancesByHostedZoneAsync(ListTrafficPolicyInstancesByHostedZoneRequest, cb)
	assert(ListTrafficPolicyInstancesByHostedZoneRequest, "You must provide a ListTrafficPolicyInstancesByHostedZoneRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListTrafficPolicyInstancesByHostedZone",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2013-04-01/trafficpolicyinstances/hostedzone", ListTrafficPolicyInstancesByHostedZoneRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetCheckerIpRanges
-- @param GetCheckerIpRangesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetCheckerIpRangesAsync(GetCheckerIpRangesRequest, cb)
	assert(GetCheckerIpRangesRequest, "You must provide a GetCheckerIpRangesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetCheckerIpRanges",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2013-04-01/checkeripranges", GetCheckerIpRangesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListTrafficPolicyInstancesByPolicy
-- @param ListTrafficPolicyInstancesByPolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListTrafficPolicyInstancesByPolicyAsync(ListTrafficPolicyInstancesByPolicyRequest, cb)
	assert(ListTrafficPolicyInstancesByPolicyRequest, "You must provide a ListTrafficPolicyInstancesByPolicyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListTrafficPolicyInstancesByPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2013-04-01/trafficpolicyinstances/trafficpolicy", ListTrafficPolicyInstancesByPolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListTrafficPolicies
-- @param ListTrafficPoliciesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListTrafficPoliciesAsync(ListTrafficPoliciesRequest, cb)
	assert(ListTrafficPoliciesRequest, "You must provide a ListTrafficPoliciesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListTrafficPolicies",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2013-04-01/trafficpolicies", ListTrafficPoliciesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateHostedZoneComment
-- @param UpdateHostedZoneCommentRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateHostedZoneCommentAsync(UpdateHostedZoneCommentRequest, cb)
	assert(UpdateHostedZoneCommentRequest, "You must provide a UpdateHostedZoneCommentRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateHostedZoneComment",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/2013-04-01/hostedzone/{Id}", UpdateHostedZoneCommentRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ChangeTagsForResource
-- @param ChangeTagsForResourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ChangeTagsForResourceAsync(ChangeTagsForResourceRequest, cb)
	assert(ChangeTagsForResourceRequest, "You must provide a ChangeTagsForResourceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ChangeTagsForResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/2013-04-01/tags/{ResourceType}/{ResourceId}", ChangeTagsForResourceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetHealthCheck
-- @param GetHealthCheckRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetHealthCheckAsync(GetHealthCheckRequest, cb)
	assert(GetHealthCheckRequest, "You must provide a GetHealthCheckRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetHealthCheck",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2013-04-01/healthcheck/{HealthCheckId}", GetHealthCheckRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListHostedZonesByName
-- @param ListHostedZonesByNameRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListHostedZonesByNameAsync(ListHostedZonesByNameRequest, cb)
	assert(ListHostedZonesByNameRequest, "You must provide a ListHostedZonesByNameRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListHostedZonesByName",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2013-04-01/hostedzonesbyname", ListHostedZonesByNameRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetHostedZone
-- @param GetHostedZoneRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetHostedZoneAsync(GetHostedZoneRequest, cb)
	assert(GetHostedZoneRequest, "You must provide a GetHostedZoneRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetHostedZone",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2013-04-01/hostedzone/{Id}", GetHostedZoneRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteReusableDelegationSet
-- @param DeleteReusableDelegationSetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteReusableDelegationSetAsync(DeleteReusableDelegationSetRequest, cb)
	assert(DeleteReusableDelegationSetRequest, "You must provide a DeleteReusableDelegationSetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteReusableDelegationSet",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/2013-04-01/delegationset/{Id}", DeleteReusableDelegationSetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteTrafficPolicyInstance
-- @param DeleteTrafficPolicyInstanceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteTrafficPolicyInstanceAsync(DeleteTrafficPolicyInstanceRequest, cb)
	assert(DeleteTrafficPolicyInstanceRequest, "You must provide a DeleteTrafficPolicyInstanceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteTrafficPolicyInstance",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/2013-04-01/trafficpolicyinstance/{Id}", DeleteTrafficPolicyInstanceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetHostedZoneCount
-- @param GetHostedZoneCountRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetHostedZoneCountAsync(GetHostedZoneCountRequest, cb)
	assert(GetHostedZoneCountRequest, "You must provide a GetHostedZoneCountRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetHostedZoneCount",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2013-04-01/hostedzonecount", GetHostedZoneCountRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetTrafficPolicyInstanceCount
-- @param GetTrafficPolicyInstanceCountRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetTrafficPolicyInstanceCountAsync(GetTrafficPolicyInstanceCountRequest, cb)
	assert(GetTrafficPolicyInstanceCountRequest, "You must provide a GetTrafficPolicyInstanceCountRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetTrafficPolicyInstanceCount",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2013-04-01/trafficpolicyinstancecount", GetTrafficPolicyInstanceCountRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateTrafficPolicyComment
-- @param UpdateTrafficPolicyCommentRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateTrafficPolicyCommentAsync(UpdateTrafficPolicyCommentRequest, cb)
	assert(UpdateTrafficPolicyCommentRequest, "You must provide a UpdateTrafficPolicyCommentRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateTrafficPolicyComment",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/2013-04-01/trafficpolicy/{Id}/{Version}", UpdateTrafficPolicyCommentRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ChangeResourceRecordSets
-- @param ChangeResourceRecordSetsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ChangeResourceRecordSetsAsync(ChangeResourceRecordSetsRequest, cb)
	assert(ChangeResourceRecordSetsRequest, "You must provide a ChangeResourceRecordSetsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ChangeResourceRecordSets",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/2013-04-01/hostedzone/{Id}/rrset/", ChangeResourceRecordSetsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteTrafficPolicy
-- @param DeleteTrafficPolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteTrafficPolicyAsync(DeleteTrafficPolicyRequest, cb)
	assert(DeleteTrafficPolicyRequest, "You must provide a DeleteTrafficPolicyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteTrafficPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/2013-04-01/trafficpolicy/{Id}/{Version}", DeleteTrafficPolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateHostedZone
-- @param CreateHostedZoneRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateHostedZoneAsync(CreateHostedZoneRequest, cb)
	assert(CreateHostedZoneRequest, "You must provide a CreateHostedZoneRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateHostedZone",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/2013-04-01/hostedzone", CreateHostedZoneRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateVPCAssociationAuthorization
-- @param CreateVPCAssociationAuthorizationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateVPCAssociationAuthorizationAsync(CreateVPCAssociationAuthorizationRequest, cb)
	assert(CreateVPCAssociationAuthorizationRequest, "You must provide a CreateVPCAssociationAuthorizationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateVPCAssociationAuthorization",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/2013-04-01/hostedzone/{Id}/authorizevpcassociation", CreateVPCAssociationAuthorizationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteHostedZone
-- @param DeleteHostedZoneRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteHostedZoneAsync(DeleteHostedZoneRequest, cb)
	assert(DeleteHostedZoneRequest, "You must provide a DeleteHostedZoneRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteHostedZone",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/2013-04-01/hostedzone/{Id}", DeleteHostedZoneRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetHealthCheckStatus
-- @param GetHealthCheckStatusRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetHealthCheckStatusAsync(GetHealthCheckStatusRequest, cb)
	assert(GetHealthCheckStatusRequest, "You must provide a GetHealthCheckStatusRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetHealthCheckStatus",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2013-04-01/healthcheck/{HealthCheckId}/status", GetHealthCheckStatusRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- TestDNSAnswer
-- @param TestDNSAnswerRequest
-- @param cb Callback function accepting two args: response, error_message
function M.TestDNSAnswerAsync(TestDNSAnswerRequest, cb)
	assert(TestDNSAnswerRequest, "You must provide a TestDNSAnswerRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".TestDNSAnswer",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2013-04-01/testdnsanswer", TestDNSAnswerRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListReusableDelegationSets
-- @param ListReusableDelegationSetsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListReusableDelegationSetsAsync(ListReusableDelegationSetsRequest, cb)
	assert(ListReusableDelegationSetsRequest, "You must provide a ListReusableDelegationSetsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListReusableDelegationSets",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2013-04-01/delegationset", ListReusableDelegationSetsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetTrafficPolicy
-- @param GetTrafficPolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetTrafficPolicyAsync(GetTrafficPolicyRequest, cb)
	assert(GetTrafficPolicyRequest, "You must provide a GetTrafficPolicyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetTrafficPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2013-04-01/trafficpolicy/{Id}/{Version}", GetTrafficPolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateTrafficPolicyInstance
-- @param CreateTrafficPolicyInstanceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateTrafficPolicyInstanceAsync(CreateTrafficPolicyInstanceRequest, cb)
	assert(CreateTrafficPolicyInstanceRequest, "You must provide a CreateTrafficPolicyInstanceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateTrafficPolicyInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/2013-04-01/trafficpolicyinstance", CreateTrafficPolicyInstanceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetGeoLocation
-- @param GetGeoLocationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetGeoLocationAsync(GetGeoLocationRequest, cb)
	assert(GetGeoLocationRequest, "You must provide a GetGeoLocationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetGeoLocation",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2013-04-01/geolocation", GetGeoLocationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetReusableDelegationSet
-- @param GetReusableDelegationSetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetReusableDelegationSetAsync(GetReusableDelegationSetRequest, cb)
	assert(GetReusableDelegationSetRequest, "You must provide a GetReusableDelegationSetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetReusableDelegationSet",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2013-04-01/delegationset/{Id}", GetReusableDelegationSetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListHostedZones
-- @param ListHostedZonesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListHostedZonesAsync(ListHostedZonesRequest, cb)
	assert(ListHostedZonesRequest, "You must provide a ListHostedZonesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListHostedZones",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2013-04-01/hostedzone", ListHostedZonesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateHealthCheck
-- @param UpdateHealthCheckRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateHealthCheckAsync(UpdateHealthCheckRequest, cb)
	assert(UpdateHealthCheckRequest, "You must provide a UpdateHealthCheckRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateHealthCheck",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/2013-04-01/healthcheck/{HealthCheckId}", UpdateHealthCheckRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetHealthCheckCount
-- @param GetHealthCheckCountRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetHealthCheckCountAsync(GetHealthCheckCountRequest, cb)
	assert(GetHealthCheckCountRequest, "You must provide a GetHealthCheckCountRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetHealthCheckCount",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2013-04-01/healthcheckcount", GetHealthCheckCountRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DisassociateVPCFromHostedZone
-- @param DisassociateVPCFromHostedZoneRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DisassociateVPCFromHostedZoneAsync(DisassociateVPCFromHostedZoneRequest, cb)
	assert(DisassociateVPCFromHostedZoneRequest, "You must provide a DisassociateVPCFromHostedZoneRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DisassociateVPCFromHostedZone",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/2013-04-01/hostedzone/{Id}/disassociatevpc", DisassociateVPCFromHostedZoneRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteVPCAssociationAuthorization
-- @param DeleteVPCAssociationAuthorizationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteVPCAssociationAuthorizationAsync(DeleteVPCAssociationAuthorizationRequest, cb)
	assert(DeleteVPCAssociationAuthorizationRequest, "You must provide a DeleteVPCAssociationAuthorizationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteVPCAssociationAuthorization",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/2013-04-01/hostedzone/{Id}/deauthorizevpcassociation", DeleteVPCAssociationAuthorizationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetTrafficPolicyInstance
-- @param GetTrafficPolicyInstanceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetTrafficPolicyInstanceAsync(GetTrafficPolicyInstanceRequest, cb)
	assert(GetTrafficPolicyInstanceRequest, "You must provide a GetTrafficPolicyInstanceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetTrafficPolicyInstance",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2013-04-01/trafficpolicyinstance/{Id}", GetTrafficPolicyInstanceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteHealthCheck
-- @param DeleteHealthCheckRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteHealthCheckAsync(DeleteHealthCheckRequest, cb)
	assert(DeleteHealthCheckRequest, "You must provide a DeleteHealthCheckRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteHealthCheck",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/2013-04-01/healthcheck/{HealthCheckId}", DeleteHealthCheckRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateHealthCheck
-- @param CreateHealthCheckRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateHealthCheckAsync(CreateHealthCheckRequest, cb)
	assert(CreateHealthCheckRequest, "You must provide a CreateHealthCheckRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateHealthCheck",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/2013-04-01/healthcheck", CreateHealthCheckRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateTrafficPolicyVersion
-- @param CreateTrafficPolicyVersionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateTrafficPolicyVersionAsync(CreateTrafficPolicyVersionRequest, cb)
	assert(CreateTrafficPolicyVersionRequest, "You must provide a CreateTrafficPolicyVersionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateTrafficPolicyVersion",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/2013-04-01/trafficpolicy/{Id}", CreateTrafficPolicyVersionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateTrafficPolicy
-- @param CreateTrafficPolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateTrafficPolicyAsync(CreateTrafficPolicyRequest, cb)
	assert(CreateTrafficPolicyRequest, "You must provide a CreateTrafficPolicyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateTrafficPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/2013-04-01/trafficpolicy", CreateTrafficPolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListTagsForResources
-- @param ListTagsForResourcesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListTagsForResourcesAsync(ListTagsForResourcesRequest, cb)
	assert(ListTagsForResourcesRequest, "You must provide a ListTagsForResourcesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListTagsForResources",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/2013-04-01/tags/{ResourceType}", ListTagsForResourcesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListGeoLocations
-- @param ListGeoLocationsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListGeoLocationsAsync(ListGeoLocationsRequest, cb)
	assert(ListGeoLocationsRequest, "You must provide a ListGeoLocationsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListGeoLocations",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2013-04-01/geolocations", ListGeoLocationsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AssociateVPCWithHostedZone
-- @param AssociateVPCWithHostedZoneRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AssociateVPCWithHostedZoneAsync(AssociateVPCWithHostedZoneRequest, cb)
	assert(AssociateVPCWithHostedZoneRequest, "You must provide a AssociateVPCWithHostedZoneRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".AssociateVPCWithHostedZone",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/2013-04-01/hostedzone/{Id}/associatevpc", AssociateVPCWithHostedZoneRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListTrafficPolicyInstances
-- @param ListTrafficPolicyInstancesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListTrafficPolicyInstancesAsync(ListTrafficPolicyInstancesRequest, cb)
	assert(ListTrafficPolicyInstancesRequest, "You must provide a ListTrafficPolicyInstancesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListTrafficPolicyInstances",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2013-04-01/trafficpolicyinstances", ListTrafficPolicyInstancesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListVPCAssociationAuthorizations
-- @param ListVPCAssociationAuthorizationsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListVPCAssociationAuthorizationsAsync(ListVPCAssociationAuthorizationsRequest, cb)
	assert(ListVPCAssociationAuthorizationsRequest, "You must provide a ListVPCAssociationAuthorizationsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListVPCAssociationAuthorizations",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2013-04-01/hostedzone/{Id}/authorizevpcassociation", ListVPCAssociationAuthorizationsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetHealthCheckLastFailureReason
-- @param GetHealthCheckLastFailureReasonRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetHealthCheckLastFailureReasonAsync(GetHealthCheckLastFailureReasonRequest, cb)
	assert(GetHealthCheckLastFailureReasonRequest, "You must provide a GetHealthCheckLastFailureReasonRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetHealthCheckLastFailureReason",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2013-04-01/healthcheck/{HealthCheckId}/lastfailurereason", GetHealthCheckLastFailureReasonRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetChange
-- @param GetChangeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetChangeAsync(GetChangeRequest, cb)
	assert(GetChangeRequest, "You must provide a GetChangeRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetChange",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2013-04-01/change/{Id}", GetChangeRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateTrafficPolicyInstance
-- @param UpdateTrafficPolicyInstanceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateTrafficPolicyInstanceAsync(UpdateTrafficPolicyInstanceRequest, cb)
	assert(UpdateTrafficPolicyInstanceRequest, "You must provide a UpdateTrafficPolicyInstanceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateTrafficPolicyInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/2013-04-01/trafficpolicyinstance/{Id}", UpdateTrafficPolicyInstanceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateReusableDelegationSet
-- @param CreateReusableDelegationSetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateReusableDelegationSetAsync(CreateReusableDelegationSetRequest, cb)
	assert(CreateReusableDelegationSetRequest, "You must provide a CreateReusableDelegationSetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateReusableDelegationSet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/2013-04-01/delegationset", CreateReusableDelegationSetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListResourceRecordSets
-- @param ListResourceRecordSetsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListResourceRecordSetsAsync(ListResourceRecordSetsRequest, cb)
	assert(ListResourceRecordSetsRequest, "You must provide a ListResourceRecordSetsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListResourceRecordSets",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2013-04-01/hostedzone/{Id}/rrset", ListResourceRecordSetsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListTagsForResource
-- @param ListTagsForResourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListTagsForResourceAsync(ListTagsForResourceRequest, cb)
	assert(ListTagsForResourceRequest, "You must provide a ListTagsForResourceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListTagsForResource",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2013-04-01/tags/{ResourceType}/{ResourceId}", ListTagsForResourceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListHealthChecks
-- @param ListHealthChecksRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListHealthChecksAsync(ListHealthChecksRequest, cb)
	assert(ListHealthChecksRequest, "You must provide a ListHealthChecksRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListHealthChecks",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2013-04-01/healthcheck", ListHealthChecksRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListTrafficPolicyVersions
-- @param ListTrafficPolicyVersionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListTrafficPolicyVersionsAsync(ListTrafficPolicyVersionsRequest, cb)
	assert(ListTrafficPolicyVersionsRequest, "You must provide a ListTrafficPolicyVersionsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListTrafficPolicyVersions",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2013-04-01/trafficpolicies/{Id}/versions", ListTrafficPolicyVersionsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
