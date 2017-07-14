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
-- <p>A complex type that contains the response information for the request.</p>
-- @param HostedZoneId [ResourceId] <p>The ID of the hosted zone that you can associate the listed VPCs with.</p>
-- @param VPCs [VPCs] <p>The list of VPCs that are authorized to be associated with the specified hosted zone.</p>
-- @param NextToken [PaginationToken] <p>When the response includes a <code>NextToken</code> element, there are more VPCs that can be associated with the specified hosted zone. To get the next page of VPCs, submit another <code>ListVPCAssociationAuthorizations</code> request, and include the value of the <code>NextToken</code> element from the response in the <code>nexttoken</code> request parameter.</p>
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
-- <p>A complex type that contains information about the traffic policy that you want to create.</p>
-- @param Comment [TrafficPolicyComment] <p>(Optional) Any comments that you want to include about the traffic policy.</p>
-- @param Document [TrafficPolicyDocument] <p>The definition of this traffic policy in JSON format. For more information, see <a href="http://docs.aws.amazon.com/Route53/latest/APIReference/api-policies-traffic-policy-document-format.html">Traffic Policy Document Format</a>.</p>
-- @param Name [TrafficPolicyName] <p>The name of the traffic policy.</p>
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
-- <p>A complex type that contains the response information for the request.</p>
-- @param HostedZones [HostedZones] <p>A complex type that contains general information about the hosted zone.</p>
-- @param NextHostedZoneId [ResourceId] <p>If <code>IsTruncated</code> is <code>true</code>, the value of <code>NextHostedZoneId</code> identifies the first hosted zone in the next group of <code>maxitems</code> hosted zones. Call <code>ListHostedZonesByName</code> again and specify the value of <code>NextDNSName</code> and <code>NextHostedZoneId</code> in the <code>dnsname</code> and <code>hostedzoneid</code> parameters, respectively.</p> <p>This element is present only if <code>IsTruncated</code> is <code>true</code>.</p>
-- @param DNSName [DNSName] <p>For the second and subsequent calls to <code>ListHostedZonesByName</code>, <code>DNSName</code> is the value that you specified for the <code>dnsname</code> parameter in the request that produced the current response.</p>
-- @param MaxItems [PageMaxItems] <p>The value that you specified for the <code>maxitems</code> parameter in the call to <code>ListHostedZonesByName</code> that produced the current response.</p>
-- @param HostedZoneId [ResourceId] <p>The ID that Amazon Route 53 assigned to the hosted zone when you created it.</p>
-- @param NextDNSName [DNSName] <p>If <code>IsTruncated</code> is true, the value of <code>NextDNSName</code> is the name of the first hosted zone in the next group of <code>maxitems</code> hosted zones. Call <code>ListHostedZonesByName</code> again and specify the value of <code>NextDNSName</code> and <code>NextHostedZoneId</code> in the <code>dnsname</code> and <code>hostedzoneid</code> parameters, respectively.</p> <p>This element is present only if <code>IsTruncated</code> is <code>true</code>.</p>
-- @param IsTruncated [PageTruncated] <p>A flag that indicates whether there are more hosted zones to be listed. If the response was truncated, you can get the next group of <code>maxitems</code> hosted zones by calling <code>ListHostedZonesByName</code> again and specifying the values of <code>NextDNSName</code> and <code>NextHostedZoneId</code> elements in the <code>dnsname</code> and <code>hostedzoneid</code> parameters.</p>
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
-- <p>A complex type that contains the response information for the <code>CreateTrafficPolicy</code> request.</p>
-- @param TrafficPolicy [TrafficPolicy] <p>A complex type that contains settings for the new traffic policy.</p>
-- @param Location [ResourceURI] <p>A unique URL that represents a new traffic policy.</p>
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
-- <p>A complex type that contains information about the resource record sets that Amazon Route 53 created based on a specified traffic policy.</p>
-- @param TrafficPolicyInstance [TrafficPolicyInstance] <p>A complex type that contains settings for the traffic policy instance.</p>
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
-- <p>A request to delete a hosted zone.</p>
-- @param Id [ResourceId] <p>The ID of the hosted zone you want to delete.</p>
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
-- <p>A complex type that identifies the CloudWatch alarm that you want Amazon Route 53 health checkers to use to determine whether this health check is healthy.</p>
-- @param Region [CloudWatchRegion] <p>A complex type that identifies the CloudWatch alarm that you want Amazon Route 53 health checkers to use to determine whether this health check is healthy.</p> <p>For the current list of CloudWatch regions, see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html#cw_region">Amazon CloudWatch</a> in the <i>AWS Regions and Endpoints</i> chapter of the <i>Amazon Web Services General Reference</i>.</p>
-- @param Name [AlarmName] <p>The name of the CloudWatch alarm that you want Amazon Route 53 health checkers to use to determine whether this health check is healthy.</p>
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
-- <p>A complex type that contains the health check request information.</p>
-- @param HealthCheckConfig [HealthCheckConfig] <p>A complex type that contains the response to a <code>CreateHealthCheck</code> request. </p>
-- @param CallerReference [HealthCheckNonce] <p>A unique string that identifies the request and that allows you to retry a failed <code>CreateHealthCheck</code> request without the risk of creating two identical health checks:</p> <ul> <li> <p>If you send a <code>CreateHealthCheck</code> request with the same <code>CallerReference</code> and settings as a previous request, and if the health check doesn't exist, Amazon Route 53 creates the health check. If the health check does exist, Amazon Route 53 returns the settings for the existing health check.</p> </li> <li> <p>If you send a <code>CreateHealthCheck</code> request with the same <code>CallerReference</code> as a deleted health check, regardless of the settings, Amazon Route 53 returns a <code>HealthCheckAlreadyExists</code> error.</p> </li> <li> <p>If you send a <code>CreateHealthCheck</code> request with the same <code>CallerReference</code> as an existing health check but with different settings, Amazon Route 53 returns a <code>HealthCheckAlreadyExists</code> error.</p> </li> <li> <p>If you send a <code>CreateHealthCheck</code> request with a unique <code>CallerReference</code> but settings identical to an existing health check, Amazon Route 53 creates the health check.</p> </li> </ul>
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
-- <p>Information specific to the resource record.</p> <note> <p>If you're creating an alias resource record set, omit <code>ResourceRecord</code>.</p> </note>
-- @param Value [RData] <p>The current or new DNS record value, not to exceed 4,000 characters. In the case of a <code>DELETE</code> action, if the current value does not match the actual value, an error is returned. For descriptions about how to format <code>Value</code> for different record types, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/ResourceRecordTypes.html">Supported DNS Resource Record Types</a> in the <i>Amazon Route 53 Developer Guide</i>.</p> <p>You can specify more than one value for all record types except <code>CNAME</code> and <code>SOA</code>. </p> <note> <p>If you're creating an alias resource record set, omit <code>Value</code>.</p> </note>
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
-- <p>A complex type that contains information about the health checks or hosted zones for which you want to list tags.</p>
-- @param ResourceType [TagResourceType] <p>The type of the resources.</p> <ul> <li> <p>The resource type for health checks is <code>healthcheck</code>.</p> </li> <li> <p>The resource type for hosted zones is <code>hostedzone</code>.</p> </li> </ul>
-- @param ResourceIds [TagResourceIdList] <p>A complex type that contains the ResourceId element for each resource for which you want to get a list of tags.</p>
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
-- <p>A complex type that contains the information about the request to list your traffic policy instances.</p>
-- @param TrafficPolicyInstanceNameMarker [DNSName] <p>If the value of <code>IsTruncated</code> in the previous response was <code>true</code>, you have more traffic policy instances. To get more traffic policy instances, submit another <code>ListTrafficPolicyInstancesByPolicy</code> request.</p> <p>For the value of <code>trafficpolicyinstancename</code>, specify the value of <code>TrafficPolicyInstanceNameMarker</code> from the previous response, which is the name of the first traffic policy instance that Amazon Route 53 will return if you submit another request.</p> <p>If the value of <code>IsTruncated</code> in the previous response was <code>false</code>, there are no more traffic policy instances to get.</p>
-- @param TrafficPolicyVersion [TrafficPolicyVersion] <p>The version of the traffic policy for which you want to list traffic policy instances. The version must be associated with the traffic policy that is specified by <code>TrafficPolicyId</code>.</p>
-- @param HostedZoneIdMarker [ResourceId] <p>If the value of <code>IsTruncated</code> in the previous response was <code>true</code>, you have more traffic policy instances. To get more traffic policy instances, submit another <code>ListTrafficPolicyInstancesByPolicy</code> request. </p> <p>For the value of <code>hostedzoneid</code>, specify the value of <code>HostedZoneIdMarker</code> from the previous response, which is the hosted zone ID of the first traffic policy instance that Amazon Route 53 will return if you submit another request.</p> <p>If the value of <code>IsTruncated</code> in the previous response was <code>false</code>, there are no more traffic policy instances to get.</p>
-- @param TrafficPolicyId [TrafficPolicyId] <p>The ID of the traffic policy for which you want to list traffic policy instances.</p>
-- @param MaxItems [PageMaxItems] <p>The maximum number of traffic policy instances to be included in the response body for this request. If you have more than <code>MaxItems</code> traffic policy instances, the value of the <code>IsTruncated</code> element in the response is <code>true</code>, and the values of <code>HostedZoneIdMarker</code>, <code>TrafficPolicyInstanceNameMarker</code>, and <code>TrafficPolicyInstanceTypeMarker</code> represent the first traffic policy instance that Amazon Route 53 will return if you submit another request.</p>
-- @param TrafficPolicyInstanceTypeMarker [RRType] <p>If the value of <code>IsTruncated</code> in the previous response was <code>true</code>, you have more traffic policy instances. To get more traffic policy instances, submit another <code>ListTrafficPolicyInstancesByPolicy</code> request.</p> <p>For the value of <code>trafficpolicyinstancetype</code>, specify the value of <code>TrafficPolicyInstanceTypeMarker</code> from the previous response, which is the name of the first traffic policy instance that Amazon Route 53 will return if you submit another request.</p> <p>If the value of <code>IsTruncated</code> in the previous response was <code>false</code>, there are no more traffic policy instances to get.</p>
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
-- <p>A complex type that contains the <code>ChangeInfo</code> element.</p>
-- @param ChangeInfo [ChangeInfo] <p>A complex type that contains information about the specified change batch.</p>
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
-- <p>You're trying to associate a VPC with a public hosted zone. Amazon Route 53 doesn't support associating a VPC with a public hosted zone.</p>
-- @param message [ErrorMessage] <p>Descriptive message for the error response.</p>
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
-- <p>Parameter name is invalid.</p>
-- @param message [ErrorMessage] <p>Descriptive message for the error response.</p>
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
-- <p>A complex type that contains the response information for the request.</p>
-- @param TrafficPolicyInstanceNameMarker [DNSName] <p>If <code>IsTruncated</code> is <code>true</code>, <code>TrafficPolicyInstanceNameMarker</code> is the name of the first traffic policy instance in the next group of <code>MaxItems</code> traffic policy instances.</p>
-- @param HostedZoneIdMarker [ResourceId] <p>If <code>IsTruncated</code> is <code>true</code>, <code>HostedZoneIdMarker</code> is the ID of the hosted zone of the first traffic policy instance in the next group of traffic policy instances.</p>
-- @param TrafficPolicyInstances [TrafficPolicyInstances] <p>A list that contains one <code>TrafficPolicyInstance</code> element for each traffic policy instance that matches the elements in the request.</p>
-- @param MaxItems [PageMaxItems] <p>The value that you specified for the <code>MaxItems</code> parameter in the call to <code>ListTrafficPolicyInstancesByPolicy</code> that produced the current response.</p>
-- @param TrafficPolicyInstanceTypeMarker [RRType] <p>If <code>IsTruncated</code> is <code>true</code>, <code>TrafficPolicyInstanceTypeMarker</code> is the DNS type of the resource record sets that are associated with the first traffic policy instance in the next group of <code>MaxItems</code> traffic policy instances.</p>
-- @param IsTruncated [PageTruncated] <p>A flag that indicates whether there are more traffic policy instances to be listed. If the response was truncated, you can get the next group of traffic policy instances by calling <code>ListTrafficPolicyInstancesByPolicy</code> again and specifying the values of the <code>HostedZoneIdMarker</code>, <code>TrafficPolicyInstanceNameMarker</code>, and <code>TrafficPolicyInstanceTypeMarker</code> elements in the corresponding request parameters.</p>
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
-- <p>A complex type that contains the response information for the specified geolocation code.</p>
-- @param GeoLocationDetails [GeoLocationDetails] <p>A complex type that contains the codes and full continent, country, and subdivision names for the specified geolocation code.</p>
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
-- <p>A complex type that contains information about the resource record sets that you want to update based on a specified traffic policy instance.</p>
-- @param TrafficPolicyId [TrafficPolicyId] <p>The ID of the traffic policy that you want Amazon Route 53 to use to update resource record sets for the specified traffic policy instance.</p>
-- @param TrafficPolicyVersion [TrafficPolicyVersion] <p>The version of the traffic policy that you want Amazon Route 53 to use to update resource record sets for the specified traffic policy instance.</p>
-- @param Id [TrafficPolicyInstanceId] <p>The ID of the traffic policy instance that you want to update.</p>
-- @param TTL [TTL] <p>The TTL that you want Amazon Route 53 to assign to all of the updated resource record sets.</p>
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
-- <p>A complex type that contains the information about the request to list the traffic policies that are associated with the current AWS account.</p>
-- @param TrafficPolicyIdMarker [TrafficPolicyId] <p>(Conditional) For your first request to <code>ListTrafficPolicies</code>, don't include the <code>TrafficPolicyIdMarker</code> parameter.</p> <p>If you have more traffic policies than the value of <code>MaxItems</code>, <code>ListTrafficPolicies</code> returns only the first <code>MaxItems</code> traffic policies. To get the next group of policies, submit another request to <code>ListTrafficPolicies</code>. For the value of <code>TrafficPolicyIdMarker</code>, specify the value of <code>TrafficPolicyIdMarker</code> that was returned in the previous response.</p>
-- @param MaxItems [PageMaxItems] <p>(Optional) The maximum number of traffic policies that you want Amazon Route 53 to return in response to this request. If you have more than <code>MaxItems</code> traffic policies, the value of <code>IsTruncated</code> in the response is <code>true</code>, and the value of <code>TrafficPolicyIdMarker</code> is the ID of the first traffic policy that Amazon Route 53 will return if you submit another request.</p>
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
-- <p>You can create a hosted zone that has the same name as an existing hosted zone (example.com is common), but there is a limit to the number of hosted zones that have the same name. If you get this error, Amazon Route 53 has reached that limit. If you own the domain name and Amazon Route 53 generates this error, contact Customer Support.</p>
-- @param message [ErrorMessage] <p>Descriptive message for the error response.</p>
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
-- <p>This action deletes a health check.</p>
-- @param HealthCheckId [HealthCheckId] <p>The ID of the health check that you want to delete.</p>
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
-- <p>A complex type that contains the status that one Amazon Route 53 health checker reports and the time of the health check.</p>
-- @param Status [Status] <p>A description of the status of the health check endpoint as reported by one of the Amazon Route 53 health checkers.</p>
-- @param CheckedTime [TimeStamp] <p>The date and time that the health checker performed the health check in <a href="https://en.wikipedia.org/wiki/ISO_8601">ISO 8601 format</a> and Coordinated Universal Time (UTC). For example, the value <code>2017-03-27T17:48:16.751Z</code> represents March 27, 2017 at 17:48:16.751 UTC.</p>
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
-- <p>A request to get information about a specified hosted zone. </p>
-- @param Id [ResourceId] <p>The ID of the hosted zone that you want to get information about.</p>
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
-- <p>An empty element.</p>
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
-- <p>A complex type that contains information about the reusable delegation sets that are associated with the current AWS account.</p>
-- @param Marker [PageMarker] <p>For the second and subsequent calls to <code>ListReusableDelegationSets</code>, <code>Marker</code> is the value that you specified for the <code>marker</code> parameter in the request that produced the current response.</p>
-- @param DelegationSets [DelegationSets] <p>A complex type that contains one <code>DelegationSet</code> element for each reusable delegation set that was created by the current AWS account.</p>
-- @param IsTruncated [PageTruncated] <p>A flag that indicates whether there are more reusable delegation sets to be listed.</p>
-- @param MaxItems [PageMaxItems] <p>The value that you specified for the <code>maxitems</code> parameter in the call to <code>ListReusableDelegationSets</code> that produced the current response.</p>
-- @param NextMarker [PageMarker] <p>If <code>IsTruncated</code> is <code>true</code>, the value of <code>NextMarker</code> identifies the next reusable delegation set that Amazon Route 53 will return if you submit another <code>ListReusableDelegationSets</code> request and specify the value of <code>NextMarker</code> in the <code>marker</code> parameter.</p>
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
-- <p>The information for each resource record set that you want to change.</p>
-- @param Action [ChangeAction] <p>The action to perform:</p> <ul> <li> <p> <code>CREATE</code>: Creates a resource record set that has the specified values.</p> </li> <li> <p> <code>DELETE</code>: Deletes a existing resource record set.</p> <important> <p>To delete the resource record set that is associated with a traffic policy instance, use <code> <a>DeleteTrafficPolicyInstance</a> </code>. Amazon Route 53 will delete the resource record set automatically. If you delete the resource record set by using <code>ChangeResourceRecordSets</code>, Amazon Route 53 doesn't automatically delete the traffic policy instance, and you'll continue to be charged for it even though it's no longer in use. </p> </important> </li> <li> <p> <code>UPSERT</code>: If a resource record set doesn't already exist, Amazon Route 53 creates it. If a resource record set does exist, Amazon Route 53 updates it with the values in the request.</p> </li> </ul> <p>The values that you need to include in the request depend on the type of resource record set that you're creating, deleting, or updating:</p> <p> <b>Basic resource record sets (excluding alias, failover, geolocation, latency, and weighted resource record sets)</b> </p> <ul> <li> <p> <code>Name</code> </p> </li> <li> <p> <code>Type</code> </p> </li> <li> <p> <code>TTL</code> </p> </li> </ul> <p> <b>Failover, geolocation, latency, or weighted resource record sets (excluding alias resource record sets)</b> </p> <ul> <li> <p> <code>Name</code> </p> </li> <li> <p> <code>Type</code> </p> </li> <li> <p> <code>TTL</code> </p> </li> <li> <p> <code>SetIdentifier</code> </p> </li> </ul> <p> <b>Alias resource record sets (including failover alias, geolocation alias, latency alias, and weighted alias resource record sets)</b> </p> <ul> <li> <p> <code>Name</code> </p> </li> <li> <p> <code>Type</code> </p> </li> <li> <p> <code>AliasTarget</code> (includes <code>DNSName</code>, <code>EvaluateTargetHealth</code>, and <code>HostedZoneId</code>)</p> </li> <li> <p> <code>SetIdentifier</code> (for failover, geolocation, latency, and weighted resource record sets)</p> </li> </ul>
-- @param ResourceRecordSet [ResourceRecordSet] <p>Information about the resource record set to create, delete, or update.</p>
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
-- @param HostedZoneId [ResourceId] <p>If you want to mark the delegation set for an existing hosted zone as reusable, the ID for that hosted zone.</p>
-- @param CallerReference [Nonce] <p>A unique string that identifies the request, and that allows you to retry failed <code>CreateReusableDelegationSet</code> requests without the risk of executing the operation twice. You must use a unique <code>CallerReference</code> string every time you submit a <code>CreateReusableDelegationSet</code> request. <code>CallerReference</code> can be any unique string, for example a date/time stamp.</p>
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
-- <p>A complex type that contains information about the request to create a hosted zone.</p>
-- @param DelegationSetId [ResourceId] <p>If you want to associate a reusable delegation set with this hosted zone, the ID that Amazon Route 53 assigned to the reusable delegation set when you created it. For more information about reusable delegation sets, see <a>CreateReusableDelegationSet</a>.</p>
-- @param HostedZoneConfig [HostedZoneConfig] <p>(Optional) A complex type that contains the following optional values:</p> <ul> <li> <p>For public and private hosted zones, an optional comment</p> </li> <li> <p>For private hosted zones, an optional <code>PrivateZone</code> element</p> </li> </ul> <p>If you don't specify a comment or the <code>PrivateZone</code> element, omit <code>HostedZoneConfig</code> and the other elements.</p>
-- @param CallerReference [Nonce] <p>A unique string that identifies the request and that allows failed <code>CreateHostedZone</code> requests to be retried without the risk of executing the operation twice. You must use a unique <code>CallerReference</code> string every time you submit a <code>CreateHostedZone</code> request. <code>CallerReference</code> can be any unique string, for example, a date/time stamp.</p>
-- @param Name [DNSName] <p>The name of the domain. For resource record types that include a domain name, specify a fully qualified domain name, for example, <i>www.example.com</i>. The trailing dot is optional; Amazon Route 53 assumes that the domain name is fully qualified. This means that Amazon Route 53 treats <i>www.example.com</i> (without a trailing dot) and <i>www.example.com.</i> (with a trailing dot) as identical.</p> <p>If you're creating a public hosted zone, this is the name you have registered with your DNS registrar. If your domain name is registered with a registrar other than Amazon Route 53, change the name servers for your domain to the set of <code>NameServers</code> that <code>CreateHostedZone</code> returns in <code>DelegationSet</code>.</p>
-- @param VPC [VPC] <p>(Private hosted zones only) A complex type that contains information about the Amazon VPC that you're associating with this hosted zone.</p> <p>You can specify only one Amazon VPC when you create a private hosted zone. To associate additional Amazon VPCs with the hosted zone, use <a>AssociateVPCWithHostedZone</a> after you create a hosted zone.</p>
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
-- <p>The specified delegation contains associated hosted zones which must be deleted before the reusable delegation set can be deleted.</p>
-- @param message [ErrorMessage] <p>Descriptive message for the error response.</p>
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
-- <p>A complex type that contains the response to a <code>GetHealthCheckCount</code> request.</p>
-- @param HealthCheckCount [HealthCheckCount] <p>The number of health checks associated with the current AWS account.</p>
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
-- <p>This exception contains a list of messages that might contain one or more error messages. Each error message indicates one error in the change batch.</p>
-- @param messages [ErrorMessages] <p>Descriptive message for the error response.</p>
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
-- <p>A request to delete a specified traffic policy version.</p>
-- @param Version [TrafficPolicyVersion] <p>The version number of the traffic policy that you want to delete.</p>
-- @param Id [TrafficPolicyId] <p>The ID of the traffic policy that you want to delete.</p>
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
-- <p>A request to update the comment for a hosted zone.</p>
-- @param Comment [ResourceDescription] <p>The new comment for the hosted zone. If you don't specify a value for <code>Comment</code>, Amazon Route 53 deletes the existing value of the <code>Comment</code> element, if any.</p>
-- @param Id [ResourceId] <p>The ID for the hosted zone that you want to update the comment for.</p>
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
-- <p>Another user submitted a request to update the object at the same time that you did. Retry the request. </p>
-- @param message [ErrorMessage] <p>Descriptive message for the error response.</p>
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
-- <p>A complex type that contains the response to a <code>GetHealthCheck</code> request.</p>
-- @param HealthCheckObservations [HealthCheckObservations] <p>A list that contains one <code>HealthCheckObservation</code> element for each Amazon Route 53 health checker that is reporting a status about the health check endpoint.</p>
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
-- <p>A request for information about whether a specified geographic location is supported for Amazon Route 53 geolocation resource record sets.</p>
-- @param SubdivisionCode [GeoLocationSubdivisionCode] <p>Amazon Route 53 uses the one- to three-letter subdivision codes that are specified in <a href="https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2">ISO standard 3166-1 alpha-2</a>. Amazon Route 53 doesn't support subdivision codes for all countries. If you specify <code>SubdivisionCode</code>, you must also specify <code>CountryCode</code>. </p>
-- @param CountryCode [GeoLocationCountryCode] <p>Amazon Route 53 uses the two-letter country codes that are specified in <a href="https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2">ISO standard 3166-1 alpha-2</a>.</p>
-- @param ContinentCode [GeoLocationContinentCode] <p>Amazon Route 53 supports the following continent codes:</p> <ul> <li> <p> <b>AF</b>: Africa</p> </li> <li> <p> <b>AN</b>: Antarctica</p> </li> <li> <p> <b>AS</b>: Asia</p> </li> <li> <p> <b>EU</b>: Europe</p> </li> <li> <p> <b>OC</b>: Oceania</p> </li> <li> <p> <b>NA</b>: North America</p> </li> <li> <p> <b>SA</b>: South America</p> </li> </ul>
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
-- <p>A complex type that contains information about the resource record sets that Amazon Route 53 created based on a specified traffic policy.</p>
-- @param TrafficPolicyInstanceCount [TrafficPolicyInstanceCount] <p>The number of traffic policy instances that are associated with the current AWS account.</p>
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
-- <p>A complex type that contains information about the resource record sets that you want to create based on a specified traffic policy.</p>
-- @param HostedZoneId [ResourceId] <p>The ID of the hosted zone in which you want Amazon Route 53 to create resource record sets by using the configuration in a traffic policy.</p>
-- @param TrafficPolicyVersion [TrafficPolicyVersion] <p>The version of the traffic policy that you want to use to create resource record sets in the specified hosted zone.</p>
-- @param TrafficPolicyId [TrafficPolicyId] <p>The ID of the traffic policy that you want to use to create resource record sets in the specified hosted zone.</p>
-- @param Name [DNSName] <p>The domain name (such as example.com) or subdomain name (such as www.example.com) for which Amazon Route 53 responds to DNS queries by using the resource record sets that Amazon Route 53 creates for this traffic policy instance.</p>
-- @param TTL [TTL] <p>(Optional) The TTL that you want Amazon Route 53 to assign to all of the resource record sets that it creates in the specified hosted zone.</p>
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
-- <p>Request to get the number of traffic policy instances that are associated with the current AWS account.</p>
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
-- <p>A complex type that contains the response to a <code>ListHealthChecks</code> request.</p>
-- @param Marker [PageMarker] <p>For the second and subsequent calls to <code>ListHealthChecks</code>, <code>Marker</code> is the value that you specified for the <code>marker</code> parameter in the previous request.</p>
-- @param HealthChecks [HealthChecks] <p>A complex type that contains one <code>HealthCheck</code> element for each health check that is associated with the current AWS account.</p>
-- @param NextMarker [PageMarker] <p>If <code>IsTruncated</code> is <code>true</code>, the value of <code>NextMarker</code> identifies the first health check that Amazon Route 53 returns if you submit another <code>ListHealthChecks</code> request and specify the value of <code>NextMarker</code> in the <code>marker</code> parameter.</p>
-- @param IsTruncated [PageTruncated] <p>A flag that indicates whether there are more health checks to be listed. If the response was truncated, you can get the next group of health checks by submitting another <code>ListHealthChecks</code> request and specifying the value of <code>NextMarker</code> in the <code>marker</code> parameter.</p>
-- @param MaxItems [PageMaxItems] <p>The value that you specified for the <code>maxitems</code> parameter in the call to <code>ListHealthChecks</code> that produced the current response.</p>
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
-- <p>Traffic policy instance with given Id already exists.</p>
-- @param message [ErrorMessage] <p>Descriptive message for the error response.</p>
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
-- <p>The specified HostedZone can't be found.</p>
-- @param message [ErrorMessage] <p>Descriptive message for the error response.</p>
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
-- <p>A request to get a list of the reusable delegation sets that are associated with the current AWS account.</p>
-- @param Marker [PageMarker] <p>If the value of <code>IsTruncated</code> in the previous response was <code>true</code>, you have more reusable delegation sets. To get another group, submit another <code>ListReusableDelegationSets</code> request. </p> <p>For the value of <code>marker</code>, specify the value of <code>NextMarker</code> from the previous response, which is the ID of the first reusable delegation set that Amazon Route 53 will return if you submit another request.</p> <p>If the value of <code>IsTruncated</code> in the previous response was <code>false</code>, there are no more reusable delegation sets to get.</p>
-- @param MaxItems [PageMaxItems] <p>The number of reusable delegation sets that you want Amazon Route 53 to return in the response to this request. If you specify a value greater than 100, Amazon Route 53 returns only the first 100 reusable delegation sets.</p>
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
-- <p>You've created the maximum number of traffic policy instances that can be created for the current AWS account. You can request an increase to the limit on the <a href="http://aws.amazon.com/route53-request/">Contact Us</a> page.</p>
-- @param message [ErrorMessage] <p>Descriptive message for the error response.</p>
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
-- <p>The specified VPC and hosted zone are not currently associated.</p>
-- @param message [ErrorMessage] <p>Descriptive message for the error response.</p>
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
-- <p>A complex type that contains information about a geo location.</p>
-- @param SubdivisionCode [GeoLocationSubdivisionCode] <p>The code for the subdivision, for example, a state in the United States or a province in Canada.</p>
-- @param CountryCode [GeoLocationCountryCode] <p>The two-letter code for the country.</p>
-- @param ContinentCode [GeoLocationContinentCode] <p>The two-letter code for the continent.</p> <p>Valid values: <code>AF</code> | <code>AN</code> | <code>AS</code> | <code>EU</code> | <code>OC</code> | <code>NA</code> | <code>SA</code> </p> <p>Constraint: Specifying <code>ContinentCode</code> with either <code>CountryCode</code> or <code>SubdivisionCode</code> returns an <code>InvalidInput</code> error.</p>
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
-- <p>Empty response for the request.</p>
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
-- <p>The information for a change request.</p>
-- @param Comment [ResourceDescription] <p> <i>Optional:</i> Any comments you want to include about a change batch request.</p>
-- @param Changes [Changes] <p>Information about the changes to make to the record sets.</p>
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
-- <p>A request to get a list of geographic locations that Amazon Route 53 supports for geolocation resource record sets. </p>
-- @param StartCountryCode [GeoLocationCountryCode] <p>The code for the country with which you want to start listing locations that Amazon Route 53 supports for geolocation. If Amazon Route 53 has already returned a page or more of results, if <code>IsTruncated</code> is <code>true</code>, and if <code>NextCountryCode</code> from the previous response has a value, enter that value in <code>StartCountryCode</code> to return the next page of results.</p> <p>Amazon Route 53 uses the two-letter country codes that are specified in <a href="https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2">ISO standard 3166-1 alpha-2</a>.</p>
-- @param StartSubdivisionCode [GeoLocationSubdivisionCode] <p>The code for the subdivision (for example, state or province) with which you want to start listing locations that Amazon Route 53 supports for geolocation. If Amazon Route 53 has already returned a page or more of results, if <code>IsTruncated</code> is <code>true</code>, and if <code>NextSubdivisionCode</code> from the previous response has a value, enter that value in <code>StartSubdivisionCode</code> to return the next page of results.</p> <p>To list subdivisions of a country, you must include both <code>StartCountryCode</code> and <code>StartSubdivisionCode</code>.</p>
-- @param StartContinentCode [GeoLocationContinentCode] <p>The code for the continent with which you want to start listing locations that Amazon Route 53 supports for geolocation. If Amazon Route 53 has already returned a page or more of results, if <code>IsTruncated</code> is true, and if <code>NextContinentCode</code> from the previous response has a value, enter that value in <code>StartContinentCode</code> to return the next page of results.</p> <p>Include <code>StartContinentCode</code> only if you want to list continents. Don't include <code>StartContinentCode</code> when you're listing countries or countries with their subdivisions.</p>
-- @param MaxItems [PageMaxItems] <p>(Optional) The maximum number of geolocations to be included in the response body for this request. If more than <code>MaxItems</code> geolocations remain to be listed, then the value of the <code>IsTruncated</code> element in the response is <code>true</code>.</p>
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
-- <p>A request for the number of health checks that are associated with the current AWS account.</p>
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
-- <p>A complex type that contains settings for a traffic policy.</p>
-- @param Comment [TrafficPolicyComment] <p>The comment that you specify in the <code>CreateTrafficPolicy</code> request, if any.</p>
-- @param Name [TrafficPolicyName] <p>The name that you specified when you created the traffic policy.</p>
-- @param Version [TrafficPolicyVersion] <p>The version number that Amazon Route 53 assigns to a traffic policy. For a new traffic policy, the value of <code>Version</code> is always 1.</p>
-- @param Document [TrafficPolicyDocument] <p>The definition of a traffic policy in JSON format. You specify the JSON document to use for a new traffic policy in the <code>CreateTrafficPolicy</code> request. For more information about the JSON format, see <a href="http://docs.aws.amazon.com/Route53/latest/APIReference/api-policies-traffic-policy-document-format.html">Traffic Policy Document Format</a>.</p>
-- @param Type [RRType] <p>The DNS type of the resource record sets that Amazon Route 53 creates when you use a traffic policy to create a traffic policy instance.</p>
-- @param Id [TrafficPolicyId] <p>The ID that Amazon Route 53 assigned to a traffic policy when you created it.</p>
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
-- <p>A complex type containing information about a request for a list of the tags that are associated with an individual resource.</p>
-- @param ResourceType [TagResourceType] <p>The type of the resource.</p> <ul> <li> <p>The resource type for health checks is <code>healthcheck</code>.</p> </li> <li> <p>The resource type for hosted zones is <code>hostedzone</code>.</p> </li> </ul>
-- @param ResourceId [TagResourceId] <p>The ID of the resource for which you want to retrieve tags.</p>
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
-- <p>(Private hosted zones only) A complex type that contains information about an Amazon VPC.</p>
-- @param VPCId [VPCId] <p>(Private hosted zones only) A complex type that contains information about an Amazon VPC.</p>
-- @param VPCRegion [VPCRegion] <p>(Private hosted zones only) The region in which you created an Amazon VPC.</p>
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
-- <p>A complex type that contains information about the latest version of one traffic policy that is associated with the current AWS account.</p>
-- @param TrafficPolicyCount [TrafficPolicyVersion] <p>The number of traffic policies that are associated with the current AWS account.</p>
-- @param LatestVersion [TrafficPolicyVersion] <p>The version number of the latest version of the traffic policy.</p>
-- @param Type [RRType] <p>The DNS type of the resource record sets that Amazon Route 53 creates when you use a traffic policy to create a traffic policy instance.</p>
-- @param Id [TrafficPolicyId] <p>The ID that Amazon Route 53 assigned to the traffic policy when you created it.</p>
-- @param Name [TrafficPolicyName] <p>The name that you specified for the traffic policy when you created it.</p>
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
-- @param Marker [PageMarker] <p>For the second and subsequent calls to <code>ListHostedZones</code>, <code>Marker</code> is the value that you specified for the <code>marker</code> parameter in the request that produced the current response.</p>
-- @param HostedZones [HostedZones] <p>A complex type that contains general information about the hosted zone.</p>
-- @param NextMarker [PageMarker] <p>If <code>IsTruncated</code> is <code>true</code>, the value of <code>NextMarker</code> identifies the first hosted zone in the next group of hosted zones. Submit another <code>ListHostedZones</code> request, and specify the value of <code>NextMarker</code> from the response in the <code>marker</code> parameter.</p> <p>This element is present only if <code>IsTruncated</code> is <code>true</code>.</p>
-- @param IsTruncated [PageTruncated] <p>A flag indicating whether there are more hosted zones to be listed. If the response was truncated, you can get more hosted zones by submitting another <code>ListHostedZones</code> request and specifying the value of <code>NextMarker</code> in the <code>marker</code> parameter.</p>
-- @param MaxItems [PageMaxItems] <p>The value that you specified for the <code>maxitems</code> parameter in the call to <code>ListHostedZones</code> that produced the current response.</p>
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
-- <p>A request to get information about a specified health check. </p>
-- @param HealthCheckId [HealthCheckId] <p>The identifier that Amazon Route 53 assigned to the health check when you created it. When you add or update a resource record set, you use this value to specify which health check to use. The value can be up to 64 characters long.</p>
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
-- <p>A reusable delegation set with the specified ID does not exist.</p>
-- @param message [ErrorMessage] <p>Descriptive message for the error response.</p>
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
-- <p>A complex type that contains information about the resource record sets that Amazon Route 53 created based on a specified traffic policy.</p>
-- @param TrafficPolicyInstance [TrafficPolicyInstance] <p>A complex type that contains settings for the updated traffic policy instance.</p>
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
-- <p>A complex type containing the response information for the hosted zone.</p>
-- @param Location [ResourceURI] <p>The unique URL representing the new hosted zone.</p>
-- @param HostedZone [HostedZone] <p>A complex type that contains general information about the hosted zone.</p>
-- @param VPC [VPC] <p>A complex type that contains information about an Amazon VPC that you associated with this hosted zone.</p>
-- @param ChangeInfo [ChangeInfo] <p>A complex type that contains information about the <code>CreateHostedZone</code> request.</p>
-- @param DelegationSet [DelegationSet] <p>A complex type that describes the name servers for this hosted zone.</p>
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
-- <p>A request to get information about a specified reusable delegation set.</p>
-- @param Id [ResourceId] <p>The ID of the reusable delegation set that you want to get a list of name servers for.</p>
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
-- <p>A complex type that contains the response to a <code>DeleteHostedZone</code> request.</p>
-- @param ChangeInfo [ChangeInfo] <p>A complex type that contains the ID, the status, and the date and time of a request to delete a hosted zone.</p>
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
-- <p>You tried to update a traffic policy instance by using a traffic policy version that has a different DNS type than the current type for the instance. You specified the type in the JSON document in the <code>CreateTrafficPolicy</code> or <code>CreateTrafficPolicyVersion</code>request. </p>
-- @param message [ErrorMessage] <p>Descriptive message for the error response.</p>
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
-- <p>This error code is not in use.</p>
-- @param message [ErrorMessage] <p>Descriptive message for the error response.</p>
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
-- <p>A request to delete a reusable delegation set.</p>
-- @param Id [ResourceId] <p>The ID of the reusable delegation set that you want to delete.</p>
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
-- <p>The hosted zone contains resource records that are not SOA or NS records.</p>
-- @param message [ErrorMessage] <p>Descriptive message for the error response.</p>
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
-- <p>A complex type that contain the response to a <code>GetHostedZone</code> request.</p>
-- @param VPCs [VPCs] <p>A complex type that contains information about the VPCs that are associated with the specified hosted zone.</p>
-- @param HostedZone [HostedZone] <p>A complex type that contains general information about the specified hosted zone.</p>
-- @param DelegationSet [DelegationSet] <p>A complex type that lists the Amazon Route 53 name servers for the specified hosted zone.</p>
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
-- <p>A delegation set with the same owner and caller reference combination has already been created.</p>
-- @param message [ErrorMessage] <p>Descriptive message for the error response.</p>
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
-- <p>A complex type that contains the response information for the request.</p>
-- @param TrafficPolicy [TrafficPolicy] <p>A complex type that contains settings for the specified traffic policy.</p>
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
-- <p>A complex type containing the response information for the new health check.</p>
-- @param HealthCheck [HealthCheck] <p>A complex type that contains identifying information about the health check.</p>
-- @param Location [ResourceURI] <p>The unique URL representing the new health check.</p>
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
-- <p>A complex type that contains the information about the request to list your traffic policies.</p>
-- @param Id [TrafficPolicyId] <p>Specify the value of <code>Id</code> of the traffic policy for which you want to list all versions.</p>
-- @param MaxItems [PageMaxItems] <p>The maximum number of traffic policy versions that you want Amazon Route 53 to include in the response body for this request. If the specified traffic policy has more than <code>MaxItems</code> versions, the value of <code>IsTruncated</code> in the response is <code>true</code>, and the value of the <code>TrafficPolicyVersionMarker</code> element is the ID of the first version that Amazon Route 53 will return if you submit another request.</p>
-- @param TrafficPolicyVersionMarker [TrafficPolicyVersionMarker] <p>For your first request to <code>ListTrafficPolicyVersions</code>, don't include the <code>TrafficPolicyVersionMarker</code> parameter.</p> <p>If you have more traffic policy versions than the value of <code>MaxItems</code>, <code>ListTrafficPolicyVersions</code> returns only the first group of <code>MaxItems</code> versions. To get more traffic policy versions, submit another <code>ListTrafficPolicyVersions</code> request. For the value of <code>TrafficPolicyVersionMarker</code>, specify the value of <code>TrafficPolicyVersionMarker</code> in the previous response.</p>
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
-- <p>A complex type that contains the response information for the request.</p>
-- @param TrafficPolicyIdMarker [TrafficPolicyId] <p>If the value of <code>IsTruncated</code> is <code>true</code>, <code>TrafficPolicyIdMarker</code> is the ID of the first traffic policy in the next group of <code>MaxItems</code> traffic policies.</p>
-- @param TrafficPolicySummaries [TrafficPolicySummaries] <p>A list that contains one <code>TrafficPolicySummary</code> element for each traffic policy that was created by the current AWS account.</p>
-- @param MaxItems [PageMaxItems] <p>The value that you specified for the <code>MaxItems</code> parameter in the <code>ListTrafficPolicies</code> request that produced the current response.</p>
-- @param IsTruncated [PageTruncated] <p>A flag that indicates whether there are more traffic policies to be listed. If the response was truncated, you can get the next group of traffic policies by submitting another <code>ListTrafficPolicies</code> request and specifying the value of <code>TrafficPolicyIdMarker</code> in the <code>TrafficPolicyIdMarker</code> request parameter.</p>
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
-- <p>A complex type that contains general information about the hosted zone.</p>
-- @param ResourceRecordSetCount [HostedZoneRRSetCount] <p>The number of resource record sets in the hosted zone.</p>
-- @param CallerReference [Nonce] <p>The value that you specified for <code>CallerReference</code> when you created the hosted zone.</p>
-- @param Config [HostedZoneConfig] <p>A complex type that includes the <code>Comment</code> and <code>PrivateZone</code> elements. If you omitted the <code>HostedZoneConfig</code> and <code>Comment</code> elements from the request, the <code>Config</code> and <code>Comment</code> elements don't appear in the response.</p>
-- @param Id [ResourceId] <p>The ID that Amazon Route 53 assigned to the hosted zone when you created it.</p>
-- @param Name [DNSName] <p>The name of the domain. For public hosted zones, this is the name that you have registered with your DNS registrar.</p> <p>For information about how to specify characters other than <code>a-z</code>, <code>0-9</code>, and <code>-</code> (hyphen) and how to specify internationalized domain names, see <a>CreateHostedZone</a>.</p>
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
-- <p>A complex type that contains the response to a <code>GetHealthCheck</code> request.</p>
-- @param HealthCheck [HealthCheck] <p>A complex type that contains information about one health check that is associated with the current AWS account.</p>
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
-- <p>No traffic policy exists with the specified ID.</p>
-- @param message [ErrorMessage] <p>Descriptive message for the error response.</p>
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
-- <p>For the metric that the CloudWatch alarm is associated with, a complex type that contains information about one dimension.</p>
-- @param Name [DimensionField] <p>For the metric that the CloudWatch alarm is associated with, the name of one dimension.</p>
-- @param Value [DimensionField] <p>For the metric that the CloudWatch alarm is associated with, the value of one dimension.</p>
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
-- <p>A complex type that contains the response information for the traffic policy.</p>
-- @param TrafficPolicy [TrafficPolicy] <p>A complex type that contains settings for the specified traffic policy.</p>
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
-- <p>The format of the traffic policy document that you specified in the <code>Document</code> element is invalid.</p>
-- @param message [ErrorMessage] <p>Descriptive message for the error response.</p>
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
-- <p>A change with the specified change ID does not exist.</p>
-- @param message [ErrorMessage] <p>A change with the specified change ID does not exist.</p>
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
-- <p>A complex type that contains information about the tags that you want to add, edit, or delete.</p>
-- @param ResourceType [TagResourceType] <p>The type of the resource.</p> <ul> <li> <p>The resource type for health checks is <code>healthcheck</code>.</p> </li> <li> <p>The resource type for hosted zones is <code>hostedzone</code>.</p> </li> </ul>
-- @param ResourceId [TagResourceId] <p>The ID of the resource for which you want to add, change, or delete tags.</p>
-- @param AddTags [TagList] <p>A complex type that contains a list of the tags that you want to add to the specified health check or hosted zone and/or the tags that you want to edit <code>Value</code> for.</p> <p>You can add a maximum of 10 tags to a health check or a hosted zone.</p>
-- @param RemoveTagKeys [TagKeyList] <p>A complex type that contains a list of the tags that you want to delete from the specified health check or hosted zone. You can specify up to 10 keys.</p>
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
-- <p>A complex type that contains information about the request to authorize associating a VPC with your private hosted zone. Authorization is only required when a private hosted zone and a VPC were created by using different accounts.</p>
-- @param HostedZoneId [ResourceId] <p>The ID of the private hosted zone that you want to authorize associating a VPC with.</p>
-- @param VPC [VPC] <p>A complex type that contains the VPC ID and region for the VPC that you want to authorize associating with your hosted zone.</p>
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
-- <p>A complex type that contains list information for the resource record set.</p>
-- @param NextRecordIdentifier [ResourceRecordSetIdentifier] <p> <i>Weighted, latency, geolocation, and failover resource record sets only</i>: If results were truncated for a given DNS name and type, the value of <code>SetIdentifier</code> for the next resource record set that has the current DNS name and type.</p>
-- @param NextRecordType [RRType] <p>If the results were truncated, the type of the next record in the list.</p> <p>This element is present only if <code>IsTruncated</code> is true. </p>
-- @param NextRecordName [DNSName] <p>If the results were truncated, the name of the next record in the list.</p> <p>This element is present only if <code>IsTruncated</code> is true. </p>
-- @param ResourceRecordSets [ResourceRecordSets] <p>Information about multiple resource record sets.</p>
-- @param MaxItems [PageMaxItems] <p>The maximum number of records you requested.</p>
-- @param IsTruncated [PageTruncated] <p>A flag that indicates whether more resource record sets remain to be listed. If your results were truncated, you can make a follow-up pagination request by using the <code>NextRecordName</code> element.</p>
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
-- <p>A request to delete a specified traffic policy instance.</p>
-- @param Id [TrafficPolicyInstanceId] <p>The ID of the traffic policy instance that you want to delete. </p> <important> <p>When you delete a traffic policy instance, Amazon Route 53 also deletes all of the resource record sets that were created when you created the traffic policy instance.</p> </important>
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
-- <p>A complex type that contains the response to the <code>UpdateHostedZoneComment</code> request.</p>
-- @param HostedZone [HostedZone] <p>A complex type that contains the response to the <code>UpdateHostedZoneComment</code> request.</p>
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
-- <p>The value of <code>HealthCheckVersion</code> in the request doesn't match the value of <code>HealthCheckVersion</code> in the health check.</p>
-- @param message [ErrorMessage] <p>The value of <code>HealthCheckVersion</code> in the request doesn't match the value of <code>HealthCheckVersion</code> in the health check.</p>
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
-- <p>The resource you're trying to access is unsupported on this Amazon Route 53 endpoint.</p>
-- @param message [ErrorMessage] <p>The resource you're trying to access is unsupported on this Amazon Route 53 endpoint.</p>
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
-- <p>You've created the maximum number of authorizations that can be created for the specified hosted zone. To authorize another VPC to be associated with the hosted zone, submit a <code>DeleteVPCAssociationAuthorization</code> request to remove an existing authorization. To get a list of existing authorizations, submit a <code>ListVPCAssociationAuthorizations</code> request.</p>
-- @param message [ErrorMessage] <p>Descriptive message for the error response.</p>
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
-- <p>You have reached the maximum number of active health checks for an AWS account. The default limit is 100. To request a higher limit, <a href="http://aws.amazon.com/route53-request">create a case</a> with the AWS Support Center.</p>
-- @param message [ErrorMessage] <p>You have reached the maximum number of active health checks for an AWS account. The default limit is 100. To request a higher limit, <a href="http://aws.amazon.com/route53-request">create a case</a> with the AWS Support Center.</p>
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
-- <p>A complex type that contains information about a request to update a health check.</p>
-- @param SearchString [SearchString] <p>If the value of <code>Type</code> is <code>HTTP_STR_MATCH</code> or <code>HTTP_STR_MATCH</code>, the string that you want Amazon Route 53 to search for in the response body from the specified resource. If the string appears in the response body, Amazon Route 53 considers the resource healthy. (You can't change the value of <code>Type</code> when you update a health check.)</p>
-- @param HealthCheckId [HealthCheckId] <p>The ID for the health check for which you want detailed information. When you created the health check, <code>CreateHealthCheck</code> returned the ID in the response, in the <code>HealthCheckId</code> element.</p>
-- @param AlarmIdentifier [AlarmIdentifier] <p>A complex type that contains information about a request to update a health check.</p>
-- @param HealthCheckVersion [HealthCheckVersion] <p>A sequential counter that Amazon Route 53 sets to <code>1</code> when you create a health check and increments by 1 each time you update settings for the health check.</p> <p>We recommend that you use <code>GetHealthCheck</code> or <code>ListHealthChecks</code> to get the current value of <code>HealthCheckVersion</code> for the health check that you want to update, and that you include that value in your <code>UpdateHealthCheck</code> request. This prevents Amazon Route 53 from overwriting an intervening update:</p> <ul> <li> <p>If the value in the <code>UpdateHealthCheck</code> request matches the value of <code>HealthCheckVersion</code> in the health check, Amazon Route 53 updates the health check with the new settings.</p> </li> <li> <p>If the value of <code>HealthCheckVersion</code> in the health check is greater, the health check was changed after you got the version number. Amazon Route 53 does not update the health check, and it returns a <code>HealthCheckVersionMismatch</code> error.</p> </li> </ul>
-- @param ResourcePath [ResourcePath] <p>The path that you want Amazon Route 53 to request when performing health checks. The path can be any value for which your endpoint will return an HTTP status code of 2xx or 3xx when the endpoint is healthy, for example the file /docs/route53-health-check.html. </p> <p>Specify this value only if you want to change it.</p>
-- @param ChildHealthChecks [ChildHealthCheckList] <p>A complex type that contains one <code>ChildHealthCheck</code> element for each health check that you want to associate with a <code>CALCULATED</code> health check.</p>
-- @param Inverted [Inverted] <p>Specify whether you want Amazon Route 53 to invert the status of a health check, for example, to consider a health check unhealthy when it otherwise would be considered healthy.</p>
-- @param Regions [HealthCheckRegionList] <p>A complex type that contains one <code>Region</code> element for each region that you want Amazon Route 53 health checkers to check the specified endpoint from.</p>
-- @param InsufficientDataHealthStatus [InsufficientDataHealthStatus] <p>When CloudWatch has insufficient data about the metric to determine the alarm state, the status that you want Amazon Route 53 to assign to the health check:</p> <ul> <li> <p> <code>Healthy</code>: Amazon Route 53 considers the health check to be healthy.</p> </li> <li> <p> <code>Unhealthy</code>: Amazon Route 53 considers the health check to be unhealthy.</p> </li> <li> <p> <code>LastKnownStatus</code>: Amazon Route 53 uses the status of the health check from the last time CloudWatch had sufficient data to determine the alarm state. For new health checks that have no last known status, the default status for the health check is healthy.</p> </li> </ul>
-- @param HealthThreshold [HealthThreshold] <p>The number of child health checks that are associated with a <code>CALCULATED</code> health that Amazon Route 53 must consider healthy for the <code>CALCULATED</code> health check to be considered healthy. To specify the child health checks that you want to associate with a <code>CALCULATED</code> health check, use the <code>ChildHealthChecks</code> and <code>ChildHealthCheck</code> elements.</p> <p>Note the following:</p> <ul> <li> <p>If you specify a number greater than the number of child health checks, Amazon Route 53 always considers this health check to be unhealthy.</p> </li> <li> <p>If you specify <code>0</code>, Amazon Route 53 always considers this health check to be healthy.</p> </li> </ul>
-- @param EnableSNI [EnableSNI] <p>Specify whether you want Amazon Route 53 to send the value of <code>FullyQualifiedDomainName</code> to the endpoint in the <code>client_hello</code> message during <code>TLS</code> negotiation. This allows the endpoint to respond to <code>HTTPS</code> health check requests with the applicable SSL/TLS certificate.</p> <p>Some endpoints require that HTTPS requests include the host name in the <code>client_hello</code> message. If you don't enable SNI, the status of the health check will be SSL alert <code>handshake_failure</code>. A health check can also have that status for other reasons. If SNI is enabled and you're still getting the error, check the SSL/TLS configuration on your endpoint and confirm that your certificate is valid.</p> <p>The SSL/TLS certificate on your endpoint includes a domain name in the <code>Common Name</code> field and possibly several more in the <code>Subject Alternative Names</code> field. One of the domain names in the certificate should match the value that you specify for <code>FullyQualifiedDomainName</code>. If the endpoint responds to the <code>client_hello</code> message with a certificate that does not include the domain name that you specified in <code>FullyQualifiedDomainName</code>, a health checker will retry the handshake. In the second attempt, the health checker will omit <code>FullyQualifiedDomainName</code> from the <code>client_hello</code> message.</p>
-- @param FailureThreshold [FailureThreshold] <p>The number of consecutive health checks that an endpoint must pass or fail for Amazon Route 53 to change the current status of the endpoint from unhealthy to healthy or vice versa. For more information, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-determining-health-of-endpoints.html">How Amazon Route 53 Determines Whether an Endpoint Is Healthy</a> in the <i>Amazon Route 53 Developer Guide</i>.</p> <p>If you don't specify a value for <code>FailureThreshold</code>, the default value is three health checks.</p>
-- @param IPAddress [IPAddress] <p>The IPv4 or IPv6 IP address for the endpoint that you want Amazon Route 53 to perform health checks on. If you don't specify a value for <code>IPAddress</code>, Amazon Route 53 sends a DNS request to resolve the domain name that you specify in <code>FullyQualifiedDomainName</code> at the interval that you specify in <code>RequestInterval</code>. Using an IP address that is returned by DNS, Amazon Route 53 then checks the health of the endpoint.</p> <p>Use one of the following formats for the value of <code>IPAddress</code>: </p> <ul> <li> <p> <b>IPv4 address</b>: four values between 0 and 255, separated by periods (.), for example, <code>192.0.2.44</code>.</p> </li> <li> <p> <b>IPv6 address</b>: eight groups of four hexadecimal values, separated by colons (:), for example, <code>2001:0db8:85a3:0000:0000:abcd:0001:2345</code>. You can also shorten IPv6 addresses as described in RFC 5952, for example, <code>2001:db8:85a3::abcd:1:2345</code>.</p> </li> </ul> <p>If the endpoint is an EC2 instance, we recommend that you create an Elastic IP address, associate it with your EC2 instance, and specify the Elastic IP address for <code>IPAddress</code>. This ensures that the IP address of your instance never changes. For more information, see the applicable documentation:</p> <ul> <li> <p>Linux: <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html">Elastic IP Addresses (EIP)</a> in the <i>Amazon EC2 User Guide for Linux Instances</i> </p> </li> <li> <p>Windows: <a href="http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/elastic-ip-addresses-eip.html">Elastic IP Addresses (EIP)</a> in the <i>Amazon EC2 User Guide for Windows Instances</i> </p> </li> </ul> <note> <p>If a health check already has a value for <code>IPAddress</code>, you can change the value. However, you can't update an existing health check to add or remove the value of <code>IPAddress</code>. </p> </note> <p>For more information, see <a>UpdateHealthCheckRequest$FullyQualifiedDomainName</a>.</p> <p>Constraints: Amazon Route 53 can't check the health of endpoints for which the IP address is in local, private, non-routable, or multicast ranges. For more information about IP addresses for which you can't create health checks, see the following documents:</p> <ul> <li> <p> <a href="https://tools.ietf.org/html/rfc5735">RFC 5735, Special Use IPv4 Addresses</a> </p> </li> <li> <p> <a href="https://tools.ietf.org/html/rfc6598">RFC 6598, IANA-Reserved IPv4 Prefix for Shared Address Space</a> </p> </li> <li> <p> <a href="https://tools.ietf.org/html/rfc5156">RFC 5156, Special-Use IPv6 Addresses</a> </p> </li> </ul>
-- @param Port [Port] <p>The port on the endpoint on which you want Amazon Route 53 to perform health checks.</p>
-- @param FullyQualifiedDomainName [FullyQualifiedDomainName] <p>Amazon Route 53 behavior depends on whether you specify a value for <code>IPAddress</code>.</p> <note> <p>If a health check already has a value for <code>IPAddress</code>, you can change the value. However, you can't update an existing health check to add or remove the value of <code>IPAddress</code>. </p> </note> <p> <b>If you specify a value for</b> <code>IPAddress</code>:</p> <p>Amazon Route 53 sends health check requests to the specified IPv4 or IPv6 address and passes the value of <code>FullyQualifiedDomainName</code> in the <code>Host</code> header for all health checks except TCP health checks. This is typically the fully qualified DNS name of the endpoint on which you want Amazon Route 53 to perform health checks.</p> <p>When Amazon Route 53 checks the health of an endpoint, here is how it constructs the <code>Host</code> header:</p> <ul> <li> <p>If you specify a value of <code>80</code> for <code>Port</code> and <code>HTTP</code> or <code>HTTP_STR_MATCH</code> for <code>Type</code>, Amazon Route 53 passes the value of <code>FullyQualifiedDomainName</code> to the endpoint in the <code>Host</code> header.</p> </li> <li> <p>If you specify a value of <code>443</code> for <code>Port</code> and <code>HTTPS</code> or <code>HTTPS_STR_MATCH</code> for <code>Type</code>, Amazon Route 53 passes the value of <code>FullyQualifiedDomainName</code> to the endpoint in the <code>Host</code> header.</p> </li> <li> <p>If you specify another value for <code>Port</code> and any value except <code>TCP</code> for <code>Type</code>, Amazon Route 53 passes <i> <code>FullyQualifiedDomainName</code>:<code>Port</code> </i> to the endpoint in the <code>Host</code> header.</p> </li> </ul> <p>If you don't specify a value for <code>FullyQualifiedDomainName</code>, Amazon Route 53 substitutes the value of <code>IPAddress</code> in the <code>Host</code> header in each of the above cases.</p> <p> <b>If you don't specify a value for</b> <code>IPAddress</code>:</p> <p>If you don't specify a value for <code>IPAddress</code>, Amazon Route 53 sends a DNS request to the domain that you specify in <code>FullyQualifiedDomainName</code> at the interval you specify in <code>RequestInterval</code>. Using an IPv4 address that is returned by DNS, Amazon Route 53 then checks the health of the endpoint.</p> <note> <p>If you don't specify a value for <code>IPAddress</code>, Amazon Route 53 uses only IPv4 to send health checks to the endpoint. If there's no resource record set with a type of A for the name that you specify for <code>FullyQualifiedDomainName</code>, the health check fails with a "DNS resolution failed" error.</p> </note> <p>If you want to check the health of weighted, latency, or failover resource record sets and you choose to specify the endpoint only by <code>FullyQualifiedDomainName</code>, we recommend that you create a separate health check for each endpoint. For example, create a health check for each HTTP server that is serving content for www.example.com. For the value of <code>FullyQualifiedDomainName</code>, specify the domain name of the server (such as <code>us-east-2-www.example.com</code>), not the name of the resource record sets (www.example.com).</p> <important> <p>In this configuration, if the value of <code>FullyQualifiedDomainName</code> matches the name of the resource record sets and you then associate the health check with those resource record sets, health check results will be unpredictable.</p> </important> <p>In addition, if the value of <code>Type</code> is <code>HTTP</code>, <code>HTTPS</code>, <code>HTTP_STR_MATCH</code>, or <code>HTTPS_STR_MATCH</code>, Amazon Route 53 passes the value of <code>FullyQualifiedDomainName</code> in the <code>Host</code> header, as it does when you specify a value for <code>IPAddress</code>. If the value of <code>Type</code> is <code>TCP</code>, Amazon Route 53 doesn't pass a <code>Host</code> header.</p>
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
-- <p>The VPC ID that you specified either isn't a valid ID or the current account is not authorized to access this VPC.</p>
-- @param message [ErrorMessage] <p>Descriptive message for the error response.</p>
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
-- <p>No hosted zone exists with the ID that you specified.</p>
-- @param message [ErrorMessage] <p>Descriptive message for the error response.</p>
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
-- <p>A complex type that contains the codes and full continent, country, and subdivision names for the specified <code>geolocation</code> code.</p>
-- @param CountryName [GeoLocationCountryName] <p>The name of the country.</p>
-- @param CountryCode [GeoLocationCountryCode] <p>The two-letter code for the country.</p>
-- @param SubdivisionCode [GeoLocationSubdivisionCode] <p>The code for the subdivision, for example, a state in the United States or a province in Canada.</p>
-- @param ContinentName [GeoLocationContinentName] <p>The full name of the continent.</p>
-- @param SubdivisionName [GeoLocationSubdivisionName] <p>The full name of the subdivision, for example, a state in the United States or a province in Canada.</p>
-- @param ContinentCode [GeoLocationContinentCode] <p>The two-letter code for the continent.</p>
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
-- <p>A request for the resource record sets that are associated with a specified hosted zone.</p>
-- @param HostedZoneId [ResourceId] <p>The ID of the hosted zone that contains the resource record sets that you want to list.</p>
-- @param StartRecordName [DNSName] <p>The first name in the lexicographic ordering of resource record sets that you want to list.</p>
-- @param StartRecordIdentifier [ResourceRecordSetIdentifier] <p> <i>Weighted resource record sets only:</i> If results were truncated for a given DNS name and type, specify the value of <code>NextRecordIdentifier</code> from the previous response to get the next resource record set that has the current DNS name and type.</p>
-- @param StartRecordType [RRType] <p>The type of resource record set to begin the record listing from.</p> <p>Valid values for basic resource record sets: <code>A</code> | <code>AAAA</code> | <code>CNAME</code> | <code>MX</code> | <code>NAPTR</code> | <code>NS</code> | <code>PTR</code> | <code>SOA</code> | <code>SPF</code> | <code>SRV</code> | <code>TXT</code> </p> <p>Values for weighted, latency, geo, and failover resource record sets: <code>A</code> | <code>AAAA</code> | <code>CNAME</code> | <code>MX</code> | <code>NAPTR</code> | <code>PTR</code> | <code>SPF</code> | <code>SRV</code> | <code>TXT</code> </p> <p>Values for alias resource record sets: </p> <ul> <li> <p> <b>CloudFront distribution</b>: A or AAAA</p> </li> <li> <p> <b>Elastic Beanstalk environment that has a regionalized subdomain</b>: A</p> </li> <li> <p> <b>ELB load balancer</b>: A | AAAA</p> </li> <li> <p> <b>Amazon S3 bucket</b>: A</p> </li> </ul> <p>Constraint: Specifying <code>type</code> without specifying <code>name</code> returns an <code>InvalidInput</code> error.</p>
-- @param MaxItems [PageMaxItems] <p>(Optional) The maximum number of resource records sets to include in the response body for this request. If the response includes more than <code>maxitems</code> resource record sets, the value of the <code>IsTruncated</code> element in the response is <code>true</code>, and the values of the <code>NextRecordName</code> and <code>NextRecordType</code> elements in the response identify the first resource record set in the next group of <code>maxitems</code> resource record sets.</p>
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
-- <p>A complex type that contains the response to the <code>GetReusableDelegationSet</code> request.</p>
-- @param DelegationSet [DelegationSet] <p>A complex type that contains information about the reusable delegation set.</p>
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
-- <p>A complex type that contains the response information for the request.</p>
-- @param TrafficPolicyInstanceNameMarker [DNSName] <p>If <code>IsTruncated</code> is <code>true</code>, <code>TrafficPolicyInstanceNameMarker</code> is the name of the first traffic policy instance that Amazon Route 53 will return if you submit another <code>ListTrafficPolicyInstances</code> request. </p>
-- @param HostedZoneIdMarker [ResourceId] <p>If <code>IsTruncated</code> is <code>true</code>, <code>HostedZoneIdMarker</code> is the ID of the hosted zone of the first traffic policy instance that Amazon Route 53 will return if you submit another <code>ListTrafficPolicyInstances</code> request. </p>
-- @param TrafficPolicyInstances [TrafficPolicyInstances] <p>A list that contains one <code>TrafficPolicyInstance</code> element for each traffic policy instance that matches the elements in the request.</p>
-- @param MaxItems [PageMaxItems] <p>The value that you specified for the <code>MaxItems</code> parameter in the call to <code>ListTrafficPolicyInstances</code> that produced the current response.</p>
-- @param TrafficPolicyInstanceTypeMarker [RRType] <p>If <code>IsTruncated</code> is <code>true</code>, <code>TrafficPolicyInstanceTypeMarker</code> is the DNS type of the resource record sets that are associated with the first traffic policy instance that Amazon Route 53 will return if you submit another <code>ListTrafficPolicyInstances</code> request. </p>
-- @param IsTruncated [PageTruncated] <p>A flag that indicates whether there are more traffic policy instances to be listed. If the response was truncated, you can get more traffic policy instances by calling <code>ListTrafficPolicyInstances</code> again and specifying the values of the <code>HostedZoneIdMarker</code>, <code>TrafficPolicyInstanceNameMarker</code>, and <code>TrafficPolicyInstanceTypeMarker</code> in the corresponding request parameters.</p>
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
-- <p>Gets information about a specified traffic policy instance.</p>
-- @param Id [TrafficPolicyInstanceId] <p>The ID of the traffic policy instance that you want to get information about.</p>
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
-- <p>A complex type that contains information about the traffic policy that you want to create a new version for.</p>
-- @param Comment [TrafficPolicyComment] <p>The comment that you specified in the <code>CreateTrafficPolicyVersion</code> request, if any.</p>
-- @param Document [TrafficPolicyDocument] <p>The definition of this version of the traffic policy, in JSON format. You specified the JSON in the <code>CreateTrafficPolicyVersion</code> request. For more information about the JSON format, see <a>CreateTrafficPolicy</a>.</p>
-- @param Id [TrafficPolicyId] <p>The ID of the traffic policy for which you want to create a new version.</p>
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
-- <p>A complex type that contains an optional comment about your hosted zone. If you don't want to specify a comment, omit both the <code>HostedZoneConfig</code> and <code>Comment</code> elements.</p>
-- @param Comment [ResourceDescription] <p>Any comments that you want to include about the hosted zone.</p>
-- @param PrivateZone [IsPrivateZone] <p>A value that indicates whether this is a private hosted zone.</p>
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
-- <p>An empty element.</p>
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
-- <p>A complex type that contains information about the request to associate a VPC with a private hosted zone.</p>
-- @param HostedZoneId [ResourceId] <p>The ID of the private hosted zone that you want to associate an Amazon VPC with.</p> <p>Note that you can't associate a VPC with a hosted zone that doesn't have an existing VPC association.</p>
-- @param Comment [AssociateVPCComment] <p> <i>Optional:</i> A comment about the association request.</p>
-- @param VPC [VPC] <p>A complex type that contains information about the VPC that you want to associate with a private hosted zone.</p>
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
-- <p>Empty response for the request.</p>
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
-- <p>A complex type that contains information about the CloudWatch alarm that Amazon Route 53 is monitoring for this health check.</p>
-- @param EvaluationPeriods [EvaluationPeriods] <p>For the metric that the CloudWatch alarm is associated with, the number of periods that the metric is compared to the threshold.</p>
-- @param Dimensions [DimensionList] <p>For the metric that the CloudWatch alarm is associated with, a complex type that contains information about the dimensions for the metric. For information, see <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/CW_Support_For_AWS.html">Amazon CloudWatch Namespaces, Dimensions, and Metrics Reference</a> in the <i>Amazon CloudWatch User Guide</i>.</p>
-- @param Namespace [Namespace] <p>The namespace of the metric that the alarm is associated with. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/CW_Support_For_AWS.html">Amazon CloudWatch Namespaces, Dimensions, and Metrics Reference</a> in the <i>Amazon CloudWatch User Guide</i>.</p>
-- @param Period [Period] <p>For the metric that the CloudWatch alarm is associated with, the duration of one evaluation period in seconds.</p>
-- @param ComparisonOperator [ComparisonOperator] <p>For the metric that the CloudWatch alarm is associated with, the arithmetic operation that is used for the comparison.</p>
-- @param Statistic [Statistic] <p>For the metric that the CloudWatch alarm is associated with, the statistic that is applied to the metric.</p>
-- @param Threshold [Threshold] <p>For the metric that the CloudWatch alarm is associated with, the value the metric is compared with.</p>
-- @param MetricName [MetricName] <p>The name of the CloudWatch metric that the alarm is associated with.</p>
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
-- <p>A complex type that contains the response information for the request.</p>
-- @param MaxItems [PageMaxItems] <p>The value that you specified for the <code>maxitems</code> parameter in the <code>ListTrafficPolicyVersions</code> request that produced the current response.</p>
-- @param IsTruncated [PageTruncated] <p>A flag that indicates whether there are more traffic policies to be listed. If the response was truncated, you can get the next group of traffic policies by submitting another <code>ListTrafficPolicyVersions</code> request and specifying the value of <code>NextMarker</code> in the <code>marker</code> parameter.</p>
-- @param TrafficPolicies [TrafficPolicies] <p>A list that contains one <code>TrafficPolicy</code> element for each traffic policy version that is associated with the specified traffic policy.</p>
-- @param TrafficPolicyVersionMarker [TrafficPolicyVersionMarker] <p>If <code>IsTruncated</code> is <code>true</code>, the value of <code>TrafficPolicyVersionMarker</code> identifies the first traffic policy that Amazon Route 53 will return if you submit another request. Call <code>ListTrafficPolicyVersions</code> again and specify the value of <code>TrafficPolicyVersionMarker</code> in the <code>TrafficPolicyVersionMarker</code> request parameter.</p> <p>This element is present only if <code>IsTruncated</code> is <code>true</code>.</p>
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
-- <p>The cause of this error depends on whether you're trying to create a public or a private hosted zone:</p> <ul> <li> <p> <b>Public hosted zone:</b> Two hosted zones that have the same name or that have a parent/child relationship (example.com and test.example.com) can't have any common name servers. You tried to create a hosted zone that has the same name as an existing hosted zone or that's the parent or child of an existing hosted zone, and you specified a delegation set that shares one or more name servers with the existing hosted zone. </p> </li> <li> <p> <b>Private hosted zone:</b> You specified an Amazon VPC that you're already using for another hosted zone, and the domain that you specified for one of the hosted zones is a subdomain of the domain that you specified for the other hosted zone. For example, you can't use the same Amazon VPC for the hosted zones for example.com and test.example.com.</p> </li> </ul>
-- @param message [ErrorMessage] <p>The cause of this error depends on whether you're trying to create a public or a private hosted zone:</p> <ul> <li> <p> <b>Public hosted zone:</b> Two hosted zones that have the same name or that have a parent/child relationship (example.com and test.example.com) can't have any common name servers. You tried to create a hosted zone that has the same name as an existing hosted zone or that's the parent or child of an existing hosted zone, and you specified a delegation set that shares one or more name servers with the existing hosted zone. </p> </li> <li> <p> <b>Private hosted zone:</b> You specified an Amazon VPC that you're already using for another hosted zone, and the domain that you specified for one of the hosted zones is a subdomain of the domain that you specified for the other hosted zone. For example, you can't use the same Amazon VPC for the hosted zones for example.com and test.example.com.</p> </li> </ul>
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
-- <p>Retrieves a list of the public and private hosted zones that are associated with the current AWS account in ASCII order by domain name. </p>
-- @param HostedZoneId [ResourceId] <p>(Optional) For your first request to <code>ListHostedZonesByName</code>, do not include the <code>hostedzoneid</code> parameter.</p> <p>If you have more hosted zones than the value of <code>maxitems</code>, <code>ListHostedZonesByName</code> returns only the first <code>maxitems</code> hosted zones. To get the next group of <code>maxitems</code> hosted zones, submit another request to <code>ListHostedZonesByName</code> and include both <code>dnsname</code> and <code>hostedzoneid</code> parameters. For the value of <code>hostedzoneid</code>, specify the value of the <code>NextHostedZoneId</code> element from the previous response.</p>
-- @param DNSName [DNSName] <p>(Optional) For your first request to <code>ListHostedZonesByName</code>, include the <code>dnsname</code> parameter only if you want to specify the name of the first hosted zone in the response. If you don't include the <code>dnsname</code> parameter, Amazon Route 53 returns all of the hosted zones that were created by the current AWS account, in ASCII order. For subsequent requests, include both <code>dnsname</code> and <code>hostedzoneid</code> parameters. For <code>dnsname</code>, specify the value of <code>NextDNSName</code> from the previous response.</p>
-- @param MaxItems [PageMaxItems] <p>The maximum number of hosted zones to be included in the response body for this request. If you have more than <code>maxitems</code> hosted zones, then the value of the <code>IsTruncated</code> element in the response is true, and the values of <code>NextDNSName</code> and <code>NextHostedZoneId</code> specify the first hosted zone in the next group of <code>maxitems</code> hosted zones. </p>
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
-- <p>A complex type that contains information about the traffic policy that you want to update the comment for.</p>
-- @param Comment [TrafficPolicyComment] <p>The new comment for the specified traffic policy and version.</p>
-- @param Version [TrafficPolicyVersion] <p>The value of <code>Version</code> for the traffic policy that you want to update the comment for.</p>
-- @param Id [TrafficPolicyId] <p>The value of <code>Id</code> for the traffic policy that you want to update the comment for.</p>
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
-- <p>An empty element.</p>
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
-- <p>A complex type containing a resource and its associated tags.</p>
-- @param ResourceType [TagResourceType] <p>The type of the resource.</p> <ul> <li> <p>The resource type for health checks is <code>healthcheck</code>.</p> </li> <li> <p>The resource type for hosted zones is <code>hostedzone</code>.</p> </li> </ul>
-- @param ResourceId [TagResourceId] <p>The ID for the specified resource.</p>
-- @param Tags [TagList] <p>The tags associated with the specified resource.</p>
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
-- <p>The hosted zone you're trying to create already exists. Amazon Route 53 returns this error when a hosted zone has already been created with the specified <code>CallerReference</code>.</p>
-- @param message [ErrorMessage] <p>Descriptive message for the error response.</p>
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
-- <p>A complex type that lists the name servers in a delegation set, as well as the <code>CallerReference</code> and the <code>ID</code> for the delegation set.</p>
-- @param NameServers [DelegationSetNameServers] <p>A complex type that contains a list of the authoritative name servers for a hosted zone or for a reusable delegation set.</p>
-- @param CallerReference [Nonce] <p>The value that you specified for <code>CallerReference</code> when you created the reusable delegation set.</p>
-- @param Id [ResourceId] <p>The ID that Amazon Route 53 assigns to a reusable delegation set.</p>
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
-- <p>No traffic policy instance exists with the specified ID.</p>
-- @param message [ErrorMessage] <p>Descriptive message for the error response.</p>
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
-- <p>A complex type that contains the last failure reason as reported by one Amazon Route 53 health checker.</p>
-- @param StatusReport [StatusReport] <p>A complex type that contains the last failure reason as reported by one Amazon Route 53 health checker and the time of the failed health check.</p>
-- @param Region [HealthCheckRegion] <p>The region of the Amazon Route 53 health checker that provided the status in <code>StatusReport</code>.</p>
-- @param IPAddress [IPAddress] <p>The IP address of the Amazon Route 53 health checker that provided the failure reason in <code>StatusReport</code>.</p>
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
-- <p>Gets information about a specific traffic policy version.</p>
-- @param Version [TrafficPolicyVersion] <p>The version number of the traffic policy that you want to get information about.</p>
-- @param Id [TrafficPolicyId] <p>The ID of the traffic policy that you want to get information about.</p>
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
-- <p>A traffic policy that has the same value for <code>Name</code> already exists.</p>
-- @param message [ErrorMessage] <p>Descriptive message for the error response.</p>
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
-- <p>An empty element.</p>
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
-- <p>A request to get information about the traffic policy instances that you created by using the current AWS account.</p>
-- @param HostedZoneIdMarker [ResourceId] <p>If the value of <code>IsTruncated</code> in the previous response was <code>true</code>, you have more traffic policy instances. To get more traffic policy instances, submit another <code>ListTrafficPolicyInstances</code> request. For the value of <code>HostedZoneId</code>, specify the value of <code>HostedZoneIdMarker</code> from the previous response, which is the hosted zone ID of the first traffic policy instance in the next group of traffic policy instances.</p> <p>If the value of <code>IsTruncated</code> in the previous response was <code>false</code>, there are no more traffic policy instances to get.</p>
-- @param TrafficPolicyInstanceTypeMarker [RRType] <p>If the value of <code>IsTruncated</code> in the previous response was <code>true</code>, you have more traffic policy instances. To get more traffic policy instances, submit another <code>ListTrafficPolicyInstances</code> request. For the value of <code>trafficpolicyinstancetype</code>, specify the value of <code>TrafficPolicyInstanceTypeMarker</code> from the previous response, which is the type of the first traffic policy instance in the next group of traffic policy instances.</p> <p>If the value of <code>IsTruncated</code> in the previous response was <code>false</code>, there are no more traffic policy instances to get.</p>
-- @param TrafficPolicyInstanceNameMarker [DNSName] <p>If the value of <code>IsTruncated</code> in the previous response was <code>true</code>, you have more traffic policy instances. To get more traffic policy instances, submit another <code>ListTrafficPolicyInstances</code> request. For the value of <code>trafficpolicyinstancename</code>, specify the value of <code>TrafficPolicyInstanceNameMarker</code> from the previous response, which is the name of the first traffic policy instance in the next group of traffic policy instances.</p> <p>If the value of <code>IsTruncated</code> in the previous response was <code>false</code>, there are no more traffic policy instances to get.</p>
-- @param MaxItems [PageMaxItems] <p>The maximum number of traffic policy instances that you want Amazon Route 53 to return in response to a <code>ListTrafficPolicyInstances</code> request. If you have more than <code>MaxItems</code> traffic policy instances, the value of the <code>IsTruncated</code> element in the response is <code>true</code>, and the values of <code>HostedZoneIdMarker</code>, <code>TrafficPolicyInstanceNameMarker</code>, and <code>TrafficPolicyInstanceTypeMarker</code> represent the first traffic policy instance in the next group of <code>MaxItems</code> traffic policy instances.</p>
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
-- <p>A complex type that contains information about the health check.</p>
-- @param FailureThreshold [FailureThreshold] <p>The number of consecutive health checks that an endpoint must pass or fail for Amazon Route 53 to change the current status of the endpoint from unhealthy to healthy or vice versa. For more information, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-determining-health-of-endpoints.html">How Amazon Route 53 Determines Whether an Endpoint Is Healthy</a> in the <i>Amazon Route 53 Developer Guide</i>.</p> <p>If you don't specify a value for <code>FailureThreshold</code>, the default value is three health checks.</p>
-- @param SearchString [SearchString] <p>If the value of Type is <code>HTTP_STR_MATCH</code> or <code>HTTP_STR_MATCH</code>, the string that you want Amazon Route 53 to search for in the response body from the specified resource. If the string appears in the response body, Amazon Route 53 considers the resource healthy.</p> <p>Amazon Route 53 considers case when searching for <code>SearchString</code> in the response body. </p>
-- @param AlarmIdentifier [AlarmIdentifier] <p>A complex type that identifies the CloudWatch alarm that you want Amazon Route 53 health checkers to use to determine whether this health check is healthy.</p>
-- @param IPAddress [IPAddress] <p>The IPv4 or IPv6 IP address of the endpoint that you want Amazon Route 53 to perform health checks on. If you don't specify a value for <code>IPAddress</code>, Amazon Route 53 sends a DNS request to resolve the domain name that you specify in <code>FullyQualifiedDomainName</code> at the interval that you specify in <code>RequestInterval</code>. Using an IP address returned by DNS, Amazon Route 53 then checks the health of the endpoint.</p> <p>Use one of the following formats for the value of <code>IPAddress</code>: </p> <ul> <li> <p> <b>IPv4 address</b>: four values between 0 and 255, separated by periods (.), for example, <code>192.0.2.44</code>.</p> </li> <li> <p> <b>IPv6 address</b>: eight groups of four hexadecimal values, separated by colons (:), for example, <code>2001:0db8:85a3:0000:0000:abcd:0001:2345</code>. You can also shorten IPv6 addresses as described in RFC 5952, for example, <code>2001:db8:85a3::abcd:1:2345</code>.</p> </li> </ul> <p>If the endpoint is an EC2 instance, we recommend that you create an Elastic IP address, associate it with your EC2 instance, and specify the Elastic IP address for <code>IPAddress</code>. This ensures that the IP address of your instance will never change.</p> <p>For more information, see <a>HealthCheckConfig$FullyQualifiedDomainName</a>.</p> <p>Constraints: Amazon Route 53 can't check the health of endpoints for which the IP address is in local, private, non-routable, or multicast ranges. For more information about IP addresses for which you can't create health checks, see the following documents:</p> <ul> <li> <p> <a href="https://tools.ietf.org/html/rfc5735">RFC 5735, Special Use IPv4 Addresses</a> </p> </li> <li> <p> <a href="https://tools.ietf.org/html/rfc6598">RFC 6598, IANA-Reserved IPv4 Prefix for Shared Address Space</a> </p> </li> <li> <p> <a href="https://tools.ietf.org/html/rfc5156">RFC 5156, Special-Use IPv6 Addresses</a> </p> </li> </ul> <p>When the value of <code>Type</code> is <code>CALCULATED</code> or <code>CLOUDWATCH_METRIC</code>, omit <code>IPAddress</code>.</p>
-- @param ResourcePath [ResourcePath] <p>The path, if any, that you want Amazon Route 53 to request when performing health checks. The path can be any value for which your endpoint will return an HTTP status code of 2xx or 3xx when the endpoint is healthy, for example, the file /docs/route53-health-check.html. </p>
-- @param ChildHealthChecks [ChildHealthCheckList] <p>(CALCULATED Health Checks Only) A complex type that contains one <code>ChildHealthCheck</code> element for each health check that you want to associate with a <code>CALCULATED</code> health check.</p>
-- @param Inverted [Inverted] <p>Specify whether you want Amazon Route 53 to invert the status of a health check, for example, to consider a health check unhealthy when it otherwise would be considered healthy.</p>
-- @param Regions [HealthCheckRegionList] <p>A complex type that contains one <code>Region</code> element for each region from which you want Amazon Route 53 health checkers to check the specified endpoint.</p> <p>If you don't specify any regions, Amazon Route 53 health checkers automatically performs checks from all of the regions that are listed under <b>Valid Values</b>.</p> <p>If you update a health check to remove a region that has been performing health checks, Amazon Route 53 will briefly continue to perform checks from that region to ensure that some health checkers are always checking the endpoint (for example, if you replace three regions with four different regions). </p>
-- @param InsufficientDataHealthStatus [InsufficientDataHealthStatus] <p>When CloudWatch has insufficient data about the metric to determine the alarm state, the status that you want Amazon Route 53 to assign to the health check:</p> <ul> <li> <p> <code>Healthy</code>: Amazon Route 53 considers the health check to be healthy.</p> </li> <li> <p> <code>Unhealthy</code>: Amazon Route 53 considers the health check to be unhealthy.</p> </li> <li> <p> <code>LastKnownStatus</code>: Amazon Route 53 uses the status of the health check from the last time that CloudWatch had sufficient data to determine the alarm state. For new health checks that have no last known status, the default status for the health check is healthy.</p> </li> </ul>
-- @param HealthThreshold [HealthThreshold] <p>The number of child health checks that are associated with a <code>CALCULATED</code> health that Amazon Route 53 must consider healthy for the <code>CALCULATED</code> health check to be considered healthy. To specify the child health checks that you want to associate with a <code>CALCULATED</code> health check, use the <a>HealthCheckConfig$ChildHealthChecks</a> and <a>HealthCheckConfig$ChildHealthChecks</a> elements.</p> <p>Note the following:</p> <ul> <li> <p>If you specify a number greater than the number of child health checks, Amazon Route 53 always considers this health check to be unhealthy.</p> </li> <li> <p>If you specify <code>0</code>, Amazon Route 53 always considers this health check to be healthy.</p> </li> </ul>
-- @param EnableSNI [EnableSNI] <p>Specify whether you want Amazon Route 53 to send the value of <code>FullyQualifiedDomainName</code> to the endpoint in the <code>client_hello</code> message during TLS negotiation. This allows the endpoint to respond to <code>HTTPS</code> health check requests with the applicable SSL/TLS certificate.</p> <p>Some endpoints require that <code>HTTPS</code> requests include the host name in the <code>client_hello</code> message. If you don't enable SNI, the status of the health check will be <code>SSL alert handshake_failure</code>. A health check can also have that status for other reasons. If SNI is enabled and you're still getting the error, check the SSL/TLS configuration on your endpoint and confirm that your certificate is valid.</p> <p>The SSL/TLS certificate on your endpoint includes a domain name in the <code>Common Name</code> field and possibly several more in the <code>Subject Alternative Names</code> field. One of the domain names in the certificate should match the value that you specify for <code>FullyQualifiedDomainName</code>. If the endpoint responds to the <code>client_hello</code> message with a certificate that does not include the domain name that you specified in <code>FullyQualifiedDomainName</code>, a health checker will retry the handshake. In the second attempt, the health checker will omit <code>FullyQualifiedDomainName</code> from the <code>client_hello</code> message.</p>
-- @param MeasureLatency [MeasureLatency] <p>Specify whether you want Amazon Route 53 to measure the latency between health checkers in multiple AWS regions and your endpoint, and to display CloudWatch latency graphs on the <b>Health Checks</b> page in the Amazon Route 53 console.</p> <important> <p>You can't change the value of <code>MeasureLatency</code> after you create a health check.</p> </important>
-- @param RequestInterval [RequestInterval] <p>The number of seconds between the time that Amazon Route 53 gets a response from your endpoint and the time that it sends the next health check request. Each Amazon Route 53 health checker makes requests at this interval.</p> <important> <p>You can't change the value of <code>RequestInterval</code> after you create a health check.</p> </important> <p>If you don't specify a value for <code>RequestInterval</code>, the default value is <code>30</code> seconds.</p>
-- @param Type [HealthCheckType] <p>The type of health check that you want to create, which indicates how Amazon Route 53 determines whether an endpoint is healthy.</p> <important> <p>You can't change the value of <code>Type</code> after you create a health check.</p> </important> <p>You can create the following types of health checks:</p> <ul> <li> <p> <b>HTTP</b>: Amazon Route 53 tries to establish a TCP connection. If successful, Amazon Route 53 submits an HTTP request and waits for an HTTP status code of 200 or greater and less than 400.</p> </li> <li> <p> <b>HTTPS</b>: Amazon Route 53 tries to establish a TCP connection. If successful, Amazon Route 53 submits an HTTPS request and waits for an HTTP status code of 200 or greater and less than 400.</p> <important> <p>If you specify <code>HTTPS</code> for the value of <code>Type</code>, the endpoint must support TLS v1.0 or later.</p> </important> </li> <li> <p> <b>HTTP_STR_MATCH</b>: Amazon Route 53 tries to establish a TCP connection. If successful, Amazon Route 53 submits an HTTP request and searches the first 5,120 bytes of the response body for the string that you specify in <code>SearchString</code>.</p> </li> <li> <p> <b>HTTPS_STR_MATCH</b>: Amazon Route 53 tries to establish a TCP connection. If successful, Amazon Route 53 submits an <code>HTTPS</code> request and searches the first 5,120 bytes of the response body for the string that you specify in <code>SearchString</code>.</p> </li> <li> <p> <b>TCP</b>: Amazon Route 53 tries to establish a TCP connection.</p> </li> <li> <p> <b>CLOUDWATCH_METRIC</b>: The health check is associated with a CloudWatch alarm. If the state of the alarm is <code>OK</code>, the health check is considered healthy. If the state is <code>ALARM</code>, the health check is considered unhealthy. If CloudWatch doesn't have sufficient data to determine whether the state is <code>OK</code> or <code>ALARM</code>, the health check status depends on the setting for <code>InsufficientDataHealthStatus</code>: <code>Healthy</code>, <code>Unhealthy</code>, or <code>LastKnownStatus</code>. </p> </li> <li> <p> <b>CALCULATED</b>: For health checks that monitor the status of other health checks, Amazon Route 53 adds up the number of health checks that Amazon Route 53 health checkers consider to be healthy and compares that number with the value of <code>HealthThreshold</code>. </p> </li> </ul> <p>For more information, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-determining-health-of-endpoints.html">How Amazon Route 53 Determines Whether an Endpoint Is Healthy</a> in the <i>Amazon Route 53 Developer Guide</i>.</p>
-- @param Port [Port] <p>The port on the endpoint on which you want Amazon Route 53 to perform health checks. Specify a value for <code>Port</code> only when you specify a value for <code>IPAddress</code>.</p>
-- @param FullyQualifiedDomainName [FullyQualifiedDomainName] <p>Amazon Route 53 behavior depends on whether you specify a value for <code>IPAddress</code>.</p> <p> <b>If you specify a value for</b> <code>IPAddress</code>:</p> <p>Amazon Route 53 sends health check requests to the specified IPv4 or IPv6 address and passes the value of <code>FullyQualifiedDomainName</code> in the <code>Host</code> header for all health checks except TCP health checks. This is typically the fully qualified DNS name of the endpoint on which you want Amazon Route 53 to perform health checks.</p> <p>When Amazon Route 53 checks the health of an endpoint, here is how it constructs the <code>Host</code> header:</p> <ul> <li> <p>If you specify a value of <code>80</code> for <code>Port</code> and <code>HTTP</code> or <code>HTTP_STR_MATCH</code> for <code>Type</code>, Amazon Route 53 passes the value of <code>FullyQualifiedDomainName</code> to the endpoint in the Host header. </p> </li> <li> <p>If you specify a value of <code>443</code> for <code>Port</code> and <code>HTTPS</code> or <code>HTTPS_STR_MATCH</code> for <code>Type</code>, Amazon Route 53 passes the value of <code>FullyQualifiedDomainName</code> to the endpoint in the <code>Host</code> header.</p> </li> <li> <p>If you specify another value for <code>Port</code> and any value except <code>TCP</code> for <code>Type</code>, Amazon Route 53 passes <code>FullyQualifiedDomainName:Port</code> to the endpoint in the <code>Host</code> header.</p> </li> </ul> <p>If you don't specify a value for <code>FullyQualifiedDomainName</code>, Amazon Route 53 substitutes the value of <code>IPAddress</code> in the <code>Host</code> header in each of the preceding cases.</p> <p> <b>If you don't specify a value for <code>IPAddress</code> </b>:</p> <p>Amazon Route 53 sends a DNS request to the domain that you specify for <code>FullyQualifiedDomainName</code> at the interval that you specify for <code>RequestInterval</code>. Using an IPv4 address that DNS returns, Amazon Route 53 then checks the health of the endpoint.</p> <note> <p>If you don't specify a value for <code>IPAddress</code>, Amazon Route 53 uses only IPv4 to send health checks to the endpoint. If there's no resource record set with a type of A for the name that you specify for <code>FullyQualifiedDomainName</code>, the health check fails with a "DNS resolution failed" error.</p> </note> <p>If you want to check the health of weighted, latency, or failover resource record sets and you choose to specify the endpoint only by <code>FullyQualifiedDomainName</code>, we recommend that you create a separate health check for each endpoint. For example, create a health check for each HTTP server that is serving content for www.example.com. For the value of <code>FullyQualifiedDomainName</code>, specify the domain name of the server (such as us-east-2-www.example.com), not the name of the resource record sets (www.example.com).</p> <important> <p>In this configuration, if you create a health check for which the value of <code>FullyQualifiedDomainName</code> matches the name of the resource record sets and you then associate the health check with those resource record sets, health check results will be unpredictable.</p> </important> <p>In addition, if the value that you specify for <code>Type</code> is <code>HTTP</code>, <code>HTTPS</code>, <code>HTTP_STR_MATCH</code>, or <code>HTTPS_STR_MATCH</code>, Amazon Route 53 passes the value of <code>FullyQualifiedDomainName</code> in the <code>Host</code> header, as it does when you specify a value for <code>IPAddress</code>. If the value of <code>Type</code> is <code>TCP</code>, Amazon Route 53 doesn't pass a <code>Host</code> header.</p>
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
-- <p>Associating the specified VPC with the specified hosted zone has not been authorized.</p>
-- @param message [ErrorMessage] <p>Descriptive message for the error response.</p>
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
-- <p>The specified domain name is not valid.</p>
-- @param message [ErrorMessage] <p>Descriptive message for the error response.</p>
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
-- <p>A complex type that contains information about the request to remove authorization to associate a VPC that was created by one AWS account with a hosted zone that was created with a different AWS account. </p>
-- @param HostedZoneId [ResourceId] <p>When removing authorization to associate a VPC that was created by one AWS account with a hosted zone that was created with a different AWS account, the ID of the hosted zone.</p>
-- @param VPC [VPC] <p>When removing authorization to associate a VPC that was created by one AWS account with a hosted zone that was created with a different AWS account, a complex type that includes the ID and region of the VPC.</p>
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
-- <p>The limit on the number of requests per second was exceeded.</p>
-- @param message [ErrorMessage] <p>The limit on the number of requests per second was exceeded.</p>
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
-- <p>A complex type containing the response information for the request.</p>
-- @param GeoLocationDetailsList [GeoLocationDetailsList] <p>A complex type that contains one <code>GeoLocationDetails</code> element for each location that Amazon Route 53 supports for geolocation.</p>
-- @param NextSubdivisionCode [GeoLocationSubdivisionCode] <p>If <code>IsTruncated</code> is <code>true</code>, you can make a follow-up request to display more locations. Enter the value of <code>NextSubdivisionCode</code> in the <code>StartSubdivisionCode</code> parameter in another <code>ListGeoLocations</code> request.</p>
-- @param NextCountryCode [GeoLocationCountryCode] <p>If <code>IsTruncated</code> is <code>true</code>, you can make a follow-up request to display more locations. Enter the value of <code>NextCountryCode</code> in the <code>StartCountryCode</code> parameter in another <code>ListGeoLocations</code> request.</p>
-- @param MaxItems [PageMaxItems] <p>The value that you specified for <code>MaxItems</code> in the request.</p>
-- @param NextContinentCode [GeoLocationContinentCode] <p>If <code>IsTruncated</code> is <code>true</code>, you can make a follow-up request to display more locations. Enter the value of <code>NextContinentCode</code> in the <code>StartContinentCode</code> parameter in another <code>ListGeoLocations</code> request.</p>
-- @param IsTruncated [PageTruncated] <p>A value that indicates whether more locations remain to be listed after the last location in this response. If so, the value of <code>IsTruncated</code> is <code>true</code>. To get more values, submit another request and include the values of <code>NextContinentCode</code>, <code>NextCountryCode</code>, and <code>NextSubdivisionCode</code> in the <code>StartContinentCode</code>, <code>StartCountryCode</code>, and <code>StartSubdivisionCode</code>, as applicable.</p>
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
-- <p>A complex type that contains the response information for the <code>CreateTrafficPolicyInstance</code> request.</p>
-- @param TrafficPolicyInstance [TrafficPolicyInstance] <p>A complex type that contains settings for the new traffic policy instance.</p>
-- @param Location [ResourceURI] <p>A unique URL that represents a new traffic policy instance.</p>
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
-- <p>A complex type that contains the response to a <code>GetHostedZoneCount</code> request.</p>
-- @param HostedZoneCount [HostedZoneCount] <p>The total number of public and private hosted zones that are associated with the current AWS account.</p>
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
-- <p>A complex type that contains information about that can be associated with your hosted zone.</p>
-- @param HostedZoneId [ResourceId] <p>The ID of the hosted zone for which you want a list of VPCs that can be associated with the hosted zone.</p>
-- @param NextToken [PaginationToken] <p> <i>Optional</i>: If a response includes a <code>NextToken</code> element, there are more VPCs that can be associated with the specified hosted zone. To get the next page of results, submit another request, and include the value of <code>NextToken</code> from the response in the <code>nexttoken</code> parameter in another <code>ListVPCAssociationAuthorizations</code> request.</p>
-- @param MaxResults [MaxResults] <p> <i>Optional</i>: An integer that specifies the maximum number of VPCs that you want Amazon Route 53 to return. If you don't specify a value for <code>MaxResults</code>, Amazon Route 53 returns up to 50 VPCs per page.</p>
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
-- <p>A complex type that contains information about one health check that is associated with the current AWS account.</p>
-- @param HealthCheckConfig [HealthCheckConfig] <p>A complex type that contains detailed information about one health check.</p>
-- @param CallerReference [HealthCheckNonce] <p>A unique string that you specified when you created the health check.</p>
-- @param HealthCheckVersion [HealthCheckVersion] <p>The version of the health check. You can optionally pass this value in a call to <code>UpdateHealthCheck</code> to prevent overwriting another change to the health check.</p>
-- @param Id [HealthCheckId] <p>The identifier that Amazon Route 53assigned to the health check when you created it. When you add or update a resource record set, you use this value to specify which health check to use. The value can be up to 64 characters long. </p>
-- @param CloudWatchAlarmConfiguration [CloudWatchAlarmConfiguration] <p>A complex type that contains information about the CloudWatch alarm that Amazon Route 53 is monitoring for this health check.</p>
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
-- <p>A complex type that contains the response information for the disassociate request.</p>
-- @param ChangeInfo [ChangeInfo] <p>A complex type that describes the changes made to the specified private hosted zone.</p>
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
-- @param Location [ResourceURI] <p>The unique URL representing the new reusable delegation set.</p>
-- @param DelegationSet [DelegationSet] <p>A complex type that contains name server information.</p>
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
-- <p>A request to retrieve a list of the health checks that are associated with the current AWS account.</p>
-- @param Marker [PageMarker] <p>If the value of <code>IsTruncated</code> in the previous response was <code>true</code>, you have more health checks. To get another group, submit another <code>ListHealthChecks</code> request. </p> <p>For the value of <code>marker</code>, specify the value of <code>NextMarker</code> from the previous response, which is the ID of the first health check that Amazon Route 53 will return if you submit another request.</p> <p>If the value of <code>IsTruncated</code> in the previous response was <code>false</code>, there are no more health checks to get.</p>
-- @param MaxItems [PageMaxItems] <p>The maximum number of health checks that you want <code>ListHealthChecks</code> to return in response to the current request. Amazon Route 53 returns a maximum of 100 items. If you set <code>MaxItems</code> to a value greater than 100, Amazon Route 53 returns only the first 100 health checks. </p>
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
-- <p>A complex type containing the response for the request.</p>
-- @param ChangeInfo [ChangeInfo] <p>A complex type that contains information about changes made to your hosted zone.</p> <p>This element contains an ID that you use when performing a <a>GetChange</a> action to get detailed information about the change.</p>
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
-- <p>A complex type that contains information about the VPC that you want to disassociate from a specified private hosted zone.</p>
-- @param HostedZoneId [ResourceId] <p>The ID of the private hosted zone that you want to disassociate a VPC from.</p>
-- @param Comment [DisassociateVPCComment] <p> <i>Optional:</i> A comment about the disassociation request.</p>
-- @param VPC [VPC] <p>A complex type that contains information about the VPC that you're disassociating from the specified hosted zone.</p>
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
-- <p>Gets the value that Amazon Route 53 returns in response to a DNS request for a specified record name and type. You can optionally specify the IP address of a DNS resolver, an EDNS0 client subnet IP address, and a subnet mask. </p>
-- @param ResolverIP [IPAddress] <p>If you want to simulate a request from a specific DNS resolver, specify the IP address for that resolver. If you omit this value, <code>TestDnsAnswer</code> uses the IP address of a DNS resolver in the AWS US East (N. Virginia) Region (<code>us-east-1</code>).</p>
-- @param RecordType [RRType] <p>The type of the resource record set.</p>
-- @param RecordName [DNSName] <p>The name of the resource record set that you want Amazon Route 53 to simulate a query for.</p>
-- @param EDNS0ClientSubnetMask [SubnetMask] <p>If you specify an IP address for <code>edns0clientsubnetip</code>, you can optionally specify the number of bits of the IP address that you want the checking tool to include in the DNS query. For example, if you specify <code>192.0.2.44</code> for <code>edns0clientsubnetip</code> and <code>24</code> for <code>edns0clientsubnetmask</code>, the checking tool will simulate a request from 192.0.2.0/24. The default value is 24 bits for IPv4 addresses and 64 bits for IPv6 addresses.</p>
-- @param EDNS0ClientSubnetIP [IPAddress] <p>If the resolver that you specified for resolverip supports EDNS0, specify the IPv4 or IPv6 address of a client in the applicable location, for example, <code>192.0.2.44</code> or <code>2001:db8:85a3::8a2e:370:7334</code>.</p>
-- @param HostedZoneId [ResourceId] <p>The ID of the hosted zone that you want Amazon Route 53 to simulate a query for.</p>
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
-- <p>A complex type that contains settings for the new traffic policy instance.</p>
-- @param Name [DNSName] <p>The DNS name, such as www.example.com, for which Amazon Route 53 responds to queries by using the resource record sets that are associated with this traffic policy instance. </p>
-- @param TrafficPolicyVersion [TrafficPolicyVersion] <p>The version of the traffic policy that Amazon Route 53 used to create resource record sets in the specified hosted zone.</p>
-- @param TrafficPolicyType [RRType] <p>The DNS type that Amazon Route 53 assigned to all of the resource record sets that it created for this traffic policy instance. </p>
-- @param State [TrafficPolicyInstanceState] <p>The value of <code>State</code> is one of the following values:</p> <dl> <dt>Applied</dt> <dd> <p>Amazon Route 53 has finished creating resource record sets, and changes have propagated to all Amazon Route 53 edge locations.</p> </dd> <dt>Creating</dt> <dd> <p>Amazon Route 53 is creating the resource record sets. Use <code>GetTrafficPolicyInstance</code> to confirm that the <code>CreateTrafficPolicyInstance</code> request completed successfully.</p> </dd> <dt>Failed</dt> <dd> <p>Amazon Route 53 wasn't able to create or update the resource record sets. When the value of <code>State</code> is <code>Failed</code>, see <code>Message</code> for an explanation of what caused the request to fail.</p> </dd> </dl>
-- @param TrafficPolicyId [TrafficPolicyId] <p>The ID of the traffic policy that Amazon Route 53 used to create resource record sets in the specified hosted zone.</p>
-- @param TTL [TTL] <p>The TTL that Amazon Route 53 assigned to all of the resource record sets that it created in the specified hosted zone.</p>
-- @param HostedZoneId [ResourceId] <p>The ID of the hosted zone that Amazon Route 53 created resource record sets in.</p>
-- @param Message [Message] <p>If <code>State</code> is <code>Failed</code>, an explanation of the reason for the failure. If <code>State</code> is another value, <code>Message</code> is empty.</p>
-- @param Id [TrafficPolicyInstanceId] <p>The ID that Amazon Route 53 assigned to the new traffic policy instance.</p>
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
-- <p>One or more traffic policy instances were created by using the specified traffic policy.</p>
-- @param message [ErrorMessage] <p>Descriptive message for the error response.</p>
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
-- <p>A complex type that describes change information about changes made to your hosted zone.</p>
-- @param Status [ChangeStatus] <p>The current state of the request. <code>PENDING</code> indicates that this request has not yet been applied to all Amazon Route 53 DNS servers.</p>
-- @param Comment [ResourceDescription] <p>A complex type that describes change information about changes made to your hosted zone.</p> <p>This element contains an ID that you use when performing a <a>GetChange</a> action to get detailed information about the change.</p>
-- @param SubmittedAt [TimeStamp] <p>The date and time that the change request was submitted in <a href="https://en.wikipedia.org/wiki/ISO_8601">ISO 8601 format</a> and Coordinated Universal Time (UTC). For example, the value <code>2017-03-27T17:48:16.751Z</code> represents March 27, 2017 at 17:48:16.751 UTC.</p>
-- @param Id [ResourceId] <p>The ID of the request.</p>
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
-- <p>A complex type that contains the response information for the request.</p>
-- @param TrafficPolicyInstanceTypeMarker [RRType] <p>If <code>IsTruncated</code> is true, <code>TrafficPolicyInstanceTypeMarker</code> is the DNS type of the resource record sets that are associated with the first traffic policy instance in the next group of traffic policy instances.</p>
-- @param TrafficPolicyInstanceNameMarker [DNSName] <p>If <code>IsTruncated</code> is <code>true</code>, <code>TrafficPolicyInstanceNameMarker</code> is the name of the first traffic policy instance in the next group of traffic policy instances.</p>
-- @param TrafficPolicyInstances [TrafficPolicyInstances] <p>A list that contains one <code>TrafficPolicyInstance</code> element for each traffic policy instance that matches the elements in the request. </p>
-- @param MaxItems [PageMaxItems] <p>The value that you specified for the <code>MaxItems</code> parameter in the <code>ListTrafficPolicyInstancesByHostedZone</code> request that produced the current response.</p>
-- @param IsTruncated [PageTruncated] <p>A flag that indicates whether there are more traffic policy instances to be listed. If the response was truncated, you can get the next group of traffic policy instances by submitting another <code>ListTrafficPolicyInstancesByHostedZone</code> request and specifying the values of <code>HostedZoneIdMarker</code>, <code>TrafficPolicyInstanceNameMarker</code>, and <code>TrafficPolicyInstanceTypeMarker</code> in the corresponding request parameters.</p>
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
-- <p>A complex type that contains the response to a <code>GetHealthCheckLastFailureReason</code> request.</p>
-- @param HealthCheckObservations [HealthCheckObservations] <p>A list that contains one <code>Observation</code> element for each Amazon Route 53 health checker that is reporting a last failure reason. </p>
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
-- <p>The specified delegation set has already been marked as reusable.</p>
-- @param message [ErrorMessage] <p>Descriptive message for the error response.</p>
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
-- <p>The limits specified for a resource have been exceeded.</p>
-- @param message [ErrorMessage] <p>Descriptive message for the error response.</p>
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
-- <p>A request to get the status for a health check.</p>
-- @param HealthCheckId [HealthCheckId] <p>The ID for the health check that you want the current status for. When you created the health check, <code>CreateHealthCheck</code> returned the ID in the response, in the <code>HealthCheckId</code> element.</p> <note> <p>If you want to check the status of a calculated health check, you must use the Amazon Route 53 console or the CloudWatch console. You can't use <code>GetHealthCheckStatus</code> to get the status of a calculated health check.</p> </note>
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
-- <p>A complex type that contains information about the health checks or hosted zones for which you want to list tags.</p>
-- @param ResourceTagSet [ResourceTagSet] <p>A <code>ResourceTagSet</code> containing tags associated with the specified resource.</p>
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
-- <p> <i>Alias resource record sets only:</i> Information about the CloudFront distribution, Elastic Beanstalk environment, ELB load balancer, Amazon S3 bucket, or Amazon Route 53 resource record set that you're redirecting queries to. An Elastic Beanstalk environment must have a regionalized subdomain.</p> <p>When creating resource record sets for a private hosted zone, note the following:</p> <ul> <li> <p>Resource record sets can't be created for CloudFront distributions in a private hosted zone.</p> </li> <li> <p>Creating geolocation alias resource record sets or latency alias resource record sets in a private hosted zone is unsupported.</p> </li> <li> <p>For information about creating failover resource record sets in a private hosted zone, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-private-hosted-zones.html">Configuring Failover in a Private Hosted Zone</a>.</p> </li> </ul>
-- @param HostedZoneId [ResourceId] <p> <i>Alias resource records sets only</i>: The value used depends on where you want to route traffic:</p> <dl> <dt>CloudFront distribution</dt> <dd> <p>Specify <code>Z2FDTNDATAQYW2</code>.</p> <note> <p>Alias resource record sets for CloudFront can't be created in a private zone.</p> </note> </dd> <dt>Elastic Beanstalk environment</dt> <dd> <p>Specify the hosted zone ID for the region in which you created the environment. The environment must have a regionalized subdomain. For a list of regions and the corresponding hosted zone IDs, see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html#elasticbeanstalk_region">AWS Elastic Beanstalk</a> in the "AWS Regions and Endpoints" chapter of the <i>Amazon Web Services General Reference</i>.</p> </dd> <dt>ELB load balancer</dt> <dd> <p>Specify the value of the hosted zone ID for the load balancer. Use the following methods to get the hosted zone ID:</p> <ul> <li> <p> <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html#elb_region">Elastic Load Balancing</a> table in the "AWS Regions and Endpoints" chapter of the <i>Amazon Web Services General Reference</i>: Use the value in the "Amazon Route 53 Hosted Zone ID" column that corresponds with the region that you created your load balancer in.</p> </li> <li> <p> <b>AWS Management Console</b>: Go to the Amazon EC2 page, click <b>Load Balancers</b> in the navigation pane, select the load balancer, and get the value of the <b>Hosted zone</b> field on the <b>Description</b> tab.</p> </li> <li> <p> <b>Elastic Load Balancing API</b>: Use <code>DescribeLoadBalancers</code> to get the value of <code>CanonicalHostedZoneNameId</code>. For more information, see the applicable guide:</p> <ul> <li> <p>Classic Load Balancer: <a href="http://docs.aws.amazon.com/elasticloadbalancing/2012-06-01/APIReference/API_DescribeLoadBalancers.html">DescribeLoadBalancers</a> </p> </li> <li> <p>Application Load Balancer: <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeLoadBalancers.html">DescribeLoadBalancers</a> </p> </li> </ul> </li> <li> <p> <b>AWS CLI</b>: Use <code> <a href="http://docs.aws.amazon.com/cli/latest/reference/elb/describe-load-balancers.html">describe-load-balancers</a> </code> to get the value of <code>CanonicalHostedZoneNameID</code>.</p> </li> </ul> </dd> <dt>An Amazon S3 bucket configured as a static website</dt> <dd> <p>Specify the hosted zone ID for the region that you created the bucket in. For more information about valid values, see the <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region">Amazon Simple Storage Service Website Endpoints</a> table in the "AWS Regions and Endpoints" chapter of the <i>Amazon Web Services General Reference</i>.</p> </dd> <dt>Another Amazon Route 53 resource record set in your hosted zone</dt> <dd> <p>Specify the hosted zone ID of your hosted zone. (An alias resource record set can't reference a resource record set in a different hosted zone.)</p> </dd> </dl>
-- @param EvaluateTargetHealth [AliasHealthEnabled] <p> <i>Applies only to alias, failover alias, geolocation alias, latency alias, and weighted alias resource record sets:</i> When <code>EvaluateTargetHealth</code> is <code>true</code>, an alias resource record set inherits the health of the referenced AWS resource, such as an ELB load balancer, or the referenced resource record set.</p> <p>Note the following:</p> <ul> <li> <p>You can't set <code>EvaluateTargetHealth</code> to <code>true</code> when the alias target is a CloudFront distribution.</p> </li> <li> <p>If the AWS resource that you specify in <code>AliasTarget</code> is a resource record set or a group of resource record sets (for example, a group of weighted resource record sets), but it is not another alias resource record set, we recommend that you associate a health check with all of the resource record sets in the alias target. For more information, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-complex-configs.html#dns-failover-complex-configs-hc-omitting">What Happens When You Omit Health Checks?</a> in the <i>Amazon Route 53 Developer Guide</i>.</p> </li> <li> <p>If you specify an Elastic Beanstalk environment in <code>HostedZoneId</code> and <code>DNSName</code>, and if the environment contains an ELB load balancer, Elastic Load Balancing routes queries only to the healthy Amazon EC2 instances that are registered with the load balancer. (An environment automatically contains an ELB load balancer if it includes more than one EC2 instance.) If you set <code>EvaluateTargetHealth</code> to <code>true</code> and either no EC2 instances are healthy or the load balancer itself is unhealthy, Amazon Route 53 routes queries to other available resources that are healthy, if any.</p> <p>If the environment contains a single EC2 instance, there are no special requirements.</p> </li> <li> <p>If you specify an ELB load balancer in <code> <a>AliasTarget</a> </code>, ELB routes queries only to the healthy EC2 instances that are registered with the load balancer. If no EC2 instances are healthy or if the load balancer itself is unhealthy, and if <code>EvaluateTargetHealth</code> is true for the corresponding alias resource record set, Amazon Route 53 routes queries to other resources. When you create a load balancer, you configure settings for ELB health checks; they're not Amazon Route 53 health checks, but they perform a similar function. Do not create Amazon Route 53 health checks for the EC2 instances that you register with an ELB load balancer.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-complex-configs.html">How Health Checks Work in More Complex Amazon Route 53 Configurations</a> in the <i>Amazon Route 53 Developer Guide</i>.</p> </li> <li> <p>We recommend that you set <code>EvaluateTargetHealth</code> to true only when you have enough idle capacity to handle the failure of one or more endpoints.</p> </li> </ul> <p>For more information and examples, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover.html">Amazon Route 53 Health Checks and DNS Failover</a> in the <i>Amazon Route 53 Developer Guide</i>.</p>
-- @param DNSName [DNSName] <p> <i>Alias resource record sets only:</i> The value that you specify depends on where you want to route queries:</p> <dl> <dt>CloudFront distribution</dt> <dd> <p>Specify the domain name that CloudFront assigned when you created your distribution.</p> <p>Your CloudFront distribution must include an alternate domain name that matches the name of the resource record set. For example, if the name of the resource record set is <i>acme.example.com</i>, your CloudFront distribution must include <i>acme.example.com</i> as one of the alternate domain names. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/CNAMEs.html">Using Alternate Domain Names (CNAMEs)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> </dd> <dt>Elastic Beanstalk environment</dt> <dd> <p>Specify the <code>CNAME</code> attribute for the environment. (The environment must have a regionalized domain name.) You can use the following methods to get the value of the CNAME attribute:</p> <ul> <li> <p> <i>AWS Management Console</i>: For information about how to get the value by using the console, see <a href="http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/customdomains.html">Using Custom Domains with AWS Elastic Beanstalk</a> in the <i>AWS Elastic Beanstalk Developer Guide</i>.</p> </li> <li> <p> <i>Elastic Beanstalk API</i>: Use the <code>DescribeEnvironments</code> action to get the value of the <code>CNAME</code> attribute. For more information, see <a href="http://docs.aws.amazon.com/elasticbeanstalk/latest/api/API_DescribeEnvironments.html">DescribeEnvironments</a> in the <i>AWS Elastic Beanstalk API Reference</i>.</p> </li> <li> <p> <i>AWS CLI</i>: Use the <code>describe-environments</code> command to get the value of the <code>CNAME</code> attribute. For more information, see <a href="http://docs.aws.amazon.com/cli/latest/reference/elasticbeanstalk/describe-environments.html">describe-environments</a> in the <i>AWS Command Line Interface Reference</i>.</p> </li> </ul> </dd> <dt>ELB load balancer</dt> <dd> <p>Specify the DNS name that is associated with the load balancer. Get the DNS name by using the AWS Management Console, the ELB API, or the AWS CLI. </p> <ul> <li> <p> <b>AWS Management Console</b>: Go to the EC2 page, choose <b>Load Balancers</b> in the navigation pane, choose the load balancer, choose the <b>Description</b> tab, and get the value of the <b>DNS name</b> field. (If you're routing traffic to a Classic Load Balancer, get the value that begins with <b>dualstack</b>.) </p> </li> <li> <p> <b>Elastic Load Balancing API</b>: Use <code>DescribeLoadBalancers</code> to get the value of <code>DNSName</code>. For more information, see the applicable guide:</p> <ul> <li> <p>Classic Load Balancer: <a href="http://docs.aws.amazon.com/elasticloadbalancing/2012-06-01/APIReference/API_DescribeLoadBalancers.html">DescribeLoadBalancers</a> </p> </li> <li> <p>Application Load Balancer: <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeLoadBalancers.html">DescribeLoadBalancers</a> </p> </li> </ul> </li> <li> <p> <b>AWS CLI</b>: Use <code> <a href="http://docs.aws.amazon.com/cli/latest/reference/elb/describe-load-balancers.html">describe-load-balancers</a> </code> to get the value of <code>DNSName</code>.</p> </li> </ul> </dd> <dt>Amazon S3 bucket that is configured as a static website</dt> <dd> <p>Specify the domain name of the Amazon S3 website endpoint in which you created the bucket, for example, <code>s3-website-us-east-2.amazonaws.com</code>. For more information about valid values, see the table <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region">Amazon Simple Storage Service (S3) Website Endpoints</a> in the <i>Amazon Web Services General Reference</i>. For more information about using S3 buckets for websites, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/getting-started.html">Getting Started with Amazon Route 53</a> in the <i>Amazon Route 53 Developer Guide.</i> </p> </dd> <dt>Another Amazon Route 53 resource record set</dt> <dd> <p>Specify the value of the <code>Name</code> element for a resource record set in the current hosted zone.</p> </dd> </dl>
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
-- <p>A request to retrieve a count of all the hosted zones that are associated with the current AWS account.</p>
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
-- <p>A request for the reason that a health check failed most recently.</p>
-- @param HealthCheckId [HealthCheckId] <p>The ID for the health check for which you want the last failure reason. When you created the health check, <code>CreateHealthCheck</code> returned the ID in the response, in the <code>HealthCheckId</code> element.</p>
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
-- <p>This hosted zone can't be created because the hosted zone limit is exceeded. To request a limit increase, go to the Amazon Route 53 <a href="http://aws.amazon.com/route53-request/">Contact Us</a> page.</p>
-- @param message [ErrorMessage] <p>Descriptive message for the error response.</p>
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
-- <p>A complex type that contains information about a tag that you want to add or edit for the specified health check or hosted zone.</p>
-- @param Value [TagValue] <p>The value of <code>Value</code> depends on the operation that you want to perform:</p> <ul> <li> <p> <b>Add a tag to a health check or hosted zone</b>: <code>Value</code> is the value that you want to give the new tag.</p> </li> <li> <p> <b>Edit a tag</b>: <code>Value</code> is the new value that you want to assign the tag.</p> </li> </ul>
-- @param Key [TagKey] <p>The value of <code>Key</code> depends on the operation that you want to perform:</p> <ul> <li> <p> <b>Add a tag to a health check or hosted zone</b>: <code>Key</code> is the name that you want to give the new tag.</p> </li> <li> <p> <b>Edit a tag</b>: <code>Key</code> is the name of the tag that you want to change the <code>Value</code> for.</p> </li> <li> <p> <b> Delete a key</b>: <code>Key</code> is the name of the tag you want to remove.</p> </li> <li> <p> <b>Give a name to a health check</b>: Edit the default <code>Name</code> tag. In the Amazon Route 53 console, the list of your health checks includes a <b>Name</b> column that lets you see the name that you've given to each health check.</p> </li> </ul>
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
-- <p>A complex type that contains the response information for the <code>CreateTrafficPolicyVersion</code> request.</p>
-- @param TrafficPolicy [TrafficPolicy] <p>A complex type that contains settings for the new version of the traffic policy.</p>
-- @param Location [ResourceURI] <p>A unique URL that represents a new traffic policy version.</p>
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
-- <p>Information about the resource record set to create or delete.</p>
-- @param GeoLocation [GeoLocation] <p> <i>Geo location resource record sets only:</i> A complex type that lets you control how Amazon Route 53 responds to DNS queries based on the geographic origin of the query. For example, if you want all queries from Africa to be routed to a web server with an IP address of <code>192.0.2.111</code>, create a resource record set with a <code>Type</code> of <code>A</code> and a <code>ContinentCode</code> of <code>AF</code>.</p> <note> <p>Creating geolocation and geolocation alias resource record sets in private hosted zones is not supported.</p> </note> <p>If you create separate resource record sets for overlapping geographic regions (for example, one resource record set for a continent and one for a country on the same continent), priority goes to the smallest geographic region. This allows you to route most queries for a continent to one resource and to route queries for a country on that continent to a different resource.</p> <p>You can't create two geolocation resource record sets that specify the same geographic location.</p> <p>The value <code>*</code> in the <code>CountryCode</code> element matches all geographic locations that aren't specified in other geolocation resource record sets that have the same values for the <code>Name</code> and <code>Type</code> elements.</p> <important> <p>Geolocation works by mapping IP addresses to locations. However, some IP addresses aren't mapped to geographic locations, so even if you create geolocation resource record sets that cover all seven continents, Amazon Route 53 will receive some DNS queries from locations that it can't identify. We recommend that you create a resource record set for which the value of <code>CountryCode</code> is <code>*</code>, which handles both queries that come from locations for which you haven't created geolocation resource record sets and queries from IP addresses that aren't mapped to a location. If you don't create a <code>*</code> resource record set, Amazon Route 53 returns a "no answer" response for queries from those locations.</p> </important> <p>You can't create non-geolocation resource record sets that have the same values for the <code>Name</code> and <code>Type</code> elements as geolocation resource record sets.</p>
-- @param HealthCheckId [HealthCheckId] <p>If you want Amazon Route 53 to return this resource record set in response to a DNS query only when a health check is passing, include the <code>HealthCheckId</code> element and specify the ID of the applicable health check.</p> <p>Amazon Route 53 determines whether a resource record set is healthy based on one of the following:</p> <ul> <li> <p>By periodically sending a request to the endpoint that is specified in the health check</p> </li> <li> <p>By aggregating the status of a specified group of health checks (calculated health checks)</p> </li> <li> <p>By determining the current state of a CloudWatch alarm (CloudWatch metric health checks)</p> </li> </ul> <p>For more information, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-determining-health-of-endpoints.html">How Amazon Route 53 Determines Whether an Endpoint Is Healthy</a>.</p> <p>The <code>HealthCheckId</code> element is only useful when Amazon Route 53 is choosing between two or more resource record sets to respond to a DNS query, and you want Amazon Route 53 to base the choice in part on the status of a health check. Configuring health checks only makes sense in the following configurations:</p> <ul> <li> <p>You're checking the health of the resource record sets in a group of weighted, latency, geolocation, or failover resource record sets, and you specify health check IDs for all of the resource record sets. If the health check for one resource record set specifies an endpoint that is not healthy, Amazon Route 53 stops responding to queries using the value for that resource record set.</p> </li> <li> <p>You set <code>EvaluateTargetHealth</code> to true for the resource record sets in a group of alias, weighted alias, latency alias, geolocation alias, or failover alias resource record sets, and you specify health check IDs for all of the resource record sets that are referenced by the alias resource record sets.</p> </li> </ul> <important> <p>Amazon Route 53 doesn't check the health of the endpoint specified in the resource record set, for example, the endpoint specified by the IP address in the <code>Value</code> element. When you add a <code>HealthCheckId</code> element to a resource record set, Amazon Route 53 checks the health of the endpoint that you specified in the health check. </p> </important> <p>For geolocation resource record sets, if an endpoint is unhealthy, Amazon Route 53 looks for a resource record set for the larger, associated geographic region. For example, suppose you have resource record sets for a state in the United States, for the United States, for North America, and for all locations. If the endpoint for the state resource record set is unhealthy, Amazon Route 53 checks the resource record sets for the United States, for North America, and for all locations (a resource record set for which the value of <code>CountryCode</code> is <code>*</code>), in that order, until it finds a resource record set for which the endpoint is healthy. </p> <p>If your health checks specify the endpoint only by domain name, we recommend that you create a separate health check for each endpoint. For example, create a health check for each <code>HTTP</code> server that is serving content for <code>www.example.com</code>. For the value of <code>FullyQualifiedDomainName</code>, specify the domain name of the server (such as <code>us-east-2-www.example.com</code>), not the name of the resource record sets (example.com).</p> <important> <p>n this configuration, if you create a health check for which the value of <code>FullyQualifiedDomainName</code> matches the name of the resource record sets and then associate the health check with those resource record sets, health check results will be unpredictable.</p> </important> <p>For more information, see the following topics in the <i>Amazon Route 53 Developer Guide</i>:</p> <ul> <li> <p> <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover.html">Amazon Route 53 Health Checks and DNS Failover</a> </p> </li> <li> <p> <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-private-hosted-zones.html">Configuring Failover in a Private Hosted Zone</a> </p> </li> </ul>
-- @param Name [DNSName] <p>The name of the domain you want to perform the action on.</p> <p>Enter a fully qualified domain name, for example, <code>www.example.com</code>. You can optionally include a trailing dot. If you omit the trailing dot, Amazon Route 53 still assumes that the domain name that you specify is fully qualified. This means that Amazon Route 53 treats <code>www.example.com</code> (without a trailing dot) and <code>www.example.com.</code> (with a trailing dot) as identical.</p> <p>For information about how to specify characters other than <code>a-z</code>, <code>0-9</code>, and <code>-</code> (hyphen) and how to specify internationalized domain names, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DomainNameFormat.html">DNS Domain Name Format</a> in the <i>Amazon Route 53 Developer Guide</i>.</p> <p>You can use the asterisk (*) wildcard to replace the leftmost label in a domain name, for example, <code>*.example.com</code>. Note the following:</p> <ul> <li> <p>The * must replace the entire label. For example, you can't specify <code>*prod.example.com</code> or <code>prod*.example.com</code>.</p> </li> <li> <p>The * can't replace any of the middle labels, for example, marketing.*.example.com.</p> </li> <li> <p>If you include * in any position other than the leftmost label in a domain name, DNS treats it as an * character (ASCII 42), not as a wildcard.</p> <important> <p>You can't use the * wildcard for resource records sets that have a type of NS.</p> </important> </li> </ul> <p>You can use the * wildcard as the leftmost label in a domain name, for example, <code>*.example.com</code>. You can't use an * for one of the middle labels, for example, <code>marketing.*.example.com</code>. In addition, the * must replace the entire label; for example, you can't specify <code>prod*.example.com</code>.</p>
-- @param Weight [ResourceRecordSetWeight] <p> <i>Weighted resource record sets only:</i> Among resource record sets that have the same combination of DNS name and type, a value that determines the proportion of DNS queries that Amazon Route 53 responds to using the current resource record set. Amazon Route 53 calculates the sum of the weights for the resource record sets that have the same combination of DNS name and type. Amazon Route 53 then responds to queries based on the ratio of a resource's weight to the total. Note the following:</p> <ul> <li> <p>You must specify a value for the <code>Weight</code> element for every weighted resource record set.</p> </li> <li> <p>You can only specify one <code>ResourceRecord</code> per weighted resource record set.</p> </li> <li> <p>You can't create latency, failover, or geolocation resource record sets that have the same values for the <code>Name</code> and <code>Type</code> elements as weighted resource record sets.</p> </li> <li> <p>You can create a maximum of 100 weighted resource record sets that have the same values for the <code>Name</code> and <code>Type</code> elements.</p> </li> <li> <p>For weighted (but not weighted alias) resource record sets, if you set <code>Weight</code> to <code>0</code> for a resource record set, Amazon Route 53 never responds to queries with the applicable value for that resource record set. However, if you set <code>Weight</code> to <code>0</code> for all resource record sets that have the same combination of DNS name and type, traffic is routed to all resources with equal probability.</p> <p>The effect of setting <code>Weight</code> to <code>0</code> is different when you associate health checks with weighted resource record sets. For more information, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-configuring-options.html">Options for Configuring Amazon Route 53 Active-Active and Active-Passive Failover</a> in the <i>Amazon Route 53 Developer Guide</i>.</p> </li> </ul>
-- @param Type [RRType] <p>The DNS record type. For information about different record types and how data is encoded for them, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/ResourceRecordTypes.html">Supported DNS Resource Record Types</a> in the <i>Amazon Route 53 Developer Guide</i>.</p> <p>Valid values for basic resource record sets: <code>A</code> | <code>AAAA</code> | <code>CNAME</code> | <code>MX</code> | <code>NAPTR</code> | <code>NS</code> | <code>PTR</code> | <code>SOA</code> | <code>SPF</code> | <code>SRV</code> | <code>TXT</code> </p> <p>Values for weighted, latency, geolocation, and failover resource record sets: <code>A</code> | <code>AAAA</code> | <code>CNAME</code> | <code>MX</code> | <code>NAPTR</code> | <code>PTR</code> | <code>SPF</code> | <code>SRV</code> | <code>TXT</code>. When creating a group of weighted, latency, geolocation, or failover resource record sets, specify the same value for all of the resource record sets in the group.</p> <p>Valid values for multivalue answer resource record sets: <code>A</code> | <code>AAAA</code> | <code>MX</code> | <code>NAPTR</code> | <code>PTR</code> | <code>SPF</code> | <code>SRV</code> | <code>TXT</code> </p> <note> <p>SPF records were formerly used to verify the identity of the sender of email messages. However, we no longer recommend that you create resource record sets for which the value of <code>Type</code> is <code>SPF</code>. RFC 7208, <i>Sender Policy Framework (SPF) for Authorizing Use of Domains in Email, Version 1</i>, has been updated to say, "...[I]ts existence and mechanism defined in [RFC4408] have led to some interoperability issues. Accordingly, its use is no longer appropriate for SPF version 1; implementations are not to use it." In RFC 7208, see section 14.1, <a href="http://tools.ietf.org/html/rfc7208#section-14.1">The SPF DNS Record Type</a>.</p> </note> <p>Values for alias resource record sets:</p> <ul> <li> <p> <b>CloudFront distributions:</b> <code>A</code> </p> <p>If IPv6 is enabled for the distribution, create two resource record sets to route traffic to your distribution, one with a value of <code>A</code> and one with a value of <code>AAAA</code>. </p> </li> <li> <p> <b>AWS Elastic Beanstalk environment that has a regionalized subdomain</b>: <code>A</code> </p> </li> <li> <p> <b>ELB load balancers:</b> <code>A</code> | <code>AAAA</code> </p> </li> <li> <p> <b>Amazon S3 buckets:</b> <code>A</code> </p> </li> <li> <p> <b>Another resource record set in this hosted zone:</b> Specify the type of the resource record set that you're creating the alias for. All values are supported except <code>NS</code> and <code>SOA</code>.</p> </li> </ul>
-- @param Region [ResourceRecordSetRegion] <p> <i>Latency-based resource record sets only:</i> The Amazon EC2 Region where you created the resource that this resource record set refers to. The resource typically is an AWS resource, such as an EC2 instance or an ELB load balancer, and is referred to by an IP address or a DNS domain name, depending on the record type.</p> <note> <p>Creating latency and latency alias resource record sets in private hosted zones is not supported.</p> </note> <p>When Amazon Route 53 receives a DNS query for a domain name and type for which you have created latency resource record sets, Amazon Route 53 selects the latency resource record set that has the lowest latency between the end user and the associated Amazon EC2 Region. Amazon Route 53 then returns the value that is associated with the selected resource record set.</p> <p>Note the following:</p> <ul> <li> <p>You can only specify one <code>ResourceRecord</code> per latency resource record set.</p> </li> <li> <p>You can only create one latency resource record set for each Amazon EC2 Region.</p> </li> <li> <p>You aren't required to create latency resource record sets for all Amazon EC2 Regions. Amazon Route 53 will choose the region with the best latency from among the regions that you create latency resource record sets for.</p> </li> <li> <p>You can't create non-latency resource record sets that have the same values for the <code>Name</code> and <code>Type</code> elements as latency resource record sets.</p> </li> </ul>
-- @param AliasTarget [AliasTarget] <p> <i>Alias resource record sets only:</i> Information about the CloudFront distribution, AWS Elastic Beanstalk environment, ELB load balancer, Amazon S3 bucket, or Amazon Route 53 resource record set to which you're redirecting queries. The AWS Elastic Beanstalk environment must have a regionalized subdomain.</p> <p>If you're creating resource records sets for a private hosted zone, note the following:</p> <ul> <li> <p>You can't create alias resource record sets for CloudFront distributions in a private hosted zone.</p> </li> <li> <p>Creating geolocation alias resource record sets or latency alias resource record sets in a private hosted zone is unsupported.</p> </li> <li> <p>For information about creating failover resource record sets in a private hosted zone, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-private-hosted-zones.html">Configuring Failover in a Private Hosted Zone</a> in the <i>Amazon Route 53 Developer Guide</i>.</p> </li> </ul>
-- @param ResourceRecords [ResourceRecords] <p>Information about the resource records to act upon.</p> <note> <p>If you're creating an alias resource record set, omit <code>ResourceRecords</code>.</p> </note>
-- @param MultiValueAnswer [ResourceRecordSetMultiValueAnswer] <p> <i>Multivalue answer resource record sets only</i>: To route traffic approximately randomly to multiple resources, such as web servers, create one multivalue answer record for each resource and specify <code>true</code> for <code>MultiValueAnswer</code>. Note the following:</p> <ul> <li> <p>If you associate a health check with a multivalue answer resource record set, Amazon Route 53 responds to DNS queries with the corresponding IP address only when the health check is healthy.</p> </li> <li> <p>If you don't associate a health check with a multivalue answer record, Amazon Route 53 always considers the record to be healthy.</p> </li> <li> <p>Amazon Route 53 responds to DNS queries with up to eight healthy records; if you have eight or fewer healthy records, Amazon Route 53 responds to all DNS queries with all the healthy records.</p> </li> <li> <p>If you have more than eight healthy records, Amazon Route 53 responds to different DNS resolvers with different combinations of healthy records.</p> </li> <li> <p>When all records are unhealthy, Amazon Route 53 responds to DNS queries with up to eight unhealthy records.</p> </li> <li> <p>If a resource becomes unavailable after a resolver caches a response, client software typically tries another of the IP addresses in the response.</p> </li> </ul> <p>You can't create multivalue answer alias records.</p>
-- @param TTL [TTL] <p>The resource record cache time to live (TTL), in seconds. Note the following:</p> <ul> <li> <p>If you're creating or updating an alias resource record set, omit <code>TTL</code>. Amazon Route 53 uses the value of <code>TTL</code> for the alias target. </p> </li> <li> <p>If you're associating this resource record set with a health check (if you're adding a <code>HealthCheckId</code> element), we recommend that you specify a <code>TTL</code> of 60 seconds or less so clients respond quickly to changes in health status.</p> </li> <li> <p>All of the resource record sets in a group of weighted resource record sets must have the same value for <code>TTL</code>.</p> </li> <li> <p>If a group of weighted resource record sets includes one or more weighted alias resource record sets for which the alias target is an ELB load balancer, we recommend that you specify a <code>TTL</code> of 60 seconds for all of the non-alias weighted resource record sets that have the same name and type. Values other than 60 seconds (the TTL for load balancers) will change the effect of the values that you specify for <code>Weight</code>.</p> </li> </ul>
-- @param TrafficPolicyInstanceId [TrafficPolicyInstanceId] <p>When you create a traffic policy instance, Amazon Route 53 automatically creates a resource record set. <code>TrafficPolicyInstanceId</code> is the ID of the traffic policy instance that Amazon Route 53 created this resource record set for.</p> <important> <p>To delete the resource record set that is associated with a traffic policy instance, use <code>DeleteTrafficPolicyInstance</code>. Amazon Route 53 will delete the resource record set automatically. If you delete the resource record set by using <code>ChangeResourceRecordSets</code>, Amazon Route 53 doesn't automatically delete the traffic policy instance, and you'll continue to be charged for it even though it's no longer in use. </p> </important>
-- @param SetIdentifier [ResourceRecordSetIdentifier] <p> <i>Weighted, Latency, Geo, and Failover resource record sets only:</i> An identifier that differentiates among multiple resource record sets that have the same combination of DNS name and type. The value of <code>SetIdentifier</code> must be unique for each resource record set that has the same combination of DNS name and type. Omit <code>SetIdentifier</code> for any other types of record sets.</p>
-- @param Failover [ResourceRecordSetFailover] <p> <i>Failover resource record sets only:</i> To configure failover, you add the <code>Failover</code> element to two resource record sets. For one resource record set, you specify <code>PRIMARY</code> as the value for <code>Failover</code>; for the other resource record set, you specify <code>SECONDARY</code>. In addition, you include the <code>HealthCheckId</code> element and specify the health check that you want Amazon Route 53 to perform for each resource record set.</p> <p>Except where noted, the following failover behaviors assume that you have included the <code>HealthCheckId</code> element in both resource record sets:</p> <ul> <li> <p>When the primary resource record set is healthy, Amazon Route 53 responds to DNS queries with the applicable value from the primary resource record set regardless of the health of the secondary resource record set.</p> </li> <li> <p>When the primary resource record set is unhealthy and the secondary resource record set is healthy, Amazon Route 53 responds to DNS queries with the applicable value from the secondary resource record set.</p> </li> <li> <p>When the secondary resource record set is unhealthy, Amazon Route 53 responds to DNS queries with the applicable value from the primary resource record set regardless of the health of the primary resource record set.</p> </li> <li> <p>If you omit the <code>HealthCheckId</code> element for the secondary resource record set, and if the primary resource record set is unhealthy, Amazon Route 53 always responds to DNS queries with the applicable value from the secondary resource record set. This is true regardless of the health of the associated endpoint.</p> </li> </ul> <p>You can't create non-failover resource record sets that have the same values for the <code>Name</code> and <code>Type</code> elements as failover resource record sets.</p> <p>For failover alias resource record sets, you must also include the <code>EvaluateTargetHealth</code> element and set the value to true.</p> <p>For more information about configuring failover for Amazon Route 53, see the following topics in the <i>Amazon Route 53 Developer Guide</i>: </p> <ul> <li> <p> <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover.html">Amazon Route 53 Health Checks and DNS Failover</a> </p> </li> <li> <p> <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-private-hosted-zones.html">Configuring Failover in a Private Hosted Zone</a> </p> </li> </ul>
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
-- <p>Amazon Route 53 doesn't support the specified geolocation.</p>
-- @param message [ErrorMessage] <p>Descriptive message for the error response.</p>
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
-- <p>You've created the maximum number of traffic policies that can be created for the current AWS account. You can request an increase to the limit on the <a href="http://aws.amazon.com/route53-request/">Contact Us</a> page.</p>
-- @param message [ErrorMessage] <p>Descriptive message for the error response.</p>
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
-- <p>A complex type that contains change information for the resource record set.</p>
-- @param HostedZoneId [ResourceId] <p>The ID of the hosted zone that contains the resource record sets that you want to change.</p>
-- @param ChangeBatch [ChangeBatch] <p>A complex type that contains an optional comment and the <code>Changes</code> element.</p>
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
-- <p>A complex type containing tags for the specified resources.</p>
-- @param ResourceTagSets [ResourceTagSetList] <p>A list of <code>ResourceTagSet</code>s containing tags associated with the specified resources.</p>
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
-- <p>A complex type that contains the response information for the <code>AssociateVPCWithHostedZone</code> request.</p>
-- @param ChangeInfo [ChangeInfo] <p>A complex type that describes the changes made to your hosted zone.</p>
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
-- <p>The input for a GetChange request.</p>
-- @param Id [ResourceId] <p>The ID of the change batch request. The value that you specify here is the value that <code>ChangeResourceRecordSets</code> returned in the <code>Id</code> element when you submitted the request.</p>
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
-- <p>A request for the traffic policy instances that you created in a specified hosted zone.</p>
-- @param HostedZoneId [ResourceId] <p>The ID of the hosted zone that you want to list traffic policy instances for.</p>
-- @param TrafficPolicyInstanceTypeMarker [RRType] <p>If the value of <code>IsTruncated</code> in the previous response is true, you have more traffic policy instances. To get more traffic policy instances, submit another <code>ListTrafficPolicyInstances</code> request. For the value of <code>trafficpolicyinstancetype</code>, specify the value of <code>TrafficPolicyInstanceTypeMarker</code> from the previous response, which is the type of the first traffic policy instance in the next group of traffic policy instances.</p> <p>If the value of <code>IsTruncated</code> in the previous response was <code>false</code>, there are no more traffic policy instances to get.</p>
-- @param TrafficPolicyInstanceNameMarker [DNSName] <p>If the value of <code>IsTruncated</code> in the previous response is true, you have more traffic policy instances. To get more traffic policy instances, submit another <code>ListTrafficPolicyInstances</code> request. For the value of <code>trafficpolicyinstancename</code>, specify the value of <code>TrafficPolicyInstanceNameMarker</code> from the previous response, which is the name of the first traffic policy instance in the next group of traffic policy instances.</p> <p>If the value of <code>IsTruncated</code> in the previous response was <code>false</code>, there are no more traffic policy instances to get.</p>
-- @param MaxItems [PageMaxItems] <p>The maximum number of traffic policy instances to be included in the response body for this request. If you have more than <code>MaxItems</code> traffic policy instances, the value of the <code>IsTruncated</code> element in the response is <code>true</code>, and the values of <code>HostedZoneIdMarker</code>, <code>TrafficPolicyInstanceNameMarker</code>, and <code>TrafficPolicyInstanceTypeMarker</code> represent the first traffic policy instance that Amazon Route 53 will return if you submit another request.</p>
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
-- <p>If Amazon Route 53 can't process a request before the next request arrives, it will reject subsequent requests for the same hosted zone and return an <code>HTTP 400 error</code> (<code>Bad request</code>). If Amazon Route 53 returns this error repeatedly for the same request, we recommend that you wait, in intervals of increasing duration, before you try the request again.</p>
-- @param message [ErrorMessage] <p>If Amazon Route 53 can't process a request before the next request arrives, it will reject subsequent requests for the same hosted zone and return an <code>HTTP 400 error</code> (<code>Bad request</code>). If Amazon Route 53 returns this error repeatedly for the same request, we recommend that you wait, in intervals of increasing duration, before you try the request again.</p>
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
-- <p>No health check exists with the ID that you specified in the <code>DeleteHealthCheck</code> request.</p>
-- @param message [ErrorMessage] <p>Descriptive message for the error response.</p>
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
-- <p>A reusable delegation set with the specified ID does not exist.</p>
-- @param message [ErrorMessage] <p>Descriptive message for the error response.</p>
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
-- <p>A complex type that contains the response to a <code>TestDNSAnswer</code> request. </p>
-- @param Protocol [TransportProtocol] <p>The protocol that Amazon Route 53 used to respond to the request, either <code>UDP</code> or <code>TCP</code>. </p>
-- @param RecordType [RRType] <p>The type of the resource record set that you submitted a request for.</p>
-- @param RecordName [DNSName] <p>The name of the resource record set that you submitted a request for.</p>
-- @param ResponseCode [DNSRCode] <p>A code that indicates whether the request is valid or not. The most common response code is <code>NOERROR</code>, meaning that the request is valid. If the response is not valid, Amazon Route 53 returns a response code that describes the error. For a list of possible response codes, see <a href="http://www.iana.org/assignments/dns-parameters/dns-parameters.xhtml#dns-parameters-6">DNS RCODES</a> on the IANA website. </p>
-- @param Nameserver [Nameserver] <p>The Amazon Route 53 name server used to respond to the request.</p>
-- @param RecordData [RecordData] <p>A list that contains values that Amazon Route 53 returned for this resource record set.</p>
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
-- <p>The VPC that you specified is not authorized to be associated with the hosted zone.</p>
-- @param message [ErrorMessage] <p>Descriptive message for the error response.</p>
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
-- <p>The input is not valid.</p>
-- @param message [ErrorMessage] <p>Descriptive message for the error response.</p>
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
-- <p>A complex type that contains the response information from a <code>CreateVPCAssociationAuthorization</code> request.</p>
-- @param HostedZoneId [ResourceId] <p>The ID of the hosted zone that you authorized associating a VPC with.</p>
-- @param VPC [VPC] <p>The VPC that you authorized associating with a hosted zone.</p>
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
-- <p> The health check you're attempting to create already exists. Amazon Route 53 returns this error when you submit a request that has the following values:</p> <ul> <li> <p>The same value for <code>CallerReference</code> as an existing health check, and one or more values that differ from the existing health check that has the same caller reference.</p> </li> <li> <p>The same value for <code>CallerReference</code> as a health check that you created and later deleted, regardless of the other settings in the request.</p> </li> </ul>
-- @param message [ErrorMessage] <p>Descriptive message for the error response.</p>
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
-- <p>The VPC that you're trying to disassociate from the private hosted zone is the last VPC that is associated with the hosted zone. Amazon Route 53 doesn't support disassociating the last VPC from a hosted zone.</p>
-- @param message [ErrorMessage] <p>Descriptive message for the error response.</p>
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
-- <p>A request to retrieve a list of the public and private hosted zones that are associated with the current AWS account.</p>
-- @param Marker [PageMarker] <p>If the value of <code>IsTruncated</code> in the previous response was <code>true</code>, you have more hosted zones. To get more hosted zones, submit another <code>ListHostedZones</code> request. </p> <p>For the value of <code>marker</code>, specify the value of <code>NextMarker</code> from the previous response, which is the ID of the first hosted zone that Amazon Route 53 will return if you submit another request.</p> <p>If the value of <code>IsTruncated</code> in the previous response was <code>false</code>, there are no more hosted zones to get.</p>
-- @param DelegationSetId [ResourceId] <p>If you're using reusable delegation sets and you want to list all of the hosted zones that are associated with a reusable delegation set, specify the ID of that reusable delegation set. </p>
-- @param MaxItems [PageMaxItems] <p>(Optional) The maximum number of hosted zones that you want Amazon Route 53 to return. If you have more than <code>maxitems</code> hosted zones, the value of <code>IsTruncated</code> in the response is <code>true</code>, and the value of <code>NextMarker</code> is the hosted zone ID of the first hosted zone that Amazon Route 53 will return if you submit another request.</p>
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

-- <p>(Private hosted zones only) The ID of an Amazon VPC. </p>
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

-- <p>A value that Amazon Route 53 returned for this resource record set. A <code>RecordDataEntry</code> element is one of the following:</p> <ul> <li> <p>For non-alias resource record sets, a <code>RecordDataEntry</code> element contains one value in the resource record set. If the resource record set contains multiple values, the response includes one <code>RecordDataEntry</code> element for each value.</p> </li> <li> <p>For multiple resource record sets that have the same name and type, which includes weighted, latency, geolocation, and failover, a <code>RecordDataEntry</code> element contains the value from the appropriate resource record set based on the request.</p> </li> <li> <p>For alias resource record sets that refer to AWS resources other than another resource record set, the <code>RecordDataEntry</code> element contains an IP address or a domain name for the AWS resource, depending on the type of resource.</p> </li> <li> <p>For alias resource record sets that refer to other resource record sets, a <code>RecordDataEntry</code> element contains one value from the referenced resource record set. If the referenced resource record set contains multiple values, the response includes one <code>RecordDataEntry</code> element for each value.</p> </li> </ul>
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

-- <p>(Private hosted zones only) A list of <code>VPC</code> elements.</p>
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
