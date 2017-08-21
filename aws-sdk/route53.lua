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

local keys = {}
local asserts = {}

keys.ListVPCAssociationAuthorizationsResponse = { ["HostedZoneId"] = true, ["VPCs"] = true, ["NextToken"] = true, nil }

function asserts.AssertListVPCAssociationAuthorizationsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListVPCAssociationAuthorizationsResponse to be of type 'table'")
	assert(struct["HostedZoneId"], "Expected key HostedZoneId to exist in table")
	assert(struct["VPCs"], "Expected key VPCs to exist in table")
	if struct["HostedZoneId"] then asserts.AssertResourceId(struct["HostedZoneId"]) end
	if struct["VPCs"] then asserts.AssertVPCs(struct["VPCs"]) end
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListVPCAssociationAuthorizationsResponse[k], "ListVPCAssociationAuthorizationsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListVPCAssociationAuthorizationsResponse
-- <p>A complex type that contains the response information for the request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HostedZoneId [ResourceId] <p>The ID of the hosted zone that you can associate the listed VPCs with.</p>
-- * VPCs [VPCs] <p>The list of VPCs that are authorized to be associated with the specified hosted zone.</p>
-- * NextToken [PaginationToken] <p>When the response includes a <code>NextToken</code> element, there are more VPCs that can be associated with the specified hosted zone. To get the next page of VPCs, submit another <code>ListVPCAssociationAuthorizations</code> request, and include the value of the <code>NextToken</code> element from the response in the <code>nexttoken</code> request parameter.</p>
-- Required key: HostedZoneId
-- Required key: VPCs
-- @return ListVPCAssociationAuthorizationsResponse structure as a key-value pair table
function M.ListVPCAssociationAuthorizationsResponse(args)
	assert(args, "You must provdide an argument table when creating ListVPCAssociationAuthorizationsResponse")
	local t = { 
		["HostedZoneId"] = args["HostedZoneId"],
		["VPCs"] = args["VPCs"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListVPCAssociationAuthorizationsResponse(t)
	return t
end

keys.CreateTrafficPolicyRequest = { ["Comment"] = true, ["Document"] = true, ["Name"] = true, nil }

function asserts.AssertCreateTrafficPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTrafficPolicyRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Document"], "Expected key Document to exist in table")
	if struct["Comment"] then asserts.AssertTrafficPolicyComment(struct["Comment"]) end
	if struct["Document"] then asserts.AssertTrafficPolicyDocument(struct["Document"]) end
	if struct["Name"] then asserts.AssertTrafficPolicyName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateTrafficPolicyRequest[k], "CreateTrafficPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTrafficPolicyRequest
-- <p>A complex type that contains information about the traffic policy that you want to create.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Comment [TrafficPolicyComment] <p>(Optional) Any comments that you want to include about the traffic policy.</p>
-- * Document [TrafficPolicyDocument] <p>The definition of this traffic policy in JSON format. For more information, see <a href="http://docs.aws.amazon.com/Route53/latest/APIReference/api-policies-traffic-policy-document-format.html">Traffic Policy Document Format</a>.</p>
-- * Name [TrafficPolicyName] <p>The name of the traffic policy.</p>
-- Required key: Name
-- Required key: Document
-- @return CreateTrafficPolicyRequest structure as a key-value pair table
function M.CreateTrafficPolicyRequest(args)
	assert(args, "You must provdide an argument table when creating CreateTrafficPolicyRequest")
	local t = { 
		["Comment"] = args["Comment"],
		["Document"] = args["Document"],
		["Name"] = args["Name"],
	}
	asserts.AssertCreateTrafficPolicyRequest(t)
	return t
end

keys.ListHostedZonesByNameResponse = { ["HostedZones"] = true, ["NextHostedZoneId"] = true, ["DNSName"] = true, ["MaxItems"] = true, ["HostedZoneId"] = true, ["NextDNSName"] = true, ["IsTruncated"] = true, nil }

function asserts.AssertListHostedZonesByNameResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListHostedZonesByNameResponse to be of type 'table'")
	assert(struct["HostedZones"], "Expected key HostedZones to exist in table")
	assert(struct["IsTruncated"], "Expected key IsTruncated to exist in table")
	assert(struct["MaxItems"], "Expected key MaxItems to exist in table")
	if struct["HostedZones"] then asserts.AssertHostedZones(struct["HostedZones"]) end
	if struct["NextHostedZoneId"] then asserts.AssertResourceId(struct["NextHostedZoneId"]) end
	if struct["DNSName"] then asserts.AssertDNSName(struct["DNSName"]) end
	if struct["MaxItems"] then asserts.AssertPageMaxItems(struct["MaxItems"]) end
	if struct["HostedZoneId"] then asserts.AssertResourceId(struct["HostedZoneId"]) end
	if struct["NextDNSName"] then asserts.AssertDNSName(struct["NextDNSName"]) end
	if struct["IsTruncated"] then asserts.AssertPageTruncated(struct["IsTruncated"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListHostedZonesByNameResponse[k], "ListHostedZonesByNameResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListHostedZonesByNameResponse
-- <p>A complex type that contains the response information for the request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HostedZones [HostedZones] <p>A complex type that contains general information about the hosted zone.</p>
-- * NextHostedZoneId [ResourceId] <p>If <code>IsTruncated</code> is <code>true</code>, the value of <code>NextHostedZoneId</code> identifies the first hosted zone in the next group of <code>maxitems</code> hosted zones. Call <code>ListHostedZonesByName</code> again and specify the value of <code>NextDNSName</code> and <code>NextHostedZoneId</code> in the <code>dnsname</code> and <code>hostedzoneid</code> parameters, respectively.</p> <p>This element is present only if <code>IsTruncated</code> is <code>true</code>.</p>
-- * DNSName [DNSName] <p>For the second and subsequent calls to <code>ListHostedZonesByName</code>, <code>DNSName</code> is the value that you specified for the <code>dnsname</code> parameter in the request that produced the current response.</p>
-- * MaxItems [PageMaxItems] <p>The value that you specified for the <code>maxitems</code> parameter in the call to <code>ListHostedZonesByName</code> that produced the current response.</p>
-- * HostedZoneId [ResourceId] <p>The ID that Amazon Route 53 assigned to the hosted zone when you created it.</p>
-- * NextDNSName [DNSName] <p>If <code>IsTruncated</code> is true, the value of <code>NextDNSName</code> is the name of the first hosted zone in the next group of <code>maxitems</code> hosted zones. Call <code>ListHostedZonesByName</code> again and specify the value of <code>NextDNSName</code> and <code>NextHostedZoneId</code> in the <code>dnsname</code> and <code>hostedzoneid</code> parameters, respectively.</p> <p>This element is present only if <code>IsTruncated</code> is <code>true</code>.</p>
-- * IsTruncated [PageTruncated] <p>A flag that indicates whether there are more hosted zones to be listed. If the response was truncated, you can get the next group of <code>maxitems</code> hosted zones by calling <code>ListHostedZonesByName</code> again and specifying the values of <code>NextDNSName</code> and <code>NextHostedZoneId</code> elements in the <code>dnsname</code> and <code>hostedzoneid</code> parameters.</p>
-- Required key: HostedZones
-- Required key: IsTruncated
-- Required key: MaxItems
-- @return ListHostedZonesByNameResponse structure as a key-value pair table
function M.ListHostedZonesByNameResponse(args)
	assert(args, "You must provdide an argument table when creating ListHostedZonesByNameResponse")
	local t = { 
		["HostedZones"] = args["HostedZones"],
		["NextHostedZoneId"] = args["NextHostedZoneId"],
		["DNSName"] = args["DNSName"],
		["MaxItems"] = args["MaxItems"],
		["HostedZoneId"] = args["HostedZoneId"],
		["NextDNSName"] = args["NextDNSName"],
		["IsTruncated"] = args["IsTruncated"],
	}
	asserts.AssertListHostedZonesByNameResponse(t)
	return t
end

keys.CreateTrafficPolicyResponse = { ["TrafficPolicy"] = true, ["Location"] = true, nil }

function asserts.AssertCreateTrafficPolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTrafficPolicyResponse to be of type 'table'")
	assert(struct["TrafficPolicy"], "Expected key TrafficPolicy to exist in table")
	assert(struct["Location"], "Expected key Location to exist in table")
	if struct["TrafficPolicy"] then asserts.AssertTrafficPolicy(struct["TrafficPolicy"]) end
	if struct["Location"] then asserts.AssertResourceURI(struct["Location"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateTrafficPolicyResponse[k], "CreateTrafficPolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTrafficPolicyResponse
-- <p>A complex type that contains the response information for the <code>CreateTrafficPolicy</code> request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TrafficPolicy [TrafficPolicy] <p>A complex type that contains settings for the new traffic policy.</p>
-- * Location [ResourceURI] <p>A unique URL that represents a new traffic policy.</p>
-- Required key: TrafficPolicy
-- Required key: Location
-- @return CreateTrafficPolicyResponse structure as a key-value pair table
function M.CreateTrafficPolicyResponse(args)
	assert(args, "You must provdide an argument table when creating CreateTrafficPolicyResponse")
	local t = { 
		["TrafficPolicy"] = args["TrafficPolicy"],
		["Location"] = args["Location"],
	}
	asserts.AssertCreateTrafficPolicyResponse(t)
	return t
end

keys.GetTrafficPolicyInstanceResponse = { ["TrafficPolicyInstance"] = true, nil }

function asserts.AssertGetTrafficPolicyInstanceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTrafficPolicyInstanceResponse to be of type 'table'")
	assert(struct["TrafficPolicyInstance"], "Expected key TrafficPolicyInstance to exist in table")
	if struct["TrafficPolicyInstance"] then asserts.AssertTrafficPolicyInstance(struct["TrafficPolicyInstance"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetTrafficPolicyInstanceResponse[k], "GetTrafficPolicyInstanceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTrafficPolicyInstanceResponse
-- <p>A complex type that contains information about the resource record sets that Amazon Route 53 created based on a specified traffic policy.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TrafficPolicyInstance [TrafficPolicyInstance] <p>A complex type that contains settings for the traffic policy instance.</p>
-- Required key: TrafficPolicyInstance
-- @return GetTrafficPolicyInstanceResponse structure as a key-value pair table
function M.GetTrafficPolicyInstanceResponse(args)
	assert(args, "You must provdide an argument table when creating GetTrafficPolicyInstanceResponse")
	local t = { 
		["TrafficPolicyInstance"] = args["TrafficPolicyInstance"],
	}
	asserts.AssertGetTrafficPolicyInstanceResponse(t)
	return t
end

keys.DeleteHostedZoneRequest = { ["Id"] = true, nil }

function asserts.AssertDeleteHostedZoneRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteHostedZoneRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then asserts.AssertResourceId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteHostedZoneRequest[k], "DeleteHostedZoneRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteHostedZoneRequest
-- <p>A request to delete a hosted zone.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [ResourceId] <p>The ID of the hosted zone you want to delete.</p>
-- Required key: Id
-- @return DeleteHostedZoneRequest structure as a key-value pair table
function M.DeleteHostedZoneRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteHostedZoneRequest")
	local t = { 
		["Id"] = args["Id"],
	}
	asserts.AssertDeleteHostedZoneRequest(t)
	return t
end

keys.AlarmIdentifier = { ["Region"] = true, ["Name"] = true, nil }

function asserts.AssertAlarmIdentifier(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AlarmIdentifier to be of type 'table'")
	assert(struct["Region"], "Expected key Region to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Region"] then asserts.AssertCloudWatchRegion(struct["Region"]) end
	if struct["Name"] then asserts.AssertAlarmName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.AlarmIdentifier[k], "AlarmIdentifier contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AlarmIdentifier
-- <p>A complex type that identifies the CloudWatch alarm that you want Amazon Route 53 health checkers to use to determine whether this health check is healthy.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Region [CloudWatchRegion] <p>A complex type that identifies the CloudWatch alarm that you want Amazon Route 53 health checkers to use to determine whether this health check is healthy.</p> <p>For the current list of CloudWatch regions, see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html#cw_region">Amazon CloudWatch</a> in the <i>AWS Regions and Endpoints</i> chapter of the <i>Amazon Web Services General Reference</i>.</p>
-- * Name [AlarmName] <p>The name of the CloudWatch alarm that you want Amazon Route 53 health checkers to use to determine whether this health check is healthy.</p>
-- Required key: Region
-- Required key: Name
-- @return AlarmIdentifier structure as a key-value pair table
function M.AlarmIdentifier(args)
	assert(args, "You must provdide an argument table when creating AlarmIdentifier")
	local t = { 
		["Region"] = args["Region"],
		["Name"] = args["Name"],
	}
	asserts.AssertAlarmIdentifier(t)
	return t
end

keys.CreateHealthCheckRequest = { ["HealthCheckConfig"] = true, ["CallerReference"] = true, nil }

function asserts.AssertCreateHealthCheckRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateHealthCheckRequest to be of type 'table'")
	assert(struct["CallerReference"], "Expected key CallerReference to exist in table")
	assert(struct["HealthCheckConfig"], "Expected key HealthCheckConfig to exist in table")
	if struct["HealthCheckConfig"] then asserts.AssertHealthCheckConfig(struct["HealthCheckConfig"]) end
	if struct["CallerReference"] then asserts.AssertHealthCheckNonce(struct["CallerReference"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateHealthCheckRequest[k], "CreateHealthCheckRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateHealthCheckRequest
-- <p>A complex type that contains the health check request information.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HealthCheckConfig [HealthCheckConfig] <p>A complex type that contains the response to a <code>CreateHealthCheck</code> request. </p>
-- * CallerReference [HealthCheckNonce] <p>A unique string that identifies the request and that allows you to retry a failed <code>CreateHealthCheck</code> request without the risk of creating two identical health checks:</p> <ul> <li> <p>If you send a <code>CreateHealthCheck</code> request with the same <code>CallerReference</code> and settings as a previous request, and if the health check doesn't exist, Amazon Route 53 creates the health check. If the health check does exist, Amazon Route 53 returns the settings for the existing health check.</p> </li> <li> <p>If you send a <code>CreateHealthCheck</code> request with the same <code>CallerReference</code> as a deleted health check, regardless of the settings, Amazon Route 53 returns a <code>HealthCheckAlreadyExists</code> error.</p> </li> <li> <p>If you send a <code>CreateHealthCheck</code> request with the same <code>CallerReference</code> as an existing health check but with different settings, Amazon Route 53 returns a <code>HealthCheckAlreadyExists</code> error.</p> </li> <li> <p>If you send a <code>CreateHealthCheck</code> request with a unique <code>CallerReference</code> but settings identical to an existing health check, Amazon Route 53 creates the health check.</p> </li> </ul>
-- Required key: CallerReference
-- Required key: HealthCheckConfig
-- @return CreateHealthCheckRequest structure as a key-value pair table
function M.CreateHealthCheckRequest(args)
	assert(args, "You must provdide an argument table when creating CreateHealthCheckRequest")
	local t = { 
		["HealthCheckConfig"] = args["HealthCheckConfig"],
		["CallerReference"] = args["CallerReference"],
	}
	asserts.AssertCreateHealthCheckRequest(t)
	return t
end

keys.ResourceRecord = { ["Value"] = true, nil }

function asserts.AssertResourceRecord(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceRecord to be of type 'table'")
	assert(struct["Value"], "Expected key Value to exist in table")
	if struct["Value"] then asserts.AssertRData(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceRecord[k], "ResourceRecord contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceRecord
-- <p>Information specific to the resource record.</p> <note> <p>If you're creating an alias resource record set, omit <code>ResourceRecord</code>.</p> </note>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Value [RData] <p>The current or new DNS record value, not to exceed 4,000 characters. In the case of a <code>DELETE</code> action, if the current value does not match the actual value, an error is returned. For descriptions about how to format <code>Value</code> for different record types, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/ResourceRecordTypes.html">Supported DNS Resource Record Types</a> in the <i>Amazon Route 53 Developer Guide</i>.</p> <p>You can specify more than one value for all record types except <code>CNAME</code> and <code>SOA</code>. </p> <note> <p>If you're creating an alias resource record set, omit <code>Value</code>.</p> </note>
-- Required key: Value
-- @return ResourceRecord structure as a key-value pair table
function M.ResourceRecord(args)
	assert(args, "You must provdide an argument table when creating ResourceRecord")
	local t = { 
		["Value"] = args["Value"],
	}
	asserts.AssertResourceRecord(t)
	return t
end

keys.ListTagsForResourcesRequest = { ["ResourceType"] = true, ["ResourceIds"] = true, nil }

function asserts.AssertListTagsForResourcesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForResourcesRequest to be of type 'table'")
	assert(struct["ResourceType"], "Expected key ResourceType to exist in table")
	assert(struct["ResourceIds"], "Expected key ResourceIds to exist in table")
	if struct["ResourceType"] then asserts.AssertTagResourceType(struct["ResourceType"]) end
	if struct["ResourceIds"] then asserts.AssertTagResourceIdList(struct["ResourceIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsForResourcesRequest[k], "ListTagsForResourcesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForResourcesRequest
-- <p>A complex type that contains information about the health checks or hosted zones for which you want to list tags.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceType [TagResourceType] <p>The type of the resources.</p> <ul> <li> <p>The resource type for health checks is <code>healthcheck</code>.</p> </li> <li> <p>The resource type for hosted zones is <code>hostedzone</code>.</p> </li> </ul>
-- * ResourceIds [TagResourceIdList] <p>A complex type that contains the ResourceId element for each resource for which you want to get a list of tags.</p>
-- Required key: ResourceType
-- Required key: ResourceIds
-- @return ListTagsForResourcesRequest structure as a key-value pair table
function M.ListTagsForResourcesRequest(args)
	assert(args, "You must provdide an argument table when creating ListTagsForResourcesRequest")
	local t = { 
		["ResourceType"] = args["ResourceType"],
		["ResourceIds"] = args["ResourceIds"],
	}
	asserts.AssertListTagsForResourcesRequest(t)
	return t
end

keys.ListTrafficPolicyInstancesByPolicyRequest = { ["TrafficPolicyInstanceNameMarker"] = true, ["TrafficPolicyVersion"] = true, ["HostedZoneIdMarker"] = true, ["TrafficPolicyId"] = true, ["MaxItems"] = true, ["TrafficPolicyInstanceTypeMarker"] = true, nil }

function asserts.AssertListTrafficPolicyInstancesByPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTrafficPolicyInstancesByPolicyRequest to be of type 'table'")
	assert(struct["TrafficPolicyId"], "Expected key TrafficPolicyId to exist in table")
	assert(struct["TrafficPolicyVersion"], "Expected key TrafficPolicyVersion to exist in table")
	if struct["TrafficPolicyInstanceNameMarker"] then asserts.AssertDNSName(struct["TrafficPolicyInstanceNameMarker"]) end
	if struct["TrafficPolicyVersion"] then asserts.AssertTrafficPolicyVersion(struct["TrafficPolicyVersion"]) end
	if struct["HostedZoneIdMarker"] then asserts.AssertResourceId(struct["HostedZoneIdMarker"]) end
	if struct["TrafficPolicyId"] then asserts.AssertTrafficPolicyId(struct["TrafficPolicyId"]) end
	if struct["MaxItems"] then asserts.AssertPageMaxItems(struct["MaxItems"]) end
	if struct["TrafficPolicyInstanceTypeMarker"] then asserts.AssertRRType(struct["TrafficPolicyInstanceTypeMarker"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTrafficPolicyInstancesByPolicyRequest[k], "ListTrafficPolicyInstancesByPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTrafficPolicyInstancesByPolicyRequest
-- <p>A complex type that contains the information about the request to list your traffic policy instances.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TrafficPolicyInstanceNameMarker [DNSName] <p>If the value of <code>IsTruncated</code> in the previous response was <code>true</code>, you have more traffic policy instances. To get more traffic policy instances, submit another <code>ListTrafficPolicyInstancesByPolicy</code> request.</p> <p>For the value of <code>trafficpolicyinstancename</code>, specify the value of <code>TrafficPolicyInstanceNameMarker</code> from the previous response, which is the name of the first traffic policy instance that Amazon Route 53 will return if you submit another request.</p> <p>If the value of <code>IsTruncated</code> in the previous response was <code>false</code>, there are no more traffic policy instances to get.</p>
-- * TrafficPolicyVersion [TrafficPolicyVersion] <p>The version of the traffic policy for which you want to list traffic policy instances. The version must be associated with the traffic policy that is specified by <code>TrafficPolicyId</code>.</p>
-- * HostedZoneIdMarker [ResourceId] <p>If the value of <code>IsTruncated</code> in the previous response was <code>true</code>, you have more traffic policy instances. To get more traffic policy instances, submit another <code>ListTrafficPolicyInstancesByPolicy</code> request. </p> <p>For the value of <code>hostedzoneid</code>, specify the value of <code>HostedZoneIdMarker</code> from the previous response, which is the hosted zone ID of the first traffic policy instance that Amazon Route 53 will return if you submit another request.</p> <p>If the value of <code>IsTruncated</code> in the previous response was <code>false</code>, there are no more traffic policy instances to get.</p>
-- * TrafficPolicyId [TrafficPolicyId] <p>The ID of the traffic policy for which you want to list traffic policy instances.</p>
-- * MaxItems [PageMaxItems] <p>The maximum number of traffic policy instances to be included in the response body for this request. If you have more than <code>MaxItems</code> traffic policy instances, the value of the <code>IsTruncated</code> element in the response is <code>true</code>, and the values of <code>HostedZoneIdMarker</code>, <code>TrafficPolicyInstanceNameMarker</code>, and <code>TrafficPolicyInstanceTypeMarker</code> represent the first traffic policy instance that Amazon Route 53 will return if you submit another request.</p>
-- * TrafficPolicyInstanceTypeMarker [RRType] <p>If the value of <code>IsTruncated</code> in the previous response was <code>true</code>, you have more traffic policy instances. To get more traffic policy instances, submit another <code>ListTrafficPolicyInstancesByPolicy</code> request.</p> <p>For the value of <code>trafficpolicyinstancetype</code>, specify the value of <code>TrafficPolicyInstanceTypeMarker</code> from the previous response, which is the name of the first traffic policy instance that Amazon Route 53 will return if you submit another request.</p> <p>If the value of <code>IsTruncated</code> in the previous response was <code>false</code>, there are no more traffic policy instances to get.</p>
-- Required key: TrafficPolicyId
-- Required key: TrafficPolicyVersion
-- @return ListTrafficPolicyInstancesByPolicyRequest structure as a key-value pair table
function M.ListTrafficPolicyInstancesByPolicyRequest(args)
	assert(args, "You must provdide an argument table when creating ListTrafficPolicyInstancesByPolicyRequest")
	local t = { 
		["TrafficPolicyInstanceNameMarker"] = args["TrafficPolicyInstanceNameMarker"],
		["TrafficPolicyVersion"] = args["TrafficPolicyVersion"],
		["HostedZoneIdMarker"] = args["HostedZoneIdMarker"],
		["TrafficPolicyId"] = args["TrafficPolicyId"],
		["MaxItems"] = args["MaxItems"],
		["TrafficPolicyInstanceTypeMarker"] = args["TrafficPolicyInstanceTypeMarker"],
	}
	asserts.AssertListTrafficPolicyInstancesByPolicyRequest(t)
	return t
end

keys.GetChangeResponse = { ["ChangeInfo"] = true, nil }

function asserts.AssertGetChangeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetChangeResponse to be of type 'table'")
	assert(struct["ChangeInfo"], "Expected key ChangeInfo to exist in table")
	if struct["ChangeInfo"] then asserts.AssertChangeInfo(struct["ChangeInfo"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetChangeResponse[k], "GetChangeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetChangeResponse
-- <p>A complex type that contains the <code>ChangeInfo</code> element.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChangeInfo [ChangeInfo] <p>A complex type that contains information about the specified change batch.</p>
-- Required key: ChangeInfo
-- @return GetChangeResponse structure as a key-value pair table
function M.GetChangeResponse(args)
	assert(args, "You must provdide an argument table when creating GetChangeResponse")
	local t = { 
		["ChangeInfo"] = args["ChangeInfo"],
	}
	asserts.AssertGetChangeResponse(t)
	return t
end

keys.PublicZoneVPCAssociation = { ["message"] = true, nil }

function asserts.AssertPublicZoneVPCAssociation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PublicZoneVPCAssociation to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.PublicZoneVPCAssociation[k], "PublicZoneVPCAssociation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PublicZoneVPCAssociation
-- <p>You're trying to associate a VPC with a public hosted zone. Amazon Route 53 doesn't support associating a VPC with a public hosted zone.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>Descriptive message for the error response.</p>
-- @return PublicZoneVPCAssociation structure as a key-value pair table
function M.PublicZoneVPCAssociation(args)
	assert(args, "You must provdide an argument table when creating PublicZoneVPCAssociation")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertPublicZoneVPCAssociation(t)
	return t
end

keys.InvalidArgument = { ["message"] = true, nil }

function asserts.AssertInvalidArgument(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidArgument to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidArgument[k], "InvalidArgument contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidArgument
-- <p>Parameter name is invalid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>Descriptive message for the error response.</p>
-- @return InvalidArgument structure as a key-value pair table
function M.InvalidArgument(args)
	assert(args, "You must provdide an argument table when creating InvalidArgument")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidArgument(t)
	return t
end

keys.ListTrafficPolicyInstancesByPolicyResponse = { ["TrafficPolicyInstanceNameMarker"] = true, ["HostedZoneIdMarker"] = true, ["TrafficPolicyInstances"] = true, ["MaxItems"] = true, ["TrafficPolicyInstanceTypeMarker"] = true, ["IsTruncated"] = true, nil }

function asserts.AssertListTrafficPolicyInstancesByPolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTrafficPolicyInstancesByPolicyResponse to be of type 'table'")
	assert(struct["TrafficPolicyInstances"], "Expected key TrafficPolicyInstances to exist in table")
	assert(struct["IsTruncated"], "Expected key IsTruncated to exist in table")
	assert(struct["MaxItems"], "Expected key MaxItems to exist in table")
	if struct["TrafficPolicyInstanceNameMarker"] then asserts.AssertDNSName(struct["TrafficPolicyInstanceNameMarker"]) end
	if struct["HostedZoneIdMarker"] then asserts.AssertResourceId(struct["HostedZoneIdMarker"]) end
	if struct["TrafficPolicyInstances"] then asserts.AssertTrafficPolicyInstances(struct["TrafficPolicyInstances"]) end
	if struct["MaxItems"] then asserts.AssertPageMaxItems(struct["MaxItems"]) end
	if struct["TrafficPolicyInstanceTypeMarker"] then asserts.AssertRRType(struct["TrafficPolicyInstanceTypeMarker"]) end
	if struct["IsTruncated"] then asserts.AssertPageTruncated(struct["IsTruncated"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTrafficPolicyInstancesByPolicyResponse[k], "ListTrafficPolicyInstancesByPolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTrafficPolicyInstancesByPolicyResponse
-- <p>A complex type that contains the response information for the request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TrafficPolicyInstanceNameMarker [DNSName] <p>If <code>IsTruncated</code> is <code>true</code>, <code>TrafficPolicyInstanceNameMarker</code> is the name of the first traffic policy instance in the next group of <code>MaxItems</code> traffic policy instances.</p>
-- * HostedZoneIdMarker [ResourceId] <p>If <code>IsTruncated</code> is <code>true</code>, <code>HostedZoneIdMarker</code> is the ID of the hosted zone of the first traffic policy instance in the next group of traffic policy instances.</p>
-- * TrafficPolicyInstances [TrafficPolicyInstances] <p>A list that contains one <code>TrafficPolicyInstance</code> element for each traffic policy instance that matches the elements in the request.</p>
-- * MaxItems [PageMaxItems] <p>The value that you specified for the <code>MaxItems</code> parameter in the call to <code>ListTrafficPolicyInstancesByPolicy</code> that produced the current response.</p>
-- * TrafficPolicyInstanceTypeMarker [RRType] <p>If <code>IsTruncated</code> is <code>true</code>, <code>TrafficPolicyInstanceTypeMarker</code> is the DNS type of the resource record sets that are associated with the first traffic policy instance in the next group of <code>MaxItems</code> traffic policy instances.</p>
-- * IsTruncated [PageTruncated] <p>A flag that indicates whether there are more traffic policy instances to be listed. If the response was truncated, you can get the next group of traffic policy instances by calling <code>ListTrafficPolicyInstancesByPolicy</code> again and specifying the values of the <code>HostedZoneIdMarker</code>, <code>TrafficPolicyInstanceNameMarker</code>, and <code>TrafficPolicyInstanceTypeMarker</code> elements in the corresponding request parameters.</p>
-- Required key: TrafficPolicyInstances
-- Required key: IsTruncated
-- Required key: MaxItems
-- @return ListTrafficPolicyInstancesByPolicyResponse structure as a key-value pair table
function M.ListTrafficPolicyInstancesByPolicyResponse(args)
	assert(args, "You must provdide an argument table when creating ListTrafficPolicyInstancesByPolicyResponse")
	local t = { 
		["TrafficPolicyInstanceNameMarker"] = args["TrafficPolicyInstanceNameMarker"],
		["HostedZoneIdMarker"] = args["HostedZoneIdMarker"],
		["TrafficPolicyInstances"] = args["TrafficPolicyInstances"],
		["MaxItems"] = args["MaxItems"],
		["TrafficPolicyInstanceTypeMarker"] = args["TrafficPolicyInstanceTypeMarker"],
		["IsTruncated"] = args["IsTruncated"],
	}
	asserts.AssertListTrafficPolicyInstancesByPolicyResponse(t)
	return t
end

keys.GetGeoLocationResponse = { ["GeoLocationDetails"] = true, nil }

function asserts.AssertGetGeoLocationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetGeoLocationResponse to be of type 'table'")
	assert(struct["GeoLocationDetails"], "Expected key GeoLocationDetails to exist in table")
	if struct["GeoLocationDetails"] then asserts.AssertGeoLocationDetails(struct["GeoLocationDetails"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetGeoLocationResponse[k], "GetGeoLocationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetGeoLocationResponse
-- <p>A complex type that contains the response information for the specified geolocation code.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GeoLocationDetails [GeoLocationDetails] <p>A complex type that contains the codes and full continent, country, and subdivision names for the specified geolocation code.</p>
-- Required key: GeoLocationDetails
-- @return GetGeoLocationResponse structure as a key-value pair table
function M.GetGeoLocationResponse(args)
	assert(args, "You must provdide an argument table when creating GetGeoLocationResponse")
	local t = { 
		["GeoLocationDetails"] = args["GeoLocationDetails"],
	}
	asserts.AssertGetGeoLocationResponse(t)
	return t
end

keys.UpdateTrafficPolicyInstanceRequest = { ["TrafficPolicyId"] = true, ["TrafficPolicyVersion"] = true, ["Id"] = true, ["TTL"] = true, nil }

function asserts.AssertUpdateTrafficPolicyInstanceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateTrafficPolicyInstanceRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["TTL"], "Expected key TTL to exist in table")
	assert(struct["TrafficPolicyId"], "Expected key TrafficPolicyId to exist in table")
	assert(struct["TrafficPolicyVersion"], "Expected key TrafficPolicyVersion to exist in table")
	if struct["TrafficPolicyId"] then asserts.AssertTrafficPolicyId(struct["TrafficPolicyId"]) end
	if struct["TrafficPolicyVersion"] then asserts.AssertTrafficPolicyVersion(struct["TrafficPolicyVersion"]) end
	if struct["Id"] then asserts.AssertTrafficPolicyInstanceId(struct["Id"]) end
	if struct["TTL"] then asserts.AssertTTL(struct["TTL"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateTrafficPolicyInstanceRequest[k], "UpdateTrafficPolicyInstanceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateTrafficPolicyInstanceRequest
-- <p>A complex type that contains information about the resource record sets that you want to update based on a specified traffic policy instance.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TrafficPolicyId [TrafficPolicyId] <p>The ID of the traffic policy that you want Amazon Route 53 to use to update resource record sets for the specified traffic policy instance.</p>
-- * TrafficPolicyVersion [TrafficPolicyVersion] <p>The version of the traffic policy that you want Amazon Route 53 to use to update resource record sets for the specified traffic policy instance.</p>
-- * Id [TrafficPolicyInstanceId] <p>The ID of the traffic policy instance that you want to update.</p>
-- * TTL [TTL] <p>The TTL that you want Amazon Route 53 to assign to all of the updated resource record sets.</p>
-- Required key: Id
-- Required key: TTL
-- Required key: TrafficPolicyId
-- Required key: TrafficPolicyVersion
-- @return UpdateTrafficPolicyInstanceRequest structure as a key-value pair table
function M.UpdateTrafficPolicyInstanceRequest(args)
	assert(args, "You must provdide an argument table when creating UpdateTrafficPolicyInstanceRequest")
	local t = { 
		["TrafficPolicyId"] = args["TrafficPolicyId"],
		["TrafficPolicyVersion"] = args["TrafficPolicyVersion"],
		["Id"] = args["Id"],
		["TTL"] = args["TTL"],
	}
	asserts.AssertUpdateTrafficPolicyInstanceRequest(t)
	return t
end

keys.ListTrafficPoliciesRequest = { ["TrafficPolicyIdMarker"] = true, ["MaxItems"] = true, nil }

function asserts.AssertListTrafficPoliciesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTrafficPoliciesRequest to be of type 'table'")
	if struct["TrafficPolicyIdMarker"] then asserts.AssertTrafficPolicyId(struct["TrafficPolicyIdMarker"]) end
	if struct["MaxItems"] then asserts.AssertPageMaxItems(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTrafficPoliciesRequest[k], "ListTrafficPoliciesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTrafficPoliciesRequest
-- <p>A complex type that contains the information about the request to list the traffic policies that are associated with the current AWS account.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TrafficPolicyIdMarker [TrafficPolicyId] <p>(Conditional) For your first request to <code>ListTrafficPolicies</code>, don't include the <code>TrafficPolicyIdMarker</code> parameter.</p> <p>If you have more traffic policies than the value of <code>MaxItems</code>, <code>ListTrafficPolicies</code> returns only the first <code>MaxItems</code> traffic policies. To get the next group of policies, submit another request to <code>ListTrafficPolicies</code>. For the value of <code>TrafficPolicyIdMarker</code>, specify the value of <code>TrafficPolicyIdMarker</code> that was returned in the previous response.</p>
-- * MaxItems [PageMaxItems] <p>(Optional) The maximum number of traffic policies that you want Amazon Route 53 to return in response to this request. If you have more than <code>MaxItems</code> traffic policies, the value of <code>IsTruncated</code> in the response is <code>true</code>, and the value of <code>TrafficPolicyIdMarker</code> is the ID of the first traffic policy that Amazon Route 53 will return if you submit another request.</p>
-- @return ListTrafficPoliciesRequest structure as a key-value pair table
function M.ListTrafficPoliciesRequest(args)
	assert(args, "You must provdide an argument table when creating ListTrafficPoliciesRequest")
	local t = { 
		["TrafficPolicyIdMarker"] = args["TrafficPolicyIdMarker"],
		["MaxItems"] = args["MaxItems"],
	}
	asserts.AssertListTrafficPoliciesRequest(t)
	return t
end

keys.DelegationSetNotAvailable = { ["message"] = true, nil }

function asserts.AssertDelegationSetNotAvailable(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DelegationSetNotAvailable to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.DelegationSetNotAvailable[k], "DelegationSetNotAvailable contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DelegationSetNotAvailable
-- <p>You can create a hosted zone that has the same name as an existing hosted zone (example.com is common), but there is a limit to the number of hosted zones that have the same name. If you get this error, Amazon Route 53 has reached that limit. If you own the domain name and Amazon Route 53 generates this error, contact Customer Support.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>Descriptive message for the error response.</p>
-- @return DelegationSetNotAvailable structure as a key-value pair table
function M.DelegationSetNotAvailable(args)
	assert(args, "You must provdide an argument table when creating DelegationSetNotAvailable")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertDelegationSetNotAvailable(t)
	return t
end

keys.DeleteHealthCheckRequest = { ["HealthCheckId"] = true, nil }

function asserts.AssertDeleteHealthCheckRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteHealthCheckRequest to be of type 'table'")
	assert(struct["HealthCheckId"], "Expected key HealthCheckId to exist in table")
	if struct["HealthCheckId"] then asserts.AssertHealthCheckId(struct["HealthCheckId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteHealthCheckRequest[k], "DeleteHealthCheckRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteHealthCheckRequest
-- <p>This action deletes a health check.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HealthCheckId [HealthCheckId] <p>The ID of the health check that you want to delete.</p>
-- Required key: HealthCheckId
-- @return DeleteHealthCheckRequest structure as a key-value pair table
function M.DeleteHealthCheckRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteHealthCheckRequest")
	local t = { 
		["HealthCheckId"] = args["HealthCheckId"],
	}
	asserts.AssertDeleteHealthCheckRequest(t)
	return t
end

keys.StatusReport = { ["Status"] = true, ["CheckedTime"] = true, nil }

function asserts.AssertStatusReport(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StatusReport to be of type 'table'")
	if struct["Status"] then asserts.AssertStatus(struct["Status"]) end
	if struct["CheckedTime"] then asserts.AssertTimeStamp(struct["CheckedTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.StatusReport[k], "StatusReport contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StatusReport
-- <p>A complex type that contains the status that one Amazon Route 53 health checker reports and the time of the health check.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [Status] <p>A description of the status of the health check endpoint as reported by one of the Amazon Route 53 health checkers.</p>
-- * CheckedTime [TimeStamp] <p>The date and time that the health checker performed the health check in <a href="https://en.wikipedia.org/wiki/ISO_8601">ISO 8601 format</a> and Coordinated Universal Time (UTC). For example, the value <code>2017-03-27T17:48:16.751Z</code> represents March 27, 2017 at 17:48:16.751 UTC.</p>
-- @return StatusReport structure as a key-value pair table
function M.StatusReport(args)
	assert(args, "You must provdide an argument table when creating StatusReport")
	local t = { 
		["Status"] = args["Status"],
		["CheckedTime"] = args["CheckedTime"],
	}
	asserts.AssertStatusReport(t)
	return t
end

keys.GetHostedZoneRequest = { ["Id"] = true, nil }

function asserts.AssertGetHostedZoneRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetHostedZoneRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then asserts.AssertResourceId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetHostedZoneRequest[k], "GetHostedZoneRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetHostedZoneRequest
-- <p>A request to get information about a specified hosted zone. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [ResourceId] <p>The ID of the hosted zone that you want to get information about.</p>
-- Required key: Id
-- @return GetHostedZoneRequest structure as a key-value pair table
function M.GetHostedZoneRequest(args)
	assert(args, "You must provdide an argument table when creating GetHostedZoneRequest")
	local t = { 
		["Id"] = args["Id"],
	}
	asserts.AssertGetHostedZoneRequest(t)
	return t
end

keys.DeleteTrafficPolicyResponse = { nil }

function asserts.AssertDeleteTrafficPolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTrafficPolicyResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteTrafficPolicyResponse[k], "DeleteTrafficPolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTrafficPolicyResponse
-- <p>An empty element.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteTrafficPolicyResponse structure as a key-value pair table
function M.DeleteTrafficPolicyResponse(args)
	assert(args, "You must provdide an argument table when creating DeleteTrafficPolicyResponse")
	local t = { 
	}
	asserts.AssertDeleteTrafficPolicyResponse(t)
	return t
end

keys.ListReusableDelegationSetsResponse = { ["Marker"] = true, ["DelegationSets"] = true, ["IsTruncated"] = true, ["MaxItems"] = true, ["NextMarker"] = true, nil }

function asserts.AssertListReusableDelegationSetsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListReusableDelegationSetsResponse to be of type 'table'")
	assert(struct["DelegationSets"], "Expected key DelegationSets to exist in table")
	assert(struct["Marker"], "Expected key Marker to exist in table")
	assert(struct["IsTruncated"], "Expected key IsTruncated to exist in table")
	assert(struct["MaxItems"], "Expected key MaxItems to exist in table")
	if struct["Marker"] then asserts.AssertPageMarker(struct["Marker"]) end
	if struct["DelegationSets"] then asserts.AssertDelegationSets(struct["DelegationSets"]) end
	if struct["IsTruncated"] then asserts.AssertPageTruncated(struct["IsTruncated"]) end
	if struct["MaxItems"] then asserts.AssertPageMaxItems(struct["MaxItems"]) end
	if struct["NextMarker"] then asserts.AssertPageMarker(struct["NextMarker"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListReusableDelegationSetsResponse[k], "ListReusableDelegationSetsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListReusableDelegationSetsResponse
-- <p>A complex type that contains information about the reusable delegation sets that are associated with the current AWS account.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [PageMarker] <p>For the second and subsequent calls to <code>ListReusableDelegationSets</code>, <code>Marker</code> is the value that you specified for the <code>marker</code> parameter in the request that produced the current response.</p>
-- * DelegationSets [DelegationSets] <p>A complex type that contains one <code>DelegationSet</code> element for each reusable delegation set that was created by the current AWS account.</p>
-- * IsTruncated [PageTruncated] <p>A flag that indicates whether there are more reusable delegation sets to be listed.</p>
-- * MaxItems [PageMaxItems] <p>The value that you specified for the <code>maxitems</code> parameter in the call to <code>ListReusableDelegationSets</code> that produced the current response.</p>
-- * NextMarker [PageMarker] <p>If <code>IsTruncated</code> is <code>true</code>, the value of <code>NextMarker</code> identifies the next reusable delegation set that Amazon Route 53 will return if you submit another <code>ListReusableDelegationSets</code> request and specify the value of <code>NextMarker</code> in the <code>marker</code> parameter.</p>
-- Required key: DelegationSets
-- Required key: Marker
-- Required key: IsTruncated
-- Required key: MaxItems
-- @return ListReusableDelegationSetsResponse structure as a key-value pair table
function M.ListReusableDelegationSetsResponse(args)
	assert(args, "You must provdide an argument table when creating ListReusableDelegationSetsResponse")
	local t = { 
		["Marker"] = args["Marker"],
		["DelegationSets"] = args["DelegationSets"],
		["IsTruncated"] = args["IsTruncated"],
		["MaxItems"] = args["MaxItems"],
		["NextMarker"] = args["NextMarker"],
	}
	asserts.AssertListReusableDelegationSetsResponse(t)
	return t
end

keys.Change = { ["Action"] = true, ["ResourceRecordSet"] = true, nil }

function asserts.AssertChange(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Change to be of type 'table'")
	assert(struct["Action"], "Expected key Action to exist in table")
	assert(struct["ResourceRecordSet"], "Expected key ResourceRecordSet to exist in table")
	if struct["Action"] then asserts.AssertChangeAction(struct["Action"]) end
	if struct["ResourceRecordSet"] then asserts.AssertResourceRecordSet(struct["ResourceRecordSet"]) end
	for k,_ in pairs(struct) do
		assert(keys.Change[k], "Change contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Change
-- <p>The information for each resource record set that you want to change.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Action [ChangeAction] <p>The action to perform:</p> <ul> <li> <p> <code>CREATE</code>: Creates a resource record set that has the specified values.</p> </li> <li> <p> <code>DELETE</code>: Deletes a existing resource record set.</p> <important> <p>To delete the resource record set that is associated with a traffic policy instance, use <code> <a>DeleteTrafficPolicyInstance</a> </code>. Amazon Route 53 will delete the resource record set automatically. If you delete the resource record set by using <code>ChangeResourceRecordSets</code>, Amazon Route 53 doesn't automatically delete the traffic policy instance, and you'll continue to be charged for it even though it's no longer in use. </p> </important> </li> <li> <p> <code>UPSERT</code>: If a resource record set doesn't already exist, Amazon Route 53 creates it. If a resource record set does exist, Amazon Route 53 updates it with the values in the request.</p> </li> </ul> <p>The values that you need to include in the request depend on the type of resource record set that you're creating, deleting, or updating:</p> <p> <b>Basic resource record sets (excluding alias, failover, geolocation, latency, and weighted resource record sets)</b> </p> <ul> <li> <p> <code>Name</code> </p> </li> <li> <p> <code>Type</code> </p> </li> <li> <p> <code>TTL</code> </p> </li> </ul> <p> <b>Failover, geolocation, latency, or weighted resource record sets (excluding alias resource record sets)</b> </p> <ul> <li> <p> <code>Name</code> </p> </li> <li> <p> <code>Type</code> </p> </li> <li> <p> <code>TTL</code> </p> </li> <li> <p> <code>SetIdentifier</code> </p> </li> </ul> <p> <b>Alias resource record sets (including failover alias, geolocation alias, latency alias, and weighted alias resource record sets)</b> </p> <ul> <li> <p> <code>Name</code> </p> </li> <li> <p> <code>Type</code> </p> </li> <li> <p> <code>AliasTarget</code> (includes <code>DNSName</code>, <code>EvaluateTargetHealth</code>, and <code>HostedZoneId</code>)</p> </li> <li> <p> <code>SetIdentifier</code> (for failover, geolocation, latency, and weighted resource record sets)</p> </li> </ul>
-- * ResourceRecordSet [ResourceRecordSet] <p>Information about the resource record set to create, delete, or update.</p>
-- Required key: Action
-- Required key: ResourceRecordSet
-- @return Change structure as a key-value pair table
function M.Change(args)
	assert(args, "You must provdide an argument table when creating Change")
	local t = { 
		["Action"] = args["Action"],
		["ResourceRecordSet"] = args["ResourceRecordSet"],
	}
	asserts.AssertChange(t)
	return t
end

keys.CreateReusableDelegationSetRequest = { ["HostedZoneId"] = true, ["CallerReference"] = true, nil }

function asserts.AssertCreateReusableDelegationSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateReusableDelegationSetRequest to be of type 'table'")
	assert(struct["CallerReference"], "Expected key CallerReference to exist in table")
	if struct["HostedZoneId"] then asserts.AssertResourceId(struct["HostedZoneId"]) end
	if struct["CallerReference"] then asserts.AssertNonce(struct["CallerReference"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateReusableDelegationSetRequest[k], "CreateReusableDelegationSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateReusableDelegationSetRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HostedZoneId [ResourceId] <p>If you want to mark the delegation set for an existing hosted zone as reusable, the ID for that hosted zone.</p>
-- * CallerReference [Nonce] <p>A unique string that identifies the request, and that allows you to retry failed <code>CreateReusableDelegationSet</code> requests without the risk of executing the operation twice. You must use a unique <code>CallerReference</code> string every time you submit a <code>CreateReusableDelegationSet</code> request. <code>CallerReference</code> can be any unique string, for example a date/time stamp.</p>
-- Required key: CallerReference
-- @return CreateReusableDelegationSetRequest structure as a key-value pair table
function M.CreateReusableDelegationSetRequest(args)
	assert(args, "You must provdide an argument table when creating CreateReusableDelegationSetRequest")
	local t = { 
		["HostedZoneId"] = args["HostedZoneId"],
		["CallerReference"] = args["CallerReference"],
	}
	asserts.AssertCreateReusableDelegationSetRequest(t)
	return t
end

keys.CreateHostedZoneRequest = { ["DelegationSetId"] = true, ["HostedZoneConfig"] = true, ["CallerReference"] = true, ["Name"] = true, ["VPC"] = true, nil }

function asserts.AssertCreateHostedZoneRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateHostedZoneRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["CallerReference"], "Expected key CallerReference to exist in table")
	if struct["DelegationSetId"] then asserts.AssertResourceId(struct["DelegationSetId"]) end
	if struct["HostedZoneConfig"] then asserts.AssertHostedZoneConfig(struct["HostedZoneConfig"]) end
	if struct["CallerReference"] then asserts.AssertNonce(struct["CallerReference"]) end
	if struct["Name"] then asserts.AssertDNSName(struct["Name"]) end
	if struct["VPC"] then asserts.AssertVPC(struct["VPC"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateHostedZoneRequest[k], "CreateHostedZoneRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateHostedZoneRequest
-- <p>A complex type that contains information about the request to create a hosted zone.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DelegationSetId [ResourceId] <p>If you want to associate a reusable delegation set with this hosted zone, the ID that Amazon Route 53 assigned to the reusable delegation set when you created it. For more information about reusable delegation sets, see <a>CreateReusableDelegationSet</a>.</p>
-- * HostedZoneConfig [HostedZoneConfig] <p>(Optional) A complex type that contains the following optional values:</p> <ul> <li> <p>For public and private hosted zones, an optional comment</p> </li> <li> <p>For private hosted zones, an optional <code>PrivateZone</code> element</p> </li> </ul> <p>If you don't specify a comment or the <code>PrivateZone</code> element, omit <code>HostedZoneConfig</code> and the other elements.</p>
-- * CallerReference [Nonce] <p>A unique string that identifies the request and that allows failed <code>CreateHostedZone</code> requests to be retried without the risk of executing the operation twice. You must use a unique <code>CallerReference</code> string every time you submit a <code>CreateHostedZone</code> request. <code>CallerReference</code> can be any unique string, for example, a date/time stamp.</p>
-- * Name [DNSName] <p>The name of the domain. For resource record types that include a domain name, specify a fully qualified domain name, for example, <i>www.example.com</i>. The trailing dot is optional; Amazon Route 53 assumes that the domain name is fully qualified. This means that Amazon Route 53 treats <i>www.example.com</i> (without a trailing dot) and <i>www.example.com.</i> (with a trailing dot) as identical.</p> <p>If you're creating a public hosted zone, this is the name you have registered with your DNS registrar. If your domain name is registered with a registrar other than Amazon Route 53, change the name servers for your domain to the set of <code>NameServers</code> that <code>CreateHostedZone</code> returns in <code>DelegationSet</code>.</p>
-- * VPC [VPC] <p>(Private hosted zones only) A complex type that contains information about the Amazon VPC that you're associating with this hosted zone.</p> <p>You can specify only one Amazon VPC when you create a private hosted zone. To associate additional Amazon VPCs with the hosted zone, use <a>AssociateVPCWithHostedZone</a> after you create a hosted zone.</p>
-- Required key: Name
-- Required key: CallerReference
-- @return CreateHostedZoneRequest structure as a key-value pair table
function M.CreateHostedZoneRequest(args)
	assert(args, "You must provdide an argument table when creating CreateHostedZoneRequest")
	local t = { 
		["DelegationSetId"] = args["DelegationSetId"],
		["HostedZoneConfig"] = args["HostedZoneConfig"],
		["CallerReference"] = args["CallerReference"],
		["Name"] = args["Name"],
		["VPC"] = args["VPC"],
	}
	asserts.AssertCreateHostedZoneRequest(t)
	return t
end

keys.DelegationSetInUse = { ["message"] = true, nil }

function asserts.AssertDelegationSetInUse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DelegationSetInUse to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.DelegationSetInUse[k], "DelegationSetInUse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DelegationSetInUse
-- <p>The specified delegation contains associated hosted zones which must be deleted before the reusable delegation set can be deleted.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>Descriptive message for the error response.</p>
-- @return DelegationSetInUse structure as a key-value pair table
function M.DelegationSetInUse(args)
	assert(args, "You must provdide an argument table when creating DelegationSetInUse")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertDelegationSetInUse(t)
	return t
end

keys.GetHealthCheckCountResponse = { ["HealthCheckCount"] = true, nil }

function asserts.AssertGetHealthCheckCountResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetHealthCheckCountResponse to be of type 'table'")
	assert(struct["HealthCheckCount"], "Expected key HealthCheckCount to exist in table")
	if struct["HealthCheckCount"] then asserts.AssertHealthCheckCount(struct["HealthCheckCount"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetHealthCheckCountResponse[k], "GetHealthCheckCountResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetHealthCheckCountResponse
-- <p>A complex type that contains the response to a <code>GetHealthCheckCount</code> request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HealthCheckCount [HealthCheckCount] <p>The number of health checks associated with the current AWS account.</p>
-- Required key: HealthCheckCount
-- @return GetHealthCheckCountResponse structure as a key-value pair table
function M.GetHealthCheckCountResponse(args)
	assert(args, "You must provdide an argument table when creating GetHealthCheckCountResponse")
	local t = { 
		["HealthCheckCount"] = args["HealthCheckCount"],
	}
	asserts.AssertGetHealthCheckCountResponse(t)
	return t
end

keys.InvalidChangeBatch = { ["messages"] = true, nil }

function asserts.AssertInvalidChangeBatch(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidChangeBatch to be of type 'table'")
	if struct["messages"] then asserts.AssertErrorMessages(struct["messages"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidChangeBatch[k], "InvalidChangeBatch contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidChangeBatch
-- <p>This exception contains a list of messages that might contain one or more error messages. Each error message indicates one error in the change batch.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * messages [ErrorMessages] <p>Descriptive message for the error response.</p>
-- @return InvalidChangeBatch structure as a key-value pair table
function M.InvalidChangeBatch(args)
	assert(args, "You must provdide an argument table when creating InvalidChangeBatch")
	local t = { 
		["messages"] = args["messages"],
	}
	asserts.AssertInvalidChangeBatch(t)
	return t
end

keys.DeleteTrafficPolicyRequest = { ["Version"] = true, ["Id"] = true, nil }

function asserts.AssertDeleteTrafficPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTrafficPolicyRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["Version"], "Expected key Version to exist in table")
	if struct["Version"] then asserts.AssertTrafficPolicyVersion(struct["Version"]) end
	if struct["Id"] then asserts.AssertTrafficPolicyId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteTrafficPolicyRequest[k], "DeleteTrafficPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTrafficPolicyRequest
-- <p>A request to delete a specified traffic policy version.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Version [TrafficPolicyVersion] <p>The version number of the traffic policy that you want to delete.</p>
-- * Id [TrafficPolicyId] <p>The ID of the traffic policy that you want to delete.</p>
-- Required key: Id
-- Required key: Version
-- @return DeleteTrafficPolicyRequest structure as a key-value pair table
function M.DeleteTrafficPolicyRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteTrafficPolicyRequest")
	local t = { 
		["Version"] = args["Version"],
		["Id"] = args["Id"],
	}
	asserts.AssertDeleteTrafficPolicyRequest(t)
	return t
end

keys.UpdateHostedZoneCommentRequest = { ["Comment"] = true, ["Id"] = true, nil }

function asserts.AssertUpdateHostedZoneCommentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateHostedZoneCommentRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Comment"] then asserts.AssertResourceDescription(struct["Comment"]) end
	if struct["Id"] then asserts.AssertResourceId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateHostedZoneCommentRequest[k], "UpdateHostedZoneCommentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateHostedZoneCommentRequest
-- <p>A request to update the comment for a hosted zone.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Comment [ResourceDescription] <p>The new comment for the hosted zone. If you don't specify a value for <code>Comment</code>, Amazon Route 53 deletes the existing value of the <code>Comment</code> element, if any.</p>
-- * Id [ResourceId] <p>The ID for the hosted zone that you want to update the comment for.</p>
-- Required key: Id
-- @return UpdateHostedZoneCommentRequest structure as a key-value pair table
function M.UpdateHostedZoneCommentRequest(args)
	assert(args, "You must provdide an argument table when creating UpdateHostedZoneCommentRequest")
	local t = { 
		["Comment"] = args["Comment"],
		["Id"] = args["Id"],
	}
	asserts.AssertUpdateHostedZoneCommentRequest(t)
	return t
end

keys.ConcurrentModification = { ["message"] = true, nil }

function asserts.AssertConcurrentModification(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConcurrentModification to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConcurrentModification[k], "ConcurrentModification contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConcurrentModification
-- <p>Another user submitted a request to update the object at the same time that you did. Retry the request. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>Descriptive message for the error response.</p>
-- @return ConcurrentModification structure as a key-value pair table
function M.ConcurrentModification(args)
	assert(args, "You must provdide an argument table when creating ConcurrentModification")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertConcurrentModification(t)
	return t
end

keys.GetHealthCheckStatusResponse = { ["HealthCheckObservations"] = true, nil }

function asserts.AssertGetHealthCheckStatusResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetHealthCheckStatusResponse to be of type 'table'")
	assert(struct["HealthCheckObservations"], "Expected key HealthCheckObservations to exist in table")
	if struct["HealthCheckObservations"] then asserts.AssertHealthCheckObservations(struct["HealthCheckObservations"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetHealthCheckStatusResponse[k], "GetHealthCheckStatusResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetHealthCheckStatusResponse
-- <p>A complex type that contains the response to a <code>GetHealthCheck</code> request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HealthCheckObservations [HealthCheckObservations] <p>A list that contains one <code>HealthCheckObservation</code> element for each Amazon Route 53 health checker that is reporting a status about the health check endpoint.</p>
-- Required key: HealthCheckObservations
-- @return GetHealthCheckStatusResponse structure as a key-value pair table
function M.GetHealthCheckStatusResponse(args)
	assert(args, "You must provdide an argument table when creating GetHealthCheckStatusResponse")
	local t = { 
		["HealthCheckObservations"] = args["HealthCheckObservations"],
	}
	asserts.AssertGetHealthCheckStatusResponse(t)
	return t
end

keys.GetGeoLocationRequest = { ["SubdivisionCode"] = true, ["CountryCode"] = true, ["ContinentCode"] = true, nil }

function asserts.AssertGetGeoLocationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetGeoLocationRequest to be of type 'table'")
	if struct["SubdivisionCode"] then asserts.AssertGeoLocationSubdivisionCode(struct["SubdivisionCode"]) end
	if struct["CountryCode"] then asserts.AssertGeoLocationCountryCode(struct["CountryCode"]) end
	if struct["ContinentCode"] then asserts.AssertGeoLocationContinentCode(struct["ContinentCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetGeoLocationRequest[k], "GetGeoLocationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetGeoLocationRequest
-- <p>A request for information about whether a specified geographic location is supported for Amazon Route 53 geolocation resource record sets.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SubdivisionCode [GeoLocationSubdivisionCode] <p>Amazon Route 53 uses the one- to three-letter subdivision codes that are specified in <a href="https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2">ISO standard 3166-1 alpha-2</a>. Amazon Route 53 doesn't support subdivision codes for all countries. If you specify <code>SubdivisionCode</code>, you must also specify <code>CountryCode</code>. </p>
-- * CountryCode [GeoLocationCountryCode] <p>Amazon Route 53 uses the two-letter country codes that are specified in <a href="https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2">ISO standard 3166-1 alpha-2</a>.</p>
-- * ContinentCode [GeoLocationContinentCode] <p>Amazon Route 53 supports the following continent codes:</p> <ul> <li> <p> <b>AF</b>: Africa</p> </li> <li> <p> <b>AN</b>: Antarctica</p> </li> <li> <p> <b>AS</b>: Asia</p> </li> <li> <p> <b>EU</b>: Europe</p> </li> <li> <p> <b>OC</b>: Oceania</p> </li> <li> <p> <b>NA</b>: North America</p> </li> <li> <p> <b>SA</b>: South America</p> </li> </ul>
-- @return GetGeoLocationRequest structure as a key-value pair table
function M.GetGeoLocationRequest(args)
	assert(args, "You must provdide an argument table when creating GetGeoLocationRequest")
	local t = { 
		["SubdivisionCode"] = args["SubdivisionCode"],
		["CountryCode"] = args["CountryCode"],
		["ContinentCode"] = args["ContinentCode"],
	}
	asserts.AssertGetGeoLocationRequest(t)
	return t
end

keys.GetTrafficPolicyInstanceCountResponse = { ["TrafficPolicyInstanceCount"] = true, nil }

function asserts.AssertGetTrafficPolicyInstanceCountResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTrafficPolicyInstanceCountResponse to be of type 'table'")
	assert(struct["TrafficPolicyInstanceCount"], "Expected key TrafficPolicyInstanceCount to exist in table")
	if struct["TrafficPolicyInstanceCount"] then asserts.AssertTrafficPolicyInstanceCount(struct["TrafficPolicyInstanceCount"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetTrafficPolicyInstanceCountResponse[k], "GetTrafficPolicyInstanceCountResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTrafficPolicyInstanceCountResponse
-- <p>A complex type that contains information about the resource record sets that Amazon Route 53 created based on a specified traffic policy.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TrafficPolicyInstanceCount [TrafficPolicyInstanceCount] <p>The number of traffic policy instances that are associated with the current AWS account.</p>
-- Required key: TrafficPolicyInstanceCount
-- @return GetTrafficPolicyInstanceCountResponse structure as a key-value pair table
function M.GetTrafficPolicyInstanceCountResponse(args)
	assert(args, "You must provdide an argument table when creating GetTrafficPolicyInstanceCountResponse")
	local t = { 
		["TrafficPolicyInstanceCount"] = args["TrafficPolicyInstanceCount"],
	}
	asserts.AssertGetTrafficPolicyInstanceCountResponse(t)
	return t
end

keys.CreateTrafficPolicyInstanceRequest = { ["HostedZoneId"] = true, ["TrafficPolicyVersion"] = true, ["TrafficPolicyId"] = true, ["Name"] = true, ["TTL"] = true, nil }

function asserts.AssertCreateTrafficPolicyInstanceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTrafficPolicyInstanceRequest to be of type 'table'")
	assert(struct["HostedZoneId"], "Expected key HostedZoneId to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["TTL"], "Expected key TTL to exist in table")
	assert(struct["TrafficPolicyId"], "Expected key TrafficPolicyId to exist in table")
	assert(struct["TrafficPolicyVersion"], "Expected key TrafficPolicyVersion to exist in table")
	if struct["HostedZoneId"] then asserts.AssertResourceId(struct["HostedZoneId"]) end
	if struct["TrafficPolicyVersion"] then asserts.AssertTrafficPolicyVersion(struct["TrafficPolicyVersion"]) end
	if struct["TrafficPolicyId"] then asserts.AssertTrafficPolicyId(struct["TrafficPolicyId"]) end
	if struct["Name"] then asserts.AssertDNSName(struct["Name"]) end
	if struct["TTL"] then asserts.AssertTTL(struct["TTL"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateTrafficPolicyInstanceRequest[k], "CreateTrafficPolicyInstanceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTrafficPolicyInstanceRequest
-- <p>A complex type that contains information about the resource record sets that you want to create based on a specified traffic policy.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HostedZoneId [ResourceId] <p>The ID of the hosted zone in which you want Amazon Route 53 to create resource record sets by using the configuration in a traffic policy.</p>
-- * TrafficPolicyVersion [TrafficPolicyVersion] <p>The version of the traffic policy that you want to use to create resource record sets in the specified hosted zone.</p>
-- * TrafficPolicyId [TrafficPolicyId] <p>The ID of the traffic policy that you want to use to create resource record sets in the specified hosted zone.</p>
-- * Name [DNSName] <p>The domain name (such as example.com) or subdomain name (such as www.example.com) for which Amazon Route 53 responds to DNS queries by using the resource record sets that Amazon Route 53 creates for this traffic policy instance.</p>
-- * TTL [TTL] <p>(Optional) The TTL that you want Amazon Route 53 to assign to all of the resource record sets that it creates in the specified hosted zone.</p>
-- Required key: HostedZoneId
-- Required key: Name
-- Required key: TTL
-- Required key: TrafficPolicyId
-- Required key: TrafficPolicyVersion
-- @return CreateTrafficPolicyInstanceRequest structure as a key-value pair table
function M.CreateTrafficPolicyInstanceRequest(args)
	assert(args, "You must provdide an argument table when creating CreateTrafficPolicyInstanceRequest")
	local t = { 
		["HostedZoneId"] = args["HostedZoneId"],
		["TrafficPolicyVersion"] = args["TrafficPolicyVersion"],
		["TrafficPolicyId"] = args["TrafficPolicyId"],
		["Name"] = args["Name"],
		["TTL"] = args["TTL"],
	}
	asserts.AssertCreateTrafficPolicyInstanceRequest(t)
	return t
end

keys.GetTrafficPolicyInstanceCountRequest = { nil }

function asserts.AssertGetTrafficPolicyInstanceCountRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTrafficPolicyInstanceCountRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.GetTrafficPolicyInstanceCountRequest[k], "GetTrafficPolicyInstanceCountRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTrafficPolicyInstanceCountRequest
-- <p>Request to get the number of traffic policy instances that are associated with the current AWS account.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return GetTrafficPolicyInstanceCountRequest structure as a key-value pair table
function M.GetTrafficPolicyInstanceCountRequest(args)
	assert(args, "You must provdide an argument table when creating GetTrafficPolicyInstanceCountRequest")
	local t = { 
	}
	asserts.AssertGetTrafficPolicyInstanceCountRequest(t)
	return t
end

keys.ListHealthChecksResponse = { ["Marker"] = true, ["HealthChecks"] = true, ["NextMarker"] = true, ["IsTruncated"] = true, ["MaxItems"] = true, nil }

function asserts.AssertListHealthChecksResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListHealthChecksResponse to be of type 'table'")
	assert(struct["HealthChecks"], "Expected key HealthChecks to exist in table")
	assert(struct["Marker"], "Expected key Marker to exist in table")
	assert(struct["IsTruncated"], "Expected key IsTruncated to exist in table")
	assert(struct["MaxItems"], "Expected key MaxItems to exist in table")
	if struct["Marker"] then asserts.AssertPageMarker(struct["Marker"]) end
	if struct["HealthChecks"] then asserts.AssertHealthChecks(struct["HealthChecks"]) end
	if struct["NextMarker"] then asserts.AssertPageMarker(struct["NextMarker"]) end
	if struct["IsTruncated"] then asserts.AssertPageTruncated(struct["IsTruncated"]) end
	if struct["MaxItems"] then asserts.AssertPageMaxItems(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListHealthChecksResponse[k], "ListHealthChecksResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListHealthChecksResponse
-- <p>A complex type that contains the response to a <code>ListHealthChecks</code> request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [PageMarker] <p>For the second and subsequent calls to <code>ListHealthChecks</code>, <code>Marker</code> is the value that you specified for the <code>marker</code> parameter in the previous request.</p>
-- * HealthChecks [HealthChecks] <p>A complex type that contains one <code>HealthCheck</code> element for each health check that is associated with the current AWS account.</p>
-- * NextMarker [PageMarker] <p>If <code>IsTruncated</code> is <code>true</code>, the value of <code>NextMarker</code> identifies the first health check that Amazon Route 53 returns if you submit another <code>ListHealthChecks</code> request and specify the value of <code>NextMarker</code> in the <code>marker</code> parameter.</p>
-- * IsTruncated [PageTruncated] <p>A flag that indicates whether there are more health checks to be listed. If the response was truncated, you can get the next group of health checks by submitting another <code>ListHealthChecks</code> request and specifying the value of <code>NextMarker</code> in the <code>marker</code> parameter.</p>
-- * MaxItems [PageMaxItems] <p>The value that you specified for the <code>maxitems</code> parameter in the call to <code>ListHealthChecks</code> that produced the current response.</p>
-- Required key: HealthChecks
-- Required key: Marker
-- Required key: IsTruncated
-- Required key: MaxItems
-- @return ListHealthChecksResponse structure as a key-value pair table
function M.ListHealthChecksResponse(args)
	assert(args, "You must provdide an argument table when creating ListHealthChecksResponse")
	local t = { 
		["Marker"] = args["Marker"],
		["HealthChecks"] = args["HealthChecks"],
		["NextMarker"] = args["NextMarker"],
		["IsTruncated"] = args["IsTruncated"],
		["MaxItems"] = args["MaxItems"],
	}
	asserts.AssertListHealthChecksResponse(t)
	return t
end

keys.TrafficPolicyInstanceAlreadyExists = { ["message"] = true, nil }

function asserts.AssertTrafficPolicyInstanceAlreadyExists(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TrafficPolicyInstanceAlreadyExists to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.TrafficPolicyInstanceAlreadyExists[k], "TrafficPolicyInstanceAlreadyExists contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TrafficPolicyInstanceAlreadyExists
-- <p>Traffic policy instance with given Id already exists.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>Descriptive message for the error response.</p>
-- @return TrafficPolicyInstanceAlreadyExists structure as a key-value pair table
function M.TrafficPolicyInstanceAlreadyExists(args)
	assert(args, "You must provdide an argument table when creating TrafficPolicyInstanceAlreadyExists")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertTrafficPolicyInstanceAlreadyExists(t)
	return t
end

keys.HostedZoneNotFound = { ["message"] = true, nil }

function asserts.AssertHostedZoneNotFound(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HostedZoneNotFound to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.HostedZoneNotFound[k], "HostedZoneNotFound contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HostedZoneNotFound
-- <p>The specified HostedZone can't be found.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>Descriptive message for the error response.</p>
-- @return HostedZoneNotFound structure as a key-value pair table
function M.HostedZoneNotFound(args)
	assert(args, "You must provdide an argument table when creating HostedZoneNotFound")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertHostedZoneNotFound(t)
	return t
end

keys.ListReusableDelegationSetsRequest = { ["Marker"] = true, ["MaxItems"] = true, nil }

function asserts.AssertListReusableDelegationSetsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListReusableDelegationSetsRequest to be of type 'table'")
	if struct["Marker"] then asserts.AssertPageMarker(struct["Marker"]) end
	if struct["MaxItems"] then asserts.AssertPageMaxItems(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListReusableDelegationSetsRequest[k], "ListReusableDelegationSetsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListReusableDelegationSetsRequest
-- <p>A request to get a list of the reusable delegation sets that are associated with the current AWS account.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [PageMarker] <p>If the value of <code>IsTruncated</code> in the previous response was <code>true</code>, you have more reusable delegation sets. To get another group, submit another <code>ListReusableDelegationSets</code> request. </p> <p>For the value of <code>marker</code>, specify the value of <code>NextMarker</code> from the previous response, which is the ID of the first reusable delegation set that Amazon Route 53 will return if you submit another request.</p> <p>If the value of <code>IsTruncated</code> in the previous response was <code>false</code>, there are no more reusable delegation sets to get.</p>
-- * MaxItems [PageMaxItems] <p>The number of reusable delegation sets that you want Amazon Route 53 to return in the response to this request. If you specify a value greater than 100, Amazon Route 53 returns only the first 100 reusable delegation sets.</p>
-- @return ListReusableDelegationSetsRequest structure as a key-value pair table
function M.ListReusableDelegationSetsRequest(args)
	assert(args, "You must provdide an argument table when creating ListReusableDelegationSetsRequest")
	local t = { 
		["Marker"] = args["Marker"],
		["MaxItems"] = args["MaxItems"],
	}
	asserts.AssertListReusableDelegationSetsRequest(t)
	return t
end

keys.GetCheckerIpRangesRequest = { nil }

function asserts.AssertGetCheckerIpRangesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCheckerIpRangesRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.GetCheckerIpRangesRequest[k], "GetCheckerIpRangesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCheckerIpRangesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return GetCheckerIpRangesRequest structure as a key-value pair table
function M.GetCheckerIpRangesRequest(args)
	assert(args, "You must provdide an argument table when creating GetCheckerIpRangesRequest")
	local t = { 
	}
	asserts.AssertGetCheckerIpRangesRequest(t)
	return t
end

keys.TooManyTrafficPolicyInstances = { ["message"] = true, nil }

function asserts.AssertTooManyTrafficPolicyInstances(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyTrafficPolicyInstances to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.TooManyTrafficPolicyInstances[k], "TooManyTrafficPolicyInstances contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyTrafficPolicyInstances
-- <p>You've created the maximum number of traffic policy instances that can be created for the current AWS account. You can request an increase to the limit on the <a href="http://aws.amazon.com/route53-request/">Contact Us</a> page.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>Descriptive message for the error response.</p>
-- @return TooManyTrafficPolicyInstances structure as a key-value pair table
function M.TooManyTrafficPolicyInstances(args)
	assert(args, "You must provdide an argument table when creating TooManyTrafficPolicyInstances")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertTooManyTrafficPolicyInstances(t)
	return t
end

keys.VPCAssociationNotFound = { ["message"] = true, nil }

function asserts.AssertVPCAssociationNotFound(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VPCAssociationNotFound to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.VPCAssociationNotFound[k], "VPCAssociationNotFound contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VPCAssociationNotFound
-- <p>The specified VPC and hosted zone are not currently associated.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>Descriptive message for the error response.</p>
-- @return VPCAssociationNotFound structure as a key-value pair table
function M.VPCAssociationNotFound(args)
	assert(args, "You must provdide an argument table when creating VPCAssociationNotFound")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertVPCAssociationNotFound(t)
	return t
end

keys.GeoLocation = { ["SubdivisionCode"] = true, ["CountryCode"] = true, ["ContinentCode"] = true, nil }

function asserts.AssertGeoLocation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GeoLocation to be of type 'table'")
	if struct["SubdivisionCode"] then asserts.AssertGeoLocationSubdivisionCode(struct["SubdivisionCode"]) end
	if struct["CountryCode"] then asserts.AssertGeoLocationCountryCode(struct["CountryCode"]) end
	if struct["ContinentCode"] then asserts.AssertGeoLocationContinentCode(struct["ContinentCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.GeoLocation[k], "GeoLocation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GeoLocation
-- <p>A complex type that contains information about a geo location.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SubdivisionCode [GeoLocationSubdivisionCode] <p>The code for the subdivision, for example, a state in the United States or a province in Canada.</p>
-- * CountryCode [GeoLocationCountryCode] <p>The two-letter code for the country.</p>
-- * ContinentCode [GeoLocationContinentCode] <p>The two-letter code for the continent.</p> <p>Valid values: <code>AF</code> | <code>AN</code> | <code>AS</code> | <code>EU</code> | <code>OC</code> | <code>NA</code> | <code>SA</code> </p> <p>Constraint: Specifying <code>ContinentCode</code> with either <code>CountryCode</code> or <code>SubdivisionCode</code> returns an <code>InvalidInput</code> error.</p>
-- @return GeoLocation structure as a key-value pair table
function M.GeoLocation(args)
	assert(args, "You must provdide an argument table when creating GeoLocation")
	local t = { 
		["SubdivisionCode"] = args["SubdivisionCode"],
		["CountryCode"] = args["CountryCode"],
		["ContinentCode"] = args["ContinentCode"],
	}
	asserts.AssertGeoLocation(t)
	return t
end

keys.DeleteVPCAssociationAuthorizationResponse = { nil }

function asserts.AssertDeleteVPCAssociationAuthorizationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteVPCAssociationAuthorizationResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteVPCAssociationAuthorizationResponse[k], "DeleteVPCAssociationAuthorizationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteVPCAssociationAuthorizationResponse
-- <p>Empty response for the request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteVPCAssociationAuthorizationResponse structure as a key-value pair table
function M.DeleteVPCAssociationAuthorizationResponse(args)
	assert(args, "You must provdide an argument table when creating DeleteVPCAssociationAuthorizationResponse")
	local t = { 
	}
	asserts.AssertDeleteVPCAssociationAuthorizationResponse(t)
	return t
end

keys.ChangeBatch = { ["Comment"] = true, ["Changes"] = true, nil }

function asserts.AssertChangeBatch(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ChangeBatch to be of type 'table'")
	assert(struct["Changes"], "Expected key Changes to exist in table")
	if struct["Comment"] then asserts.AssertResourceDescription(struct["Comment"]) end
	if struct["Changes"] then asserts.AssertChanges(struct["Changes"]) end
	for k,_ in pairs(struct) do
		assert(keys.ChangeBatch[k], "ChangeBatch contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ChangeBatch
-- <p>The information for a change request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Comment [ResourceDescription] <p> <i>Optional:</i> Any comments you want to include about a change batch request.</p>
-- * Changes [Changes] <p>Information about the changes to make to the record sets.</p>
-- Required key: Changes
-- @return ChangeBatch structure as a key-value pair table
function M.ChangeBatch(args)
	assert(args, "You must provdide an argument table when creating ChangeBatch")
	local t = { 
		["Comment"] = args["Comment"],
		["Changes"] = args["Changes"],
	}
	asserts.AssertChangeBatch(t)
	return t
end

keys.ListGeoLocationsRequest = { ["StartCountryCode"] = true, ["StartSubdivisionCode"] = true, ["StartContinentCode"] = true, ["MaxItems"] = true, nil }

function asserts.AssertListGeoLocationsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListGeoLocationsRequest to be of type 'table'")
	if struct["StartCountryCode"] then asserts.AssertGeoLocationCountryCode(struct["StartCountryCode"]) end
	if struct["StartSubdivisionCode"] then asserts.AssertGeoLocationSubdivisionCode(struct["StartSubdivisionCode"]) end
	if struct["StartContinentCode"] then asserts.AssertGeoLocationContinentCode(struct["StartContinentCode"]) end
	if struct["MaxItems"] then asserts.AssertPageMaxItems(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListGeoLocationsRequest[k], "ListGeoLocationsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListGeoLocationsRequest
-- <p>A request to get a list of geographic locations that Amazon Route 53 supports for geolocation resource record sets. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StartCountryCode [GeoLocationCountryCode] <p>The code for the country with which you want to start listing locations that Amazon Route 53 supports for geolocation. If Amazon Route 53 has already returned a page or more of results, if <code>IsTruncated</code> is <code>true</code>, and if <code>NextCountryCode</code> from the previous response has a value, enter that value in <code>StartCountryCode</code> to return the next page of results.</p> <p>Amazon Route 53 uses the two-letter country codes that are specified in <a href="https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2">ISO standard 3166-1 alpha-2</a>.</p>
-- * StartSubdivisionCode [GeoLocationSubdivisionCode] <p>The code for the subdivision (for example, state or province) with which you want to start listing locations that Amazon Route 53 supports for geolocation. If Amazon Route 53 has already returned a page or more of results, if <code>IsTruncated</code> is <code>true</code>, and if <code>NextSubdivisionCode</code> from the previous response has a value, enter that value in <code>StartSubdivisionCode</code> to return the next page of results.</p> <p>To list subdivisions of a country, you must include both <code>StartCountryCode</code> and <code>StartSubdivisionCode</code>.</p>
-- * StartContinentCode [GeoLocationContinentCode] <p>The code for the continent with which you want to start listing locations that Amazon Route 53 supports for geolocation. If Amazon Route 53 has already returned a page or more of results, if <code>IsTruncated</code> is true, and if <code>NextContinentCode</code> from the previous response has a value, enter that value in <code>StartContinentCode</code> to return the next page of results.</p> <p>Include <code>StartContinentCode</code> only if you want to list continents. Don't include <code>StartContinentCode</code> when you're listing countries or countries with their subdivisions.</p>
-- * MaxItems [PageMaxItems] <p>(Optional) The maximum number of geolocations to be included in the response body for this request. If more than <code>MaxItems</code> geolocations remain to be listed, then the value of the <code>IsTruncated</code> element in the response is <code>true</code>.</p>
-- @return ListGeoLocationsRequest structure as a key-value pair table
function M.ListGeoLocationsRequest(args)
	assert(args, "You must provdide an argument table when creating ListGeoLocationsRequest")
	local t = { 
		["StartCountryCode"] = args["StartCountryCode"],
		["StartSubdivisionCode"] = args["StartSubdivisionCode"],
		["StartContinentCode"] = args["StartContinentCode"],
		["MaxItems"] = args["MaxItems"],
	}
	asserts.AssertListGeoLocationsRequest(t)
	return t
end

keys.GetHealthCheckCountRequest = { nil }

function asserts.AssertGetHealthCheckCountRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetHealthCheckCountRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.GetHealthCheckCountRequest[k], "GetHealthCheckCountRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetHealthCheckCountRequest
-- <p>A request for the number of health checks that are associated with the current AWS account.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return GetHealthCheckCountRequest structure as a key-value pair table
function M.GetHealthCheckCountRequest(args)
	assert(args, "You must provdide an argument table when creating GetHealthCheckCountRequest")
	local t = { 
	}
	asserts.AssertGetHealthCheckCountRequest(t)
	return t
end

keys.TrafficPolicy = { ["Comment"] = true, ["Name"] = true, ["Version"] = true, ["Document"] = true, ["Type"] = true, ["Id"] = true, nil }

function asserts.AssertTrafficPolicy(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TrafficPolicy to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["Version"], "Expected key Version to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Type"], "Expected key Type to exist in table")
	assert(struct["Document"], "Expected key Document to exist in table")
	if struct["Comment"] then asserts.AssertTrafficPolicyComment(struct["Comment"]) end
	if struct["Name"] then asserts.AssertTrafficPolicyName(struct["Name"]) end
	if struct["Version"] then asserts.AssertTrafficPolicyVersion(struct["Version"]) end
	if struct["Document"] then asserts.AssertTrafficPolicyDocument(struct["Document"]) end
	if struct["Type"] then asserts.AssertRRType(struct["Type"]) end
	if struct["Id"] then asserts.AssertTrafficPolicyId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.TrafficPolicy[k], "TrafficPolicy contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TrafficPolicy
-- <p>A complex type that contains settings for a traffic policy.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Comment [TrafficPolicyComment] <p>The comment that you specify in the <code>CreateTrafficPolicy</code> request, if any.</p>
-- * Name [TrafficPolicyName] <p>The name that you specified when you created the traffic policy.</p>
-- * Version [TrafficPolicyVersion] <p>The version number that Amazon Route 53 assigns to a traffic policy. For a new traffic policy, the value of <code>Version</code> is always 1.</p>
-- * Document [TrafficPolicyDocument] <p>The definition of a traffic policy in JSON format. You specify the JSON document to use for a new traffic policy in the <code>CreateTrafficPolicy</code> request. For more information about the JSON format, see <a href="http://docs.aws.amazon.com/Route53/latest/APIReference/api-policies-traffic-policy-document-format.html">Traffic Policy Document Format</a>.</p>
-- * Type [RRType] <p>The DNS type of the resource record sets that Amazon Route 53 creates when you use a traffic policy to create a traffic policy instance.</p>
-- * Id [TrafficPolicyId] <p>The ID that Amazon Route 53 assigned to a traffic policy when you created it.</p>
-- Required key: Id
-- Required key: Version
-- Required key: Name
-- Required key: Type
-- Required key: Document
-- @return TrafficPolicy structure as a key-value pair table
function M.TrafficPolicy(args)
	assert(args, "You must provdide an argument table when creating TrafficPolicy")
	local t = { 
		["Comment"] = args["Comment"],
		["Name"] = args["Name"],
		["Version"] = args["Version"],
		["Document"] = args["Document"],
		["Type"] = args["Type"],
		["Id"] = args["Id"],
	}
	asserts.AssertTrafficPolicy(t)
	return t
end

keys.ListTagsForResourceRequest = { ["ResourceType"] = true, ["ResourceId"] = true, nil }

function asserts.AssertListTagsForResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForResourceRequest to be of type 'table'")
	assert(struct["ResourceType"], "Expected key ResourceType to exist in table")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	if struct["ResourceType"] then asserts.AssertTagResourceType(struct["ResourceType"]) end
	if struct["ResourceId"] then asserts.AssertTagResourceId(struct["ResourceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsForResourceRequest[k], "ListTagsForResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForResourceRequest
-- <p>A complex type containing information about a request for a list of the tags that are associated with an individual resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceType [TagResourceType] <p>The type of the resource.</p> <ul> <li> <p>The resource type for health checks is <code>healthcheck</code>.</p> </li> <li> <p>The resource type for hosted zones is <code>hostedzone</code>.</p> </li> </ul>
-- * ResourceId [TagResourceId] <p>The ID of the resource for which you want to retrieve tags.</p>
-- Required key: ResourceType
-- Required key: ResourceId
-- @return ListTagsForResourceRequest structure as a key-value pair table
function M.ListTagsForResourceRequest(args)
	assert(args, "You must provdide an argument table when creating ListTagsForResourceRequest")
	local t = { 
		["ResourceType"] = args["ResourceType"],
		["ResourceId"] = args["ResourceId"],
	}
	asserts.AssertListTagsForResourceRequest(t)
	return t
end

keys.VPC = { ["VPCId"] = true, ["VPCRegion"] = true, nil }

function asserts.AssertVPC(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VPC to be of type 'table'")
	if struct["VPCId"] then asserts.AssertVPCId(struct["VPCId"]) end
	if struct["VPCRegion"] then asserts.AssertVPCRegion(struct["VPCRegion"]) end
	for k,_ in pairs(struct) do
		assert(keys.VPC[k], "VPC contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VPC
-- <p>(Private hosted zones only) A complex type that contains information about an Amazon VPC.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VPCId [VPCId] 
-- * VPCRegion [VPCRegion] <p>(Private hosted zones only) The region in which you created an Amazon VPC.</p>
-- @return VPC structure as a key-value pair table
function M.VPC(args)
	assert(args, "You must provdide an argument table when creating VPC")
	local t = { 
		["VPCId"] = args["VPCId"],
		["VPCRegion"] = args["VPCRegion"],
	}
	asserts.AssertVPC(t)
	return t
end

keys.TrafficPolicySummary = { ["TrafficPolicyCount"] = true, ["LatestVersion"] = true, ["Type"] = true, ["Id"] = true, ["Name"] = true, nil }

function asserts.AssertTrafficPolicySummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TrafficPolicySummary to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Type"], "Expected key Type to exist in table")
	assert(struct["LatestVersion"], "Expected key LatestVersion to exist in table")
	assert(struct["TrafficPolicyCount"], "Expected key TrafficPolicyCount to exist in table")
	if struct["TrafficPolicyCount"] then asserts.AssertTrafficPolicyVersion(struct["TrafficPolicyCount"]) end
	if struct["LatestVersion"] then asserts.AssertTrafficPolicyVersion(struct["LatestVersion"]) end
	if struct["Type"] then asserts.AssertRRType(struct["Type"]) end
	if struct["Id"] then asserts.AssertTrafficPolicyId(struct["Id"]) end
	if struct["Name"] then asserts.AssertTrafficPolicyName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.TrafficPolicySummary[k], "TrafficPolicySummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TrafficPolicySummary
-- <p>A complex type that contains information about the latest version of one traffic policy that is associated with the current AWS account.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TrafficPolicyCount [TrafficPolicyVersion] <p>The number of traffic policies that are associated with the current AWS account.</p>
-- * LatestVersion [TrafficPolicyVersion] <p>The version number of the latest version of the traffic policy.</p>
-- * Type [RRType] <p>The DNS type of the resource record sets that Amazon Route 53 creates when you use a traffic policy to create a traffic policy instance.</p>
-- * Id [TrafficPolicyId] <p>The ID that Amazon Route 53 assigned to the traffic policy when you created it.</p>
-- * Name [TrafficPolicyName] <p>The name that you specified for the traffic policy when you created it.</p>
-- Required key: Id
-- Required key: Name
-- Required key: Type
-- Required key: LatestVersion
-- Required key: TrafficPolicyCount
-- @return TrafficPolicySummary structure as a key-value pair table
function M.TrafficPolicySummary(args)
	assert(args, "You must provdide an argument table when creating TrafficPolicySummary")
	local t = { 
		["TrafficPolicyCount"] = args["TrafficPolicyCount"],
		["LatestVersion"] = args["LatestVersion"],
		["Type"] = args["Type"],
		["Id"] = args["Id"],
		["Name"] = args["Name"],
	}
	asserts.AssertTrafficPolicySummary(t)
	return t
end

keys.ListHostedZonesResponse = { ["Marker"] = true, ["HostedZones"] = true, ["NextMarker"] = true, ["IsTruncated"] = true, ["MaxItems"] = true, nil }

function asserts.AssertListHostedZonesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListHostedZonesResponse to be of type 'table'")
	assert(struct["HostedZones"], "Expected key HostedZones to exist in table")
	assert(struct["Marker"], "Expected key Marker to exist in table")
	assert(struct["IsTruncated"], "Expected key IsTruncated to exist in table")
	assert(struct["MaxItems"], "Expected key MaxItems to exist in table")
	if struct["Marker"] then asserts.AssertPageMarker(struct["Marker"]) end
	if struct["HostedZones"] then asserts.AssertHostedZones(struct["HostedZones"]) end
	if struct["NextMarker"] then asserts.AssertPageMarker(struct["NextMarker"]) end
	if struct["IsTruncated"] then asserts.AssertPageTruncated(struct["IsTruncated"]) end
	if struct["MaxItems"] then asserts.AssertPageMaxItems(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListHostedZonesResponse[k], "ListHostedZonesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListHostedZonesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [PageMarker] <p>For the second and subsequent calls to <code>ListHostedZones</code>, <code>Marker</code> is the value that you specified for the <code>marker</code> parameter in the request that produced the current response.</p>
-- * HostedZones [HostedZones] <p>A complex type that contains general information about the hosted zone.</p>
-- * NextMarker [PageMarker] <p>If <code>IsTruncated</code> is <code>true</code>, the value of <code>NextMarker</code> identifies the first hosted zone in the next group of hosted zones. Submit another <code>ListHostedZones</code> request, and specify the value of <code>NextMarker</code> from the response in the <code>marker</code> parameter.</p> <p>This element is present only if <code>IsTruncated</code> is <code>true</code>.</p>
-- * IsTruncated [PageTruncated] <p>A flag indicating whether there are more hosted zones to be listed. If the response was truncated, you can get more hosted zones by submitting another <code>ListHostedZones</code> request and specifying the value of <code>NextMarker</code> in the <code>marker</code> parameter.</p>
-- * MaxItems [PageMaxItems] <p>The value that you specified for the <code>maxitems</code> parameter in the call to <code>ListHostedZones</code> that produced the current response.</p>
-- Required key: HostedZones
-- Required key: Marker
-- Required key: IsTruncated
-- Required key: MaxItems
-- @return ListHostedZonesResponse structure as a key-value pair table
function M.ListHostedZonesResponse(args)
	assert(args, "You must provdide an argument table when creating ListHostedZonesResponse")
	local t = { 
		["Marker"] = args["Marker"],
		["HostedZones"] = args["HostedZones"],
		["NextMarker"] = args["NextMarker"],
		["IsTruncated"] = args["IsTruncated"],
		["MaxItems"] = args["MaxItems"],
	}
	asserts.AssertListHostedZonesResponse(t)
	return t
end

keys.GetHealthCheckRequest = { ["HealthCheckId"] = true, nil }

function asserts.AssertGetHealthCheckRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetHealthCheckRequest to be of type 'table'")
	assert(struct["HealthCheckId"], "Expected key HealthCheckId to exist in table")
	if struct["HealthCheckId"] then asserts.AssertHealthCheckId(struct["HealthCheckId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetHealthCheckRequest[k], "GetHealthCheckRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetHealthCheckRequest
-- <p>A request to get information about a specified health check. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HealthCheckId [HealthCheckId] <p>The identifier that Amazon Route 53 assigned to the health check when you created it. When you add or update a resource record set, you use this value to specify which health check to use. The value can be up to 64 characters long.</p>
-- Required key: HealthCheckId
-- @return GetHealthCheckRequest structure as a key-value pair table
function M.GetHealthCheckRequest(args)
	assert(args, "You must provdide an argument table when creating GetHealthCheckRequest")
	local t = { 
		["HealthCheckId"] = args["HealthCheckId"],
	}
	asserts.AssertGetHealthCheckRequest(t)
	return t
end

keys.DelegationSetNotReusable = { ["message"] = true, nil }

function asserts.AssertDelegationSetNotReusable(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DelegationSetNotReusable to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.DelegationSetNotReusable[k], "DelegationSetNotReusable contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DelegationSetNotReusable
-- <p>A reusable delegation set with the specified ID does not exist.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>Descriptive message for the error response.</p>
-- @return DelegationSetNotReusable structure as a key-value pair table
function M.DelegationSetNotReusable(args)
	assert(args, "You must provdide an argument table when creating DelegationSetNotReusable")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertDelegationSetNotReusable(t)
	return t
end

keys.UpdateTrafficPolicyInstanceResponse = { ["TrafficPolicyInstance"] = true, nil }

function asserts.AssertUpdateTrafficPolicyInstanceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateTrafficPolicyInstanceResponse to be of type 'table'")
	assert(struct["TrafficPolicyInstance"], "Expected key TrafficPolicyInstance to exist in table")
	if struct["TrafficPolicyInstance"] then asserts.AssertTrafficPolicyInstance(struct["TrafficPolicyInstance"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateTrafficPolicyInstanceResponse[k], "UpdateTrafficPolicyInstanceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateTrafficPolicyInstanceResponse
-- <p>A complex type that contains information about the resource record sets that Amazon Route 53 created based on a specified traffic policy.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TrafficPolicyInstance [TrafficPolicyInstance] <p>A complex type that contains settings for the updated traffic policy instance.</p>
-- Required key: TrafficPolicyInstance
-- @return UpdateTrafficPolicyInstanceResponse structure as a key-value pair table
function M.UpdateTrafficPolicyInstanceResponse(args)
	assert(args, "You must provdide an argument table when creating UpdateTrafficPolicyInstanceResponse")
	local t = { 
		["TrafficPolicyInstance"] = args["TrafficPolicyInstance"],
	}
	asserts.AssertUpdateTrafficPolicyInstanceResponse(t)
	return t
end

keys.CreateHostedZoneResponse = { ["Location"] = true, ["HostedZone"] = true, ["VPC"] = true, ["ChangeInfo"] = true, ["DelegationSet"] = true, nil }

function asserts.AssertCreateHostedZoneResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateHostedZoneResponse to be of type 'table'")
	assert(struct["HostedZone"], "Expected key HostedZone to exist in table")
	assert(struct["ChangeInfo"], "Expected key ChangeInfo to exist in table")
	assert(struct["DelegationSet"], "Expected key DelegationSet to exist in table")
	assert(struct["Location"], "Expected key Location to exist in table")
	if struct["Location"] then asserts.AssertResourceURI(struct["Location"]) end
	if struct["HostedZone"] then asserts.AssertHostedZone(struct["HostedZone"]) end
	if struct["VPC"] then asserts.AssertVPC(struct["VPC"]) end
	if struct["ChangeInfo"] then asserts.AssertChangeInfo(struct["ChangeInfo"]) end
	if struct["DelegationSet"] then asserts.AssertDelegationSet(struct["DelegationSet"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateHostedZoneResponse[k], "CreateHostedZoneResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateHostedZoneResponse
-- <p>A complex type containing the response information for the hosted zone.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Location [ResourceURI] <p>The unique URL representing the new hosted zone.</p>
-- * HostedZone [HostedZone] <p>A complex type that contains general information about the hosted zone.</p>
-- * VPC [VPC] <p>A complex type that contains information about an Amazon VPC that you associated with this hosted zone.</p>
-- * ChangeInfo [ChangeInfo] <p>A complex type that contains information about the <code>CreateHostedZone</code> request.</p>
-- * DelegationSet [DelegationSet] <p>A complex type that describes the name servers for this hosted zone.</p>
-- Required key: HostedZone
-- Required key: ChangeInfo
-- Required key: DelegationSet
-- Required key: Location
-- @return CreateHostedZoneResponse structure as a key-value pair table
function M.CreateHostedZoneResponse(args)
	assert(args, "You must provdide an argument table when creating CreateHostedZoneResponse")
	local t = { 
		["Location"] = args["Location"],
		["HostedZone"] = args["HostedZone"],
		["VPC"] = args["VPC"],
		["ChangeInfo"] = args["ChangeInfo"],
		["DelegationSet"] = args["DelegationSet"],
	}
	asserts.AssertCreateHostedZoneResponse(t)
	return t
end

keys.GetReusableDelegationSetRequest = { ["Id"] = true, nil }

function asserts.AssertGetReusableDelegationSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetReusableDelegationSetRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then asserts.AssertResourceId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetReusableDelegationSetRequest[k], "GetReusableDelegationSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetReusableDelegationSetRequest
-- <p>A request to get information about a specified reusable delegation set.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [ResourceId] <p>The ID of the reusable delegation set that you want to get a list of name servers for.</p>
-- Required key: Id
-- @return GetReusableDelegationSetRequest structure as a key-value pair table
function M.GetReusableDelegationSetRequest(args)
	assert(args, "You must provdide an argument table when creating GetReusableDelegationSetRequest")
	local t = { 
		["Id"] = args["Id"],
	}
	asserts.AssertGetReusableDelegationSetRequest(t)
	return t
end

keys.DeleteHostedZoneResponse = { ["ChangeInfo"] = true, nil }

function asserts.AssertDeleteHostedZoneResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteHostedZoneResponse to be of type 'table'")
	assert(struct["ChangeInfo"], "Expected key ChangeInfo to exist in table")
	if struct["ChangeInfo"] then asserts.AssertChangeInfo(struct["ChangeInfo"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteHostedZoneResponse[k], "DeleteHostedZoneResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteHostedZoneResponse
-- <p>A complex type that contains the response to a <code>DeleteHostedZone</code> request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChangeInfo [ChangeInfo] <p>A complex type that contains the ID, the status, and the date and time of a request to delete a hosted zone.</p>
-- Required key: ChangeInfo
-- @return DeleteHostedZoneResponse structure as a key-value pair table
function M.DeleteHostedZoneResponse(args)
	assert(args, "You must provdide an argument table when creating DeleteHostedZoneResponse")
	local t = { 
		["ChangeInfo"] = args["ChangeInfo"],
	}
	asserts.AssertDeleteHostedZoneResponse(t)
	return t
end

keys.ConflictingTypes = { ["message"] = true, nil }

function asserts.AssertConflictingTypes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConflictingTypes to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConflictingTypes[k], "ConflictingTypes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConflictingTypes
-- <p>You tried to update a traffic policy instance by using a traffic policy version that has a different DNS type than the current type for the instance. You specified the type in the JSON document in the <code>CreateTrafficPolicy</code> or <code>CreateTrafficPolicyVersion</code>request. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>Descriptive message for the error response.</p>
-- @return ConflictingTypes structure as a key-value pair table
function M.ConflictingTypes(args)
	assert(args, "You must provdide an argument table when creating ConflictingTypes")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertConflictingTypes(t)
	return t
end

keys.HealthCheckInUse = { ["message"] = true, nil }

function asserts.AssertHealthCheckInUse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HealthCheckInUse to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.HealthCheckInUse[k], "HealthCheckInUse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HealthCheckInUse
-- <p>This error code is not in use.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>Descriptive message for the error response.</p>
-- @return HealthCheckInUse structure as a key-value pair table
function M.HealthCheckInUse(args)
	assert(args, "You must provdide an argument table when creating HealthCheckInUse")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertHealthCheckInUse(t)
	return t
end

keys.DeleteReusableDelegationSetRequest = { ["Id"] = true, nil }

function asserts.AssertDeleteReusableDelegationSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteReusableDelegationSetRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then asserts.AssertResourceId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteReusableDelegationSetRequest[k], "DeleteReusableDelegationSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteReusableDelegationSetRequest
-- <p>A request to delete a reusable delegation set.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [ResourceId] <p>The ID of the reusable delegation set that you want to delete.</p>
-- Required key: Id
-- @return DeleteReusableDelegationSetRequest structure as a key-value pair table
function M.DeleteReusableDelegationSetRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteReusableDelegationSetRequest")
	local t = { 
		["Id"] = args["Id"],
	}
	asserts.AssertDeleteReusableDelegationSetRequest(t)
	return t
end

keys.HostedZoneNotEmpty = { ["message"] = true, nil }

function asserts.AssertHostedZoneNotEmpty(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HostedZoneNotEmpty to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.HostedZoneNotEmpty[k], "HostedZoneNotEmpty contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HostedZoneNotEmpty
-- <p>The hosted zone contains resource records that are not SOA or NS records.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>Descriptive message for the error response.</p>
-- @return HostedZoneNotEmpty structure as a key-value pair table
function M.HostedZoneNotEmpty(args)
	assert(args, "You must provdide an argument table when creating HostedZoneNotEmpty")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertHostedZoneNotEmpty(t)
	return t
end

keys.GetHostedZoneResponse = { ["VPCs"] = true, ["HostedZone"] = true, ["DelegationSet"] = true, nil }

function asserts.AssertGetHostedZoneResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetHostedZoneResponse to be of type 'table'")
	assert(struct["HostedZone"], "Expected key HostedZone to exist in table")
	if struct["VPCs"] then asserts.AssertVPCs(struct["VPCs"]) end
	if struct["HostedZone"] then asserts.AssertHostedZone(struct["HostedZone"]) end
	if struct["DelegationSet"] then asserts.AssertDelegationSet(struct["DelegationSet"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetHostedZoneResponse[k], "GetHostedZoneResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetHostedZoneResponse
-- <p>A complex type that contain the response to a <code>GetHostedZone</code> request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VPCs [VPCs] <p>A complex type that contains information about the VPCs that are associated with the specified hosted zone.</p>
-- * HostedZone [HostedZone] <p>A complex type that contains general information about the specified hosted zone.</p>
-- * DelegationSet [DelegationSet] <p>A complex type that lists the Amazon Route 53 name servers for the specified hosted zone.</p>
-- Required key: HostedZone
-- @return GetHostedZoneResponse structure as a key-value pair table
function M.GetHostedZoneResponse(args)
	assert(args, "You must provdide an argument table when creating GetHostedZoneResponse")
	local t = { 
		["VPCs"] = args["VPCs"],
		["HostedZone"] = args["HostedZone"],
		["DelegationSet"] = args["DelegationSet"],
	}
	asserts.AssertGetHostedZoneResponse(t)
	return t
end

keys.DelegationSetAlreadyCreated = { ["message"] = true, nil }

function asserts.AssertDelegationSetAlreadyCreated(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DelegationSetAlreadyCreated to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.DelegationSetAlreadyCreated[k], "DelegationSetAlreadyCreated contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DelegationSetAlreadyCreated
-- <p>A delegation set with the same owner and caller reference combination has already been created.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>Descriptive message for the error response.</p>
-- @return DelegationSetAlreadyCreated structure as a key-value pair table
function M.DelegationSetAlreadyCreated(args)
	assert(args, "You must provdide an argument table when creating DelegationSetAlreadyCreated")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertDelegationSetAlreadyCreated(t)
	return t
end

keys.GetTrafficPolicyResponse = { ["TrafficPolicy"] = true, nil }

function asserts.AssertGetTrafficPolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTrafficPolicyResponse to be of type 'table'")
	assert(struct["TrafficPolicy"], "Expected key TrafficPolicy to exist in table")
	if struct["TrafficPolicy"] then asserts.AssertTrafficPolicy(struct["TrafficPolicy"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetTrafficPolicyResponse[k], "GetTrafficPolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTrafficPolicyResponse
-- <p>A complex type that contains the response information for the request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TrafficPolicy [TrafficPolicy] <p>A complex type that contains settings for the specified traffic policy.</p>
-- Required key: TrafficPolicy
-- @return GetTrafficPolicyResponse structure as a key-value pair table
function M.GetTrafficPolicyResponse(args)
	assert(args, "You must provdide an argument table when creating GetTrafficPolicyResponse")
	local t = { 
		["TrafficPolicy"] = args["TrafficPolicy"],
	}
	asserts.AssertGetTrafficPolicyResponse(t)
	return t
end

keys.CreateHealthCheckResponse = { ["HealthCheck"] = true, ["Location"] = true, nil }

function asserts.AssertCreateHealthCheckResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateHealthCheckResponse to be of type 'table'")
	assert(struct["HealthCheck"], "Expected key HealthCheck to exist in table")
	assert(struct["Location"], "Expected key Location to exist in table")
	if struct["HealthCheck"] then asserts.AssertHealthCheck(struct["HealthCheck"]) end
	if struct["Location"] then asserts.AssertResourceURI(struct["Location"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateHealthCheckResponse[k], "CreateHealthCheckResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateHealthCheckResponse
-- <p>A complex type containing the response information for the new health check.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HealthCheck [HealthCheck] <p>A complex type that contains identifying information about the health check.</p>
-- * Location [ResourceURI] <p>The unique URL representing the new health check.</p>
-- Required key: HealthCheck
-- Required key: Location
-- @return CreateHealthCheckResponse structure as a key-value pair table
function M.CreateHealthCheckResponse(args)
	assert(args, "You must provdide an argument table when creating CreateHealthCheckResponse")
	local t = { 
		["HealthCheck"] = args["HealthCheck"],
		["Location"] = args["Location"],
	}
	asserts.AssertCreateHealthCheckResponse(t)
	return t
end

keys.ListTrafficPolicyVersionsRequest = { ["Id"] = true, ["MaxItems"] = true, ["TrafficPolicyVersionMarker"] = true, nil }

function asserts.AssertListTrafficPolicyVersionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTrafficPolicyVersionsRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then asserts.AssertTrafficPolicyId(struct["Id"]) end
	if struct["MaxItems"] then asserts.AssertPageMaxItems(struct["MaxItems"]) end
	if struct["TrafficPolicyVersionMarker"] then asserts.AssertTrafficPolicyVersionMarker(struct["TrafficPolicyVersionMarker"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTrafficPolicyVersionsRequest[k], "ListTrafficPolicyVersionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTrafficPolicyVersionsRequest
-- <p>A complex type that contains the information about the request to list your traffic policies.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [TrafficPolicyId] <p>Specify the value of <code>Id</code> of the traffic policy for which you want to list all versions.</p>
-- * MaxItems [PageMaxItems] <p>The maximum number of traffic policy versions that you want Amazon Route 53 to include in the response body for this request. If the specified traffic policy has more than <code>MaxItems</code> versions, the value of <code>IsTruncated</code> in the response is <code>true</code>, and the value of the <code>TrafficPolicyVersionMarker</code> element is the ID of the first version that Amazon Route 53 will return if you submit another request.</p>
-- * TrafficPolicyVersionMarker [TrafficPolicyVersionMarker] <p>For your first request to <code>ListTrafficPolicyVersions</code>, don't include the <code>TrafficPolicyVersionMarker</code> parameter.</p> <p>If you have more traffic policy versions than the value of <code>MaxItems</code>, <code>ListTrafficPolicyVersions</code> returns only the first group of <code>MaxItems</code> versions. To get more traffic policy versions, submit another <code>ListTrafficPolicyVersions</code> request. For the value of <code>TrafficPolicyVersionMarker</code>, specify the value of <code>TrafficPolicyVersionMarker</code> in the previous response.</p>
-- Required key: Id
-- @return ListTrafficPolicyVersionsRequest structure as a key-value pair table
function M.ListTrafficPolicyVersionsRequest(args)
	assert(args, "You must provdide an argument table when creating ListTrafficPolicyVersionsRequest")
	local t = { 
		["Id"] = args["Id"],
		["MaxItems"] = args["MaxItems"],
		["TrafficPolicyVersionMarker"] = args["TrafficPolicyVersionMarker"],
	}
	asserts.AssertListTrafficPolicyVersionsRequest(t)
	return t
end

keys.ListTrafficPoliciesResponse = { ["TrafficPolicyIdMarker"] = true, ["TrafficPolicySummaries"] = true, ["MaxItems"] = true, ["IsTruncated"] = true, nil }

function asserts.AssertListTrafficPoliciesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTrafficPoliciesResponse to be of type 'table'")
	assert(struct["TrafficPolicySummaries"], "Expected key TrafficPolicySummaries to exist in table")
	assert(struct["IsTruncated"], "Expected key IsTruncated to exist in table")
	assert(struct["TrafficPolicyIdMarker"], "Expected key TrafficPolicyIdMarker to exist in table")
	assert(struct["MaxItems"], "Expected key MaxItems to exist in table")
	if struct["TrafficPolicyIdMarker"] then asserts.AssertTrafficPolicyId(struct["TrafficPolicyIdMarker"]) end
	if struct["TrafficPolicySummaries"] then asserts.AssertTrafficPolicySummaries(struct["TrafficPolicySummaries"]) end
	if struct["MaxItems"] then asserts.AssertPageMaxItems(struct["MaxItems"]) end
	if struct["IsTruncated"] then asserts.AssertPageTruncated(struct["IsTruncated"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTrafficPoliciesResponse[k], "ListTrafficPoliciesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTrafficPoliciesResponse
-- <p>A complex type that contains the response information for the request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TrafficPolicyIdMarker [TrafficPolicyId] <p>If the value of <code>IsTruncated</code> is <code>true</code>, <code>TrafficPolicyIdMarker</code> is the ID of the first traffic policy in the next group of <code>MaxItems</code> traffic policies.</p>
-- * TrafficPolicySummaries [TrafficPolicySummaries] <p>A list that contains one <code>TrafficPolicySummary</code> element for each traffic policy that was created by the current AWS account.</p>
-- * MaxItems [PageMaxItems] <p>The value that you specified for the <code>MaxItems</code> parameter in the <code>ListTrafficPolicies</code> request that produced the current response.</p>
-- * IsTruncated [PageTruncated] <p>A flag that indicates whether there are more traffic policies to be listed. If the response was truncated, you can get the next group of traffic policies by submitting another <code>ListTrafficPolicies</code> request and specifying the value of <code>TrafficPolicyIdMarker</code> in the <code>TrafficPolicyIdMarker</code> request parameter.</p>
-- Required key: TrafficPolicySummaries
-- Required key: IsTruncated
-- Required key: TrafficPolicyIdMarker
-- Required key: MaxItems
-- @return ListTrafficPoliciesResponse structure as a key-value pair table
function M.ListTrafficPoliciesResponse(args)
	assert(args, "You must provdide an argument table when creating ListTrafficPoliciesResponse")
	local t = { 
		["TrafficPolicyIdMarker"] = args["TrafficPolicyIdMarker"],
		["TrafficPolicySummaries"] = args["TrafficPolicySummaries"],
		["MaxItems"] = args["MaxItems"],
		["IsTruncated"] = args["IsTruncated"],
	}
	asserts.AssertListTrafficPoliciesResponse(t)
	return t
end

keys.HostedZone = { ["ResourceRecordSetCount"] = true, ["CallerReference"] = true, ["Config"] = true, ["Id"] = true, ["Name"] = true, nil }

function asserts.AssertHostedZone(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HostedZone to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["CallerReference"], "Expected key CallerReference to exist in table")
	if struct["ResourceRecordSetCount"] then asserts.AssertHostedZoneRRSetCount(struct["ResourceRecordSetCount"]) end
	if struct["CallerReference"] then asserts.AssertNonce(struct["CallerReference"]) end
	if struct["Config"] then asserts.AssertHostedZoneConfig(struct["Config"]) end
	if struct["Id"] then asserts.AssertResourceId(struct["Id"]) end
	if struct["Name"] then asserts.AssertDNSName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.HostedZone[k], "HostedZone contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HostedZone
-- <p>A complex type that contains general information about the hosted zone.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceRecordSetCount [HostedZoneRRSetCount] <p>The number of resource record sets in the hosted zone.</p>
-- * CallerReference [Nonce] <p>The value that you specified for <code>CallerReference</code> when you created the hosted zone.</p>
-- * Config [HostedZoneConfig] <p>A complex type that includes the <code>Comment</code> and <code>PrivateZone</code> elements. If you omitted the <code>HostedZoneConfig</code> and <code>Comment</code> elements from the request, the <code>Config</code> and <code>Comment</code> elements don't appear in the response.</p>
-- * Id [ResourceId] <p>The ID that Amazon Route 53 assigned to the hosted zone when you created it.</p>
-- * Name [DNSName] <p>The name of the domain. For public hosted zones, this is the name that you have registered with your DNS registrar.</p> <p>For information about how to specify characters other than <code>a-z</code>, <code>0-9</code>, and <code>-</code> (hyphen) and how to specify internationalized domain names, see <a>CreateHostedZone</a>.</p>
-- Required key: Id
-- Required key: Name
-- Required key: CallerReference
-- @return HostedZone structure as a key-value pair table
function M.HostedZone(args)
	assert(args, "You must provdide an argument table when creating HostedZone")
	local t = { 
		["ResourceRecordSetCount"] = args["ResourceRecordSetCount"],
		["CallerReference"] = args["CallerReference"],
		["Config"] = args["Config"],
		["Id"] = args["Id"],
		["Name"] = args["Name"],
	}
	asserts.AssertHostedZone(t)
	return t
end

keys.GetHealthCheckResponse = { ["HealthCheck"] = true, nil }

function asserts.AssertGetHealthCheckResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetHealthCheckResponse to be of type 'table'")
	assert(struct["HealthCheck"], "Expected key HealthCheck to exist in table")
	if struct["HealthCheck"] then asserts.AssertHealthCheck(struct["HealthCheck"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetHealthCheckResponse[k], "GetHealthCheckResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetHealthCheckResponse
-- <p>A complex type that contains the response to a <code>GetHealthCheck</code> request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HealthCheck [HealthCheck] <p>A complex type that contains information about one health check that is associated with the current AWS account.</p>
-- Required key: HealthCheck
-- @return GetHealthCheckResponse structure as a key-value pair table
function M.GetHealthCheckResponse(args)
	assert(args, "You must provdide an argument table when creating GetHealthCheckResponse")
	local t = { 
		["HealthCheck"] = args["HealthCheck"],
	}
	asserts.AssertGetHealthCheckResponse(t)
	return t
end

keys.NoSuchTrafficPolicy = { ["message"] = true, nil }

function asserts.AssertNoSuchTrafficPolicy(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoSuchTrafficPolicy to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.NoSuchTrafficPolicy[k], "NoSuchTrafficPolicy contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoSuchTrafficPolicy
-- <p>No traffic policy exists with the specified ID.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>Descriptive message for the error response.</p>
-- @return NoSuchTrafficPolicy structure as a key-value pair table
function M.NoSuchTrafficPolicy(args)
	assert(args, "You must provdide an argument table when creating NoSuchTrafficPolicy")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertNoSuchTrafficPolicy(t)
	return t
end

keys.Dimension = { ["Name"] = true, ["Value"] = true, nil }

function asserts.AssertDimension(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Dimension to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Value"], "Expected key Value to exist in table")
	if struct["Name"] then asserts.AssertDimensionField(struct["Name"]) end
	if struct["Value"] then asserts.AssertDimensionField(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(keys.Dimension[k], "Dimension contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Dimension
-- <p>For the metric that the CloudWatch alarm is associated with, a complex type that contains information about one dimension.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [DimensionField] <p>For the metric that the CloudWatch alarm is associated with, the name of one dimension.</p>
-- * Value [DimensionField] <p>For the metric that the CloudWatch alarm is associated with, the value of one dimension.</p>
-- Required key: Name
-- Required key: Value
-- @return Dimension structure as a key-value pair table
function M.Dimension(args)
	assert(args, "You must provdide an argument table when creating Dimension")
	local t = { 
		["Name"] = args["Name"],
		["Value"] = args["Value"],
	}
	asserts.AssertDimension(t)
	return t
end

keys.UpdateTrafficPolicyCommentResponse = { ["TrafficPolicy"] = true, nil }

function asserts.AssertUpdateTrafficPolicyCommentResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateTrafficPolicyCommentResponse to be of type 'table'")
	assert(struct["TrafficPolicy"], "Expected key TrafficPolicy to exist in table")
	if struct["TrafficPolicy"] then asserts.AssertTrafficPolicy(struct["TrafficPolicy"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateTrafficPolicyCommentResponse[k], "UpdateTrafficPolicyCommentResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateTrafficPolicyCommentResponse
-- <p>A complex type that contains the response information for the traffic policy.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TrafficPolicy [TrafficPolicy] <p>A complex type that contains settings for the specified traffic policy.</p>
-- Required key: TrafficPolicy
-- @return UpdateTrafficPolicyCommentResponse structure as a key-value pair table
function M.UpdateTrafficPolicyCommentResponse(args)
	assert(args, "You must provdide an argument table when creating UpdateTrafficPolicyCommentResponse")
	local t = { 
		["TrafficPolicy"] = args["TrafficPolicy"],
	}
	asserts.AssertUpdateTrafficPolicyCommentResponse(t)
	return t
end

keys.InvalidTrafficPolicyDocument = { ["message"] = true, nil }

function asserts.AssertInvalidTrafficPolicyDocument(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidTrafficPolicyDocument to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidTrafficPolicyDocument[k], "InvalidTrafficPolicyDocument contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidTrafficPolicyDocument
-- <p>The format of the traffic policy document that you specified in the <code>Document</code> element is invalid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>Descriptive message for the error response.</p>
-- @return InvalidTrafficPolicyDocument structure as a key-value pair table
function M.InvalidTrafficPolicyDocument(args)
	assert(args, "You must provdide an argument table when creating InvalidTrafficPolicyDocument")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidTrafficPolicyDocument(t)
	return t
end

keys.NoSuchChange = { ["message"] = true, nil }

function asserts.AssertNoSuchChange(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoSuchChange to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.NoSuchChange[k], "NoSuchChange contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoSuchChange
-- <p>A change with the specified change ID does not exist.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return NoSuchChange structure as a key-value pair table
function M.NoSuchChange(args)
	assert(args, "You must provdide an argument table when creating NoSuchChange")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertNoSuchChange(t)
	return t
end

keys.ChangeTagsForResourceRequest = { ["ResourceType"] = true, ["ResourceId"] = true, ["AddTags"] = true, ["RemoveTagKeys"] = true, nil }

function asserts.AssertChangeTagsForResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ChangeTagsForResourceRequest to be of type 'table'")
	assert(struct["ResourceType"], "Expected key ResourceType to exist in table")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	if struct["ResourceType"] then asserts.AssertTagResourceType(struct["ResourceType"]) end
	if struct["ResourceId"] then asserts.AssertTagResourceId(struct["ResourceId"]) end
	if struct["AddTags"] then asserts.AssertTagList(struct["AddTags"]) end
	if struct["RemoveTagKeys"] then asserts.AssertTagKeyList(struct["RemoveTagKeys"]) end
	for k,_ in pairs(struct) do
		assert(keys.ChangeTagsForResourceRequest[k], "ChangeTagsForResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ChangeTagsForResourceRequest
-- <p>A complex type that contains information about the tags that you want to add, edit, or delete.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceType [TagResourceType] <p>The type of the resource.</p> <ul> <li> <p>The resource type for health checks is <code>healthcheck</code>.</p> </li> <li> <p>The resource type for hosted zones is <code>hostedzone</code>.</p> </li> </ul>
-- * ResourceId [TagResourceId] <p>The ID of the resource for which you want to add, change, or delete tags.</p>
-- * AddTags [TagList] <p>A complex type that contains a list of the tags that you want to add to the specified health check or hosted zone and/or the tags that you want to edit <code>Value</code> for.</p> <p>You can add a maximum of 10 tags to a health check or a hosted zone.</p>
-- * RemoveTagKeys [TagKeyList] <p>A complex type that contains a list of the tags that you want to delete from the specified health check or hosted zone. You can specify up to 10 keys.</p>
-- Required key: ResourceType
-- Required key: ResourceId
-- @return ChangeTagsForResourceRequest structure as a key-value pair table
function M.ChangeTagsForResourceRequest(args)
	assert(args, "You must provdide an argument table when creating ChangeTagsForResourceRequest")
	local t = { 
		["ResourceType"] = args["ResourceType"],
		["ResourceId"] = args["ResourceId"],
		["AddTags"] = args["AddTags"],
		["RemoveTagKeys"] = args["RemoveTagKeys"],
	}
	asserts.AssertChangeTagsForResourceRequest(t)
	return t
end

keys.CreateVPCAssociationAuthorizationRequest = { ["HostedZoneId"] = true, ["VPC"] = true, nil }

function asserts.AssertCreateVPCAssociationAuthorizationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateVPCAssociationAuthorizationRequest to be of type 'table'")
	assert(struct["HostedZoneId"], "Expected key HostedZoneId to exist in table")
	assert(struct["VPC"], "Expected key VPC to exist in table")
	if struct["HostedZoneId"] then asserts.AssertResourceId(struct["HostedZoneId"]) end
	if struct["VPC"] then asserts.AssertVPC(struct["VPC"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateVPCAssociationAuthorizationRequest[k], "CreateVPCAssociationAuthorizationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateVPCAssociationAuthorizationRequest
-- <p>A complex type that contains information about the request to authorize associating a VPC with your private hosted zone. Authorization is only required when a private hosted zone and a VPC were created by using different accounts.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HostedZoneId [ResourceId] <p>The ID of the private hosted zone that you want to authorize associating a VPC with.</p>
-- * VPC [VPC] <p>A complex type that contains the VPC ID and region for the VPC that you want to authorize associating with your hosted zone.</p>
-- Required key: HostedZoneId
-- Required key: VPC
-- @return CreateVPCAssociationAuthorizationRequest structure as a key-value pair table
function M.CreateVPCAssociationAuthorizationRequest(args)
	assert(args, "You must provdide an argument table when creating CreateVPCAssociationAuthorizationRequest")
	local t = { 
		["HostedZoneId"] = args["HostedZoneId"],
		["VPC"] = args["VPC"],
	}
	asserts.AssertCreateVPCAssociationAuthorizationRequest(t)
	return t
end

keys.ListResourceRecordSetsResponse = { ["NextRecordIdentifier"] = true, ["NextRecordType"] = true, ["NextRecordName"] = true, ["ResourceRecordSets"] = true, ["MaxItems"] = true, ["IsTruncated"] = true, nil }

function asserts.AssertListResourceRecordSetsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListResourceRecordSetsResponse to be of type 'table'")
	assert(struct["ResourceRecordSets"], "Expected key ResourceRecordSets to exist in table")
	assert(struct["IsTruncated"], "Expected key IsTruncated to exist in table")
	assert(struct["MaxItems"], "Expected key MaxItems to exist in table")
	if struct["NextRecordIdentifier"] then asserts.AssertResourceRecordSetIdentifier(struct["NextRecordIdentifier"]) end
	if struct["NextRecordType"] then asserts.AssertRRType(struct["NextRecordType"]) end
	if struct["NextRecordName"] then asserts.AssertDNSName(struct["NextRecordName"]) end
	if struct["ResourceRecordSets"] then asserts.AssertResourceRecordSets(struct["ResourceRecordSets"]) end
	if struct["MaxItems"] then asserts.AssertPageMaxItems(struct["MaxItems"]) end
	if struct["IsTruncated"] then asserts.AssertPageTruncated(struct["IsTruncated"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListResourceRecordSetsResponse[k], "ListResourceRecordSetsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListResourceRecordSetsResponse
-- <p>A complex type that contains list information for the resource record set.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextRecordIdentifier [ResourceRecordSetIdentifier] <p> <i>Weighted, latency, geolocation, and failover resource record sets only</i>: If results were truncated for a given DNS name and type, the value of <code>SetIdentifier</code> for the next resource record set that has the current DNS name and type.</p>
-- * NextRecordType [RRType] <p>If the results were truncated, the type of the next record in the list.</p> <p>This element is present only if <code>IsTruncated</code> is true. </p>
-- * NextRecordName [DNSName] <p>If the results were truncated, the name of the next record in the list.</p> <p>This element is present only if <code>IsTruncated</code> is true. </p>
-- * ResourceRecordSets [ResourceRecordSets] <p>Information about multiple resource record sets.</p>
-- * MaxItems [PageMaxItems] <p>The maximum number of records you requested.</p>
-- * IsTruncated [PageTruncated] <p>A flag that indicates whether more resource record sets remain to be listed. If your results were truncated, you can make a follow-up pagination request by using the <code>NextRecordName</code> element.</p>
-- Required key: ResourceRecordSets
-- Required key: IsTruncated
-- Required key: MaxItems
-- @return ListResourceRecordSetsResponse structure as a key-value pair table
function M.ListResourceRecordSetsResponse(args)
	assert(args, "You must provdide an argument table when creating ListResourceRecordSetsResponse")
	local t = { 
		["NextRecordIdentifier"] = args["NextRecordIdentifier"],
		["NextRecordType"] = args["NextRecordType"],
		["NextRecordName"] = args["NextRecordName"],
		["ResourceRecordSets"] = args["ResourceRecordSets"],
		["MaxItems"] = args["MaxItems"],
		["IsTruncated"] = args["IsTruncated"],
	}
	asserts.AssertListResourceRecordSetsResponse(t)
	return t
end

keys.DeleteTrafficPolicyInstanceRequest = { ["Id"] = true, nil }

function asserts.AssertDeleteTrafficPolicyInstanceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTrafficPolicyInstanceRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then asserts.AssertTrafficPolicyInstanceId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteTrafficPolicyInstanceRequest[k], "DeleteTrafficPolicyInstanceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTrafficPolicyInstanceRequest
-- <p>A request to delete a specified traffic policy instance.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [TrafficPolicyInstanceId] <p>The ID of the traffic policy instance that you want to delete. </p> <important> <p>When you delete a traffic policy instance, Amazon Route 53 also deletes all of the resource record sets that were created when you created the traffic policy instance.</p> </important>
-- Required key: Id
-- @return DeleteTrafficPolicyInstanceRequest structure as a key-value pair table
function M.DeleteTrafficPolicyInstanceRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteTrafficPolicyInstanceRequest")
	local t = { 
		["Id"] = args["Id"],
	}
	asserts.AssertDeleteTrafficPolicyInstanceRequest(t)
	return t
end

keys.UpdateHostedZoneCommentResponse = { ["HostedZone"] = true, nil }

function asserts.AssertUpdateHostedZoneCommentResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateHostedZoneCommentResponse to be of type 'table'")
	assert(struct["HostedZone"], "Expected key HostedZone to exist in table")
	if struct["HostedZone"] then asserts.AssertHostedZone(struct["HostedZone"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateHostedZoneCommentResponse[k], "UpdateHostedZoneCommentResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateHostedZoneCommentResponse
-- <p>A complex type that contains the response to the <code>UpdateHostedZoneComment</code> request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HostedZone [HostedZone] 
-- Required key: HostedZone
-- @return UpdateHostedZoneCommentResponse structure as a key-value pair table
function M.UpdateHostedZoneCommentResponse(args)
	assert(args, "You must provdide an argument table when creating UpdateHostedZoneCommentResponse")
	local t = { 
		["HostedZone"] = args["HostedZone"],
	}
	asserts.AssertUpdateHostedZoneCommentResponse(t)
	return t
end

keys.HealthCheckVersionMismatch = { ["message"] = true, nil }

function asserts.AssertHealthCheckVersionMismatch(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HealthCheckVersionMismatch to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.HealthCheckVersionMismatch[k], "HealthCheckVersionMismatch contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HealthCheckVersionMismatch
-- <p>The value of <code>HealthCheckVersion</code> in the request doesn't match the value of <code>HealthCheckVersion</code> in the health check.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return HealthCheckVersionMismatch structure as a key-value pair table
function M.HealthCheckVersionMismatch(args)
	assert(args, "You must provdide an argument table when creating HealthCheckVersionMismatch")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertHealthCheckVersionMismatch(t)
	return t
end

keys.IncompatibleVersion = { ["message"] = true, nil }

function asserts.AssertIncompatibleVersion(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IncompatibleVersion to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.IncompatibleVersion[k], "IncompatibleVersion contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IncompatibleVersion
-- <p>The resource you're trying to access is unsupported on this Amazon Route 53 endpoint.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return IncompatibleVersion structure as a key-value pair table
function M.IncompatibleVersion(args)
	assert(args, "You must provdide an argument table when creating IncompatibleVersion")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertIncompatibleVersion(t)
	return t
end

keys.TooManyVPCAssociationAuthorizations = { ["message"] = true, nil }

function asserts.AssertTooManyVPCAssociationAuthorizations(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyVPCAssociationAuthorizations to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.TooManyVPCAssociationAuthorizations[k], "TooManyVPCAssociationAuthorizations contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyVPCAssociationAuthorizations
-- <p>You've created the maximum number of authorizations that can be created for the specified hosted zone. To authorize another VPC to be associated with the hosted zone, submit a <code>DeleteVPCAssociationAuthorization</code> request to remove an existing authorization. To get a list of existing authorizations, submit a <code>ListVPCAssociationAuthorizations</code> request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>Descriptive message for the error response.</p>
-- @return TooManyVPCAssociationAuthorizations structure as a key-value pair table
function M.TooManyVPCAssociationAuthorizations(args)
	assert(args, "You must provdide an argument table when creating TooManyVPCAssociationAuthorizations")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertTooManyVPCAssociationAuthorizations(t)
	return t
end

keys.TooManyHealthChecks = { ["message"] = true, nil }

function asserts.AssertTooManyHealthChecks(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyHealthChecks to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.TooManyHealthChecks[k], "TooManyHealthChecks contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyHealthChecks
-- <p>You have reached the maximum number of active health checks for an AWS account. The default limit is 100. To request a higher limit, <a href="http://aws.amazon.com/route53-request">create a case</a> with the AWS Support Center.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return TooManyHealthChecks structure as a key-value pair table
function M.TooManyHealthChecks(args)
	assert(args, "You must provdide an argument table when creating TooManyHealthChecks")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertTooManyHealthChecks(t)
	return t
end

keys.UpdateHealthCheckRequest = { ["SearchString"] = true, ["HealthCheckId"] = true, ["AlarmIdentifier"] = true, ["HealthCheckVersion"] = true, ["ResourcePath"] = true, ["ChildHealthChecks"] = true, ["Inverted"] = true, ["Regions"] = true, ["InsufficientDataHealthStatus"] = true, ["HealthThreshold"] = true, ["EnableSNI"] = true, ["FailureThreshold"] = true, ["IPAddress"] = true, ["Port"] = true, ["FullyQualifiedDomainName"] = true, nil }

function asserts.AssertUpdateHealthCheckRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateHealthCheckRequest to be of type 'table'")
	assert(struct["HealthCheckId"], "Expected key HealthCheckId to exist in table")
	if struct["SearchString"] then asserts.AssertSearchString(struct["SearchString"]) end
	if struct["HealthCheckId"] then asserts.AssertHealthCheckId(struct["HealthCheckId"]) end
	if struct["AlarmIdentifier"] then asserts.AssertAlarmIdentifier(struct["AlarmIdentifier"]) end
	if struct["HealthCheckVersion"] then asserts.AssertHealthCheckVersion(struct["HealthCheckVersion"]) end
	if struct["ResourcePath"] then asserts.AssertResourcePath(struct["ResourcePath"]) end
	if struct["ChildHealthChecks"] then asserts.AssertChildHealthCheckList(struct["ChildHealthChecks"]) end
	if struct["Inverted"] then asserts.AssertInverted(struct["Inverted"]) end
	if struct["Regions"] then asserts.AssertHealthCheckRegionList(struct["Regions"]) end
	if struct["InsufficientDataHealthStatus"] then asserts.AssertInsufficientDataHealthStatus(struct["InsufficientDataHealthStatus"]) end
	if struct["HealthThreshold"] then asserts.AssertHealthThreshold(struct["HealthThreshold"]) end
	if struct["EnableSNI"] then asserts.AssertEnableSNI(struct["EnableSNI"]) end
	if struct["FailureThreshold"] then asserts.AssertFailureThreshold(struct["FailureThreshold"]) end
	if struct["IPAddress"] then asserts.AssertIPAddress(struct["IPAddress"]) end
	if struct["Port"] then asserts.AssertPort(struct["Port"]) end
	if struct["FullyQualifiedDomainName"] then asserts.AssertFullyQualifiedDomainName(struct["FullyQualifiedDomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateHealthCheckRequest[k], "UpdateHealthCheckRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateHealthCheckRequest
-- <p>A complex type that contains information about a request to update a health check.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SearchString [SearchString] <p>If the value of <code>Type</code> is <code>HTTP_STR_MATCH</code> or <code>HTTP_STR_MATCH</code>, the string that you want Amazon Route 53 to search for in the response body from the specified resource. If the string appears in the response body, Amazon Route 53 considers the resource healthy. (You can't change the value of <code>Type</code> when you update a health check.)</p>
-- * HealthCheckId [HealthCheckId] <p>The ID for the health check for which you want detailed information. When you created the health check, <code>CreateHealthCheck</code> returned the ID in the response, in the <code>HealthCheckId</code> element.</p>
-- * AlarmIdentifier [AlarmIdentifier] 
-- * HealthCheckVersion [HealthCheckVersion] <p>A sequential counter that Amazon Route 53 sets to <code>1</code> when you create a health check and increments by 1 each time you update settings for the health check.</p> <p>We recommend that you use <code>GetHealthCheck</code> or <code>ListHealthChecks</code> to get the current value of <code>HealthCheckVersion</code> for the health check that you want to update, and that you include that value in your <code>UpdateHealthCheck</code> request. This prevents Amazon Route 53 from overwriting an intervening update:</p> <ul> <li> <p>If the value in the <code>UpdateHealthCheck</code> request matches the value of <code>HealthCheckVersion</code> in the health check, Amazon Route 53 updates the health check with the new settings.</p> </li> <li> <p>If the value of <code>HealthCheckVersion</code> in the health check is greater, the health check was changed after you got the version number. Amazon Route 53 does not update the health check, and it returns a <code>HealthCheckVersionMismatch</code> error.</p> </li> </ul>
-- * ResourcePath [ResourcePath] <p>The path that you want Amazon Route 53 to request when performing health checks. The path can be any value for which your endpoint will return an HTTP status code of 2xx or 3xx when the endpoint is healthy, for example the file /docs/route53-health-check.html. </p> <p>Specify this value only if you want to change it.</p>
-- * ChildHealthChecks [ChildHealthCheckList] <p>A complex type that contains one <code>ChildHealthCheck</code> element for each health check that you want to associate with a <code>CALCULATED</code> health check.</p>
-- * Inverted [Inverted] <p>Specify whether you want Amazon Route 53 to invert the status of a health check, for example, to consider a health check unhealthy when it otherwise would be considered healthy.</p>
-- * Regions [HealthCheckRegionList] <p>A complex type that contains one <code>Region</code> element for each region that you want Amazon Route 53 health checkers to check the specified endpoint from.</p>
-- * InsufficientDataHealthStatus [InsufficientDataHealthStatus] <p>When CloudWatch has insufficient data about the metric to determine the alarm state, the status that you want Amazon Route 53 to assign to the health check:</p> <ul> <li> <p> <code>Healthy</code>: Amazon Route 53 considers the health check to be healthy.</p> </li> <li> <p> <code>Unhealthy</code>: Amazon Route 53 considers the health check to be unhealthy.</p> </li> <li> <p> <code>LastKnownStatus</code>: Amazon Route 53 uses the status of the health check from the last time CloudWatch had sufficient data to determine the alarm state. For new health checks that have no last known status, the default status for the health check is healthy.</p> </li> </ul>
-- * HealthThreshold [HealthThreshold] <p>The number of child health checks that are associated with a <code>CALCULATED</code> health that Amazon Route 53 must consider healthy for the <code>CALCULATED</code> health check to be considered healthy. To specify the child health checks that you want to associate with a <code>CALCULATED</code> health check, use the <code>ChildHealthChecks</code> and <code>ChildHealthCheck</code> elements.</p> <p>Note the following:</p> <ul> <li> <p>If you specify a number greater than the number of child health checks, Amazon Route 53 always considers this health check to be unhealthy.</p> </li> <li> <p>If you specify <code>0</code>, Amazon Route 53 always considers this health check to be healthy.</p> </li> </ul>
-- * EnableSNI [EnableSNI] <p>Specify whether you want Amazon Route 53 to send the value of <code>FullyQualifiedDomainName</code> to the endpoint in the <code>client_hello</code> message during <code>TLS</code> negotiation. This allows the endpoint to respond to <code>HTTPS</code> health check requests with the applicable SSL/TLS certificate.</p> <p>Some endpoints require that HTTPS requests include the host name in the <code>client_hello</code> message. If you don't enable SNI, the status of the health check will be SSL alert <code>handshake_failure</code>. A health check can also have that status for other reasons. If SNI is enabled and you're still getting the error, check the SSL/TLS configuration on your endpoint and confirm that your certificate is valid.</p> <p>The SSL/TLS certificate on your endpoint includes a domain name in the <code>Common Name</code> field and possibly several more in the <code>Subject Alternative Names</code> field. One of the domain names in the certificate should match the value that you specify for <code>FullyQualifiedDomainName</code>. If the endpoint responds to the <code>client_hello</code> message with a certificate that does not include the domain name that you specified in <code>FullyQualifiedDomainName</code>, a health checker will retry the handshake. In the second attempt, the health checker will omit <code>FullyQualifiedDomainName</code> from the <code>client_hello</code> message.</p>
-- * FailureThreshold [FailureThreshold] <p>The number of consecutive health checks that an endpoint must pass or fail for Amazon Route 53 to change the current status of the endpoint from unhealthy to healthy or vice versa. For more information, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-determining-health-of-endpoints.html">How Amazon Route 53 Determines Whether an Endpoint Is Healthy</a> in the <i>Amazon Route 53 Developer Guide</i>.</p> <p>If you don't specify a value for <code>FailureThreshold</code>, the default value is three health checks.</p>
-- * IPAddress [IPAddress] <p>The IPv4 or IPv6 IP address for the endpoint that you want Amazon Route 53 to perform health checks on. If you don't specify a value for <code>IPAddress</code>, Amazon Route 53 sends a DNS request to resolve the domain name that you specify in <code>FullyQualifiedDomainName</code> at the interval that you specify in <code>RequestInterval</code>. Using an IP address that is returned by DNS, Amazon Route 53 then checks the health of the endpoint.</p> <p>Use one of the following formats for the value of <code>IPAddress</code>: </p> <ul> <li> <p> <b>IPv4 address</b>: four values between 0 and 255, separated by periods (.), for example, <code>192.0.2.44</code>.</p> </li> <li> <p> <b>IPv6 address</b>: eight groups of four hexadecimal values, separated by colons (:), for example, <code>2001:0db8:85a3:0000:0000:abcd:0001:2345</code>. You can also shorten IPv6 addresses as described in RFC 5952, for example, <code>2001:db8:85a3::abcd:1:2345</code>.</p> </li> </ul> <p>If the endpoint is an EC2 instance, we recommend that you create an Elastic IP address, associate it with your EC2 instance, and specify the Elastic IP address for <code>IPAddress</code>. This ensures that the IP address of your instance never changes. For more information, see the applicable documentation:</p> <ul> <li> <p>Linux: <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html">Elastic IP Addresses (EIP)</a> in the <i>Amazon EC2 User Guide for Linux Instances</i> </p> </li> <li> <p>Windows: <a href="http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/elastic-ip-addresses-eip.html">Elastic IP Addresses (EIP)</a> in the <i>Amazon EC2 User Guide for Windows Instances</i> </p> </li> </ul> <note> <p>If a health check already has a value for <code>IPAddress</code>, you can change the value. However, you can't update an existing health check to add or remove the value of <code>IPAddress</code>. </p> </note> <p>For more information, see <a>UpdateHealthCheckRequest$FullyQualifiedDomainName</a>.</p> <p>Constraints: Amazon Route 53 can't check the health of endpoints for which the IP address is in local, private, non-routable, or multicast ranges. For more information about IP addresses for which you can't create health checks, see the following documents:</p> <ul> <li> <p> <a href="https://tools.ietf.org/html/rfc5735">RFC 5735, Special Use IPv4 Addresses</a> </p> </li> <li> <p> <a href="https://tools.ietf.org/html/rfc6598">RFC 6598, IANA-Reserved IPv4 Prefix for Shared Address Space</a> </p> </li> <li> <p> <a href="https://tools.ietf.org/html/rfc5156">RFC 5156, Special-Use IPv6 Addresses</a> </p> </li> </ul>
-- * Port [Port] <p>The port on the endpoint on which you want Amazon Route 53 to perform health checks.</p>
-- * FullyQualifiedDomainName [FullyQualifiedDomainName] <p>Amazon Route 53 behavior depends on whether you specify a value for <code>IPAddress</code>.</p> <note> <p>If a health check already has a value for <code>IPAddress</code>, you can change the value. However, you can't update an existing health check to add or remove the value of <code>IPAddress</code>. </p> </note> <p> <b>If you specify a value for</b> <code>IPAddress</code>:</p> <p>Amazon Route 53 sends health check requests to the specified IPv4 or IPv6 address and passes the value of <code>FullyQualifiedDomainName</code> in the <code>Host</code> header for all health checks except TCP health checks. This is typically the fully qualified DNS name of the endpoint on which you want Amazon Route 53 to perform health checks.</p> <p>When Amazon Route 53 checks the health of an endpoint, here is how it constructs the <code>Host</code> header:</p> <ul> <li> <p>If you specify a value of <code>80</code> for <code>Port</code> and <code>HTTP</code> or <code>HTTP_STR_MATCH</code> for <code>Type</code>, Amazon Route 53 passes the value of <code>FullyQualifiedDomainName</code> to the endpoint in the <code>Host</code> header.</p> </li> <li> <p>If you specify a value of <code>443</code> for <code>Port</code> and <code>HTTPS</code> or <code>HTTPS_STR_MATCH</code> for <code>Type</code>, Amazon Route 53 passes the value of <code>FullyQualifiedDomainName</code> to the endpoint in the <code>Host</code> header.</p> </li> <li> <p>If you specify another value for <code>Port</code> and any value except <code>TCP</code> for <code>Type</code>, Amazon Route 53 passes <i> <code>FullyQualifiedDomainName</code>:<code>Port</code> </i> to the endpoint in the <code>Host</code> header.</p> </li> </ul> <p>If you don't specify a value for <code>FullyQualifiedDomainName</code>, Amazon Route 53 substitutes the value of <code>IPAddress</code> in the <code>Host</code> header in each of the above cases.</p> <p> <b>If you don't specify a value for</b> <code>IPAddress</code>:</p> <p>If you don't specify a value for <code>IPAddress</code>, Amazon Route 53 sends a DNS request to the domain that you specify in <code>FullyQualifiedDomainName</code> at the interval you specify in <code>RequestInterval</code>. Using an IPv4 address that is returned by DNS, Amazon Route 53 then checks the health of the endpoint.</p> <note> <p>If you don't specify a value for <code>IPAddress</code>, Amazon Route 53 uses only IPv4 to send health checks to the endpoint. If there's no resource record set with a type of A for the name that you specify for <code>FullyQualifiedDomainName</code>, the health check fails with a "DNS resolution failed" error.</p> </note> <p>If you want to check the health of weighted, latency, or failover resource record sets and you choose to specify the endpoint only by <code>FullyQualifiedDomainName</code>, we recommend that you create a separate health check for each endpoint. For example, create a health check for each HTTP server that is serving content for www.example.com. For the value of <code>FullyQualifiedDomainName</code>, specify the domain name of the server (such as <code>us-east-2-www.example.com</code>), not the name of the resource record sets (www.example.com).</p> <important> <p>In this configuration, if the value of <code>FullyQualifiedDomainName</code> matches the name of the resource record sets and you then associate the health check with those resource record sets, health check results will be unpredictable.</p> </important> <p>In addition, if the value of <code>Type</code> is <code>HTTP</code>, <code>HTTPS</code>, <code>HTTP_STR_MATCH</code>, or <code>HTTPS_STR_MATCH</code>, Amazon Route 53 passes the value of <code>FullyQualifiedDomainName</code> in the <code>Host</code> header, as it does when you specify a value for <code>IPAddress</code>. If the value of <code>Type</code> is <code>TCP</code>, Amazon Route 53 doesn't pass a <code>Host</code> header.</p>
-- Required key: HealthCheckId
-- @return UpdateHealthCheckRequest structure as a key-value pair table
function M.UpdateHealthCheckRequest(args)
	assert(args, "You must provdide an argument table when creating UpdateHealthCheckRequest")
	local t = { 
		["SearchString"] = args["SearchString"],
		["HealthCheckId"] = args["HealthCheckId"],
		["AlarmIdentifier"] = args["AlarmIdentifier"],
		["HealthCheckVersion"] = args["HealthCheckVersion"],
		["ResourcePath"] = args["ResourcePath"],
		["ChildHealthChecks"] = args["ChildHealthChecks"],
		["Inverted"] = args["Inverted"],
		["Regions"] = args["Regions"],
		["InsufficientDataHealthStatus"] = args["InsufficientDataHealthStatus"],
		["HealthThreshold"] = args["HealthThreshold"],
		["EnableSNI"] = args["EnableSNI"],
		["FailureThreshold"] = args["FailureThreshold"],
		["IPAddress"] = args["IPAddress"],
		["Port"] = args["Port"],
		["FullyQualifiedDomainName"] = args["FullyQualifiedDomainName"],
	}
	asserts.AssertUpdateHealthCheckRequest(t)
	return t
end

keys.InvalidVPCId = { ["message"] = true, nil }

function asserts.AssertInvalidVPCId(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidVPCId to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidVPCId[k], "InvalidVPCId contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidVPCId
-- <p>The VPC ID that you specified either isn't a valid ID or the current account is not authorized to access this VPC.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>Descriptive message for the error response.</p>
-- @return InvalidVPCId structure as a key-value pair table
function M.InvalidVPCId(args)
	assert(args, "You must provdide an argument table when creating InvalidVPCId")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidVPCId(t)
	return t
end

keys.NoSuchHostedZone = { ["message"] = true, nil }

function asserts.AssertNoSuchHostedZone(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoSuchHostedZone to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.NoSuchHostedZone[k], "NoSuchHostedZone contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoSuchHostedZone
-- <p>No hosted zone exists with the ID that you specified.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>Descriptive message for the error response.</p>
-- @return NoSuchHostedZone structure as a key-value pair table
function M.NoSuchHostedZone(args)
	assert(args, "You must provdide an argument table when creating NoSuchHostedZone")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertNoSuchHostedZone(t)
	return t
end

keys.GeoLocationDetails = { ["CountryName"] = true, ["CountryCode"] = true, ["SubdivisionCode"] = true, ["ContinentName"] = true, ["SubdivisionName"] = true, ["ContinentCode"] = true, nil }

function asserts.AssertGeoLocationDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GeoLocationDetails to be of type 'table'")
	if struct["CountryName"] then asserts.AssertGeoLocationCountryName(struct["CountryName"]) end
	if struct["CountryCode"] then asserts.AssertGeoLocationCountryCode(struct["CountryCode"]) end
	if struct["SubdivisionCode"] then asserts.AssertGeoLocationSubdivisionCode(struct["SubdivisionCode"]) end
	if struct["ContinentName"] then asserts.AssertGeoLocationContinentName(struct["ContinentName"]) end
	if struct["SubdivisionName"] then asserts.AssertGeoLocationSubdivisionName(struct["SubdivisionName"]) end
	if struct["ContinentCode"] then asserts.AssertGeoLocationContinentCode(struct["ContinentCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.GeoLocationDetails[k], "GeoLocationDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GeoLocationDetails
-- <p>A complex type that contains the codes and full continent, country, and subdivision names for the specified <code>geolocation</code> code.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CountryName [GeoLocationCountryName] <p>The name of the country.</p>
-- * CountryCode [GeoLocationCountryCode] <p>The two-letter code for the country.</p>
-- * SubdivisionCode [GeoLocationSubdivisionCode] <p>The code for the subdivision, for example, a state in the United States or a province in Canada.</p>
-- * ContinentName [GeoLocationContinentName] <p>The full name of the continent.</p>
-- * SubdivisionName [GeoLocationSubdivisionName] <p>The full name of the subdivision, for example, a state in the United States or a province in Canada.</p>
-- * ContinentCode [GeoLocationContinentCode] <p>The two-letter code for the continent.</p>
-- @return GeoLocationDetails structure as a key-value pair table
function M.GeoLocationDetails(args)
	assert(args, "You must provdide an argument table when creating GeoLocationDetails")
	local t = { 
		["CountryName"] = args["CountryName"],
		["CountryCode"] = args["CountryCode"],
		["SubdivisionCode"] = args["SubdivisionCode"],
		["ContinentName"] = args["ContinentName"],
		["SubdivisionName"] = args["SubdivisionName"],
		["ContinentCode"] = args["ContinentCode"],
	}
	asserts.AssertGeoLocationDetails(t)
	return t
end

keys.ListResourceRecordSetsRequest = { ["HostedZoneId"] = true, ["StartRecordName"] = true, ["StartRecordIdentifier"] = true, ["StartRecordType"] = true, ["MaxItems"] = true, nil }

function asserts.AssertListResourceRecordSetsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListResourceRecordSetsRequest to be of type 'table'")
	assert(struct["HostedZoneId"], "Expected key HostedZoneId to exist in table")
	if struct["HostedZoneId"] then asserts.AssertResourceId(struct["HostedZoneId"]) end
	if struct["StartRecordName"] then asserts.AssertDNSName(struct["StartRecordName"]) end
	if struct["StartRecordIdentifier"] then asserts.AssertResourceRecordSetIdentifier(struct["StartRecordIdentifier"]) end
	if struct["StartRecordType"] then asserts.AssertRRType(struct["StartRecordType"]) end
	if struct["MaxItems"] then asserts.AssertPageMaxItems(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListResourceRecordSetsRequest[k], "ListResourceRecordSetsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListResourceRecordSetsRequest
-- <p>A request for the resource record sets that are associated with a specified hosted zone.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HostedZoneId [ResourceId] <p>The ID of the hosted zone that contains the resource record sets that you want to list.</p>
-- * StartRecordName [DNSName] <p>The first name in the lexicographic ordering of resource record sets that you want to list.</p>
-- * StartRecordIdentifier [ResourceRecordSetIdentifier] <p> <i>Weighted resource record sets only:</i> If results were truncated for a given DNS name and type, specify the value of <code>NextRecordIdentifier</code> from the previous response to get the next resource record set that has the current DNS name and type.</p>
-- * StartRecordType [RRType] <p>The type of resource record set to begin the record listing from.</p> <p>Valid values for basic resource record sets: <code>A</code> | <code>AAAA</code> | <code>CNAME</code> | <code>MX</code> | <code>NAPTR</code> | <code>NS</code> | <code>PTR</code> | <code>SOA</code> | <code>SPF</code> | <code>SRV</code> | <code>TXT</code> </p> <p>Values for weighted, latency, geo, and failover resource record sets: <code>A</code> | <code>AAAA</code> | <code>CNAME</code> | <code>MX</code> | <code>NAPTR</code> | <code>PTR</code> | <code>SPF</code> | <code>SRV</code> | <code>TXT</code> </p> <p>Values for alias resource record sets: </p> <ul> <li> <p> <b>CloudFront distribution</b>: A or AAAA</p> </li> <li> <p> <b>Elastic Beanstalk environment that has a regionalized subdomain</b>: A</p> </li> <li> <p> <b>ELB load balancer</b>: A | AAAA</p> </li> <li> <p> <b>Amazon S3 bucket</b>: A</p> </li> </ul> <p>Constraint: Specifying <code>type</code> without specifying <code>name</code> returns an <code>InvalidInput</code> error.</p>
-- * MaxItems [PageMaxItems] <p>(Optional) The maximum number of resource records sets to include in the response body for this request. If the response includes more than <code>maxitems</code> resource record sets, the value of the <code>IsTruncated</code> element in the response is <code>true</code>, and the values of the <code>NextRecordName</code> and <code>NextRecordType</code> elements in the response identify the first resource record set in the next group of <code>maxitems</code> resource record sets.</p>
-- Required key: HostedZoneId
-- @return ListResourceRecordSetsRequest structure as a key-value pair table
function M.ListResourceRecordSetsRequest(args)
	assert(args, "You must provdide an argument table when creating ListResourceRecordSetsRequest")
	local t = { 
		["HostedZoneId"] = args["HostedZoneId"],
		["StartRecordName"] = args["StartRecordName"],
		["StartRecordIdentifier"] = args["StartRecordIdentifier"],
		["StartRecordType"] = args["StartRecordType"],
		["MaxItems"] = args["MaxItems"],
	}
	asserts.AssertListResourceRecordSetsRequest(t)
	return t
end

keys.GetReusableDelegationSetResponse = { ["DelegationSet"] = true, nil }

function asserts.AssertGetReusableDelegationSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetReusableDelegationSetResponse to be of type 'table'")
	assert(struct["DelegationSet"], "Expected key DelegationSet to exist in table")
	if struct["DelegationSet"] then asserts.AssertDelegationSet(struct["DelegationSet"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetReusableDelegationSetResponse[k], "GetReusableDelegationSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetReusableDelegationSetResponse
-- <p>A complex type that contains the response to the <code>GetReusableDelegationSet</code> request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DelegationSet [DelegationSet] <p>A complex type that contains information about the reusable delegation set.</p>
-- Required key: DelegationSet
-- @return GetReusableDelegationSetResponse structure as a key-value pair table
function M.GetReusableDelegationSetResponse(args)
	assert(args, "You must provdide an argument table when creating GetReusableDelegationSetResponse")
	local t = { 
		["DelegationSet"] = args["DelegationSet"],
	}
	asserts.AssertGetReusableDelegationSetResponse(t)
	return t
end

keys.ListTrafficPolicyInstancesResponse = { ["TrafficPolicyInstanceNameMarker"] = true, ["HostedZoneIdMarker"] = true, ["TrafficPolicyInstances"] = true, ["MaxItems"] = true, ["TrafficPolicyInstanceTypeMarker"] = true, ["IsTruncated"] = true, nil }

function asserts.AssertListTrafficPolicyInstancesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTrafficPolicyInstancesResponse to be of type 'table'")
	assert(struct["TrafficPolicyInstances"], "Expected key TrafficPolicyInstances to exist in table")
	assert(struct["IsTruncated"], "Expected key IsTruncated to exist in table")
	assert(struct["MaxItems"], "Expected key MaxItems to exist in table")
	if struct["TrafficPolicyInstanceNameMarker"] then asserts.AssertDNSName(struct["TrafficPolicyInstanceNameMarker"]) end
	if struct["HostedZoneIdMarker"] then asserts.AssertResourceId(struct["HostedZoneIdMarker"]) end
	if struct["TrafficPolicyInstances"] then asserts.AssertTrafficPolicyInstances(struct["TrafficPolicyInstances"]) end
	if struct["MaxItems"] then asserts.AssertPageMaxItems(struct["MaxItems"]) end
	if struct["TrafficPolicyInstanceTypeMarker"] then asserts.AssertRRType(struct["TrafficPolicyInstanceTypeMarker"]) end
	if struct["IsTruncated"] then asserts.AssertPageTruncated(struct["IsTruncated"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTrafficPolicyInstancesResponse[k], "ListTrafficPolicyInstancesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTrafficPolicyInstancesResponse
-- <p>A complex type that contains the response information for the request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TrafficPolicyInstanceNameMarker [DNSName] <p>If <code>IsTruncated</code> is <code>true</code>, <code>TrafficPolicyInstanceNameMarker</code> is the name of the first traffic policy instance that Amazon Route 53 will return if you submit another <code>ListTrafficPolicyInstances</code> request. </p>
-- * HostedZoneIdMarker [ResourceId] <p>If <code>IsTruncated</code> is <code>true</code>, <code>HostedZoneIdMarker</code> is the ID of the hosted zone of the first traffic policy instance that Amazon Route 53 will return if you submit another <code>ListTrafficPolicyInstances</code> request. </p>
-- * TrafficPolicyInstances [TrafficPolicyInstances] <p>A list that contains one <code>TrafficPolicyInstance</code> element for each traffic policy instance that matches the elements in the request.</p>
-- * MaxItems [PageMaxItems] <p>The value that you specified for the <code>MaxItems</code> parameter in the call to <code>ListTrafficPolicyInstances</code> that produced the current response.</p>
-- * TrafficPolicyInstanceTypeMarker [RRType] <p>If <code>IsTruncated</code> is <code>true</code>, <code>TrafficPolicyInstanceTypeMarker</code> is the DNS type of the resource record sets that are associated with the first traffic policy instance that Amazon Route 53 will return if you submit another <code>ListTrafficPolicyInstances</code> request. </p>
-- * IsTruncated [PageTruncated] <p>A flag that indicates whether there are more traffic policy instances to be listed. If the response was truncated, you can get more traffic policy instances by calling <code>ListTrafficPolicyInstances</code> again and specifying the values of the <code>HostedZoneIdMarker</code>, <code>TrafficPolicyInstanceNameMarker</code>, and <code>TrafficPolicyInstanceTypeMarker</code> in the corresponding request parameters.</p>
-- Required key: TrafficPolicyInstances
-- Required key: IsTruncated
-- Required key: MaxItems
-- @return ListTrafficPolicyInstancesResponse structure as a key-value pair table
function M.ListTrafficPolicyInstancesResponse(args)
	assert(args, "You must provdide an argument table when creating ListTrafficPolicyInstancesResponse")
	local t = { 
		["TrafficPolicyInstanceNameMarker"] = args["TrafficPolicyInstanceNameMarker"],
		["HostedZoneIdMarker"] = args["HostedZoneIdMarker"],
		["TrafficPolicyInstances"] = args["TrafficPolicyInstances"],
		["MaxItems"] = args["MaxItems"],
		["TrafficPolicyInstanceTypeMarker"] = args["TrafficPolicyInstanceTypeMarker"],
		["IsTruncated"] = args["IsTruncated"],
	}
	asserts.AssertListTrafficPolicyInstancesResponse(t)
	return t
end

keys.GetTrafficPolicyInstanceRequest = { ["Id"] = true, nil }

function asserts.AssertGetTrafficPolicyInstanceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTrafficPolicyInstanceRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then asserts.AssertTrafficPolicyInstanceId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetTrafficPolicyInstanceRequest[k], "GetTrafficPolicyInstanceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTrafficPolicyInstanceRequest
-- <p>Gets information about a specified traffic policy instance.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [TrafficPolicyInstanceId] <p>The ID of the traffic policy instance that you want to get information about.</p>
-- Required key: Id
-- @return GetTrafficPolicyInstanceRequest structure as a key-value pair table
function M.GetTrafficPolicyInstanceRequest(args)
	assert(args, "You must provdide an argument table when creating GetTrafficPolicyInstanceRequest")
	local t = { 
		["Id"] = args["Id"],
	}
	asserts.AssertGetTrafficPolicyInstanceRequest(t)
	return t
end

keys.CreateTrafficPolicyVersionRequest = { ["Comment"] = true, ["Document"] = true, ["Id"] = true, nil }

function asserts.AssertCreateTrafficPolicyVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTrafficPolicyVersionRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["Document"], "Expected key Document to exist in table")
	if struct["Comment"] then asserts.AssertTrafficPolicyComment(struct["Comment"]) end
	if struct["Document"] then asserts.AssertTrafficPolicyDocument(struct["Document"]) end
	if struct["Id"] then asserts.AssertTrafficPolicyId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateTrafficPolicyVersionRequest[k], "CreateTrafficPolicyVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTrafficPolicyVersionRequest
-- <p>A complex type that contains information about the traffic policy that you want to create a new version for.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Comment [TrafficPolicyComment] <p>The comment that you specified in the <code>CreateTrafficPolicyVersion</code> request, if any.</p>
-- * Document [TrafficPolicyDocument] <p>The definition of this version of the traffic policy, in JSON format. You specified the JSON in the <code>CreateTrafficPolicyVersion</code> request. For more information about the JSON format, see <a>CreateTrafficPolicy</a>.</p>
-- * Id [TrafficPolicyId] <p>The ID of the traffic policy for which you want to create a new version.</p>
-- Required key: Id
-- Required key: Document
-- @return CreateTrafficPolicyVersionRequest structure as a key-value pair table
function M.CreateTrafficPolicyVersionRequest(args)
	assert(args, "You must provdide an argument table when creating CreateTrafficPolicyVersionRequest")
	local t = { 
		["Comment"] = args["Comment"],
		["Document"] = args["Document"],
		["Id"] = args["Id"],
	}
	asserts.AssertCreateTrafficPolicyVersionRequest(t)
	return t
end

keys.HostedZoneConfig = { ["Comment"] = true, ["PrivateZone"] = true, nil }

function asserts.AssertHostedZoneConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HostedZoneConfig to be of type 'table'")
	if struct["Comment"] then asserts.AssertResourceDescription(struct["Comment"]) end
	if struct["PrivateZone"] then asserts.AssertIsPrivateZone(struct["PrivateZone"]) end
	for k,_ in pairs(struct) do
		assert(keys.HostedZoneConfig[k], "HostedZoneConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HostedZoneConfig
-- <p>A complex type that contains an optional comment about your hosted zone. If you don't want to specify a comment, omit both the <code>HostedZoneConfig</code> and <code>Comment</code> elements.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Comment [ResourceDescription] <p>Any comments that you want to include about the hosted zone.</p>
-- * PrivateZone [IsPrivateZone] <p>A value that indicates whether this is a private hosted zone.</p>
-- @return HostedZoneConfig structure as a key-value pair table
function M.HostedZoneConfig(args)
	assert(args, "You must provdide an argument table when creating HostedZoneConfig")
	local t = { 
		["Comment"] = args["Comment"],
		["PrivateZone"] = args["PrivateZone"],
	}
	asserts.AssertHostedZoneConfig(t)
	return t
end

keys.DeleteHealthCheckResponse = { nil }

function asserts.AssertDeleteHealthCheckResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteHealthCheckResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteHealthCheckResponse[k], "DeleteHealthCheckResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteHealthCheckResponse
-- <p>An empty element.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteHealthCheckResponse structure as a key-value pair table
function M.DeleteHealthCheckResponse(args)
	assert(args, "You must provdide an argument table when creating DeleteHealthCheckResponse")
	local t = { 
	}
	asserts.AssertDeleteHealthCheckResponse(t)
	return t
end

keys.AssociateVPCWithHostedZoneRequest = { ["HostedZoneId"] = true, ["Comment"] = true, ["VPC"] = true, nil }

function asserts.AssertAssociateVPCWithHostedZoneRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateVPCWithHostedZoneRequest to be of type 'table'")
	assert(struct["HostedZoneId"], "Expected key HostedZoneId to exist in table")
	assert(struct["VPC"], "Expected key VPC to exist in table")
	if struct["HostedZoneId"] then asserts.AssertResourceId(struct["HostedZoneId"]) end
	if struct["Comment"] then asserts.AssertAssociateVPCComment(struct["Comment"]) end
	if struct["VPC"] then asserts.AssertVPC(struct["VPC"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssociateVPCWithHostedZoneRequest[k], "AssociateVPCWithHostedZoneRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateVPCWithHostedZoneRequest
-- <p>A complex type that contains information about the request to associate a VPC with a private hosted zone.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HostedZoneId [ResourceId] <p>The ID of the private hosted zone that you want to associate an Amazon VPC with.</p> <p>Note that you can't associate a VPC with a hosted zone that doesn't have an existing VPC association.</p>
-- * Comment [AssociateVPCComment] <p> <i>Optional:</i> A comment about the association request.</p>
-- * VPC [VPC] <p>A complex type that contains information about the VPC that you want to associate with a private hosted zone.</p>
-- Required key: HostedZoneId
-- Required key: VPC
-- @return AssociateVPCWithHostedZoneRequest structure as a key-value pair table
function M.AssociateVPCWithHostedZoneRequest(args)
	assert(args, "You must provdide an argument table when creating AssociateVPCWithHostedZoneRequest")
	local t = { 
		["HostedZoneId"] = args["HostedZoneId"],
		["Comment"] = args["Comment"],
		["VPC"] = args["VPC"],
	}
	asserts.AssertAssociateVPCWithHostedZoneRequest(t)
	return t
end

keys.ChangeTagsForResourceResponse = { nil }

function asserts.AssertChangeTagsForResourceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ChangeTagsForResourceResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ChangeTagsForResourceResponse[k], "ChangeTagsForResourceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ChangeTagsForResourceResponse
-- <p>Empty response for the request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ChangeTagsForResourceResponse structure as a key-value pair table
function M.ChangeTagsForResourceResponse(args)
	assert(args, "You must provdide an argument table when creating ChangeTagsForResourceResponse")
	local t = { 
	}
	asserts.AssertChangeTagsForResourceResponse(t)
	return t
end

keys.CloudWatchAlarmConfiguration = { ["EvaluationPeriods"] = true, ["Dimensions"] = true, ["Namespace"] = true, ["Period"] = true, ["ComparisonOperator"] = true, ["Statistic"] = true, ["Threshold"] = true, ["MetricName"] = true, nil }

function asserts.AssertCloudWatchAlarmConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloudWatchAlarmConfiguration to be of type 'table'")
	assert(struct["EvaluationPeriods"], "Expected key EvaluationPeriods to exist in table")
	assert(struct["Threshold"], "Expected key Threshold to exist in table")
	assert(struct["ComparisonOperator"], "Expected key ComparisonOperator to exist in table")
	assert(struct["Period"], "Expected key Period to exist in table")
	assert(struct["MetricName"], "Expected key MetricName to exist in table")
	assert(struct["Namespace"], "Expected key Namespace to exist in table")
	assert(struct["Statistic"], "Expected key Statistic to exist in table")
	if struct["EvaluationPeriods"] then asserts.AssertEvaluationPeriods(struct["EvaluationPeriods"]) end
	if struct["Dimensions"] then asserts.AssertDimensionList(struct["Dimensions"]) end
	if struct["Namespace"] then asserts.AssertNamespace(struct["Namespace"]) end
	if struct["Period"] then asserts.AssertPeriod(struct["Period"]) end
	if struct["ComparisonOperator"] then asserts.AssertComparisonOperator(struct["ComparisonOperator"]) end
	if struct["Statistic"] then asserts.AssertStatistic(struct["Statistic"]) end
	if struct["Threshold"] then asserts.AssertThreshold(struct["Threshold"]) end
	if struct["MetricName"] then asserts.AssertMetricName(struct["MetricName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CloudWatchAlarmConfiguration[k], "CloudWatchAlarmConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloudWatchAlarmConfiguration
-- <p>A complex type that contains information about the CloudWatch alarm that Amazon Route 53 is monitoring for this health check.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EvaluationPeriods [EvaluationPeriods] <p>For the metric that the CloudWatch alarm is associated with, the number of periods that the metric is compared to the threshold.</p>
-- * Dimensions [DimensionList] <p>For the metric that the CloudWatch alarm is associated with, a complex type that contains information about the dimensions for the metric. For information, see <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/CW_Support_For_AWS.html">Amazon CloudWatch Namespaces, Dimensions, and Metrics Reference</a> in the <i>Amazon CloudWatch User Guide</i>.</p>
-- * Namespace [Namespace] <p>The namespace of the metric that the alarm is associated with. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/CW_Support_For_AWS.html">Amazon CloudWatch Namespaces, Dimensions, and Metrics Reference</a> in the <i>Amazon CloudWatch User Guide</i>.</p>
-- * Period [Period] <p>For the metric that the CloudWatch alarm is associated with, the duration of one evaluation period in seconds.</p>
-- * ComparisonOperator [ComparisonOperator] <p>For the metric that the CloudWatch alarm is associated with, the arithmetic operation that is used for the comparison.</p>
-- * Statistic [Statistic] <p>For the metric that the CloudWatch alarm is associated with, the statistic that is applied to the metric.</p>
-- * Threshold [Threshold] <p>For the metric that the CloudWatch alarm is associated with, the value the metric is compared with.</p>
-- * MetricName [MetricName] <p>The name of the CloudWatch metric that the alarm is associated with.</p>
-- Required key: EvaluationPeriods
-- Required key: Threshold
-- Required key: ComparisonOperator
-- Required key: Period
-- Required key: MetricName
-- Required key: Namespace
-- Required key: Statistic
-- @return CloudWatchAlarmConfiguration structure as a key-value pair table
function M.CloudWatchAlarmConfiguration(args)
	assert(args, "You must provdide an argument table when creating CloudWatchAlarmConfiguration")
	local t = { 
		["EvaluationPeriods"] = args["EvaluationPeriods"],
		["Dimensions"] = args["Dimensions"],
		["Namespace"] = args["Namespace"],
		["Period"] = args["Period"],
		["ComparisonOperator"] = args["ComparisonOperator"],
		["Statistic"] = args["Statistic"],
		["Threshold"] = args["Threshold"],
		["MetricName"] = args["MetricName"],
	}
	asserts.AssertCloudWatchAlarmConfiguration(t)
	return t
end

keys.ListTrafficPolicyVersionsResponse = { ["MaxItems"] = true, ["IsTruncated"] = true, ["TrafficPolicies"] = true, ["TrafficPolicyVersionMarker"] = true, nil }

function asserts.AssertListTrafficPolicyVersionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTrafficPolicyVersionsResponse to be of type 'table'")
	assert(struct["TrafficPolicies"], "Expected key TrafficPolicies to exist in table")
	assert(struct["IsTruncated"], "Expected key IsTruncated to exist in table")
	assert(struct["TrafficPolicyVersionMarker"], "Expected key TrafficPolicyVersionMarker to exist in table")
	assert(struct["MaxItems"], "Expected key MaxItems to exist in table")
	if struct["MaxItems"] then asserts.AssertPageMaxItems(struct["MaxItems"]) end
	if struct["IsTruncated"] then asserts.AssertPageTruncated(struct["IsTruncated"]) end
	if struct["TrafficPolicies"] then asserts.AssertTrafficPolicies(struct["TrafficPolicies"]) end
	if struct["TrafficPolicyVersionMarker"] then asserts.AssertTrafficPolicyVersionMarker(struct["TrafficPolicyVersionMarker"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTrafficPolicyVersionsResponse[k], "ListTrafficPolicyVersionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTrafficPolicyVersionsResponse
-- <p>A complex type that contains the response information for the request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MaxItems [PageMaxItems] <p>The value that you specified for the <code>maxitems</code> parameter in the <code>ListTrafficPolicyVersions</code> request that produced the current response.</p>
-- * IsTruncated [PageTruncated] <p>A flag that indicates whether there are more traffic policies to be listed. If the response was truncated, you can get the next group of traffic policies by submitting another <code>ListTrafficPolicyVersions</code> request and specifying the value of <code>NextMarker</code> in the <code>marker</code> parameter.</p>
-- * TrafficPolicies [TrafficPolicies] <p>A list that contains one <code>TrafficPolicy</code> element for each traffic policy version that is associated with the specified traffic policy.</p>
-- * TrafficPolicyVersionMarker [TrafficPolicyVersionMarker] <p>If <code>IsTruncated</code> is <code>true</code>, the value of <code>TrafficPolicyVersionMarker</code> identifies the first traffic policy that Amazon Route 53 will return if you submit another request. Call <code>ListTrafficPolicyVersions</code> again and specify the value of <code>TrafficPolicyVersionMarker</code> in the <code>TrafficPolicyVersionMarker</code> request parameter.</p> <p>This element is present only if <code>IsTruncated</code> is <code>true</code>.</p>
-- Required key: TrafficPolicies
-- Required key: IsTruncated
-- Required key: TrafficPolicyVersionMarker
-- Required key: MaxItems
-- @return ListTrafficPolicyVersionsResponse structure as a key-value pair table
function M.ListTrafficPolicyVersionsResponse(args)
	assert(args, "You must provdide an argument table when creating ListTrafficPolicyVersionsResponse")
	local t = { 
		["MaxItems"] = args["MaxItems"],
		["IsTruncated"] = args["IsTruncated"],
		["TrafficPolicies"] = args["TrafficPolicies"],
		["TrafficPolicyVersionMarker"] = args["TrafficPolicyVersionMarker"],
	}
	asserts.AssertListTrafficPolicyVersionsResponse(t)
	return t
end

keys.ConflictingDomainExists = { ["message"] = true, nil }

function asserts.AssertConflictingDomainExists(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConflictingDomainExists to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConflictingDomainExists[k], "ConflictingDomainExists contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConflictingDomainExists
-- <p>The cause of this error depends on whether you're trying to create a public or a private hosted zone:</p> <ul> <li> <p> <b>Public hosted zone:</b> Two hosted zones that have the same name or that have a parent/child relationship (example.com and test.example.com) can't have any common name servers. You tried to create a hosted zone that has the same name as an existing hosted zone or that's the parent or child of an existing hosted zone, and you specified a delegation set that shares one or more name servers with the existing hosted zone. </p> </li> <li> <p> <b>Private hosted zone:</b> You specified an Amazon VPC that you're already using for another hosted zone, and the domain that you specified for one of the hosted zones is a subdomain of the domain that you specified for the other hosted zone. For example, you can't use the same Amazon VPC for the hosted zones for example.com and test.example.com.</p> </li> </ul>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return ConflictingDomainExists structure as a key-value pair table
function M.ConflictingDomainExists(args)
	assert(args, "You must provdide an argument table when creating ConflictingDomainExists")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertConflictingDomainExists(t)
	return t
end

keys.ListHostedZonesByNameRequest = { ["HostedZoneId"] = true, ["DNSName"] = true, ["MaxItems"] = true, nil }

function asserts.AssertListHostedZonesByNameRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListHostedZonesByNameRequest to be of type 'table'")
	if struct["HostedZoneId"] then asserts.AssertResourceId(struct["HostedZoneId"]) end
	if struct["DNSName"] then asserts.AssertDNSName(struct["DNSName"]) end
	if struct["MaxItems"] then asserts.AssertPageMaxItems(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListHostedZonesByNameRequest[k], "ListHostedZonesByNameRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListHostedZonesByNameRequest
-- <p>Retrieves a list of the public and private hosted zones that are associated with the current AWS account in ASCII order by domain name. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HostedZoneId [ResourceId] <p>(Optional) For your first request to <code>ListHostedZonesByName</code>, do not include the <code>hostedzoneid</code> parameter.</p> <p>If you have more hosted zones than the value of <code>maxitems</code>, <code>ListHostedZonesByName</code> returns only the first <code>maxitems</code> hosted zones. To get the next group of <code>maxitems</code> hosted zones, submit another request to <code>ListHostedZonesByName</code> and include both <code>dnsname</code> and <code>hostedzoneid</code> parameters. For the value of <code>hostedzoneid</code>, specify the value of the <code>NextHostedZoneId</code> element from the previous response.</p>
-- * DNSName [DNSName] <p>(Optional) For your first request to <code>ListHostedZonesByName</code>, include the <code>dnsname</code> parameter only if you want to specify the name of the first hosted zone in the response. If you don't include the <code>dnsname</code> parameter, Amazon Route 53 returns all of the hosted zones that were created by the current AWS account, in ASCII order. For subsequent requests, include both <code>dnsname</code> and <code>hostedzoneid</code> parameters. For <code>dnsname</code>, specify the value of <code>NextDNSName</code> from the previous response.</p>
-- * MaxItems [PageMaxItems] <p>The maximum number of hosted zones to be included in the response body for this request. If you have more than <code>maxitems</code> hosted zones, then the value of the <code>IsTruncated</code> element in the response is true, and the values of <code>NextDNSName</code> and <code>NextHostedZoneId</code> specify the first hosted zone in the next group of <code>maxitems</code> hosted zones. </p>
-- @return ListHostedZonesByNameRequest structure as a key-value pair table
function M.ListHostedZonesByNameRequest(args)
	assert(args, "You must provdide an argument table when creating ListHostedZonesByNameRequest")
	local t = { 
		["HostedZoneId"] = args["HostedZoneId"],
		["DNSName"] = args["DNSName"],
		["MaxItems"] = args["MaxItems"],
	}
	asserts.AssertListHostedZonesByNameRequest(t)
	return t
end

keys.UpdateTrafficPolicyCommentRequest = { ["Comment"] = true, ["Version"] = true, ["Id"] = true, nil }

function asserts.AssertUpdateTrafficPolicyCommentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateTrafficPolicyCommentRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["Version"], "Expected key Version to exist in table")
	assert(struct["Comment"], "Expected key Comment to exist in table")
	if struct["Comment"] then asserts.AssertTrafficPolicyComment(struct["Comment"]) end
	if struct["Version"] then asserts.AssertTrafficPolicyVersion(struct["Version"]) end
	if struct["Id"] then asserts.AssertTrafficPolicyId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateTrafficPolicyCommentRequest[k], "UpdateTrafficPolicyCommentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateTrafficPolicyCommentRequest
-- <p>A complex type that contains information about the traffic policy that you want to update the comment for.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Comment [TrafficPolicyComment] <p>The new comment for the specified traffic policy and version.</p>
-- * Version [TrafficPolicyVersion] <p>The value of <code>Version</code> for the traffic policy that you want to update the comment for.</p>
-- * Id [TrafficPolicyId] <p>The value of <code>Id</code> for the traffic policy that you want to update the comment for.</p>
-- Required key: Id
-- Required key: Version
-- Required key: Comment
-- @return UpdateTrafficPolicyCommentRequest structure as a key-value pair table
function M.UpdateTrafficPolicyCommentRequest(args)
	assert(args, "You must provdide an argument table when creating UpdateTrafficPolicyCommentRequest")
	local t = { 
		["Comment"] = args["Comment"],
		["Version"] = args["Version"],
		["Id"] = args["Id"],
	}
	asserts.AssertUpdateTrafficPolicyCommentRequest(t)
	return t
end

keys.DeleteReusableDelegationSetResponse = { nil }

function asserts.AssertDeleteReusableDelegationSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteReusableDelegationSetResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteReusableDelegationSetResponse[k], "DeleteReusableDelegationSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteReusableDelegationSetResponse
-- <p>An empty element.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteReusableDelegationSetResponse structure as a key-value pair table
function M.DeleteReusableDelegationSetResponse(args)
	assert(args, "You must provdide an argument table when creating DeleteReusableDelegationSetResponse")
	local t = { 
	}
	asserts.AssertDeleteReusableDelegationSetResponse(t)
	return t
end

keys.ResourceTagSet = { ["ResourceType"] = true, ["ResourceId"] = true, ["Tags"] = true, nil }

function asserts.AssertResourceTagSet(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceTagSet to be of type 'table'")
	if struct["ResourceType"] then asserts.AssertTagResourceType(struct["ResourceType"]) end
	if struct["ResourceId"] then asserts.AssertTagResourceId(struct["ResourceId"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceTagSet[k], "ResourceTagSet contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceTagSet
-- <p>A complex type containing a resource and its associated tags.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceType [TagResourceType] <p>The type of the resource.</p> <ul> <li> <p>The resource type for health checks is <code>healthcheck</code>.</p> </li> <li> <p>The resource type for hosted zones is <code>hostedzone</code>.</p> </li> </ul>
-- * ResourceId [TagResourceId] <p>The ID for the specified resource.</p>
-- * Tags [TagList] <p>The tags associated with the specified resource.</p>
-- @return ResourceTagSet structure as a key-value pair table
function M.ResourceTagSet(args)
	assert(args, "You must provdide an argument table when creating ResourceTagSet")
	local t = { 
		["ResourceType"] = args["ResourceType"],
		["ResourceId"] = args["ResourceId"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertResourceTagSet(t)
	return t
end

keys.HostedZoneAlreadyExists = { ["message"] = true, nil }

function asserts.AssertHostedZoneAlreadyExists(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HostedZoneAlreadyExists to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.HostedZoneAlreadyExists[k], "HostedZoneAlreadyExists contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HostedZoneAlreadyExists
-- <p>The hosted zone you're trying to create already exists. Amazon Route 53 returns this error when a hosted zone has already been created with the specified <code>CallerReference</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>Descriptive message for the error response.</p>
-- @return HostedZoneAlreadyExists structure as a key-value pair table
function M.HostedZoneAlreadyExists(args)
	assert(args, "You must provdide an argument table when creating HostedZoneAlreadyExists")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertHostedZoneAlreadyExists(t)
	return t
end

keys.DelegationSet = { ["NameServers"] = true, ["CallerReference"] = true, ["Id"] = true, nil }

function asserts.AssertDelegationSet(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DelegationSet to be of type 'table'")
	assert(struct["NameServers"], "Expected key NameServers to exist in table")
	if struct["NameServers"] then asserts.AssertDelegationSetNameServers(struct["NameServers"]) end
	if struct["CallerReference"] then asserts.AssertNonce(struct["CallerReference"]) end
	if struct["Id"] then asserts.AssertResourceId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.DelegationSet[k], "DelegationSet contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DelegationSet
-- <p>A complex type that lists the name servers in a delegation set, as well as the <code>CallerReference</code> and the <code>ID</code> for the delegation set.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NameServers [DelegationSetNameServers] <p>A complex type that contains a list of the authoritative name servers for a hosted zone or for a reusable delegation set.</p>
-- * CallerReference [Nonce] <p>The value that you specified for <code>CallerReference</code> when you created the reusable delegation set.</p>
-- * Id [ResourceId] <p>The ID that Amazon Route 53 assigns to a reusable delegation set.</p>
-- Required key: NameServers
-- @return DelegationSet structure as a key-value pair table
function M.DelegationSet(args)
	assert(args, "You must provdide an argument table when creating DelegationSet")
	local t = { 
		["NameServers"] = args["NameServers"],
		["CallerReference"] = args["CallerReference"],
		["Id"] = args["Id"],
	}
	asserts.AssertDelegationSet(t)
	return t
end

keys.NoSuchTrafficPolicyInstance = { ["message"] = true, nil }

function asserts.AssertNoSuchTrafficPolicyInstance(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoSuchTrafficPolicyInstance to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.NoSuchTrafficPolicyInstance[k], "NoSuchTrafficPolicyInstance contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoSuchTrafficPolicyInstance
-- <p>No traffic policy instance exists with the specified ID.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>Descriptive message for the error response.</p>
-- @return NoSuchTrafficPolicyInstance structure as a key-value pair table
function M.NoSuchTrafficPolicyInstance(args)
	assert(args, "You must provdide an argument table when creating NoSuchTrafficPolicyInstance")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertNoSuchTrafficPolicyInstance(t)
	return t
end

keys.HealthCheckObservation = { ["StatusReport"] = true, ["Region"] = true, ["IPAddress"] = true, nil }

function asserts.AssertHealthCheckObservation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HealthCheckObservation to be of type 'table'")
	if struct["StatusReport"] then asserts.AssertStatusReport(struct["StatusReport"]) end
	if struct["Region"] then asserts.AssertHealthCheckRegion(struct["Region"]) end
	if struct["IPAddress"] then asserts.AssertIPAddress(struct["IPAddress"]) end
	for k,_ in pairs(struct) do
		assert(keys.HealthCheckObservation[k], "HealthCheckObservation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HealthCheckObservation
-- <p>A complex type that contains the last failure reason as reported by one Amazon Route 53 health checker.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StatusReport [StatusReport] <p>A complex type that contains the last failure reason as reported by one Amazon Route 53 health checker and the time of the failed health check.</p>
-- * Region [HealthCheckRegion] <p>The region of the Amazon Route 53 health checker that provided the status in <code>StatusReport</code>.</p>
-- * IPAddress [IPAddress] <p>The IP address of the Amazon Route 53 health checker that provided the failure reason in <code>StatusReport</code>.</p>
-- @return HealthCheckObservation structure as a key-value pair table
function M.HealthCheckObservation(args)
	assert(args, "You must provdide an argument table when creating HealthCheckObservation")
	local t = { 
		["StatusReport"] = args["StatusReport"],
		["Region"] = args["Region"],
		["IPAddress"] = args["IPAddress"],
	}
	asserts.AssertHealthCheckObservation(t)
	return t
end

keys.GetTrafficPolicyRequest = { ["Version"] = true, ["Id"] = true, nil }

function asserts.AssertGetTrafficPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTrafficPolicyRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["Version"], "Expected key Version to exist in table")
	if struct["Version"] then asserts.AssertTrafficPolicyVersion(struct["Version"]) end
	if struct["Id"] then asserts.AssertTrafficPolicyId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetTrafficPolicyRequest[k], "GetTrafficPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTrafficPolicyRequest
-- <p>Gets information about a specific traffic policy version.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Version [TrafficPolicyVersion] <p>The version number of the traffic policy that you want to get information about.</p>
-- * Id [TrafficPolicyId] <p>The ID of the traffic policy that you want to get information about.</p>
-- Required key: Id
-- Required key: Version
-- @return GetTrafficPolicyRequest structure as a key-value pair table
function M.GetTrafficPolicyRequest(args)
	assert(args, "You must provdide an argument table when creating GetTrafficPolicyRequest")
	local t = { 
		["Version"] = args["Version"],
		["Id"] = args["Id"],
	}
	asserts.AssertGetTrafficPolicyRequest(t)
	return t
end

keys.TrafficPolicyAlreadyExists = { ["message"] = true, nil }

function asserts.AssertTrafficPolicyAlreadyExists(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TrafficPolicyAlreadyExists to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.TrafficPolicyAlreadyExists[k], "TrafficPolicyAlreadyExists contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TrafficPolicyAlreadyExists
-- <p>A traffic policy that has the same value for <code>Name</code> already exists.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>Descriptive message for the error response.</p>
-- @return TrafficPolicyAlreadyExists structure as a key-value pair table
function M.TrafficPolicyAlreadyExists(args)
	assert(args, "You must provdide an argument table when creating TrafficPolicyAlreadyExists")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertTrafficPolicyAlreadyExists(t)
	return t
end

keys.DeleteTrafficPolicyInstanceResponse = { nil }

function asserts.AssertDeleteTrafficPolicyInstanceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTrafficPolicyInstanceResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteTrafficPolicyInstanceResponse[k], "DeleteTrafficPolicyInstanceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTrafficPolicyInstanceResponse
-- <p>An empty element.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteTrafficPolicyInstanceResponse structure as a key-value pair table
function M.DeleteTrafficPolicyInstanceResponse(args)
	assert(args, "You must provdide an argument table when creating DeleteTrafficPolicyInstanceResponse")
	local t = { 
	}
	asserts.AssertDeleteTrafficPolicyInstanceResponse(t)
	return t
end

keys.ListTrafficPolicyInstancesRequest = { ["HostedZoneIdMarker"] = true, ["TrafficPolicyInstanceTypeMarker"] = true, ["TrafficPolicyInstanceNameMarker"] = true, ["MaxItems"] = true, nil }

function asserts.AssertListTrafficPolicyInstancesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTrafficPolicyInstancesRequest to be of type 'table'")
	if struct["HostedZoneIdMarker"] then asserts.AssertResourceId(struct["HostedZoneIdMarker"]) end
	if struct["TrafficPolicyInstanceTypeMarker"] then asserts.AssertRRType(struct["TrafficPolicyInstanceTypeMarker"]) end
	if struct["TrafficPolicyInstanceNameMarker"] then asserts.AssertDNSName(struct["TrafficPolicyInstanceNameMarker"]) end
	if struct["MaxItems"] then asserts.AssertPageMaxItems(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTrafficPolicyInstancesRequest[k], "ListTrafficPolicyInstancesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTrafficPolicyInstancesRequest
-- <p>A request to get information about the traffic policy instances that you created by using the current AWS account.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HostedZoneIdMarker [ResourceId] <p>If the value of <code>IsTruncated</code> in the previous response was <code>true</code>, you have more traffic policy instances. To get more traffic policy instances, submit another <code>ListTrafficPolicyInstances</code> request. For the value of <code>HostedZoneId</code>, specify the value of <code>HostedZoneIdMarker</code> from the previous response, which is the hosted zone ID of the first traffic policy instance in the next group of traffic policy instances.</p> <p>If the value of <code>IsTruncated</code> in the previous response was <code>false</code>, there are no more traffic policy instances to get.</p>
-- * TrafficPolicyInstanceTypeMarker [RRType] <p>If the value of <code>IsTruncated</code> in the previous response was <code>true</code>, you have more traffic policy instances. To get more traffic policy instances, submit another <code>ListTrafficPolicyInstances</code> request. For the value of <code>trafficpolicyinstancetype</code>, specify the value of <code>TrafficPolicyInstanceTypeMarker</code> from the previous response, which is the type of the first traffic policy instance in the next group of traffic policy instances.</p> <p>If the value of <code>IsTruncated</code> in the previous response was <code>false</code>, there are no more traffic policy instances to get.</p>
-- * TrafficPolicyInstanceNameMarker [DNSName] <p>If the value of <code>IsTruncated</code> in the previous response was <code>true</code>, you have more traffic policy instances. To get more traffic policy instances, submit another <code>ListTrafficPolicyInstances</code> request. For the value of <code>trafficpolicyinstancename</code>, specify the value of <code>TrafficPolicyInstanceNameMarker</code> from the previous response, which is the name of the first traffic policy instance in the next group of traffic policy instances.</p> <p>If the value of <code>IsTruncated</code> in the previous response was <code>false</code>, there are no more traffic policy instances to get.</p>
-- * MaxItems [PageMaxItems] <p>The maximum number of traffic policy instances that you want Amazon Route 53 to return in response to a <code>ListTrafficPolicyInstances</code> request. If you have more than <code>MaxItems</code> traffic policy instances, the value of the <code>IsTruncated</code> element in the response is <code>true</code>, and the values of <code>HostedZoneIdMarker</code>, <code>TrafficPolicyInstanceNameMarker</code>, and <code>TrafficPolicyInstanceTypeMarker</code> represent the first traffic policy instance in the next group of <code>MaxItems</code> traffic policy instances.</p>
-- @return ListTrafficPolicyInstancesRequest structure as a key-value pair table
function M.ListTrafficPolicyInstancesRequest(args)
	assert(args, "You must provdide an argument table when creating ListTrafficPolicyInstancesRequest")
	local t = { 
		["HostedZoneIdMarker"] = args["HostedZoneIdMarker"],
		["TrafficPolicyInstanceTypeMarker"] = args["TrafficPolicyInstanceTypeMarker"],
		["TrafficPolicyInstanceNameMarker"] = args["TrafficPolicyInstanceNameMarker"],
		["MaxItems"] = args["MaxItems"],
	}
	asserts.AssertListTrafficPolicyInstancesRequest(t)
	return t
end

keys.HealthCheckConfig = { ["FailureThreshold"] = true, ["SearchString"] = true, ["AlarmIdentifier"] = true, ["IPAddress"] = true, ["ResourcePath"] = true, ["ChildHealthChecks"] = true, ["Inverted"] = true, ["Regions"] = true, ["InsufficientDataHealthStatus"] = true, ["HealthThreshold"] = true, ["EnableSNI"] = true, ["MeasureLatency"] = true, ["RequestInterval"] = true, ["Type"] = true, ["Port"] = true, ["FullyQualifiedDomainName"] = true, nil }

function asserts.AssertHealthCheckConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HealthCheckConfig to be of type 'table'")
	assert(struct["Type"], "Expected key Type to exist in table")
	if struct["FailureThreshold"] then asserts.AssertFailureThreshold(struct["FailureThreshold"]) end
	if struct["SearchString"] then asserts.AssertSearchString(struct["SearchString"]) end
	if struct["AlarmIdentifier"] then asserts.AssertAlarmIdentifier(struct["AlarmIdentifier"]) end
	if struct["IPAddress"] then asserts.AssertIPAddress(struct["IPAddress"]) end
	if struct["ResourcePath"] then asserts.AssertResourcePath(struct["ResourcePath"]) end
	if struct["ChildHealthChecks"] then asserts.AssertChildHealthCheckList(struct["ChildHealthChecks"]) end
	if struct["Inverted"] then asserts.AssertInverted(struct["Inverted"]) end
	if struct["Regions"] then asserts.AssertHealthCheckRegionList(struct["Regions"]) end
	if struct["InsufficientDataHealthStatus"] then asserts.AssertInsufficientDataHealthStatus(struct["InsufficientDataHealthStatus"]) end
	if struct["HealthThreshold"] then asserts.AssertHealthThreshold(struct["HealthThreshold"]) end
	if struct["EnableSNI"] then asserts.AssertEnableSNI(struct["EnableSNI"]) end
	if struct["MeasureLatency"] then asserts.AssertMeasureLatency(struct["MeasureLatency"]) end
	if struct["RequestInterval"] then asserts.AssertRequestInterval(struct["RequestInterval"]) end
	if struct["Type"] then asserts.AssertHealthCheckType(struct["Type"]) end
	if struct["Port"] then asserts.AssertPort(struct["Port"]) end
	if struct["FullyQualifiedDomainName"] then asserts.AssertFullyQualifiedDomainName(struct["FullyQualifiedDomainName"]) end
	for k,_ in pairs(struct) do
		assert(keys.HealthCheckConfig[k], "HealthCheckConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HealthCheckConfig
-- <p>A complex type that contains information about the health check.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FailureThreshold [FailureThreshold] <p>The number of consecutive health checks that an endpoint must pass or fail for Amazon Route 53 to change the current status of the endpoint from unhealthy to healthy or vice versa. For more information, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-determining-health-of-endpoints.html">How Amazon Route 53 Determines Whether an Endpoint Is Healthy</a> in the <i>Amazon Route 53 Developer Guide</i>.</p> <p>If you don't specify a value for <code>FailureThreshold</code>, the default value is three health checks.</p>
-- * SearchString [SearchString] <p>If the value of Type is <code>HTTP_STR_MATCH</code> or <code>HTTP_STR_MATCH</code>, the string that you want Amazon Route 53 to search for in the response body from the specified resource. If the string appears in the response body, Amazon Route 53 considers the resource healthy.</p> <p>Amazon Route 53 considers case when searching for <code>SearchString</code> in the response body. </p>
-- * AlarmIdentifier [AlarmIdentifier] <p>A complex type that identifies the CloudWatch alarm that you want Amazon Route 53 health checkers to use to determine whether this health check is healthy.</p>
-- * IPAddress [IPAddress] <p>The IPv4 or IPv6 IP address of the endpoint that you want Amazon Route 53 to perform health checks on. If you don't specify a value for <code>IPAddress</code>, Amazon Route 53 sends a DNS request to resolve the domain name that you specify in <code>FullyQualifiedDomainName</code> at the interval that you specify in <code>RequestInterval</code>. Using an IP address returned by DNS, Amazon Route 53 then checks the health of the endpoint.</p> <p>Use one of the following formats for the value of <code>IPAddress</code>: </p> <ul> <li> <p> <b>IPv4 address</b>: four values between 0 and 255, separated by periods (.), for example, <code>192.0.2.44</code>.</p> </li> <li> <p> <b>IPv6 address</b>: eight groups of four hexadecimal values, separated by colons (:), for example, <code>2001:0db8:85a3:0000:0000:abcd:0001:2345</code>. You can also shorten IPv6 addresses as described in RFC 5952, for example, <code>2001:db8:85a3::abcd:1:2345</code>.</p> </li> </ul> <p>If the endpoint is an EC2 instance, we recommend that you create an Elastic IP address, associate it with your EC2 instance, and specify the Elastic IP address for <code>IPAddress</code>. This ensures that the IP address of your instance will never change.</p> <p>For more information, see <a>HealthCheckConfig$FullyQualifiedDomainName</a>.</p> <p>Constraints: Amazon Route 53 can't check the health of endpoints for which the IP address is in local, private, non-routable, or multicast ranges. For more information about IP addresses for which you can't create health checks, see the following documents:</p> <ul> <li> <p> <a href="https://tools.ietf.org/html/rfc5735">RFC 5735, Special Use IPv4 Addresses</a> </p> </li> <li> <p> <a href="https://tools.ietf.org/html/rfc6598">RFC 6598, IANA-Reserved IPv4 Prefix for Shared Address Space</a> </p> </li> <li> <p> <a href="https://tools.ietf.org/html/rfc5156">RFC 5156, Special-Use IPv6 Addresses</a> </p> </li> </ul> <p>When the value of <code>Type</code> is <code>CALCULATED</code> or <code>CLOUDWATCH_METRIC</code>, omit <code>IPAddress</code>.</p>
-- * ResourcePath [ResourcePath] <p>The path, if any, that you want Amazon Route 53 to request when performing health checks. The path can be any value for which your endpoint will return an HTTP status code of 2xx or 3xx when the endpoint is healthy, for example, the file /docs/route53-health-check.html. </p>
-- * ChildHealthChecks [ChildHealthCheckList] <p>(CALCULATED Health Checks Only) A complex type that contains one <code>ChildHealthCheck</code> element for each health check that you want to associate with a <code>CALCULATED</code> health check.</p>
-- * Inverted [Inverted] <p>Specify whether you want Amazon Route 53 to invert the status of a health check, for example, to consider a health check unhealthy when it otherwise would be considered healthy.</p>
-- * Regions [HealthCheckRegionList] <p>A complex type that contains one <code>Region</code> element for each region from which you want Amazon Route 53 health checkers to check the specified endpoint.</p> <p>If you don't specify any regions, Amazon Route 53 health checkers automatically performs checks from all of the regions that are listed under <b>Valid Values</b>.</p> <p>If you update a health check to remove a region that has been performing health checks, Amazon Route 53 will briefly continue to perform checks from that region to ensure that some health checkers are always checking the endpoint (for example, if you replace three regions with four different regions). </p>
-- * InsufficientDataHealthStatus [InsufficientDataHealthStatus] <p>When CloudWatch has insufficient data about the metric to determine the alarm state, the status that you want Amazon Route 53 to assign to the health check:</p> <ul> <li> <p> <code>Healthy</code>: Amazon Route 53 considers the health check to be healthy.</p> </li> <li> <p> <code>Unhealthy</code>: Amazon Route 53 considers the health check to be unhealthy.</p> </li> <li> <p> <code>LastKnownStatus</code>: Amazon Route 53 uses the status of the health check from the last time that CloudWatch had sufficient data to determine the alarm state. For new health checks that have no last known status, the default status for the health check is healthy.</p> </li> </ul>
-- * HealthThreshold [HealthThreshold] <p>The number of child health checks that are associated with a <code>CALCULATED</code> health that Amazon Route 53 must consider healthy for the <code>CALCULATED</code> health check to be considered healthy. To specify the child health checks that you want to associate with a <code>CALCULATED</code> health check, use the <a>HealthCheckConfig$ChildHealthChecks</a> and <a>HealthCheckConfig$ChildHealthChecks</a> elements.</p> <p>Note the following:</p> <ul> <li> <p>If you specify a number greater than the number of child health checks, Amazon Route 53 always considers this health check to be unhealthy.</p> </li> <li> <p>If you specify <code>0</code>, Amazon Route 53 always considers this health check to be healthy.</p> </li> </ul>
-- * EnableSNI [EnableSNI] <p>Specify whether you want Amazon Route 53 to send the value of <code>FullyQualifiedDomainName</code> to the endpoint in the <code>client_hello</code> message during TLS negotiation. This allows the endpoint to respond to <code>HTTPS</code> health check requests with the applicable SSL/TLS certificate.</p> <p>Some endpoints require that <code>HTTPS</code> requests include the host name in the <code>client_hello</code> message. If you don't enable SNI, the status of the health check will be <code>SSL alert handshake_failure</code>. A health check can also have that status for other reasons. If SNI is enabled and you're still getting the error, check the SSL/TLS configuration on your endpoint and confirm that your certificate is valid.</p> <p>The SSL/TLS certificate on your endpoint includes a domain name in the <code>Common Name</code> field and possibly several more in the <code>Subject Alternative Names</code> field. One of the domain names in the certificate should match the value that you specify for <code>FullyQualifiedDomainName</code>. If the endpoint responds to the <code>client_hello</code> message with a certificate that does not include the domain name that you specified in <code>FullyQualifiedDomainName</code>, a health checker will retry the handshake. In the second attempt, the health checker will omit <code>FullyQualifiedDomainName</code> from the <code>client_hello</code> message.</p>
-- * MeasureLatency [MeasureLatency] <p>Specify whether you want Amazon Route 53 to measure the latency between health checkers in multiple AWS regions and your endpoint, and to display CloudWatch latency graphs on the <b>Health Checks</b> page in the Amazon Route 53 console.</p> <important> <p>You can't change the value of <code>MeasureLatency</code> after you create a health check.</p> </important>
-- * RequestInterval [RequestInterval] <p>The number of seconds between the time that Amazon Route 53 gets a response from your endpoint and the time that it sends the next health check request. Each Amazon Route 53 health checker makes requests at this interval.</p> <important> <p>You can't change the value of <code>RequestInterval</code> after you create a health check.</p> </important> <p>If you don't specify a value for <code>RequestInterval</code>, the default value is <code>30</code> seconds.</p>
-- * Type [HealthCheckType] <p>The type of health check that you want to create, which indicates how Amazon Route 53 determines whether an endpoint is healthy.</p> <important> <p>You can't change the value of <code>Type</code> after you create a health check.</p> </important> <p>You can create the following types of health checks:</p> <ul> <li> <p> <b>HTTP</b>: Amazon Route 53 tries to establish a TCP connection. If successful, Amazon Route 53 submits an HTTP request and waits for an HTTP status code of 200 or greater and less than 400.</p> </li> <li> <p> <b>HTTPS</b>: Amazon Route 53 tries to establish a TCP connection. If successful, Amazon Route 53 submits an HTTPS request and waits for an HTTP status code of 200 or greater and less than 400.</p> <important> <p>If you specify <code>HTTPS</code> for the value of <code>Type</code>, the endpoint must support TLS v1.0 or later.</p> </important> </li> <li> <p> <b>HTTP_STR_MATCH</b>: Amazon Route 53 tries to establish a TCP connection. If successful, Amazon Route 53 submits an HTTP request and searches the first 5,120 bytes of the response body for the string that you specify in <code>SearchString</code>.</p> </li> <li> <p> <b>HTTPS_STR_MATCH</b>: Amazon Route 53 tries to establish a TCP connection. If successful, Amazon Route 53 submits an <code>HTTPS</code> request and searches the first 5,120 bytes of the response body for the string that you specify in <code>SearchString</code>.</p> </li> <li> <p> <b>TCP</b>: Amazon Route 53 tries to establish a TCP connection.</p> </li> <li> <p> <b>CLOUDWATCH_METRIC</b>: The health check is associated with a CloudWatch alarm. If the state of the alarm is <code>OK</code>, the health check is considered healthy. If the state is <code>ALARM</code>, the health check is considered unhealthy. If CloudWatch doesn't have sufficient data to determine whether the state is <code>OK</code> or <code>ALARM</code>, the health check status depends on the setting for <code>InsufficientDataHealthStatus</code>: <code>Healthy</code>, <code>Unhealthy</code>, or <code>LastKnownStatus</code>. </p> </li> <li> <p> <b>CALCULATED</b>: For health checks that monitor the status of other health checks, Amazon Route 53 adds up the number of health checks that Amazon Route 53 health checkers consider to be healthy and compares that number with the value of <code>HealthThreshold</code>. </p> </li> </ul> <p>For more information, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-determining-health-of-endpoints.html">How Amazon Route 53 Determines Whether an Endpoint Is Healthy</a> in the <i>Amazon Route 53 Developer Guide</i>.</p>
-- * Port [Port] <p>The port on the endpoint on which you want Amazon Route 53 to perform health checks. Specify a value for <code>Port</code> only when you specify a value for <code>IPAddress</code>.</p>
-- * FullyQualifiedDomainName [FullyQualifiedDomainName] <p>Amazon Route 53 behavior depends on whether you specify a value for <code>IPAddress</code>.</p> <p> <b>If you specify a value for</b> <code>IPAddress</code>:</p> <p>Amazon Route 53 sends health check requests to the specified IPv4 or IPv6 address and passes the value of <code>FullyQualifiedDomainName</code> in the <code>Host</code> header for all health checks except TCP health checks. This is typically the fully qualified DNS name of the endpoint on which you want Amazon Route 53 to perform health checks.</p> <p>When Amazon Route 53 checks the health of an endpoint, here is how it constructs the <code>Host</code> header:</p> <ul> <li> <p>If you specify a value of <code>80</code> for <code>Port</code> and <code>HTTP</code> or <code>HTTP_STR_MATCH</code> for <code>Type</code>, Amazon Route 53 passes the value of <code>FullyQualifiedDomainName</code> to the endpoint in the Host header. </p> </li> <li> <p>If you specify a value of <code>443</code> for <code>Port</code> and <code>HTTPS</code> or <code>HTTPS_STR_MATCH</code> for <code>Type</code>, Amazon Route 53 passes the value of <code>FullyQualifiedDomainName</code> to the endpoint in the <code>Host</code> header.</p> </li> <li> <p>If you specify another value for <code>Port</code> and any value except <code>TCP</code> for <code>Type</code>, Amazon Route 53 passes <code>FullyQualifiedDomainName:Port</code> to the endpoint in the <code>Host</code> header.</p> </li> </ul> <p>If you don't specify a value for <code>FullyQualifiedDomainName</code>, Amazon Route 53 substitutes the value of <code>IPAddress</code> in the <code>Host</code> header in each of the preceding cases.</p> <p> <b>If you don't specify a value for <code>IPAddress</code> </b>:</p> <p>Amazon Route 53 sends a DNS request to the domain that you specify for <code>FullyQualifiedDomainName</code> at the interval that you specify for <code>RequestInterval</code>. Using an IPv4 address that DNS returns, Amazon Route 53 then checks the health of the endpoint.</p> <note> <p>If you don't specify a value for <code>IPAddress</code>, Amazon Route 53 uses only IPv4 to send health checks to the endpoint. If there's no resource record set with a type of A for the name that you specify for <code>FullyQualifiedDomainName</code>, the health check fails with a "DNS resolution failed" error.</p> </note> <p>If you want to check the health of weighted, latency, or failover resource record sets and you choose to specify the endpoint only by <code>FullyQualifiedDomainName</code>, we recommend that you create a separate health check for each endpoint. For example, create a health check for each HTTP server that is serving content for www.example.com. For the value of <code>FullyQualifiedDomainName</code>, specify the domain name of the server (such as us-east-2-www.example.com), not the name of the resource record sets (www.example.com).</p> <important> <p>In this configuration, if you create a health check for which the value of <code>FullyQualifiedDomainName</code> matches the name of the resource record sets and you then associate the health check with those resource record sets, health check results will be unpredictable.</p> </important> <p>In addition, if the value that you specify for <code>Type</code> is <code>HTTP</code>, <code>HTTPS</code>, <code>HTTP_STR_MATCH</code>, or <code>HTTPS_STR_MATCH</code>, Amazon Route 53 passes the value of <code>FullyQualifiedDomainName</code> in the <code>Host</code> header, as it does when you specify a value for <code>IPAddress</code>. If the value of <code>Type</code> is <code>TCP</code>, Amazon Route 53 doesn't pass a <code>Host</code> header.</p>
-- Required key: Type
-- @return HealthCheckConfig structure as a key-value pair table
function M.HealthCheckConfig(args)
	assert(args, "You must provdide an argument table when creating HealthCheckConfig")
	local t = { 
		["FailureThreshold"] = args["FailureThreshold"],
		["SearchString"] = args["SearchString"],
		["AlarmIdentifier"] = args["AlarmIdentifier"],
		["IPAddress"] = args["IPAddress"],
		["ResourcePath"] = args["ResourcePath"],
		["ChildHealthChecks"] = args["ChildHealthChecks"],
		["Inverted"] = args["Inverted"],
		["Regions"] = args["Regions"],
		["InsufficientDataHealthStatus"] = args["InsufficientDataHealthStatus"],
		["HealthThreshold"] = args["HealthThreshold"],
		["EnableSNI"] = args["EnableSNI"],
		["MeasureLatency"] = args["MeasureLatency"],
		["RequestInterval"] = args["RequestInterval"],
		["Type"] = args["Type"],
		["Port"] = args["Port"],
		["FullyQualifiedDomainName"] = args["FullyQualifiedDomainName"],
	}
	asserts.AssertHealthCheckConfig(t)
	return t
end

keys.NotAuthorizedException = { ["message"] = true, nil }

function asserts.AssertNotAuthorizedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotAuthorizedException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.NotAuthorizedException[k], "NotAuthorizedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotAuthorizedException
-- <p>Associating the specified VPC with the specified hosted zone has not been authorized.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>Descriptive message for the error response.</p>
-- @return NotAuthorizedException structure as a key-value pair table
function M.NotAuthorizedException(args)
	assert(args, "You must provdide an argument table when creating NotAuthorizedException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertNotAuthorizedException(t)
	return t
end

keys.GetCheckerIpRangesResponse = { ["CheckerIpRanges"] = true, nil }

function asserts.AssertGetCheckerIpRangesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCheckerIpRangesResponse to be of type 'table'")
	assert(struct["CheckerIpRanges"], "Expected key CheckerIpRanges to exist in table")
	if struct["CheckerIpRanges"] then asserts.AssertCheckerIpRanges(struct["CheckerIpRanges"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCheckerIpRangesResponse[k], "GetCheckerIpRangesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCheckerIpRangesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CheckerIpRanges [CheckerIpRanges] 
-- Required key: CheckerIpRanges
-- @return GetCheckerIpRangesResponse structure as a key-value pair table
function M.GetCheckerIpRangesResponse(args)
	assert(args, "You must provdide an argument table when creating GetCheckerIpRangesResponse")
	local t = { 
		["CheckerIpRanges"] = args["CheckerIpRanges"],
	}
	asserts.AssertGetCheckerIpRangesResponse(t)
	return t
end

keys.InvalidDomainName = { ["message"] = true, nil }

function asserts.AssertInvalidDomainName(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidDomainName to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidDomainName[k], "InvalidDomainName contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidDomainName
-- <p>The specified domain name is not valid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>Descriptive message for the error response.</p>
-- @return InvalidDomainName structure as a key-value pair table
function M.InvalidDomainName(args)
	assert(args, "You must provdide an argument table when creating InvalidDomainName")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidDomainName(t)
	return t
end

keys.DeleteVPCAssociationAuthorizationRequest = { ["HostedZoneId"] = true, ["VPC"] = true, nil }

function asserts.AssertDeleteVPCAssociationAuthorizationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteVPCAssociationAuthorizationRequest to be of type 'table'")
	assert(struct["HostedZoneId"], "Expected key HostedZoneId to exist in table")
	assert(struct["VPC"], "Expected key VPC to exist in table")
	if struct["HostedZoneId"] then asserts.AssertResourceId(struct["HostedZoneId"]) end
	if struct["VPC"] then asserts.AssertVPC(struct["VPC"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteVPCAssociationAuthorizationRequest[k], "DeleteVPCAssociationAuthorizationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteVPCAssociationAuthorizationRequest
-- <p>A complex type that contains information about the request to remove authorization to associate a VPC that was created by one AWS account with a hosted zone that was created with a different AWS account. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HostedZoneId [ResourceId] <p>When removing authorization to associate a VPC that was created by one AWS account with a hosted zone that was created with a different AWS account, the ID of the hosted zone.</p>
-- * VPC [VPC] <p>When removing authorization to associate a VPC that was created by one AWS account with a hosted zone that was created with a different AWS account, a complex type that includes the ID and region of the VPC.</p>
-- Required key: HostedZoneId
-- Required key: VPC
-- @return DeleteVPCAssociationAuthorizationRequest structure as a key-value pair table
function M.DeleteVPCAssociationAuthorizationRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteVPCAssociationAuthorizationRequest")
	local t = { 
		["HostedZoneId"] = args["HostedZoneId"],
		["VPC"] = args["VPC"],
	}
	asserts.AssertDeleteVPCAssociationAuthorizationRequest(t)
	return t
end

keys.ThrottlingException = { ["message"] = true, nil }

function asserts.AssertThrottlingException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ThrottlingException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ThrottlingException[k], "ThrottlingException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ThrottlingException
-- <p>The limit on the number of requests per second was exceeded.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return ThrottlingException structure as a key-value pair table
function M.ThrottlingException(args)
	assert(args, "You must provdide an argument table when creating ThrottlingException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertThrottlingException(t)
	return t
end

keys.ListGeoLocationsResponse = { ["GeoLocationDetailsList"] = true, ["NextSubdivisionCode"] = true, ["NextCountryCode"] = true, ["MaxItems"] = true, ["NextContinentCode"] = true, ["IsTruncated"] = true, nil }

function asserts.AssertListGeoLocationsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListGeoLocationsResponse to be of type 'table'")
	assert(struct["GeoLocationDetailsList"], "Expected key GeoLocationDetailsList to exist in table")
	assert(struct["IsTruncated"], "Expected key IsTruncated to exist in table")
	assert(struct["MaxItems"], "Expected key MaxItems to exist in table")
	if struct["GeoLocationDetailsList"] then asserts.AssertGeoLocationDetailsList(struct["GeoLocationDetailsList"]) end
	if struct["NextSubdivisionCode"] then asserts.AssertGeoLocationSubdivisionCode(struct["NextSubdivisionCode"]) end
	if struct["NextCountryCode"] then asserts.AssertGeoLocationCountryCode(struct["NextCountryCode"]) end
	if struct["MaxItems"] then asserts.AssertPageMaxItems(struct["MaxItems"]) end
	if struct["NextContinentCode"] then asserts.AssertGeoLocationContinentCode(struct["NextContinentCode"]) end
	if struct["IsTruncated"] then asserts.AssertPageTruncated(struct["IsTruncated"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListGeoLocationsResponse[k], "ListGeoLocationsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListGeoLocationsResponse
-- <p>A complex type containing the response information for the request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GeoLocationDetailsList [GeoLocationDetailsList] <p>A complex type that contains one <code>GeoLocationDetails</code> element for each location that Amazon Route 53 supports for geolocation.</p>
-- * NextSubdivisionCode [GeoLocationSubdivisionCode] <p>If <code>IsTruncated</code> is <code>true</code>, you can make a follow-up request to display more locations. Enter the value of <code>NextSubdivisionCode</code> in the <code>StartSubdivisionCode</code> parameter in another <code>ListGeoLocations</code> request.</p>
-- * NextCountryCode [GeoLocationCountryCode] <p>If <code>IsTruncated</code> is <code>true</code>, you can make a follow-up request to display more locations. Enter the value of <code>NextCountryCode</code> in the <code>StartCountryCode</code> parameter in another <code>ListGeoLocations</code> request.</p>
-- * MaxItems [PageMaxItems] <p>The value that you specified for <code>MaxItems</code> in the request.</p>
-- * NextContinentCode [GeoLocationContinentCode] <p>If <code>IsTruncated</code> is <code>true</code>, you can make a follow-up request to display more locations. Enter the value of <code>NextContinentCode</code> in the <code>StartContinentCode</code> parameter in another <code>ListGeoLocations</code> request.</p>
-- * IsTruncated [PageTruncated] <p>A value that indicates whether more locations remain to be listed after the last location in this response. If so, the value of <code>IsTruncated</code> is <code>true</code>. To get more values, submit another request and include the values of <code>NextContinentCode</code>, <code>NextCountryCode</code>, and <code>NextSubdivisionCode</code> in the <code>StartContinentCode</code>, <code>StartCountryCode</code>, and <code>StartSubdivisionCode</code>, as applicable.</p>
-- Required key: GeoLocationDetailsList
-- Required key: IsTruncated
-- Required key: MaxItems
-- @return ListGeoLocationsResponse structure as a key-value pair table
function M.ListGeoLocationsResponse(args)
	assert(args, "You must provdide an argument table when creating ListGeoLocationsResponse")
	local t = { 
		["GeoLocationDetailsList"] = args["GeoLocationDetailsList"],
		["NextSubdivisionCode"] = args["NextSubdivisionCode"],
		["NextCountryCode"] = args["NextCountryCode"],
		["MaxItems"] = args["MaxItems"],
		["NextContinentCode"] = args["NextContinentCode"],
		["IsTruncated"] = args["IsTruncated"],
	}
	asserts.AssertListGeoLocationsResponse(t)
	return t
end

keys.CreateTrafficPolicyInstanceResponse = { ["TrafficPolicyInstance"] = true, ["Location"] = true, nil }

function asserts.AssertCreateTrafficPolicyInstanceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTrafficPolicyInstanceResponse to be of type 'table'")
	assert(struct["TrafficPolicyInstance"], "Expected key TrafficPolicyInstance to exist in table")
	assert(struct["Location"], "Expected key Location to exist in table")
	if struct["TrafficPolicyInstance"] then asserts.AssertTrafficPolicyInstance(struct["TrafficPolicyInstance"]) end
	if struct["Location"] then asserts.AssertResourceURI(struct["Location"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateTrafficPolicyInstanceResponse[k], "CreateTrafficPolicyInstanceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTrafficPolicyInstanceResponse
-- <p>A complex type that contains the response information for the <code>CreateTrafficPolicyInstance</code> request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TrafficPolicyInstance [TrafficPolicyInstance] <p>A complex type that contains settings for the new traffic policy instance.</p>
-- * Location [ResourceURI] <p>A unique URL that represents a new traffic policy instance.</p>
-- Required key: TrafficPolicyInstance
-- Required key: Location
-- @return CreateTrafficPolicyInstanceResponse structure as a key-value pair table
function M.CreateTrafficPolicyInstanceResponse(args)
	assert(args, "You must provdide an argument table when creating CreateTrafficPolicyInstanceResponse")
	local t = { 
		["TrafficPolicyInstance"] = args["TrafficPolicyInstance"],
		["Location"] = args["Location"],
	}
	asserts.AssertCreateTrafficPolicyInstanceResponse(t)
	return t
end

keys.GetHostedZoneCountResponse = { ["HostedZoneCount"] = true, nil }

function asserts.AssertGetHostedZoneCountResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetHostedZoneCountResponse to be of type 'table'")
	assert(struct["HostedZoneCount"], "Expected key HostedZoneCount to exist in table")
	if struct["HostedZoneCount"] then asserts.AssertHostedZoneCount(struct["HostedZoneCount"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetHostedZoneCountResponse[k], "GetHostedZoneCountResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetHostedZoneCountResponse
-- <p>A complex type that contains the response to a <code>GetHostedZoneCount</code> request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HostedZoneCount [HostedZoneCount] <p>The total number of public and private hosted zones that are associated with the current AWS account.</p>
-- Required key: HostedZoneCount
-- @return GetHostedZoneCountResponse structure as a key-value pair table
function M.GetHostedZoneCountResponse(args)
	assert(args, "You must provdide an argument table when creating GetHostedZoneCountResponse")
	local t = { 
		["HostedZoneCount"] = args["HostedZoneCount"],
	}
	asserts.AssertGetHostedZoneCountResponse(t)
	return t
end

keys.ListVPCAssociationAuthorizationsRequest = { ["HostedZoneId"] = true, ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListVPCAssociationAuthorizationsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListVPCAssociationAuthorizationsRequest to be of type 'table'")
	assert(struct["HostedZoneId"], "Expected key HostedZoneId to exist in table")
	if struct["HostedZoneId"] then asserts.AssertResourceId(struct["HostedZoneId"]) end
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListVPCAssociationAuthorizationsRequest[k], "ListVPCAssociationAuthorizationsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListVPCAssociationAuthorizationsRequest
-- <p>A complex type that contains information about that can be associated with your hosted zone.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HostedZoneId [ResourceId] <p>The ID of the hosted zone for which you want a list of VPCs that can be associated with the hosted zone.</p>
-- * NextToken [PaginationToken] <p> <i>Optional</i>: If a response includes a <code>NextToken</code> element, there are more VPCs that can be associated with the specified hosted zone. To get the next page of results, submit another request, and include the value of <code>NextToken</code> from the response in the <code>nexttoken</code> parameter in another <code>ListVPCAssociationAuthorizations</code> request.</p>
-- * MaxResults [MaxResults] <p> <i>Optional</i>: An integer that specifies the maximum number of VPCs that you want Amazon Route 53 to return. If you don't specify a value for <code>MaxResults</code>, Amazon Route 53 returns up to 50 VPCs per page.</p>
-- Required key: HostedZoneId
-- @return ListVPCAssociationAuthorizationsRequest structure as a key-value pair table
function M.ListVPCAssociationAuthorizationsRequest(args)
	assert(args, "You must provdide an argument table when creating ListVPCAssociationAuthorizationsRequest")
	local t = { 
		["HostedZoneId"] = args["HostedZoneId"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListVPCAssociationAuthorizationsRequest(t)
	return t
end

keys.HealthCheck = { ["HealthCheckConfig"] = true, ["CallerReference"] = true, ["HealthCheckVersion"] = true, ["Id"] = true, ["CloudWatchAlarmConfiguration"] = true, nil }

function asserts.AssertHealthCheck(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HealthCheck to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["CallerReference"], "Expected key CallerReference to exist in table")
	assert(struct["HealthCheckConfig"], "Expected key HealthCheckConfig to exist in table")
	assert(struct["HealthCheckVersion"], "Expected key HealthCheckVersion to exist in table")
	if struct["HealthCheckConfig"] then asserts.AssertHealthCheckConfig(struct["HealthCheckConfig"]) end
	if struct["CallerReference"] then asserts.AssertHealthCheckNonce(struct["CallerReference"]) end
	if struct["HealthCheckVersion"] then asserts.AssertHealthCheckVersion(struct["HealthCheckVersion"]) end
	if struct["Id"] then asserts.AssertHealthCheckId(struct["Id"]) end
	if struct["CloudWatchAlarmConfiguration"] then asserts.AssertCloudWatchAlarmConfiguration(struct["CloudWatchAlarmConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(keys.HealthCheck[k], "HealthCheck contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HealthCheck
-- <p>A complex type that contains information about one health check that is associated with the current AWS account.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HealthCheckConfig [HealthCheckConfig] <p>A complex type that contains detailed information about one health check.</p>
-- * CallerReference [HealthCheckNonce] <p>A unique string that you specified when you created the health check.</p>
-- * HealthCheckVersion [HealthCheckVersion] <p>The version of the health check. You can optionally pass this value in a call to <code>UpdateHealthCheck</code> to prevent overwriting another change to the health check.</p>
-- * Id [HealthCheckId] <p>The identifier that Amazon Route 53assigned to the health check when you created it. When you add or update a resource record set, you use this value to specify which health check to use. The value can be up to 64 characters long. </p>
-- * CloudWatchAlarmConfiguration [CloudWatchAlarmConfiguration] <p>A complex type that contains information about the CloudWatch alarm that Amazon Route 53 is monitoring for this health check.</p>
-- Required key: Id
-- Required key: CallerReference
-- Required key: HealthCheckConfig
-- Required key: HealthCheckVersion
-- @return HealthCheck structure as a key-value pair table
function M.HealthCheck(args)
	assert(args, "You must provdide an argument table when creating HealthCheck")
	local t = { 
		["HealthCheckConfig"] = args["HealthCheckConfig"],
		["CallerReference"] = args["CallerReference"],
		["HealthCheckVersion"] = args["HealthCheckVersion"],
		["Id"] = args["Id"],
		["CloudWatchAlarmConfiguration"] = args["CloudWatchAlarmConfiguration"],
	}
	asserts.AssertHealthCheck(t)
	return t
end

keys.DisassociateVPCFromHostedZoneResponse = { ["ChangeInfo"] = true, nil }

function asserts.AssertDisassociateVPCFromHostedZoneResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateVPCFromHostedZoneResponse to be of type 'table'")
	assert(struct["ChangeInfo"], "Expected key ChangeInfo to exist in table")
	if struct["ChangeInfo"] then asserts.AssertChangeInfo(struct["ChangeInfo"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisassociateVPCFromHostedZoneResponse[k], "DisassociateVPCFromHostedZoneResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateVPCFromHostedZoneResponse
-- <p>A complex type that contains the response information for the disassociate request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChangeInfo [ChangeInfo] <p>A complex type that describes the changes made to the specified private hosted zone.</p>
-- Required key: ChangeInfo
-- @return DisassociateVPCFromHostedZoneResponse structure as a key-value pair table
function M.DisassociateVPCFromHostedZoneResponse(args)
	assert(args, "You must provdide an argument table when creating DisassociateVPCFromHostedZoneResponse")
	local t = { 
		["ChangeInfo"] = args["ChangeInfo"],
	}
	asserts.AssertDisassociateVPCFromHostedZoneResponse(t)
	return t
end

keys.CreateReusableDelegationSetResponse = { ["Location"] = true, ["DelegationSet"] = true, nil }

function asserts.AssertCreateReusableDelegationSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateReusableDelegationSetResponse to be of type 'table'")
	assert(struct["DelegationSet"], "Expected key DelegationSet to exist in table")
	assert(struct["Location"], "Expected key Location to exist in table")
	if struct["Location"] then asserts.AssertResourceURI(struct["Location"]) end
	if struct["DelegationSet"] then asserts.AssertDelegationSet(struct["DelegationSet"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateReusableDelegationSetResponse[k], "CreateReusableDelegationSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateReusableDelegationSetResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Location [ResourceURI] <p>The unique URL representing the new reusable delegation set.</p>
-- * DelegationSet [DelegationSet] <p>A complex type that contains name server information.</p>
-- Required key: DelegationSet
-- Required key: Location
-- @return CreateReusableDelegationSetResponse structure as a key-value pair table
function M.CreateReusableDelegationSetResponse(args)
	assert(args, "You must provdide an argument table when creating CreateReusableDelegationSetResponse")
	local t = { 
		["Location"] = args["Location"],
		["DelegationSet"] = args["DelegationSet"],
	}
	asserts.AssertCreateReusableDelegationSetResponse(t)
	return t
end

keys.ListHealthChecksRequest = { ["Marker"] = true, ["MaxItems"] = true, nil }

function asserts.AssertListHealthChecksRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListHealthChecksRequest to be of type 'table'")
	if struct["Marker"] then asserts.AssertPageMarker(struct["Marker"]) end
	if struct["MaxItems"] then asserts.AssertPageMaxItems(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListHealthChecksRequest[k], "ListHealthChecksRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListHealthChecksRequest
-- <p>A request to retrieve a list of the health checks that are associated with the current AWS account.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [PageMarker] <p>If the value of <code>IsTruncated</code> in the previous response was <code>true</code>, you have more health checks. To get another group, submit another <code>ListHealthChecks</code> request. </p> <p>For the value of <code>marker</code>, specify the value of <code>NextMarker</code> from the previous response, which is the ID of the first health check that Amazon Route 53 will return if you submit another request.</p> <p>If the value of <code>IsTruncated</code> in the previous response was <code>false</code>, there are no more health checks to get.</p>
-- * MaxItems [PageMaxItems] <p>The maximum number of health checks that you want <code>ListHealthChecks</code> to return in response to the current request. Amazon Route 53 returns a maximum of 100 items. If you set <code>MaxItems</code> to a value greater than 100, Amazon Route 53 returns only the first 100 health checks. </p>
-- @return ListHealthChecksRequest structure as a key-value pair table
function M.ListHealthChecksRequest(args)
	assert(args, "You must provdide an argument table when creating ListHealthChecksRequest")
	local t = { 
		["Marker"] = args["Marker"],
		["MaxItems"] = args["MaxItems"],
	}
	asserts.AssertListHealthChecksRequest(t)
	return t
end

keys.ChangeResourceRecordSetsResponse = { ["ChangeInfo"] = true, nil }

function asserts.AssertChangeResourceRecordSetsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ChangeResourceRecordSetsResponse to be of type 'table'")
	assert(struct["ChangeInfo"], "Expected key ChangeInfo to exist in table")
	if struct["ChangeInfo"] then asserts.AssertChangeInfo(struct["ChangeInfo"]) end
	for k,_ in pairs(struct) do
		assert(keys.ChangeResourceRecordSetsResponse[k], "ChangeResourceRecordSetsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ChangeResourceRecordSetsResponse
-- <p>A complex type containing the response for the request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChangeInfo [ChangeInfo] <p>A complex type that contains information about changes made to your hosted zone.</p> <p>This element contains an ID that you use when performing a <a>GetChange</a> action to get detailed information about the change.</p>
-- Required key: ChangeInfo
-- @return ChangeResourceRecordSetsResponse structure as a key-value pair table
function M.ChangeResourceRecordSetsResponse(args)
	assert(args, "You must provdide an argument table when creating ChangeResourceRecordSetsResponse")
	local t = { 
		["ChangeInfo"] = args["ChangeInfo"],
	}
	asserts.AssertChangeResourceRecordSetsResponse(t)
	return t
end

keys.DisassociateVPCFromHostedZoneRequest = { ["HostedZoneId"] = true, ["Comment"] = true, ["VPC"] = true, nil }

function asserts.AssertDisassociateVPCFromHostedZoneRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateVPCFromHostedZoneRequest to be of type 'table'")
	assert(struct["HostedZoneId"], "Expected key HostedZoneId to exist in table")
	assert(struct["VPC"], "Expected key VPC to exist in table")
	if struct["HostedZoneId"] then asserts.AssertResourceId(struct["HostedZoneId"]) end
	if struct["Comment"] then asserts.AssertDisassociateVPCComment(struct["Comment"]) end
	if struct["VPC"] then asserts.AssertVPC(struct["VPC"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisassociateVPCFromHostedZoneRequest[k], "DisassociateVPCFromHostedZoneRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateVPCFromHostedZoneRequest
-- <p>A complex type that contains information about the VPC that you want to disassociate from a specified private hosted zone.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HostedZoneId [ResourceId] <p>The ID of the private hosted zone that you want to disassociate a VPC from.</p>
-- * Comment [DisassociateVPCComment] <p> <i>Optional:</i> A comment about the disassociation request.</p>
-- * VPC [VPC] <p>A complex type that contains information about the VPC that you're disassociating from the specified hosted zone.</p>
-- Required key: HostedZoneId
-- Required key: VPC
-- @return DisassociateVPCFromHostedZoneRequest structure as a key-value pair table
function M.DisassociateVPCFromHostedZoneRequest(args)
	assert(args, "You must provdide an argument table when creating DisassociateVPCFromHostedZoneRequest")
	local t = { 
		["HostedZoneId"] = args["HostedZoneId"],
		["Comment"] = args["Comment"],
		["VPC"] = args["VPC"],
	}
	asserts.AssertDisassociateVPCFromHostedZoneRequest(t)
	return t
end

keys.TestDNSAnswerRequest = { ["ResolverIP"] = true, ["RecordType"] = true, ["RecordName"] = true, ["EDNS0ClientSubnetMask"] = true, ["EDNS0ClientSubnetIP"] = true, ["HostedZoneId"] = true, nil }

function asserts.AssertTestDNSAnswerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TestDNSAnswerRequest to be of type 'table'")
	assert(struct["HostedZoneId"], "Expected key HostedZoneId to exist in table")
	assert(struct["RecordName"], "Expected key RecordName to exist in table")
	assert(struct["RecordType"], "Expected key RecordType to exist in table")
	if struct["ResolverIP"] then asserts.AssertIPAddress(struct["ResolverIP"]) end
	if struct["RecordType"] then asserts.AssertRRType(struct["RecordType"]) end
	if struct["RecordName"] then asserts.AssertDNSName(struct["RecordName"]) end
	if struct["EDNS0ClientSubnetMask"] then asserts.AssertSubnetMask(struct["EDNS0ClientSubnetMask"]) end
	if struct["EDNS0ClientSubnetIP"] then asserts.AssertIPAddress(struct["EDNS0ClientSubnetIP"]) end
	if struct["HostedZoneId"] then asserts.AssertResourceId(struct["HostedZoneId"]) end
	for k,_ in pairs(struct) do
		assert(keys.TestDNSAnswerRequest[k], "TestDNSAnswerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TestDNSAnswerRequest
-- <p>Gets the value that Amazon Route 53 returns in response to a DNS request for a specified record name and type. You can optionally specify the IP address of a DNS resolver, an EDNS0 client subnet IP address, and a subnet mask. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResolverIP [IPAddress] <p>If you want to simulate a request from a specific DNS resolver, specify the IP address for that resolver. If you omit this value, <code>TestDnsAnswer</code> uses the IP address of a DNS resolver in the AWS US East (N. Virginia) Region (<code>us-east-1</code>).</p>
-- * RecordType [RRType] <p>The type of the resource record set.</p>
-- * RecordName [DNSName] <p>The name of the resource record set that you want Amazon Route 53 to simulate a query for.</p>
-- * EDNS0ClientSubnetMask [SubnetMask] <p>If you specify an IP address for <code>edns0clientsubnetip</code>, you can optionally specify the number of bits of the IP address that you want the checking tool to include in the DNS query. For example, if you specify <code>192.0.2.44</code> for <code>edns0clientsubnetip</code> and <code>24</code> for <code>edns0clientsubnetmask</code>, the checking tool will simulate a request from 192.0.2.0/24. The default value is 24 bits for IPv4 addresses and 64 bits for IPv6 addresses.</p>
-- * EDNS0ClientSubnetIP [IPAddress] <p>If the resolver that you specified for resolverip supports EDNS0, specify the IPv4 or IPv6 address of a client in the applicable location, for example, <code>192.0.2.44</code> or <code>2001:db8:85a3::8a2e:370:7334</code>.</p>
-- * HostedZoneId [ResourceId] <p>The ID of the hosted zone that you want Amazon Route 53 to simulate a query for.</p>
-- Required key: HostedZoneId
-- Required key: RecordName
-- Required key: RecordType
-- @return TestDNSAnswerRequest structure as a key-value pair table
function M.TestDNSAnswerRequest(args)
	assert(args, "You must provdide an argument table when creating TestDNSAnswerRequest")
	local t = { 
		["ResolverIP"] = args["ResolverIP"],
		["RecordType"] = args["RecordType"],
		["RecordName"] = args["RecordName"],
		["EDNS0ClientSubnetMask"] = args["EDNS0ClientSubnetMask"],
		["EDNS0ClientSubnetIP"] = args["EDNS0ClientSubnetIP"],
		["HostedZoneId"] = args["HostedZoneId"],
	}
	asserts.AssertTestDNSAnswerRequest(t)
	return t
end

keys.TrafficPolicyInstance = { ["Name"] = true, ["TrafficPolicyVersion"] = true, ["TrafficPolicyType"] = true, ["State"] = true, ["TrafficPolicyId"] = true, ["TTL"] = true, ["HostedZoneId"] = true, ["Message"] = true, ["Id"] = true, nil }

function asserts.AssertTrafficPolicyInstance(struct)
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
	if struct["Name"] then asserts.AssertDNSName(struct["Name"]) end
	if struct["TrafficPolicyVersion"] then asserts.AssertTrafficPolicyVersion(struct["TrafficPolicyVersion"]) end
	if struct["TrafficPolicyType"] then asserts.AssertRRType(struct["TrafficPolicyType"]) end
	if struct["State"] then asserts.AssertTrafficPolicyInstanceState(struct["State"]) end
	if struct["TrafficPolicyId"] then asserts.AssertTrafficPolicyId(struct["TrafficPolicyId"]) end
	if struct["TTL"] then asserts.AssertTTL(struct["TTL"]) end
	if struct["HostedZoneId"] then asserts.AssertResourceId(struct["HostedZoneId"]) end
	if struct["Message"] then asserts.AssertMessage(struct["Message"]) end
	if struct["Id"] then asserts.AssertTrafficPolicyInstanceId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.TrafficPolicyInstance[k], "TrafficPolicyInstance contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TrafficPolicyInstance
-- <p>A complex type that contains settings for the new traffic policy instance.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [DNSName] <p>The DNS name, such as www.example.com, for which Amazon Route 53 responds to queries by using the resource record sets that are associated with this traffic policy instance. </p>
-- * TrafficPolicyVersion [TrafficPolicyVersion] <p>The version of the traffic policy that Amazon Route 53 used to create resource record sets in the specified hosted zone.</p>
-- * TrafficPolicyType [RRType] <p>The DNS type that Amazon Route 53 assigned to all of the resource record sets that it created for this traffic policy instance. </p>
-- * State [TrafficPolicyInstanceState] <p>The value of <code>State</code> is one of the following values:</p> <dl> <dt>Applied</dt> <dd> <p>Amazon Route 53 has finished creating resource record sets, and changes have propagated to all Amazon Route 53 edge locations.</p> </dd> <dt>Creating</dt> <dd> <p>Amazon Route 53 is creating the resource record sets. Use <code>GetTrafficPolicyInstance</code> to confirm that the <code>CreateTrafficPolicyInstance</code> request completed successfully.</p> </dd> <dt>Failed</dt> <dd> <p>Amazon Route 53 wasn't able to create or update the resource record sets. When the value of <code>State</code> is <code>Failed</code>, see <code>Message</code> for an explanation of what caused the request to fail.</p> </dd> </dl>
-- * TrafficPolicyId [TrafficPolicyId] <p>The ID of the traffic policy that Amazon Route 53 used to create resource record sets in the specified hosted zone.</p>
-- * TTL [TTL] <p>The TTL that Amazon Route 53 assigned to all of the resource record sets that it created in the specified hosted zone.</p>
-- * HostedZoneId [ResourceId] <p>The ID of the hosted zone that Amazon Route 53 created resource record sets in.</p>
-- * Message [Message] <p>If <code>State</code> is <code>Failed</code>, an explanation of the reason for the failure. If <code>State</code> is another value, <code>Message</code> is empty.</p>
-- * Id [TrafficPolicyInstanceId] <p>The ID that Amazon Route 53 assigned to the new traffic policy instance.</p>
-- Required key: Id
-- Required key: HostedZoneId
-- Required key: Name
-- Required key: TTL
-- Required key: State
-- Required key: Message
-- Required key: TrafficPolicyId
-- Required key: TrafficPolicyVersion
-- Required key: TrafficPolicyType
-- @return TrafficPolicyInstance structure as a key-value pair table
function M.TrafficPolicyInstance(args)
	assert(args, "You must provdide an argument table when creating TrafficPolicyInstance")
	local t = { 
		["Name"] = args["Name"],
		["TrafficPolicyVersion"] = args["TrafficPolicyVersion"],
		["TrafficPolicyType"] = args["TrafficPolicyType"],
		["State"] = args["State"],
		["TrafficPolicyId"] = args["TrafficPolicyId"],
		["TTL"] = args["TTL"],
		["HostedZoneId"] = args["HostedZoneId"],
		["Message"] = args["Message"],
		["Id"] = args["Id"],
	}
	asserts.AssertTrafficPolicyInstance(t)
	return t
end

keys.TrafficPolicyInUse = { ["message"] = true, nil }

function asserts.AssertTrafficPolicyInUse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TrafficPolicyInUse to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.TrafficPolicyInUse[k], "TrafficPolicyInUse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TrafficPolicyInUse
-- <p>One or more traffic policy instances were created by using the specified traffic policy.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>Descriptive message for the error response.</p>
-- @return TrafficPolicyInUse structure as a key-value pair table
function M.TrafficPolicyInUse(args)
	assert(args, "You must provdide an argument table when creating TrafficPolicyInUse")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertTrafficPolicyInUse(t)
	return t
end

keys.ChangeInfo = { ["Status"] = true, ["Comment"] = true, ["SubmittedAt"] = true, ["Id"] = true, nil }

function asserts.AssertChangeInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ChangeInfo to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	assert(struct["SubmittedAt"], "Expected key SubmittedAt to exist in table")
	if struct["Status"] then asserts.AssertChangeStatus(struct["Status"]) end
	if struct["Comment"] then asserts.AssertResourceDescription(struct["Comment"]) end
	if struct["SubmittedAt"] then asserts.AssertTimeStamp(struct["SubmittedAt"]) end
	if struct["Id"] then asserts.AssertResourceId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.ChangeInfo[k], "ChangeInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ChangeInfo
-- <p>A complex type that describes change information about changes made to your hosted zone.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [ChangeStatus] <p>The current state of the request. <code>PENDING</code> indicates that this request has not yet been applied to all Amazon Route 53 DNS servers.</p>
-- * Comment [ResourceDescription] <p>A complex type that describes change information about changes made to your hosted zone.</p> <p>This element contains an ID that you use when performing a <a>GetChange</a> action to get detailed information about the change.</p>
-- * SubmittedAt [TimeStamp] <p>The date and time that the change request was submitted in <a href="https://en.wikipedia.org/wiki/ISO_8601">ISO 8601 format</a> and Coordinated Universal Time (UTC). For example, the value <code>2017-03-27T17:48:16.751Z</code> represents March 27, 2017 at 17:48:16.751 UTC.</p>
-- * Id [ResourceId] <p>The ID of the request.</p>
-- Required key: Id
-- Required key: Status
-- Required key: SubmittedAt
-- @return ChangeInfo structure as a key-value pair table
function M.ChangeInfo(args)
	assert(args, "You must provdide an argument table when creating ChangeInfo")
	local t = { 
		["Status"] = args["Status"],
		["Comment"] = args["Comment"],
		["SubmittedAt"] = args["SubmittedAt"],
		["Id"] = args["Id"],
	}
	asserts.AssertChangeInfo(t)
	return t
end

keys.ListTrafficPolicyInstancesByHostedZoneResponse = { ["TrafficPolicyInstanceTypeMarker"] = true, ["TrafficPolicyInstanceNameMarker"] = true, ["TrafficPolicyInstances"] = true, ["MaxItems"] = true, ["IsTruncated"] = true, nil }

function asserts.AssertListTrafficPolicyInstancesByHostedZoneResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTrafficPolicyInstancesByHostedZoneResponse to be of type 'table'")
	assert(struct["TrafficPolicyInstances"], "Expected key TrafficPolicyInstances to exist in table")
	assert(struct["IsTruncated"], "Expected key IsTruncated to exist in table")
	assert(struct["MaxItems"], "Expected key MaxItems to exist in table")
	if struct["TrafficPolicyInstanceTypeMarker"] then asserts.AssertRRType(struct["TrafficPolicyInstanceTypeMarker"]) end
	if struct["TrafficPolicyInstanceNameMarker"] then asserts.AssertDNSName(struct["TrafficPolicyInstanceNameMarker"]) end
	if struct["TrafficPolicyInstances"] then asserts.AssertTrafficPolicyInstances(struct["TrafficPolicyInstances"]) end
	if struct["MaxItems"] then asserts.AssertPageMaxItems(struct["MaxItems"]) end
	if struct["IsTruncated"] then asserts.AssertPageTruncated(struct["IsTruncated"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTrafficPolicyInstancesByHostedZoneResponse[k], "ListTrafficPolicyInstancesByHostedZoneResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTrafficPolicyInstancesByHostedZoneResponse
-- <p>A complex type that contains the response information for the request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TrafficPolicyInstanceTypeMarker [RRType] <p>If <code>IsTruncated</code> is true, <code>TrafficPolicyInstanceTypeMarker</code> is the DNS type of the resource record sets that are associated with the first traffic policy instance in the next group of traffic policy instances.</p>
-- * TrafficPolicyInstanceNameMarker [DNSName] <p>If <code>IsTruncated</code> is <code>true</code>, <code>TrafficPolicyInstanceNameMarker</code> is the name of the first traffic policy instance in the next group of traffic policy instances.</p>
-- * TrafficPolicyInstances [TrafficPolicyInstances] <p>A list that contains one <code>TrafficPolicyInstance</code> element for each traffic policy instance that matches the elements in the request. </p>
-- * MaxItems [PageMaxItems] <p>The value that you specified for the <code>MaxItems</code> parameter in the <code>ListTrafficPolicyInstancesByHostedZone</code> request that produced the current response.</p>
-- * IsTruncated [PageTruncated] <p>A flag that indicates whether there are more traffic policy instances to be listed. If the response was truncated, you can get the next group of traffic policy instances by submitting another <code>ListTrafficPolicyInstancesByHostedZone</code> request and specifying the values of <code>HostedZoneIdMarker</code>, <code>TrafficPolicyInstanceNameMarker</code>, and <code>TrafficPolicyInstanceTypeMarker</code> in the corresponding request parameters.</p>
-- Required key: TrafficPolicyInstances
-- Required key: IsTruncated
-- Required key: MaxItems
-- @return ListTrafficPolicyInstancesByHostedZoneResponse structure as a key-value pair table
function M.ListTrafficPolicyInstancesByHostedZoneResponse(args)
	assert(args, "You must provdide an argument table when creating ListTrafficPolicyInstancesByHostedZoneResponse")
	local t = { 
		["TrafficPolicyInstanceTypeMarker"] = args["TrafficPolicyInstanceTypeMarker"],
		["TrafficPolicyInstanceNameMarker"] = args["TrafficPolicyInstanceNameMarker"],
		["TrafficPolicyInstances"] = args["TrafficPolicyInstances"],
		["MaxItems"] = args["MaxItems"],
		["IsTruncated"] = args["IsTruncated"],
	}
	asserts.AssertListTrafficPolicyInstancesByHostedZoneResponse(t)
	return t
end

keys.GetHealthCheckLastFailureReasonResponse = { ["HealthCheckObservations"] = true, nil }

function asserts.AssertGetHealthCheckLastFailureReasonResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetHealthCheckLastFailureReasonResponse to be of type 'table'")
	assert(struct["HealthCheckObservations"], "Expected key HealthCheckObservations to exist in table")
	if struct["HealthCheckObservations"] then asserts.AssertHealthCheckObservations(struct["HealthCheckObservations"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetHealthCheckLastFailureReasonResponse[k], "GetHealthCheckLastFailureReasonResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetHealthCheckLastFailureReasonResponse
-- <p>A complex type that contains the response to a <code>GetHealthCheckLastFailureReason</code> request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HealthCheckObservations [HealthCheckObservations] <p>A list that contains one <code>Observation</code> element for each Amazon Route 53 health checker that is reporting a last failure reason. </p>
-- Required key: HealthCheckObservations
-- @return GetHealthCheckLastFailureReasonResponse structure as a key-value pair table
function M.GetHealthCheckLastFailureReasonResponse(args)
	assert(args, "You must provdide an argument table when creating GetHealthCheckLastFailureReasonResponse")
	local t = { 
		["HealthCheckObservations"] = args["HealthCheckObservations"],
	}
	asserts.AssertGetHealthCheckLastFailureReasonResponse(t)
	return t
end

keys.DelegationSetAlreadyReusable = { ["message"] = true, nil }

function asserts.AssertDelegationSetAlreadyReusable(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DelegationSetAlreadyReusable to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.DelegationSetAlreadyReusable[k], "DelegationSetAlreadyReusable contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DelegationSetAlreadyReusable
-- <p>The specified delegation set has already been marked as reusable.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>Descriptive message for the error response.</p>
-- @return DelegationSetAlreadyReusable structure as a key-value pair table
function M.DelegationSetAlreadyReusable(args)
	assert(args, "You must provdide an argument table when creating DelegationSetAlreadyReusable")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertDelegationSetAlreadyReusable(t)
	return t
end

keys.LimitsExceeded = { ["message"] = true, nil }

function asserts.AssertLimitsExceeded(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitsExceeded to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.LimitsExceeded[k], "LimitsExceeded contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitsExceeded
-- <p>The limits specified for a resource have been exceeded.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>Descriptive message for the error response.</p>
-- @return LimitsExceeded structure as a key-value pair table
function M.LimitsExceeded(args)
	assert(args, "You must provdide an argument table when creating LimitsExceeded")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertLimitsExceeded(t)
	return t
end

keys.GetHealthCheckStatusRequest = { ["HealthCheckId"] = true, nil }

function asserts.AssertGetHealthCheckStatusRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetHealthCheckStatusRequest to be of type 'table'")
	assert(struct["HealthCheckId"], "Expected key HealthCheckId to exist in table")
	if struct["HealthCheckId"] then asserts.AssertHealthCheckId(struct["HealthCheckId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetHealthCheckStatusRequest[k], "GetHealthCheckStatusRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetHealthCheckStatusRequest
-- <p>A request to get the status for a health check.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HealthCheckId [HealthCheckId] <p>The ID for the health check that you want the current status for. When you created the health check, <code>CreateHealthCheck</code> returned the ID in the response, in the <code>HealthCheckId</code> element.</p> <note> <p>If you want to check the status of a calculated health check, you must use the Amazon Route 53 console or the CloudWatch console. You can't use <code>GetHealthCheckStatus</code> to get the status of a calculated health check.</p> </note>
-- Required key: HealthCheckId
-- @return GetHealthCheckStatusRequest structure as a key-value pair table
function M.GetHealthCheckStatusRequest(args)
	assert(args, "You must provdide an argument table when creating GetHealthCheckStatusRequest")
	local t = { 
		["HealthCheckId"] = args["HealthCheckId"],
	}
	asserts.AssertGetHealthCheckStatusRequest(t)
	return t
end

keys.ListTagsForResourceResponse = { ["ResourceTagSet"] = true, nil }

function asserts.AssertListTagsForResourceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForResourceResponse to be of type 'table'")
	assert(struct["ResourceTagSet"], "Expected key ResourceTagSet to exist in table")
	if struct["ResourceTagSet"] then asserts.AssertResourceTagSet(struct["ResourceTagSet"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsForResourceResponse[k], "ListTagsForResourceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForResourceResponse
-- <p>A complex type that contains information about the health checks or hosted zones for which you want to list tags.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceTagSet [ResourceTagSet] <p>A <code>ResourceTagSet</code> containing tags associated with the specified resource.</p>
-- Required key: ResourceTagSet
-- @return ListTagsForResourceResponse structure as a key-value pair table
function M.ListTagsForResourceResponse(args)
	assert(args, "You must provdide an argument table when creating ListTagsForResourceResponse")
	local t = { 
		["ResourceTagSet"] = args["ResourceTagSet"],
	}
	asserts.AssertListTagsForResourceResponse(t)
	return t
end

keys.AliasTarget = { ["HostedZoneId"] = true, ["EvaluateTargetHealth"] = true, ["DNSName"] = true, nil }

function asserts.AssertAliasTarget(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AliasTarget to be of type 'table'")
	assert(struct["HostedZoneId"], "Expected key HostedZoneId to exist in table")
	assert(struct["DNSName"], "Expected key DNSName to exist in table")
	assert(struct["EvaluateTargetHealth"], "Expected key EvaluateTargetHealth to exist in table")
	if struct["HostedZoneId"] then asserts.AssertResourceId(struct["HostedZoneId"]) end
	if struct["EvaluateTargetHealth"] then asserts.AssertAliasHealthEnabled(struct["EvaluateTargetHealth"]) end
	if struct["DNSName"] then asserts.AssertDNSName(struct["DNSName"]) end
	for k,_ in pairs(struct) do
		assert(keys.AliasTarget[k], "AliasTarget contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AliasTarget
-- <p> <i>Alias resource record sets only:</i> Information about the CloudFront distribution, Elastic Beanstalk environment, ELB load balancer, Amazon S3 bucket, or Amazon Route 53 resource record set that you're redirecting queries to. An Elastic Beanstalk environment must have a regionalized subdomain.</p> <p>When creating resource record sets for a private hosted zone, note the following:</p> <ul> <li> <p>Resource record sets can't be created for CloudFront distributions in a private hosted zone.</p> </li> <li> <p>Creating geolocation alias resource record sets or latency alias resource record sets in a private hosted zone is unsupported.</p> </li> <li> <p>For information about creating failover resource record sets in a private hosted zone, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-private-hosted-zones.html">Configuring Failover in a Private Hosted Zone</a>.</p> </li> </ul>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HostedZoneId [ResourceId] <p> <i>Alias resource records sets only</i>: The value used depends on where you want to route traffic:</p> <dl> <dt>CloudFront distribution</dt> <dd> <p>Specify <code>Z2FDTNDATAQYW2</code>.</p> <note> <p>Alias resource record sets for CloudFront can't be created in a private zone.</p> </note> </dd> <dt>Elastic Beanstalk environment</dt> <dd> <p>Specify the hosted zone ID for the region in which you created the environment. The environment must have a regionalized subdomain. For a list of regions and the corresponding hosted zone IDs, see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html#elasticbeanstalk_region">AWS Elastic Beanstalk</a> in the "AWS Regions and Endpoints" chapter of the <i>Amazon Web Services General Reference</i>.</p> </dd> <dt>ELB load balancer</dt> <dd> <p>Specify the value of the hosted zone ID for the load balancer. Use the following methods to get the hosted zone ID:</p> <ul> <li> <p> <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html#elb_region">Elastic Load Balancing</a> table in the "AWS Regions and Endpoints" chapter of the <i>Amazon Web Services General Reference</i>: Use the value in the "Amazon Route 53 Hosted Zone ID" column that corresponds with the region that you created your load balancer in.</p> </li> <li> <p> <b>AWS Management Console</b>: Go to the Amazon EC2 page, click <b>Load Balancers</b> in the navigation pane, select the load balancer, and get the value of the <b>Hosted zone</b> field on the <b>Description</b> tab.</p> </li> <li> <p> <b>Elastic Load Balancing API</b>: Use <code>DescribeLoadBalancers</code> to get the value of <code>CanonicalHostedZoneNameId</code>. For more information, see the applicable guide:</p> <ul> <li> <p>Classic Load Balancer: <a href="http://docs.aws.amazon.com/elasticloadbalancing/2012-06-01/APIReference/API_DescribeLoadBalancers.html">DescribeLoadBalancers</a> </p> </li> <li> <p>Application Load Balancer: <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeLoadBalancers.html">DescribeLoadBalancers</a> </p> </li> </ul> </li> <li> <p> <b>AWS CLI</b>: Use <code> <a href="http://docs.aws.amazon.com/cli/latest/reference/elb/describe-load-balancers.html">describe-load-balancers</a> </code> to get the value of <code>CanonicalHostedZoneNameID</code>.</p> </li> </ul> </dd> <dt>An Amazon S3 bucket configured as a static website</dt> <dd> <p>Specify the hosted zone ID for the region that you created the bucket in. For more information about valid values, see the <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region">Amazon Simple Storage Service Website Endpoints</a> table in the "AWS Regions and Endpoints" chapter of the <i>Amazon Web Services General Reference</i>.</p> </dd> <dt>Another Amazon Route 53 resource record set in your hosted zone</dt> <dd> <p>Specify the hosted zone ID of your hosted zone. (An alias resource record set can't reference a resource record set in a different hosted zone.)</p> </dd> </dl>
-- * EvaluateTargetHealth [AliasHealthEnabled] <p> <i>Applies only to alias, failover alias, geolocation alias, latency alias, and weighted alias resource record sets:</i> When <code>EvaluateTargetHealth</code> is <code>true</code>, an alias resource record set inherits the health of the referenced AWS resource, such as an ELB load balancer, or the referenced resource record set.</p> <p>Note the following:</p> <ul> <li> <p>You can't set <code>EvaluateTargetHealth</code> to <code>true</code> when the alias target is a CloudFront distribution.</p> </li> <li> <p>If the AWS resource that you specify in <code>AliasTarget</code> is a resource record set or a group of resource record sets (for example, a group of weighted resource record sets), but it is not another alias resource record set, we recommend that you associate a health check with all of the resource record sets in the alias target. For more information, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-complex-configs.html#dns-failover-complex-configs-hc-omitting">What Happens When You Omit Health Checks?</a> in the <i>Amazon Route 53 Developer Guide</i>.</p> </li> <li> <p>If you specify an Elastic Beanstalk environment in <code>HostedZoneId</code> and <code>DNSName</code>, and if the environment contains an ELB load balancer, Elastic Load Balancing routes queries only to the healthy Amazon EC2 instances that are registered with the load balancer. (An environment automatically contains an ELB load balancer if it includes more than one EC2 instance.) If you set <code>EvaluateTargetHealth</code> to <code>true</code> and either no EC2 instances are healthy or the load balancer itself is unhealthy, Amazon Route 53 routes queries to other available resources that are healthy, if any.</p> <p>If the environment contains a single EC2 instance, there are no special requirements.</p> </li> <li> <p>If you specify an ELB load balancer in <code> <a>AliasTarget</a> </code>, ELB routes queries only to the healthy EC2 instances that are registered with the load balancer. If no EC2 instances are healthy or if the load balancer itself is unhealthy, and if <code>EvaluateTargetHealth</code> is true for the corresponding alias resource record set, Amazon Route 53 routes queries to other resources. When you create a load balancer, you configure settings for ELB health checks; they're not Amazon Route 53 health checks, but they perform a similar function. Do not create Amazon Route 53 health checks for the EC2 instances that you register with an ELB load balancer.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-complex-configs.html">How Health Checks Work in More Complex Amazon Route 53 Configurations</a> in the <i>Amazon Route 53 Developer Guide</i>.</p> </li> <li> <p>We recommend that you set <code>EvaluateTargetHealth</code> to true only when you have enough idle capacity to handle the failure of one or more endpoints.</p> </li> </ul> <p>For more information and examples, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover.html">Amazon Route 53 Health Checks and DNS Failover</a> in the <i>Amazon Route 53 Developer Guide</i>.</p>
-- * DNSName [DNSName] <p> <i>Alias resource record sets only:</i> The value that you specify depends on where you want to route queries:</p> <dl> <dt>CloudFront distribution</dt> <dd> <p>Specify the domain name that CloudFront assigned when you created your distribution.</p> <p>Your CloudFront distribution must include an alternate domain name that matches the name of the resource record set. For example, if the name of the resource record set is <i>acme.example.com</i>, your CloudFront distribution must include <i>acme.example.com</i> as one of the alternate domain names. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/CNAMEs.html">Using Alternate Domain Names (CNAMEs)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> </dd> <dt>Elastic Beanstalk environment</dt> <dd> <p>Specify the <code>CNAME</code> attribute for the environment. (The environment must have a regionalized domain name.) You can use the following methods to get the value of the CNAME attribute:</p> <ul> <li> <p> <i>AWS Management Console</i>: For information about how to get the value by using the console, see <a href="http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/customdomains.html">Using Custom Domains with AWS Elastic Beanstalk</a> in the <i>AWS Elastic Beanstalk Developer Guide</i>.</p> </li> <li> <p> <i>Elastic Beanstalk API</i>: Use the <code>DescribeEnvironments</code> action to get the value of the <code>CNAME</code> attribute. For more information, see <a href="http://docs.aws.amazon.com/elasticbeanstalk/latest/api/API_DescribeEnvironments.html">DescribeEnvironments</a> in the <i>AWS Elastic Beanstalk API Reference</i>.</p> </li> <li> <p> <i>AWS CLI</i>: Use the <code>describe-environments</code> command to get the value of the <code>CNAME</code> attribute. For more information, see <a href="http://docs.aws.amazon.com/cli/latest/reference/elasticbeanstalk/describe-environments.html">describe-environments</a> in the <i>AWS Command Line Interface Reference</i>.</p> </li> </ul> </dd> <dt>ELB load balancer</dt> <dd> <p>Specify the DNS name that is associated with the load balancer. Get the DNS name by using the AWS Management Console, the ELB API, or the AWS CLI. </p> <ul> <li> <p> <b>AWS Management Console</b>: Go to the EC2 page, choose <b>Load Balancers</b> in the navigation pane, choose the load balancer, choose the <b>Description</b> tab, and get the value of the <b>DNS name</b> field. (If you're routing traffic to a Classic Load Balancer, get the value that begins with <b>dualstack</b>.) </p> </li> <li> <p> <b>Elastic Load Balancing API</b>: Use <code>DescribeLoadBalancers</code> to get the value of <code>DNSName</code>. For more information, see the applicable guide:</p> <ul> <li> <p>Classic Load Balancer: <a href="http://docs.aws.amazon.com/elasticloadbalancing/2012-06-01/APIReference/API_DescribeLoadBalancers.html">DescribeLoadBalancers</a> </p> </li> <li> <p>Application Load Balancer: <a href="http://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeLoadBalancers.html">DescribeLoadBalancers</a> </p> </li> </ul> </li> <li> <p> <b>AWS CLI</b>: Use <code> <a href="http://docs.aws.amazon.com/cli/latest/reference/elb/describe-load-balancers.html">describe-load-balancers</a> </code> to get the value of <code>DNSName</code>.</p> </li> </ul> </dd> <dt>Amazon S3 bucket that is configured as a static website</dt> <dd> <p>Specify the domain name of the Amazon S3 website endpoint in which you created the bucket, for example, <code>s3-website-us-east-2.amazonaws.com</code>. For more information about valid values, see the table <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region">Amazon Simple Storage Service (S3) Website Endpoints</a> in the <i>Amazon Web Services General Reference</i>. For more information about using S3 buckets for websites, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/getting-started.html">Getting Started with Amazon Route 53</a> in the <i>Amazon Route 53 Developer Guide.</i> </p> </dd> <dt>Another Amazon Route 53 resource record set</dt> <dd> <p>Specify the value of the <code>Name</code> element for a resource record set in the current hosted zone.</p> </dd> </dl>
-- Required key: HostedZoneId
-- Required key: DNSName
-- Required key: EvaluateTargetHealth
-- @return AliasTarget structure as a key-value pair table
function M.AliasTarget(args)
	assert(args, "You must provdide an argument table when creating AliasTarget")
	local t = { 
		["HostedZoneId"] = args["HostedZoneId"],
		["EvaluateTargetHealth"] = args["EvaluateTargetHealth"],
		["DNSName"] = args["DNSName"],
	}
	asserts.AssertAliasTarget(t)
	return t
end

keys.GetHostedZoneCountRequest = { nil }

function asserts.AssertGetHostedZoneCountRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetHostedZoneCountRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.GetHostedZoneCountRequest[k], "GetHostedZoneCountRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetHostedZoneCountRequest
-- <p>A request to retrieve a count of all the hosted zones that are associated with the current AWS account.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return GetHostedZoneCountRequest structure as a key-value pair table
function M.GetHostedZoneCountRequest(args)
	assert(args, "You must provdide an argument table when creating GetHostedZoneCountRequest")
	local t = { 
	}
	asserts.AssertGetHostedZoneCountRequest(t)
	return t
end

keys.GetHealthCheckLastFailureReasonRequest = { ["HealthCheckId"] = true, nil }

function asserts.AssertGetHealthCheckLastFailureReasonRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetHealthCheckLastFailureReasonRequest to be of type 'table'")
	assert(struct["HealthCheckId"], "Expected key HealthCheckId to exist in table")
	if struct["HealthCheckId"] then asserts.AssertHealthCheckId(struct["HealthCheckId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetHealthCheckLastFailureReasonRequest[k], "GetHealthCheckLastFailureReasonRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetHealthCheckLastFailureReasonRequest
-- <p>A request for the reason that a health check failed most recently.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HealthCheckId [HealthCheckId] <p>The ID for the health check for which you want the last failure reason. When you created the health check, <code>CreateHealthCheck</code> returned the ID in the response, in the <code>HealthCheckId</code> element.</p>
-- Required key: HealthCheckId
-- @return GetHealthCheckLastFailureReasonRequest structure as a key-value pair table
function M.GetHealthCheckLastFailureReasonRequest(args)
	assert(args, "You must provdide an argument table when creating GetHealthCheckLastFailureReasonRequest")
	local t = { 
		["HealthCheckId"] = args["HealthCheckId"],
	}
	asserts.AssertGetHealthCheckLastFailureReasonRequest(t)
	return t
end

keys.UpdateHealthCheckResponse = { ["HealthCheck"] = true, nil }

function asserts.AssertUpdateHealthCheckResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateHealthCheckResponse to be of type 'table'")
	assert(struct["HealthCheck"], "Expected key HealthCheck to exist in table")
	if struct["HealthCheck"] then asserts.AssertHealthCheck(struct["HealthCheck"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateHealthCheckResponse[k], "UpdateHealthCheckResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateHealthCheckResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HealthCheck [HealthCheck] 
-- Required key: HealthCheck
-- @return UpdateHealthCheckResponse structure as a key-value pair table
function M.UpdateHealthCheckResponse(args)
	assert(args, "You must provdide an argument table when creating UpdateHealthCheckResponse")
	local t = { 
		["HealthCheck"] = args["HealthCheck"],
	}
	asserts.AssertUpdateHealthCheckResponse(t)
	return t
end

keys.TooManyHostedZones = { ["message"] = true, nil }

function asserts.AssertTooManyHostedZones(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyHostedZones to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.TooManyHostedZones[k], "TooManyHostedZones contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyHostedZones
-- <p>This hosted zone can't be created because the hosted zone limit is exceeded. To request a limit increase, go to the Amazon Route 53 <a href="http://aws.amazon.com/route53-request/">Contact Us</a> page.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>Descriptive message for the error response.</p>
-- @return TooManyHostedZones structure as a key-value pair table
function M.TooManyHostedZones(args)
	assert(args, "You must provdide an argument table when creating TooManyHostedZones")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertTooManyHostedZones(t)
	return t
end

keys.Tag = { ["Value"] = true, ["Key"] = true, nil }

function asserts.AssertTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tag to be of type 'table'")
	if struct["Value"] then asserts.AssertTagValue(struct["Value"]) end
	if struct["Key"] then asserts.AssertTagKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.Tag[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- <p>A complex type that contains information about a tag that you want to add or edit for the specified health check or hosted zone.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Value [TagValue] <p>The value of <code>Value</code> depends on the operation that you want to perform:</p> <ul> <li> <p> <b>Add a tag to a health check or hosted zone</b>: <code>Value</code> is the value that you want to give the new tag.</p> </li> <li> <p> <b>Edit a tag</b>: <code>Value</code> is the new value that you want to assign the tag.</p> </li> </ul>
-- * Key [TagKey] <p>The value of <code>Key</code> depends on the operation that you want to perform:</p> <ul> <li> <p> <b>Add a tag to a health check or hosted zone</b>: <code>Key</code> is the name that you want to give the new tag.</p> </li> <li> <p> <b>Edit a tag</b>: <code>Key</code> is the name of the tag that you want to change the <code>Value</code> for.</p> </li> <li> <p> <b> Delete a key</b>: <code>Key</code> is the name of the tag you want to remove.</p> </li> <li> <p> <b>Give a name to a health check</b>: Edit the default <code>Name</code> tag. In the Amazon Route 53 console, the list of your health checks includes a <b>Name</b> column that lets you see the name that you've given to each health check.</p> </li> </ul>
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

keys.CreateTrafficPolicyVersionResponse = { ["TrafficPolicy"] = true, ["Location"] = true, nil }

function asserts.AssertCreateTrafficPolicyVersionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTrafficPolicyVersionResponse to be of type 'table'")
	assert(struct["TrafficPolicy"], "Expected key TrafficPolicy to exist in table")
	assert(struct["Location"], "Expected key Location to exist in table")
	if struct["TrafficPolicy"] then asserts.AssertTrafficPolicy(struct["TrafficPolicy"]) end
	if struct["Location"] then asserts.AssertResourceURI(struct["Location"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateTrafficPolicyVersionResponse[k], "CreateTrafficPolicyVersionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTrafficPolicyVersionResponse
-- <p>A complex type that contains the response information for the <code>CreateTrafficPolicyVersion</code> request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TrafficPolicy [TrafficPolicy] <p>A complex type that contains settings for the new version of the traffic policy.</p>
-- * Location [ResourceURI] <p>A unique URL that represents a new traffic policy version.</p>
-- Required key: TrafficPolicy
-- Required key: Location
-- @return CreateTrafficPolicyVersionResponse structure as a key-value pair table
function M.CreateTrafficPolicyVersionResponse(args)
	assert(args, "You must provdide an argument table when creating CreateTrafficPolicyVersionResponse")
	local t = { 
		["TrafficPolicy"] = args["TrafficPolicy"],
		["Location"] = args["Location"],
	}
	asserts.AssertCreateTrafficPolicyVersionResponse(t)
	return t
end

keys.ResourceRecordSet = { ["GeoLocation"] = true, ["HealthCheckId"] = true, ["Name"] = true, ["Weight"] = true, ["Type"] = true, ["Region"] = true, ["AliasTarget"] = true, ["ResourceRecords"] = true, ["MultiValueAnswer"] = true, ["TTL"] = true, ["TrafficPolicyInstanceId"] = true, ["SetIdentifier"] = true, ["Failover"] = true, nil }

function asserts.AssertResourceRecordSet(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceRecordSet to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Type"], "Expected key Type to exist in table")
	if struct["GeoLocation"] then asserts.AssertGeoLocation(struct["GeoLocation"]) end
	if struct["HealthCheckId"] then asserts.AssertHealthCheckId(struct["HealthCheckId"]) end
	if struct["Name"] then asserts.AssertDNSName(struct["Name"]) end
	if struct["Weight"] then asserts.AssertResourceRecordSetWeight(struct["Weight"]) end
	if struct["Type"] then asserts.AssertRRType(struct["Type"]) end
	if struct["Region"] then asserts.AssertResourceRecordSetRegion(struct["Region"]) end
	if struct["AliasTarget"] then asserts.AssertAliasTarget(struct["AliasTarget"]) end
	if struct["ResourceRecords"] then asserts.AssertResourceRecords(struct["ResourceRecords"]) end
	if struct["MultiValueAnswer"] then asserts.AssertResourceRecordSetMultiValueAnswer(struct["MultiValueAnswer"]) end
	if struct["TTL"] then asserts.AssertTTL(struct["TTL"]) end
	if struct["TrafficPolicyInstanceId"] then asserts.AssertTrafficPolicyInstanceId(struct["TrafficPolicyInstanceId"]) end
	if struct["SetIdentifier"] then asserts.AssertResourceRecordSetIdentifier(struct["SetIdentifier"]) end
	if struct["Failover"] then asserts.AssertResourceRecordSetFailover(struct["Failover"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceRecordSet[k], "ResourceRecordSet contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceRecordSet
-- <p>Information about the resource record set to create or delete.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GeoLocation [GeoLocation] <p> <i>Geo location resource record sets only:</i> A complex type that lets you control how Amazon Route 53 responds to DNS queries based on the geographic origin of the query. For example, if you want all queries from Africa to be routed to a web server with an IP address of <code>192.0.2.111</code>, create a resource record set with a <code>Type</code> of <code>A</code> and a <code>ContinentCode</code> of <code>AF</code>.</p> <note> <p>Creating geolocation and geolocation alias resource record sets in private hosted zones is not supported.</p> </note> <p>If you create separate resource record sets for overlapping geographic regions (for example, one resource record set for a continent and one for a country on the same continent), priority goes to the smallest geographic region. This allows you to route most queries for a continent to one resource and to route queries for a country on that continent to a different resource.</p> <p>You can't create two geolocation resource record sets that specify the same geographic location.</p> <p>The value <code>*</code> in the <code>CountryCode</code> element matches all geographic locations that aren't specified in other geolocation resource record sets that have the same values for the <code>Name</code> and <code>Type</code> elements.</p> <important> <p>Geolocation works by mapping IP addresses to locations. However, some IP addresses aren't mapped to geographic locations, so even if you create geolocation resource record sets that cover all seven continents, Amazon Route 53 will receive some DNS queries from locations that it can't identify. We recommend that you create a resource record set for which the value of <code>CountryCode</code> is <code>*</code>, which handles both queries that come from locations for which you haven't created geolocation resource record sets and queries from IP addresses that aren't mapped to a location. If you don't create a <code>*</code> resource record set, Amazon Route 53 returns a "no answer" response for queries from those locations.</p> </important> <p>You can't create non-geolocation resource record sets that have the same values for the <code>Name</code> and <code>Type</code> elements as geolocation resource record sets.</p>
-- * HealthCheckId [HealthCheckId] <p>If you want Amazon Route 53 to return this resource record set in response to a DNS query only when a health check is passing, include the <code>HealthCheckId</code> element and specify the ID of the applicable health check.</p> <p>Amazon Route 53 determines whether a resource record set is healthy based on one of the following:</p> <ul> <li> <p>By periodically sending a request to the endpoint that is specified in the health check</p> </li> <li> <p>By aggregating the status of a specified group of health checks (calculated health checks)</p> </li> <li> <p>By determining the current state of a CloudWatch alarm (CloudWatch metric health checks)</p> </li> </ul> <p>For more information, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-determining-health-of-endpoints.html">How Amazon Route 53 Determines Whether an Endpoint Is Healthy</a>.</p> <p>The <code>HealthCheckId</code> element is only useful when Amazon Route 53 is choosing between two or more resource record sets to respond to a DNS query, and you want Amazon Route 53 to base the choice in part on the status of a health check. Configuring health checks only makes sense in the following configurations:</p> <ul> <li> <p>You're checking the health of the resource record sets in a group of weighted, latency, geolocation, or failover resource record sets, and you specify health check IDs for all of the resource record sets. If the health check for one resource record set specifies an endpoint that is not healthy, Amazon Route 53 stops responding to queries using the value for that resource record set.</p> </li> <li> <p>You set <code>EvaluateTargetHealth</code> to true for the resource record sets in a group of alias, weighted alias, latency alias, geolocation alias, or failover alias resource record sets, and you specify health check IDs for all of the resource record sets that are referenced by the alias resource record sets.</p> </li> </ul> <important> <p>Amazon Route 53 doesn't check the health of the endpoint specified in the resource record set, for example, the endpoint specified by the IP address in the <code>Value</code> element. When you add a <code>HealthCheckId</code> element to a resource record set, Amazon Route 53 checks the health of the endpoint that you specified in the health check. </p> </important> <p>For geolocation resource record sets, if an endpoint is unhealthy, Amazon Route 53 looks for a resource record set for the larger, associated geographic region. For example, suppose you have resource record sets for a state in the United States, for the United States, for North America, and for all locations. If the endpoint for the state resource record set is unhealthy, Amazon Route 53 checks the resource record sets for the United States, for North America, and for all locations (a resource record set for which the value of <code>CountryCode</code> is <code>*</code>), in that order, until it finds a resource record set for which the endpoint is healthy. </p> <p>If your health checks specify the endpoint only by domain name, we recommend that you create a separate health check for each endpoint. For example, create a health check for each <code>HTTP</code> server that is serving content for <code>www.example.com</code>. For the value of <code>FullyQualifiedDomainName</code>, specify the domain name of the server (such as <code>us-east-2-www.example.com</code>), not the name of the resource record sets (example.com).</p> <important> <p>n this configuration, if you create a health check for which the value of <code>FullyQualifiedDomainName</code> matches the name of the resource record sets and then associate the health check with those resource record sets, health check results will be unpredictable.</p> </important> <p>For more information, see the following topics in the <i>Amazon Route 53 Developer Guide</i>:</p> <ul> <li> <p> <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover.html">Amazon Route 53 Health Checks and DNS Failover</a> </p> </li> <li> <p> <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-private-hosted-zones.html">Configuring Failover in a Private Hosted Zone</a> </p> </li> </ul>
-- * Name [DNSName] <p>The name of the domain you want to perform the action on.</p> <p>Enter a fully qualified domain name, for example, <code>www.example.com</code>. You can optionally include a trailing dot. If you omit the trailing dot, Amazon Route 53 still assumes that the domain name that you specify is fully qualified. This means that Amazon Route 53 treats <code>www.example.com</code> (without a trailing dot) and <code>www.example.com.</code> (with a trailing dot) as identical.</p> <p>For information about how to specify characters other than <code>a-z</code>, <code>0-9</code>, and <code>-</code> (hyphen) and how to specify internationalized domain names, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DomainNameFormat.html">DNS Domain Name Format</a> in the <i>Amazon Route 53 Developer Guide</i>.</p> <p>You can use the asterisk (*) wildcard to replace the leftmost label in a domain name, for example, <code>*.example.com</code>. Note the following:</p> <ul> <li> <p>The * must replace the entire label. For example, you can't specify <code>*prod.example.com</code> or <code>prod*.example.com</code>.</p> </li> <li> <p>The * can't replace any of the middle labels, for example, marketing.*.example.com.</p> </li> <li> <p>If you include * in any position other than the leftmost label in a domain name, DNS treats it as an * character (ASCII 42), not as a wildcard.</p> <important> <p>You can't use the * wildcard for resource records sets that have a type of NS.</p> </important> </li> </ul> <p>You can use the * wildcard as the leftmost label in a domain name, for example, <code>*.example.com</code>. You can't use an * for one of the middle labels, for example, <code>marketing.*.example.com</code>. In addition, the * must replace the entire label; for example, you can't specify <code>prod*.example.com</code>.</p>
-- * Weight [ResourceRecordSetWeight] <p> <i>Weighted resource record sets only:</i> Among resource record sets that have the same combination of DNS name and type, a value that determines the proportion of DNS queries that Amazon Route 53 responds to using the current resource record set. Amazon Route 53 calculates the sum of the weights for the resource record sets that have the same combination of DNS name and type. Amazon Route 53 then responds to queries based on the ratio of a resource's weight to the total. Note the following:</p> <ul> <li> <p>You must specify a value for the <code>Weight</code> element for every weighted resource record set.</p> </li> <li> <p>You can only specify one <code>ResourceRecord</code> per weighted resource record set.</p> </li> <li> <p>You can't create latency, failover, or geolocation resource record sets that have the same values for the <code>Name</code> and <code>Type</code> elements as weighted resource record sets.</p> </li> <li> <p>You can create a maximum of 100 weighted resource record sets that have the same values for the <code>Name</code> and <code>Type</code> elements.</p> </li> <li> <p>For weighted (but not weighted alias) resource record sets, if you set <code>Weight</code> to <code>0</code> for a resource record set, Amazon Route 53 never responds to queries with the applicable value for that resource record set. However, if you set <code>Weight</code> to <code>0</code> for all resource record sets that have the same combination of DNS name and type, traffic is routed to all resources with equal probability.</p> <p>The effect of setting <code>Weight</code> to <code>0</code> is different when you associate health checks with weighted resource record sets. For more information, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-configuring-options.html">Options for Configuring Amazon Route 53 Active-Active and Active-Passive Failover</a> in the <i>Amazon Route 53 Developer Guide</i>.</p> </li> </ul>
-- * Type [RRType] <p>The DNS record type. For information about different record types and how data is encoded for them, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/ResourceRecordTypes.html">Supported DNS Resource Record Types</a> in the <i>Amazon Route 53 Developer Guide</i>.</p> <p>Valid values for basic resource record sets: <code>A</code> | <code>AAAA</code> | <code>CNAME</code> | <code>MX</code> | <code>NAPTR</code> | <code>NS</code> | <code>PTR</code> | <code>SOA</code> | <code>SPF</code> | <code>SRV</code> | <code>TXT</code> </p> <p>Values for weighted, latency, geolocation, and failover resource record sets: <code>A</code> | <code>AAAA</code> | <code>CNAME</code> | <code>MX</code> | <code>NAPTR</code> | <code>PTR</code> | <code>SPF</code> | <code>SRV</code> | <code>TXT</code>. When creating a group of weighted, latency, geolocation, or failover resource record sets, specify the same value for all of the resource record sets in the group.</p> <p>Valid values for multivalue answer resource record sets: <code>A</code> | <code>AAAA</code> | <code>MX</code> | <code>NAPTR</code> | <code>PTR</code> | <code>SPF</code> | <code>SRV</code> | <code>TXT</code> </p> <note> <p>SPF records were formerly used to verify the identity of the sender of email messages. However, we no longer recommend that you create resource record sets for which the value of <code>Type</code> is <code>SPF</code>. RFC 7208, <i>Sender Policy Framework (SPF) for Authorizing Use of Domains in Email, Version 1</i>, has been updated to say, "...[I]ts existence and mechanism defined in [RFC4408] have led to some interoperability issues. Accordingly, its use is no longer appropriate for SPF version 1; implementations are not to use it." In RFC 7208, see section 14.1, <a href="http://tools.ietf.org/html/rfc7208#section-14.1">The SPF DNS Record Type</a>.</p> </note> <p>Values for alias resource record sets:</p> <ul> <li> <p> <b>CloudFront distributions:</b> <code>A</code> </p> <p>If IPv6 is enabled for the distribution, create two resource record sets to route traffic to your distribution, one with a value of <code>A</code> and one with a value of <code>AAAA</code>. </p> </li> <li> <p> <b>AWS Elastic Beanstalk environment that has a regionalized subdomain</b>: <code>A</code> </p> </li> <li> <p> <b>ELB load balancers:</b> <code>A</code> | <code>AAAA</code> </p> </li> <li> <p> <b>Amazon S3 buckets:</b> <code>A</code> </p> </li> <li> <p> <b>Another resource record set in this hosted zone:</b> Specify the type of the resource record set that you're creating the alias for. All values are supported except <code>NS</code> and <code>SOA</code>.</p> </li> </ul>
-- * Region [ResourceRecordSetRegion] <p> <i>Latency-based resource record sets only:</i> The Amazon EC2 Region where you created the resource that this resource record set refers to. The resource typically is an AWS resource, such as an EC2 instance or an ELB load balancer, and is referred to by an IP address or a DNS domain name, depending on the record type.</p> <note> <p>Creating latency and latency alias resource record sets in private hosted zones is not supported.</p> </note> <p>When Amazon Route 53 receives a DNS query for a domain name and type for which you have created latency resource record sets, Amazon Route 53 selects the latency resource record set that has the lowest latency between the end user and the associated Amazon EC2 Region. Amazon Route 53 then returns the value that is associated with the selected resource record set.</p> <p>Note the following:</p> <ul> <li> <p>You can only specify one <code>ResourceRecord</code> per latency resource record set.</p> </li> <li> <p>You can only create one latency resource record set for each Amazon EC2 Region.</p> </li> <li> <p>You aren't required to create latency resource record sets for all Amazon EC2 Regions. Amazon Route 53 will choose the region with the best latency from among the regions that you create latency resource record sets for.</p> </li> <li> <p>You can't create non-latency resource record sets that have the same values for the <code>Name</code> and <code>Type</code> elements as latency resource record sets.</p> </li> </ul>
-- * AliasTarget [AliasTarget] <p> <i>Alias resource record sets only:</i> Information about the CloudFront distribution, AWS Elastic Beanstalk environment, ELB load balancer, Amazon S3 bucket, or Amazon Route 53 resource record set to which you're redirecting queries. The AWS Elastic Beanstalk environment must have a regionalized subdomain.</p> <p>If you're creating resource records sets for a private hosted zone, note the following:</p> <ul> <li> <p>You can't create alias resource record sets for CloudFront distributions in a private hosted zone.</p> </li> <li> <p>Creating geolocation alias resource record sets or latency alias resource record sets in a private hosted zone is unsupported.</p> </li> <li> <p>For information about creating failover resource record sets in a private hosted zone, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-private-hosted-zones.html">Configuring Failover in a Private Hosted Zone</a> in the <i>Amazon Route 53 Developer Guide</i>.</p> </li> </ul>
-- * ResourceRecords [ResourceRecords] <p>Information about the resource records to act upon.</p> <note> <p>If you're creating an alias resource record set, omit <code>ResourceRecords</code>.</p> </note>
-- * MultiValueAnswer [ResourceRecordSetMultiValueAnswer] <p> <i>Multivalue answer resource record sets only</i>: To route traffic approximately randomly to multiple resources, such as web servers, create one multivalue answer record for each resource and specify <code>true</code> for <code>MultiValueAnswer</code>. Note the following:</p> <ul> <li> <p>If you associate a health check with a multivalue answer resource record set, Amazon Route 53 responds to DNS queries with the corresponding IP address only when the health check is healthy.</p> </li> <li> <p>If you don't associate a health check with a multivalue answer record, Amazon Route 53 always considers the record to be healthy.</p> </li> <li> <p>Amazon Route 53 responds to DNS queries with up to eight healthy records; if you have eight or fewer healthy records, Amazon Route 53 responds to all DNS queries with all the healthy records.</p> </li> <li> <p>If you have more than eight healthy records, Amazon Route 53 responds to different DNS resolvers with different combinations of healthy records.</p> </li> <li> <p>When all records are unhealthy, Amazon Route 53 responds to DNS queries with up to eight unhealthy records.</p> </li> <li> <p>If a resource becomes unavailable after a resolver caches a response, client software typically tries another of the IP addresses in the response.</p> </li> </ul> <p>You can't create multivalue answer alias records.</p>
-- * TTL [TTL] <p>The resource record cache time to live (TTL), in seconds. Note the following:</p> <ul> <li> <p>If you're creating or updating an alias resource record set, omit <code>TTL</code>. Amazon Route 53 uses the value of <code>TTL</code> for the alias target. </p> </li> <li> <p>If you're associating this resource record set with a health check (if you're adding a <code>HealthCheckId</code> element), we recommend that you specify a <code>TTL</code> of 60 seconds or less so clients respond quickly to changes in health status.</p> </li> <li> <p>All of the resource record sets in a group of weighted resource record sets must have the same value for <code>TTL</code>.</p> </li> <li> <p>If a group of weighted resource record sets includes one or more weighted alias resource record sets for which the alias target is an ELB load balancer, we recommend that you specify a <code>TTL</code> of 60 seconds for all of the non-alias weighted resource record sets that have the same name and type. Values other than 60 seconds (the TTL for load balancers) will change the effect of the values that you specify for <code>Weight</code>.</p> </li> </ul>
-- * TrafficPolicyInstanceId [TrafficPolicyInstanceId] <p>When you create a traffic policy instance, Amazon Route 53 automatically creates a resource record set. <code>TrafficPolicyInstanceId</code> is the ID of the traffic policy instance that Amazon Route 53 created this resource record set for.</p> <important> <p>To delete the resource record set that is associated with a traffic policy instance, use <code>DeleteTrafficPolicyInstance</code>. Amazon Route 53 will delete the resource record set automatically. If you delete the resource record set by using <code>ChangeResourceRecordSets</code>, Amazon Route 53 doesn't automatically delete the traffic policy instance, and you'll continue to be charged for it even though it's no longer in use. </p> </important>
-- * SetIdentifier [ResourceRecordSetIdentifier] <p> <i>Weighted, Latency, Geo, and Failover resource record sets only:</i> An identifier that differentiates among multiple resource record sets that have the same combination of DNS name and type. The value of <code>SetIdentifier</code> must be unique for each resource record set that has the same combination of DNS name and type. Omit <code>SetIdentifier</code> for any other types of record sets.</p>
-- * Failover [ResourceRecordSetFailover] <p> <i>Failover resource record sets only:</i> To configure failover, you add the <code>Failover</code> element to two resource record sets. For one resource record set, you specify <code>PRIMARY</code> as the value for <code>Failover</code>; for the other resource record set, you specify <code>SECONDARY</code>. In addition, you include the <code>HealthCheckId</code> element and specify the health check that you want Amazon Route 53 to perform for each resource record set.</p> <p>Except where noted, the following failover behaviors assume that you have included the <code>HealthCheckId</code> element in both resource record sets:</p> <ul> <li> <p>When the primary resource record set is healthy, Amazon Route 53 responds to DNS queries with the applicable value from the primary resource record set regardless of the health of the secondary resource record set.</p> </li> <li> <p>When the primary resource record set is unhealthy and the secondary resource record set is healthy, Amazon Route 53 responds to DNS queries with the applicable value from the secondary resource record set.</p> </li> <li> <p>When the secondary resource record set is unhealthy, Amazon Route 53 responds to DNS queries with the applicable value from the primary resource record set regardless of the health of the primary resource record set.</p> </li> <li> <p>If you omit the <code>HealthCheckId</code> element for the secondary resource record set, and if the primary resource record set is unhealthy, Amazon Route 53 always responds to DNS queries with the applicable value from the secondary resource record set. This is true regardless of the health of the associated endpoint.</p> </li> </ul> <p>You can't create non-failover resource record sets that have the same values for the <code>Name</code> and <code>Type</code> elements as failover resource record sets.</p> <p>For failover alias resource record sets, you must also include the <code>EvaluateTargetHealth</code> element and set the value to true.</p> <p>For more information about configuring failover for Amazon Route 53, see the following topics in the <i>Amazon Route 53 Developer Guide</i>: </p> <ul> <li> <p> <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover.html">Amazon Route 53 Health Checks and DNS Failover</a> </p> </li> <li> <p> <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-private-hosted-zones.html">Configuring Failover in a Private Hosted Zone</a> </p> </li> </ul>
-- Required key: Name
-- Required key: Type
-- @return ResourceRecordSet structure as a key-value pair table
function M.ResourceRecordSet(args)
	assert(args, "You must provdide an argument table when creating ResourceRecordSet")
	local t = { 
		["GeoLocation"] = args["GeoLocation"],
		["HealthCheckId"] = args["HealthCheckId"],
		["Name"] = args["Name"],
		["Weight"] = args["Weight"],
		["Type"] = args["Type"],
		["Region"] = args["Region"],
		["AliasTarget"] = args["AliasTarget"],
		["ResourceRecords"] = args["ResourceRecords"],
		["MultiValueAnswer"] = args["MultiValueAnswer"],
		["TTL"] = args["TTL"],
		["TrafficPolicyInstanceId"] = args["TrafficPolicyInstanceId"],
		["SetIdentifier"] = args["SetIdentifier"],
		["Failover"] = args["Failover"],
	}
	asserts.AssertResourceRecordSet(t)
	return t
end

keys.InvalidPaginationToken = { ["message"] = true, nil }

function asserts.AssertInvalidPaginationToken(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidPaginationToken to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidPaginationToken[k], "InvalidPaginationToken contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidPaginationToken
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return InvalidPaginationToken structure as a key-value pair table
function M.InvalidPaginationToken(args)
	assert(args, "You must provdide an argument table when creating InvalidPaginationToken")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidPaginationToken(t)
	return t
end

keys.NoSuchGeoLocation = { ["message"] = true, nil }

function asserts.AssertNoSuchGeoLocation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoSuchGeoLocation to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.NoSuchGeoLocation[k], "NoSuchGeoLocation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoSuchGeoLocation
-- <p>Amazon Route 53 doesn't support the specified geolocation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>Descriptive message for the error response.</p>
-- @return NoSuchGeoLocation structure as a key-value pair table
function M.NoSuchGeoLocation(args)
	assert(args, "You must provdide an argument table when creating NoSuchGeoLocation")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertNoSuchGeoLocation(t)
	return t
end

keys.TooManyTrafficPolicies = { ["message"] = true, nil }

function asserts.AssertTooManyTrafficPolicies(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyTrafficPolicies to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.TooManyTrafficPolicies[k], "TooManyTrafficPolicies contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyTrafficPolicies
-- <p>You've created the maximum number of traffic policies that can be created for the current AWS account. You can request an increase to the limit on the <a href="http://aws.amazon.com/route53-request/">Contact Us</a> page.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>Descriptive message for the error response.</p>
-- @return TooManyTrafficPolicies structure as a key-value pair table
function M.TooManyTrafficPolicies(args)
	assert(args, "You must provdide an argument table when creating TooManyTrafficPolicies")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertTooManyTrafficPolicies(t)
	return t
end

keys.ChangeResourceRecordSetsRequest = { ["HostedZoneId"] = true, ["ChangeBatch"] = true, nil }

function asserts.AssertChangeResourceRecordSetsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ChangeResourceRecordSetsRequest to be of type 'table'")
	assert(struct["HostedZoneId"], "Expected key HostedZoneId to exist in table")
	assert(struct["ChangeBatch"], "Expected key ChangeBatch to exist in table")
	if struct["HostedZoneId"] then asserts.AssertResourceId(struct["HostedZoneId"]) end
	if struct["ChangeBatch"] then asserts.AssertChangeBatch(struct["ChangeBatch"]) end
	for k,_ in pairs(struct) do
		assert(keys.ChangeResourceRecordSetsRequest[k], "ChangeResourceRecordSetsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ChangeResourceRecordSetsRequest
-- <p>A complex type that contains change information for the resource record set.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HostedZoneId [ResourceId] <p>The ID of the hosted zone that contains the resource record sets that you want to change.</p>
-- * ChangeBatch [ChangeBatch] <p>A complex type that contains an optional comment and the <code>Changes</code> element.</p>
-- Required key: HostedZoneId
-- Required key: ChangeBatch
-- @return ChangeResourceRecordSetsRequest structure as a key-value pair table
function M.ChangeResourceRecordSetsRequest(args)
	assert(args, "You must provdide an argument table when creating ChangeResourceRecordSetsRequest")
	local t = { 
		["HostedZoneId"] = args["HostedZoneId"],
		["ChangeBatch"] = args["ChangeBatch"],
	}
	asserts.AssertChangeResourceRecordSetsRequest(t)
	return t
end

keys.ListTagsForResourcesResponse = { ["ResourceTagSets"] = true, nil }

function asserts.AssertListTagsForResourcesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForResourcesResponse to be of type 'table'")
	assert(struct["ResourceTagSets"], "Expected key ResourceTagSets to exist in table")
	if struct["ResourceTagSets"] then asserts.AssertResourceTagSetList(struct["ResourceTagSets"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsForResourcesResponse[k], "ListTagsForResourcesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForResourcesResponse
-- <p>A complex type containing tags for the specified resources.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceTagSets [ResourceTagSetList] <p>A list of <code>ResourceTagSet</code>s containing tags associated with the specified resources.</p>
-- Required key: ResourceTagSets
-- @return ListTagsForResourcesResponse structure as a key-value pair table
function M.ListTagsForResourcesResponse(args)
	assert(args, "You must provdide an argument table when creating ListTagsForResourcesResponse")
	local t = { 
		["ResourceTagSets"] = args["ResourceTagSets"],
	}
	asserts.AssertListTagsForResourcesResponse(t)
	return t
end

keys.AssociateVPCWithHostedZoneResponse = { ["ChangeInfo"] = true, nil }

function asserts.AssertAssociateVPCWithHostedZoneResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateVPCWithHostedZoneResponse to be of type 'table'")
	assert(struct["ChangeInfo"], "Expected key ChangeInfo to exist in table")
	if struct["ChangeInfo"] then asserts.AssertChangeInfo(struct["ChangeInfo"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssociateVPCWithHostedZoneResponse[k], "AssociateVPCWithHostedZoneResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateVPCWithHostedZoneResponse
-- <p>A complex type that contains the response information for the <code>AssociateVPCWithHostedZone</code> request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChangeInfo [ChangeInfo] <p>A complex type that describes the changes made to your hosted zone.</p>
-- Required key: ChangeInfo
-- @return AssociateVPCWithHostedZoneResponse structure as a key-value pair table
function M.AssociateVPCWithHostedZoneResponse(args)
	assert(args, "You must provdide an argument table when creating AssociateVPCWithHostedZoneResponse")
	local t = { 
		["ChangeInfo"] = args["ChangeInfo"],
	}
	asserts.AssertAssociateVPCWithHostedZoneResponse(t)
	return t
end

keys.GetChangeRequest = { ["Id"] = true, nil }

function asserts.AssertGetChangeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetChangeRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then asserts.AssertResourceId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetChangeRequest[k], "GetChangeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetChangeRequest
-- <p>The input for a GetChange request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [ResourceId] <p>The ID of the change batch request. The value that you specify here is the value that <code>ChangeResourceRecordSets</code> returned in the <code>Id</code> element when you submitted the request.</p>
-- Required key: Id
-- @return GetChangeRequest structure as a key-value pair table
function M.GetChangeRequest(args)
	assert(args, "You must provdide an argument table when creating GetChangeRequest")
	local t = { 
		["Id"] = args["Id"],
	}
	asserts.AssertGetChangeRequest(t)
	return t
end

keys.ListTrafficPolicyInstancesByHostedZoneRequest = { ["HostedZoneId"] = true, ["TrafficPolicyInstanceTypeMarker"] = true, ["TrafficPolicyInstanceNameMarker"] = true, ["MaxItems"] = true, nil }

function asserts.AssertListTrafficPolicyInstancesByHostedZoneRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTrafficPolicyInstancesByHostedZoneRequest to be of type 'table'")
	assert(struct["HostedZoneId"], "Expected key HostedZoneId to exist in table")
	if struct["HostedZoneId"] then asserts.AssertResourceId(struct["HostedZoneId"]) end
	if struct["TrafficPolicyInstanceTypeMarker"] then asserts.AssertRRType(struct["TrafficPolicyInstanceTypeMarker"]) end
	if struct["TrafficPolicyInstanceNameMarker"] then asserts.AssertDNSName(struct["TrafficPolicyInstanceNameMarker"]) end
	if struct["MaxItems"] then asserts.AssertPageMaxItems(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTrafficPolicyInstancesByHostedZoneRequest[k], "ListTrafficPolicyInstancesByHostedZoneRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTrafficPolicyInstancesByHostedZoneRequest
-- <p>A request for the traffic policy instances that you created in a specified hosted zone.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HostedZoneId [ResourceId] <p>The ID of the hosted zone that you want to list traffic policy instances for.</p>
-- * TrafficPolicyInstanceTypeMarker [RRType] <p>If the value of <code>IsTruncated</code> in the previous response is true, you have more traffic policy instances. To get more traffic policy instances, submit another <code>ListTrafficPolicyInstances</code> request. For the value of <code>trafficpolicyinstancetype</code>, specify the value of <code>TrafficPolicyInstanceTypeMarker</code> from the previous response, which is the type of the first traffic policy instance in the next group of traffic policy instances.</p> <p>If the value of <code>IsTruncated</code> in the previous response was <code>false</code>, there are no more traffic policy instances to get.</p>
-- * TrafficPolicyInstanceNameMarker [DNSName] <p>If the value of <code>IsTruncated</code> in the previous response is true, you have more traffic policy instances. To get more traffic policy instances, submit another <code>ListTrafficPolicyInstances</code> request. For the value of <code>trafficpolicyinstancename</code>, specify the value of <code>TrafficPolicyInstanceNameMarker</code> from the previous response, which is the name of the first traffic policy instance in the next group of traffic policy instances.</p> <p>If the value of <code>IsTruncated</code> in the previous response was <code>false</code>, there are no more traffic policy instances to get.</p>
-- * MaxItems [PageMaxItems] <p>The maximum number of traffic policy instances to be included in the response body for this request. If you have more than <code>MaxItems</code> traffic policy instances, the value of the <code>IsTruncated</code> element in the response is <code>true</code>, and the values of <code>HostedZoneIdMarker</code>, <code>TrafficPolicyInstanceNameMarker</code>, and <code>TrafficPolicyInstanceTypeMarker</code> represent the first traffic policy instance that Amazon Route 53 will return if you submit another request.</p>
-- Required key: HostedZoneId
-- @return ListTrafficPolicyInstancesByHostedZoneRequest structure as a key-value pair table
function M.ListTrafficPolicyInstancesByHostedZoneRequest(args)
	assert(args, "You must provdide an argument table when creating ListTrafficPolicyInstancesByHostedZoneRequest")
	local t = { 
		["HostedZoneId"] = args["HostedZoneId"],
		["TrafficPolicyInstanceTypeMarker"] = args["TrafficPolicyInstanceTypeMarker"],
		["TrafficPolicyInstanceNameMarker"] = args["TrafficPolicyInstanceNameMarker"],
		["MaxItems"] = args["MaxItems"],
	}
	asserts.AssertListTrafficPolicyInstancesByHostedZoneRequest(t)
	return t
end

keys.PriorRequestNotComplete = { ["message"] = true, nil }

function asserts.AssertPriorRequestNotComplete(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PriorRequestNotComplete to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.PriorRequestNotComplete[k], "PriorRequestNotComplete contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PriorRequestNotComplete
-- <p>If Amazon Route 53 can't process a request before the next request arrives, it will reject subsequent requests for the same hosted zone and return an <code>HTTP 400 error</code> (<code>Bad request</code>). If Amazon Route 53 returns this error repeatedly for the same request, we recommend that you wait, in intervals of increasing duration, before you try the request again.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return PriorRequestNotComplete structure as a key-value pair table
function M.PriorRequestNotComplete(args)
	assert(args, "You must provdide an argument table when creating PriorRequestNotComplete")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertPriorRequestNotComplete(t)
	return t
end

keys.NoSuchHealthCheck = { ["message"] = true, nil }

function asserts.AssertNoSuchHealthCheck(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoSuchHealthCheck to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.NoSuchHealthCheck[k], "NoSuchHealthCheck contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoSuchHealthCheck
-- <p>No health check exists with the ID that you specified in the <code>DeleteHealthCheck</code> request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>Descriptive message for the error response.</p>
-- @return NoSuchHealthCheck structure as a key-value pair table
function M.NoSuchHealthCheck(args)
	assert(args, "You must provdide an argument table when creating NoSuchHealthCheck")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertNoSuchHealthCheck(t)
	return t
end

keys.NoSuchDelegationSet = { ["message"] = true, nil }

function asserts.AssertNoSuchDelegationSet(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoSuchDelegationSet to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.NoSuchDelegationSet[k], "NoSuchDelegationSet contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoSuchDelegationSet
-- <p>A reusable delegation set with the specified ID does not exist.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>Descriptive message for the error response.</p>
-- @return NoSuchDelegationSet structure as a key-value pair table
function M.NoSuchDelegationSet(args)
	assert(args, "You must provdide an argument table when creating NoSuchDelegationSet")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertNoSuchDelegationSet(t)
	return t
end

keys.TestDNSAnswerResponse = { ["Protocol"] = true, ["RecordType"] = true, ["RecordName"] = true, ["ResponseCode"] = true, ["Nameserver"] = true, ["RecordData"] = true, nil }

function asserts.AssertTestDNSAnswerResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TestDNSAnswerResponse to be of type 'table'")
	assert(struct["Nameserver"], "Expected key Nameserver to exist in table")
	assert(struct["RecordName"], "Expected key RecordName to exist in table")
	assert(struct["RecordType"], "Expected key RecordType to exist in table")
	assert(struct["RecordData"], "Expected key RecordData to exist in table")
	assert(struct["ResponseCode"], "Expected key ResponseCode to exist in table")
	assert(struct["Protocol"], "Expected key Protocol to exist in table")
	if struct["Protocol"] then asserts.AssertTransportProtocol(struct["Protocol"]) end
	if struct["RecordType"] then asserts.AssertRRType(struct["RecordType"]) end
	if struct["RecordName"] then asserts.AssertDNSName(struct["RecordName"]) end
	if struct["ResponseCode"] then asserts.AssertDNSRCode(struct["ResponseCode"]) end
	if struct["Nameserver"] then asserts.AssertNameserver(struct["Nameserver"]) end
	if struct["RecordData"] then asserts.AssertRecordData(struct["RecordData"]) end
	for k,_ in pairs(struct) do
		assert(keys.TestDNSAnswerResponse[k], "TestDNSAnswerResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TestDNSAnswerResponse
-- <p>A complex type that contains the response to a <code>TestDNSAnswer</code> request. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Protocol [TransportProtocol] <p>The protocol that Amazon Route 53 used to respond to the request, either <code>UDP</code> or <code>TCP</code>. </p>
-- * RecordType [RRType] <p>The type of the resource record set that you submitted a request for.</p>
-- * RecordName [DNSName] <p>The name of the resource record set that you submitted a request for.</p>
-- * ResponseCode [DNSRCode] <p>A code that indicates whether the request is valid or not. The most common response code is <code>NOERROR</code>, meaning that the request is valid. If the response is not valid, Amazon Route 53 returns a response code that describes the error. For a list of possible response codes, see <a href="http://www.iana.org/assignments/dns-parameters/dns-parameters.xhtml#dns-parameters-6">DNS RCODES</a> on the IANA website. </p>
-- * Nameserver [Nameserver] <p>The Amazon Route 53 name server used to respond to the request.</p>
-- * RecordData [RecordData] <p>A list that contains values that Amazon Route 53 returned for this resource record set.</p>
-- Required key: Nameserver
-- Required key: RecordName
-- Required key: RecordType
-- Required key: RecordData
-- Required key: ResponseCode
-- Required key: Protocol
-- @return TestDNSAnswerResponse structure as a key-value pair table
function M.TestDNSAnswerResponse(args)
	assert(args, "You must provdide an argument table when creating TestDNSAnswerResponse")
	local t = { 
		["Protocol"] = args["Protocol"],
		["RecordType"] = args["RecordType"],
		["RecordName"] = args["RecordName"],
		["ResponseCode"] = args["ResponseCode"],
		["Nameserver"] = args["Nameserver"],
		["RecordData"] = args["RecordData"],
	}
	asserts.AssertTestDNSAnswerResponse(t)
	return t
end

keys.VPCAssociationAuthorizationNotFound = { ["message"] = true, nil }

function asserts.AssertVPCAssociationAuthorizationNotFound(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VPCAssociationAuthorizationNotFound to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.VPCAssociationAuthorizationNotFound[k], "VPCAssociationAuthorizationNotFound contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VPCAssociationAuthorizationNotFound
-- <p>The VPC that you specified is not authorized to be associated with the hosted zone.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>Descriptive message for the error response.</p>
-- @return VPCAssociationAuthorizationNotFound structure as a key-value pair table
function M.VPCAssociationAuthorizationNotFound(args)
	assert(args, "You must provdide an argument table when creating VPCAssociationAuthorizationNotFound")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertVPCAssociationAuthorizationNotFound(t)
	return t
end

keys.InvalidInput = { ["message"] = true, nil }

function asserts.AssertInvalidInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidInput to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidInput[k], "InvalidInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidInput
-- <p>The input is not valid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>Descriptive message for the error response.</p>
-- @return InvalidInput structure as a key-value pair table
function M.InvalidInput(args)
	assert(args, "You must provdide an argument table when creating InvalidInput")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidInput(t)
	return t
end

keys.CreateVPCAssociationAuthorizationResponse = { ["HostedZoneId"] = true, ["VPC"] = true, nil }

function asserts.AssertCreateVPCAssociationAuthorizationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateVPCAssociationAuthorizationResponse to be of type 'table'")
	assert(struct["HostedZoneId"], "Expected key HostedZoneId to exist in table")
	assert(struct["VPC"], "Expected key VPC to exist in table")
	if struct["HostedZoneId"] then asserts.AssertResourceId(struct["HostedZoneId"]) end
	if struct["VPC"] then asserts.AssertVPC(struct["VPC"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateVPCAssociationAuthorizationResponse[k], "CreateVPCAssociationAuthorizationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateVPCAssociationAuthorizationResponse
-- <p>A complex type that contains the response information from a <code>CreateVPCAssociationAuthorization</code> request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HostedZoneId [ResourceId] <p>The ID of the hosted zone that you authorized associating a VPC with.</p>
-- * VPC [VPC] <p>The VPC that you authorized associating with a hosted zone.</p>
-- Required key: HostedZoneId
-- Required key: VPC
-- @return CreateVPCAssociationAuthorizationResponse structure as a key-value pair table
function M.CreateVPCAssociationAuthorizationResponse(args)
	assert(args, "You must provdide an argument table when creating CreateVPCAssociationAuthorizationResponse")
	local t = { 
		["HostedZoneId"] = args["HostedZoneId"],
		["VPC"] = args["VPC"],
	}
	asserts.AssertCreateVPCAssociationAuthorizationResponse(t)
	return t
end

keys.HealthCheckAlreadyExists = { ["message"] = true, nil }

function asserts.AssertHealthCheckAlreadyExists(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HealthCheckAlreadyExists to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.HealthCheckAlreadyExists[k], "HealthCheckAlreadyExists contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HealthCheckAlreadyExists
-- <p> The health check you're attempting to create already exists. Amazon Route 53 returns this error when you submit a request that has the following values:</p> <ul> <li> <p>The same value for <code>CallerReference</code> as an existing health check, and one or more values that differ from the existing health check that has the same caller reference.</p> </li> <li> <p>The same value for <code>CallerReference</code> as a health check that you created and later deleted, regardless of the other settings in the request.</p> </li> </ul>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>Descriptive message for the error response.</p>
-- @return HealthCheckAlreadyExists structure as a key-value pair table
function M.HealthCheckAlreadyExists(args)
	assert(args, "You must provdide an argument table when creating HealthCheckAlreadyExists")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertHealthCheckAlreadyExists(t)
	return t
end

keys.LastVPCAssociation = { ["message"] = true, nil }

function asserts.AssertLastVPCAssociation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LastVPCAssociation to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.LastVPCAssociation[k], "LastVPCAssociation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LastVPCAssociation
-- <p>The VPC that you're trying to disassociate from the private hosted zone is the last VPC that is associated with the hosted zone. Amazon Route 53 doesn't support disassociating the last VPC from a hosted zone.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>Descriptive message for the error response.</p>
-- @return LastVPCAssociation structure as a key-value pair table
function M.LastVPCAssociation(args)
	assert(args, "You must provdide an argument table when creating LastVPCAssociation")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertLastVPCAssociation(t)
	return t
end

keys.ListHostedZonesRequest = { ["Marker"] = true, ["DelegationSetId"] = true, ["MaxItems"] = true, nil }

function asserts.AssertListHostedZonesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListHostedZonesRequest to be of type 'table'")
	if struct["Marker"] then asserts.AssertPageMarker(struct["Marker"]) end
	if struct["DelegationSetId"] then asserts.AssertResourceId(struct["DelegationSetId"]) end
	if struct["MaxItems"] then asserts.AssertPageMaxItems(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListHostedZonesRequest[k], "ListHostedZonesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListHostedZonesRequest
-- <p>A request to retrieve a list of the public and private hosted zones that are associated with the current AWS account.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [PageMarker] <p>If the value of <code>IsTruncated</code> in the previous response was <code>true</code>, you have more hosted zones. To get more hosted zones, submit another <code>ListHostedZones</code> request. </p> <p>For the value of <code>marker</code>, specify the value of <code>NextMarker</code> from the previous response, which is the ID of the first hosted zone that Amazon Route 53 will return if you submit another request.</p> <p>If the value of <code>IsTruncated</code> in the previous response was <code>false</code>, there are no more hosted zones to get.</p>
-- * DelegationSetId [ResourceId] <p>If you're using reusable delegation sets and you want to list all of the hosted zones that are associated with a reusable delegation set, specify the ID of that reusable delegation set. </p>
-- * MaxItems [PageMaxItems] <p>(Optional) The maximum number of hosted zones that you want Amazon Route 53 to return. If you have more than <code>maxitems</code> hosted zones, the value of <code>IsTruncated</code> in the response is <code>true</code>, and the value of <code>NextMarker</code> is the hosted zone ID of the first hosted zone that Amazon Route 53 will return if you submit another request.</p>
-- @return ListHostedZonesRequest structure as a key-value pair table
function M.ListHostedZonesRequest(args)
	assert(args, "You must provdide an argument table when creating ListHostedZonesRequest")
	local t = { 
		["Marker"] = args["Marker"],
		["DelegationSetId"] = args["DelegationSetId"],
		["MaxItems"] = args["MaxItems"],
	}
	asserts.AssertListHostedZonesRequest(t)
	return t
end

function asserts.AssertDNSName(str)
	assert(str)
	assert(type(str) == "string", "Expected DNSName to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
end

--  
function M.DNSName(str)
	asserts.AssertDNSName(str)
	return str
end

function asserts.AssertTagResourceType(str)
	assert(str)
	assert(type(str) == "string", "Expected TagResourceType to be of type 'string'")
end

--  
function M.TagResourceType(str)
	asserts.AssertTagResourceType(str)
	return str
end

function asserts.AssertNonce(str)
	assert(str)
	assert(type(str) == "string", "Expected Nonce to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Nonce(str)
	asserts.AssertNonce(str)
	return str
end

function asserts.AssertAssociateVPCComment(str)
	assert(str)
	assert(type(str) == "string", "Expected AssociateVPCComment to be of type 'string'")
end

--  
function M.AssociateVPCComment(str)
	asserts.AssertAssociateVPCComment(str)
	return str
end

function asserts.AssertTagKey(str)
	assert(str)
	assert(type(str) == "string", "Expected TagKey to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
end

--  
function M.TagKey(str)
	asserts.AssertTagKey(str)
	return str
end

function asserts.AssertPageMarker(str)
	assert(str)
	assert(type(str) == "string", "Expected PageMarker to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
end

--  
function M.PageMarker(str)
	asserts.AssertPageMarker(str)
	return str
end

function asserts.AssertGeoLocationCountryName(str)
	assert(str)
	assert(type(str) == "string", "Expected GeoLocationCountryName to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.GeoLocationCountryName(str)
	asserts.AssertGeoLocationCountryName(str)
	return str
end

function asserts.AssertGeoLocationSubdivisionCode(str)
	assert(str)
	assert(type(str) == "string", "Expected GeoLocationSubdivisionCode to be of type 'string'")
	assert(#str <= 3, "Expected string to be max 3 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.GeoLocationSubdivisionCode(str)
	asserts.AssertGeoLocationSubdivisionCode(str)
	return str
end

function asserts.AssertRData(str)
	assert(str)
	assert(type(str) == "string", "Expected RData to be of type 'string'")
	assert(#str <= 4000, "Expected string to be max 4000 characters")
end

--  
function M.RData(str)
	asserts.AssertRData(str)
	return str
end

function asserts.AssertRRType(str)
	assert(str)
	assert(type(str) == "string", "Expected RRType to be of type 'string'")
end

--  
function M.RRType(str)
	asserts.AssertRRType(str)
	return str
end

function asserts.AssertGeoLocationContinentName(str)
	assert(str)
	assert(type(str) == "string", "Expected GeoLocationContinentName to be of type 'string'")
	assert(#str <= 32, "Expected string to be max 32 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.GeoLocationContinentName(str)
	asserts.AssertGeoLocationContinentName(str)
	return str
end

function asserts.AssertResourcePath(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourcePath to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
end

--  
function M.ResourcePath(str)
	asserts.AssertResourcePath(str)
	return str
end

function asserts.AssertStatistic(str)
	assert(str)
	assert(type(str) == "string", "Expected Statistic to be of type 'string'")
end

--  
function M.Statistic(str)
	asserts.AssertStatistic(str)
	return str
end

function asserts.AssertIPAddressCidr(str)
	assert(str)
	assert(type(str) == "string", "Expected IPAddressCidr to be of type 'string'")
end

--  
function M.IPAddressCidr(str)
	asserts.AssertIPAddressCidr(str)
	return str
end

function asserts.AssertVPCId(str)
	assert(str)
	assert(type(str) == "string", "Expected VPCId to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
end

-- <p>(Private hosted zones only) The ID of an Amazon VPC. </p>
function M.VPCId(str)
	asserts.AssertVPCId(str)
	return str
end

function asserts.AssertPaginationToken(str)
	assert(str)
	assert(type(str) == "string", "Expected PaginationToken to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.PaginationToken(str)
	asserts.AssertPaginationToken(str)
	return str
end

function asserts.AssertMetricName(str)
	assert(str)
	assert(type(str) == "string", "Expected MetricName to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.MetricName(str)
	asserts.AssertMetricName(str)
	return str
end

function asserts.AssertComparisonOperator(str)
	assert(str)
	assert(type(str) == "string", "Expected ComparisonOperator to be of type 'string'")
end

--  
function M.ComparisonOperator(str)
	asserts.AssertComparisonOperator(str)
	return str
end

function asserts.AssertAlarmName(str)
	assert(str)
	assert(type(str) == "string", "Expected AlarmName to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AlarmName(str)
	asserts.AssertAlarmName(str)
	return str
end

function asserts.AssertResourceRecordSetFailover(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceRecordSetFailover to be of type 'string'")
end

--  
function M.ResourceRecordSetFailover(str)
	asserts.AssertResourceRecordSetFailover(str)
	return str
end

function asserts.AssertTrafficPolicyName(str)
	assert(str)
	assert(type(str) == "string", "Expected TrafficPolicyName to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
end

--  
function M.TrafficPolicyName(str)
	asserts.AssertTrafficPolicyName(str)
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

function asserts.AssertDisassociateVPCComment(str)
	assert(str)
	assert(type(str) == "string", "Expected DisassociateVPCComment to be of type 'string'")
end

--  
function M.DisassociateVPCComment(str)
	asserts.AssertDisassociateVPCComment(str)
	return str
end

function asserts.AssertChangeStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ChangeStatus to be of type 'string'")
end

--  
function M.ChangeStatus(str)
	asserts.AssertChangeStatus(str)
	return str
end

function asserts.AssertTagValue(str)
	assert(str)
	assert(type(str) == "string", "Expected TagValue to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.TagValue(str)
	asserts.AssertTagValue(str)
	return str
end

function asserts.AssertErrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorMessage to be of type 'string'")
end

--  
function M.ErrorMessage(str)
	asserts.AssertErrorMessage(str)
	return str
end

function asserts.AssertInsufficientDataHealthStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected InsufficientDataHealthStatus to be of type 'string'")
end

--  
function M.InsufficientDataHealthStatus(str)
	asserts.AssertInsufficientDataHealthStatus(str)
	return str
end

function asserts.AssertMaxResults(str)
	assert(str)
	assert(type(str) == "string", "Expected MaxResults to be of type 'string'")
end

--  
function M.MaxResults(str)
	asserts.AssertMaxResults(str)
	return str
end

function asserts.AssertVPCRegion(str)
	assert(str)
	assert(type(str) == "string", "Expected VPCRegion to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.VPCRegion(str)
	asserts.AssertVPCRegion(str)
	return str
end

function asserts.AssertMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected Message to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
end

--  
function M.Message(str)
	asserts.AssertMessage(str)
	return str
end

function asserts.AssertHealthCheckId(str)
	assert(str)
	assert(type(str) == "string", "Expected HealthCheckId to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
end

--  
function M.HealthCheckId(str)
	asserts.AssertHealthCheckId(str)
	return str
end

function asserts.AssertSearchString(str)
	assert(str)
	assert(type(str) == "string", "Expected SearchString to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
end

--  
function M.SearchString(str)
	asserts.AssertSearchString(str)
	return str
end

function asserts.AssertTrafficPolicyInstanceId(str)
	assert(str)
	assert(type(str) == "string", "Expected TrafficPolicyInstanceId to be of type 'string'")
	assert(#str <= 36, "Expected string to be max 36 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TrafficPolicyInstanceId(str)
	asserts.AssertTrafficPolicyInstanceId(str)
	return str
end

function asserts.AssertHealthCheckNonce(str)
	assert(str)
	assert(type(str) == "string", "Expected HealthCheckNonce to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.HealthCheckNonce(str)
	asserts.AssertHealthCheckNonce(str)
	return str
end

function asserts.AssertNamespace(str)
	assert(str)
	assert(type(str) == "string", "Expected Namespace to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Namespace(str)
	asserts.AssertNamespace(str)
	return str
end

function asserts.AssertDNSRCode(str)
	assert(str)
	assert(type(str) == "string", "Expected DNSRCode to be of type 'string'")
end

--  
function M.DNSRCode(str)
	asserts.AssertDNSRCode(str)
	return str
end

function asserts.AssertTrafficPolicyComment(str)
	assert(str)
	assert(type(str) == "string", "Expected TrafficPolicyComment to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
end

--  
function M.TrafficPolicyComment(str)
	asserts.AssertTrafficPolicyComment(str)
	return str
end

function asserts.AssertNameserver(str)
	assert(str)
	assert(type(str) == "string", "Expected Nameserver to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
end

--  
function M.Nameserver(str)
	asserts.AssertNameserver(str)
	return str
end

function asserts.AssertDimensionField(str)
	assert(str)
	assert(type(str) == "string", "Expected DimensionField to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DimensionField(str)
	asserts.AssertDimensionField(str)
	return str
end

function asserts.AssertResourceRecordSetIdentifier(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceRecordSetIdentifier to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ResourceRecordSetIdentifier(str)
	asserts.AssertResourceRecordSetIdentifier(str)
	return str
end

function asserts.AssertIPAddress(str)
	assert(str)
	assert(type(str) == "string", "Expected IPAddress to be of type 'string'")
	assert(#str <= 45, "Expected string to be max 45 characters")
end

--  
function M.IPAddress(str)
	asserts.AssertIPAddress(str)
	return str
end

function asserts.AssertPageMaxItems(str)
	assert(str)
	assert(type(str) == "string", "Expected PageMaxItems to be of type 'string'")
end

--  
function M.PageMaxItems(str)
	asserts.AssertPageMaxItems(str)
	return str
end

function asserts.AssertGeoLocationContinentCode(str)
	assert(str)
	assert(type(str) == "string", "Expected GeoLocationContinentCode to be of type 'string'")
	assert(#str <= 2, "Expected string to be max 2 characters")
	assert(#str >= 2, "Expected string to be min 2 characters")
end

--  
function M.GeoLocationContinentCode(str)
	asserts.AssertGeoLocationContinentCode(str)
	return str
end

function asserts.AssertTrafficPolicyInstanceState(str)
	assert(str)
	assert(type(str) == "string", "Expected TrafficPolicyInstanceState to be of type 'string'")
end

--  
function M.TrafficPolicyInstanceState(str)
	asserts.AssertTrafficPolicyInstanceState(str)
	return str
end

function asserts.AssertFullyQualifiedDomainName(str)
	assert(str)
	assert(type(str) == "string", "Expected FullyQualifiedDomainName to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
end

--  
function M.FullyQualifiedDomainName(str)
	asserts.AssertFullyQualifiedDomainName(str)
	return str
end

function asserts.AssertResourceURI(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceURI to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
end

--  
function M.ResourceURI(str)
	asserts.AssertResourceURI(str)
	return str
end

function asserts.AssertTransportProtocol(str)
	assert(str)
	assert(type(str) == "string", "Expected TransportProtocol to be of type 'string'")
end

--  
function M.TransportProtocol(str)
	asserts.AssertTransportProtocol(str)
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

function asserts.AssertCloudWatchRegion(str)
	assert(str)
	assert(type(str) == "string", "Expected CloudWatchRegion to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.CloudWatchRegion(str)
	asserts.AssertCloudWatchRegion(str)
	return str
end

function asserts.AssertTrafficPolicyId(str)
	assert(str)
	assert(type(str) == "string", "Expected TrafficPolicyId to be of type 'string'")
	assert(#str <= 36, "Expected string to be max 36 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TrafficPolicyId(str)
	asserts.AssertTrafficPolicyId(str)
	return str
end

function asserts.AssertResourceDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceDescription to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.ResourceDescription(str)
	asserts.AssertResourceDescription(str)
	return str
end

function asserts.AssertTrafficPolicyDocument(str)
	assert(str)
	assert(type(str) == "string", "Expected TrafficPolicyDocument to be of type 'string'")
	assert(#str <= 102400, "Expected string to be max 102400 characters")
end

--  
function M.TrafficPolicyDocument(str)
	asserts.AssertTrafficPolicyDocument(str)
	return str
end

function asserts.AssertTrafficPolicyVersionMarker(str)
	assert(str)
	assert(type(str) == "string", "Expected TrafficPolicyVersionMarker to be of type 'string'")
	assert(#str <= 4, "Expected string to be max 4 characters")
end

--  
function M.TrafficPolicyVersionMarker(str)
	asserts.AssertTrafficPolicyVersionMarker(str)
	return str
end

function asserts.AssertResourceId(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceId to be of type 'string'")
	assert(#str <= 32, "Expected string to be max 32 characters")
end

--  
function M.ResourceId(str)
	asserts.AssertResourceId(str)
	return str
end

function asserts.AssertRecordDataEntry(str)
	assert(str)
	assert(type(str) == "string", "Expected RecordDataEntry to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
end

-- <p>A value that Amazon Route 53 returned for this resource record set. A <code>RecordDataEntry</code> element is one of the following:</p> <ul> <li> <p>For non-alias resource record sets, a <code>RecordDataEntry</code> element contains one value in the resource record set. If the resource record set contains multiple values, the response includes one <code>RecordDataEntry</code> element for each value.</p> </li> <li> <p>For multiple resource record sets that have the same name and type, which includes weighted, latency, geolocation, and failover, a <code>RecordDataEntry</code> element contains the value from the appropriate resource record set based on the request.</p> </li> <li> <p>For alias resource record sets that refer to AWS resources other than another resource record set, the <code>RecordDataEntry</code> element contains an IP address or a domain name for the AWS resource, depending on the type of resource.</p> </li> <li> <p>For alias resource record sets that refer to other resource record sets, a <code>RecordDataEntry</code> element contains one value from the referenced resource record set. If the referenced resource record set contains multiple values, the response includes one <code>RecordDataEntry</code> element for each value.</p> </li> </ul>
function M.RecordDataEntry(str)
	asserts.AssertRecordDataEntry(str)
	return str
end

function asserts.AssertGeoLocationSubdivisionName(str)
	assert(str)
	assert(type(str) == "string", "Expected GeoLocationSubdivisionName to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.GeoLocationSubdivisionName(str)
	asserts.AssertGeoLocationSubdivisionName(str)
	return str
end

function asserts.AssertSubnetMask(str)
	assert(str)
	assert(type(str) == "string", "Expected SubnetMask to be of type 'string'")
	assert(#str <= 3, "Expected string to be max 3 characters")
end

--  
function M.SubnetMask(str)
	asserts.AssertSubnetMask(str)
	return str
end

function asserts.AssertHealthCheckType(str)
	assert(str)
	assert(type(str) == "string", "Expected HealthCheckType to be of type 'string'")
end

--  
function M.HealthCheckType(str)
	asserts.AssertHealthCheckType(str)
	return str
end

function asserts.AssertHealthCheckRegion(str)
	assert(str)
	assert(type(str) == "string", "Expected HealthCheckRegion to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.HealthCheckRegion(str)
	asserts.AssertHealthCheckRegion(str)
	return str
end

function asserts.AssertTagResourceId(str)
	assert(str)
	assert(type(str) == "string", "Expected TagResourceId to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
end

--  
function M.TagResourceId(str)
	asserts.AssertTagResourceId(str)
	return str
end

function asserts.AssertResourceRecordSetRegion(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceRecordSetRegion to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ResourceRecordSetRegion(str)
	asserts.AssertResourceRecordSetRegion(str)
	return str
end

function asserts.AssertGeoLocationCountryCode(str)
	assert(str)
	assert(type(str) == "string", "Expected GeoLocationCountryCode to be of type 'string'")
	assert(#str <= 2, "Expected string to be max 2 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.GeoLocationCountryCode(str)
	asserts.AssertGeoLocationCountryCode(str)
	return str
end

function asserts.AssertThreshold(double)
	assert(double)
	assert(type(double) == "number", "Expected Threshold to be of type 'number'")
end

function M.Threshold(double)
	asserts.AssertThreshold(double)
	return double
end

function asserts.AssertHostedZoneRRSetCount(long)
	assert(long)
	assert(type(long) == "number", "Expected HostedZoneRRSetCount to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.HostedZoneRRSetCount(long)
	asserts.AssertHostedZoneRRSetCount(long)
	return long
end

function asserts.AssertTTL(long)
	assert(long)
	assert(type(long) == "number", "Expected TTL to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.TTL(long)
	asserts.AssertTTL(long)
	return long
end

function asserts.AssertHealthCheckCount(long)
	assert(long)
	assert(type(long) == "number", "Expected HealthCheckCount to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.HealthCheckCount(long)
	asserts.AssertHealthCheckCount(long)
	return long
end

function asserts.AssertHostedZoneCount(long)
	assert(long)
	assert(type(long) == "number", "Expected HostedZoneCount to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.HostedZoneCount(long)
	asserts.AssertHostedZoneCount(long)
	return long
end

function asserts.AssertResourceRecordSetWeight(long)
	assert(long)
	assert(type(long) == "number", "Expected ResourceRecordSetWeight to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.ResourceRecordSetWeight(long)
	asserts.AssertResourceRecordSetWeight(long)
	return long
end

function asserts.AssertHealthCheckVersion(long)
	assert(long)
	assert(type(long) == "number", "Expected HealthCheckVersion to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.HealthCheckVersion(long)
	asserts.AssertHealthCheckVersion(long)
	return long
end

function asserts.AssertPeriod(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Period to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 60, "Expected integer to be min 60")
end

function M.Period(integer)
	asserts.AssertPeriod(integer)
	return integer
end

function asserts.AssertEvaluationPeriods(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected EvaluationPeriods to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.EvaluationPeriods(integer)
	asserts.AssertEvaluationPeriods(integer)
	return integer
end

function asserts.AssertHealthThreshold(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected HealthThreshold to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 256, "Expected integer to be max 256")
end

function M.HealthThreshold(integer)
	asserts.AssertHealthThreshold(integer)
	return integer
end

function asserts.AssertTrafficPolicyVersion(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected TrafficPolicyVersion to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 1000, "Expected integer to be max 1000")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.TrafficPolicyVersion(integer)
	asserts.AssertTrafficPolicyVersion(integer)
	return integer
end

function asserts.AssertTrafficPolicyInstanceCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected TrafficPolicyInstanceCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.TrafficPolicyInstanceCount(integer)
	asserts.AssertTrafficPolicyInstanceCount(integer)
	return integer
end

function asserts.AssertFailureThreshold(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected FailureThreshold to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 10, "Expected integer to be max 10")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.FailureThreshold(integer)
	asserts.AssertFailureThreshold(integer)
	return integer
end

function asserts.AssertRequestInterval(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected RequestInterval to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 30, "Expected integer to be max 30")
	assert(integer >= 10, "Expected integer to be min 10")
end

function M.RequestInterval(integer)
	asserts.AssertRequestInterval(integer)
	return integer
end

function asserts.AssertPort(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Port to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 65535, "Expected integer to be max 65535")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.Port(integer)
	asserts.AssertPort(integer)
	return integer
end

function asserts.AssertMeasureLatency(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected MeasureLatency to be of type 'boolean'")
end

function M.MeasureLatency(boolean)
	asserts.AssertMeasureLatency(boolean)
	return boolean
end

function asserts.AssertAliasHealthEnabled(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected AliasHealthEnabled to be of type 'boolean'")
end

function M.AliasHealthEnabled(boolean)
	asserts.AssertAliasHealthEnabled(boolean)
	return boolean
end

function asserts.AssertEnableSNI(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected EnableSNI to be of type 'boolean'")
end

function M.EnableSNI(boolean)
	asserts.AssertEnableSNI(boolean)
	return boolean
end

function asserts.AssertPageTruncated(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected PageTruncated to be of type 'boolean'")
end

function M.PageTruncated(boolean)
	asserts.AssertPageTruncated(boolean)
	return boolean
end

function asserts.AssertInverted(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Inverted to be of type 'boolean'")
end

function M.Inverted(boolean)
	asserts.AssertInverted(boolean)
	return boolean
end

function asserts.AssertIsPrivateZone(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected IsPrivateZone to be of type 'boolean'")
end

function M.IsPrivateZone(boolean)
	asserts.AssertIsPrivateZone(boolean)
	return boolean
end

function asserts.AssertResourceRecordSetMultiValueAnswer(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected ResourceRecordSetMultiValueAnswer to be of type 'boolean'")
end

function M.ResourceRecordSetMultiValueAnswer(boolean)
	asserts.AssertResourceRecordSetMultiValueAnswer(boolean)
	return boolean
end

function asserts.AssertTimeStamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected TimeStamp to be of type 'string'")
end

function M.TimeStamp(timestamp)
	asserts.AssertTimeStamp(timestamp)
	return timestamp
end

function asserts.AssertErrorMessages(list)
	assert(list)
	assert(type(list) == "table", "Expected ErrorMessages to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertErrorMessage(v)
	end
end

--  
-- List of ErrorMessage objects
function M.ErrorMessages(list)
	asserts.AssertErrorMessages(list)
	return list
end

function asserts.AssertTagResourceIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagResourceIdList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertTagResourceId(v)
	end
end

--  
-- List of TagResourceId objects
function M.TagResourceIdList(list)
	asserts.AssertTagResourceIdList(list)
	return list
end

function asserts.AssertRecordData(list)
	assert(list)
	assert(type(list) == "table", "Expected RecordData to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRecordDataEntry(v)
	end
end

--  
-- List of RecordDataEntry objects
function M.RecordData(list)
	asserts.AssertRecordData(list)
	return list
end

function asserts.AssertDelegationSets(list)
	assert(list)
	assert(type(list) == "table", "Expected DelegationSets to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDelegationSet(v)
	end
end

--  
-- List of DelegationSet objects
function M.DelegationSets(list)
	asserts.AssertDelegationSets(list)
	return list
end

function asserts.AssertHostedZones(list)
	assert(list)
	assert(type(list) == "table", "Expected HostedZones to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertHostedZone(v)
	end
end

--  
-- List of HostedZone objects
function M.HostedZones(list)
	asserts.AssertHostedZones(list)
	return list
end

function asserts.AssertTagKeyList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagKeyList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertTagKey(v)
	end
end

--  
-- List of TagKey objects
function M.TagKeyList(list)
	asserts.AssertTagKeyList(list)
	return list
end

function asserts.AssertGeoLocationDetailsList(list)
	assert(list)
	assert(type(list) == "table", "Expected GeoLocationDetailsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertGeoLocationDetails(v)
	end
end

--  
-- List of GeoLocationDetails objects
function M.GeoLocationDetailsList(list)
	asserts.AssertGeoLocationDetailsList(list)
	return list
end

function asserts.AssertHealthChecks(list)
	assert(list)
	assert(type(list) == "table", "Expected HealthChecks to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertHealthCheck(v)
	end
end

--  
-- List of HealthCheck objects
function M.HealthChecks(list)
	asserts.AssertHealthChecks(list)
	return list
end

function asserts.AssertHealthCheckRegionList(list)
	assert(list)
	assert(type(list) == "table", "Expected HealthCheckRegionList to be of type ''table")
	assert(#list <= 64, "Expected list to be contain 64 elements")
	assert(#list >= 3, "Expected list to be contain 3 elements")
	for _,v in ipairs(list) do
		asserts.AssertHealthCheckRegion(v)
	end
end

--  
-- List of HealthCheckRegion objects
function M.HealthCheckRegionList(list)
	asserts.AssertHealthCheckRegionList(list)
	return list
end

function asserts.AssertChanges(list)
	assert(list)
	assert(type(list) == "table", "Expected Changes to be of type ''table")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertChange(v)
	end
end

--  
-- List of Change objects
function M.Changes(list)
	asserts.AssertChanges(list)
	return list
end

function asserts.AssertVPCs(list)
	assert(list)
	assert(type(list) == "table", "Expected VPCs to be of type ''table")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertVPC(v)
	end
end

-- <p>(Private hosted zones only) A list of <code>VPC</code> elements.</p>
-- List of VPC objects
function M.VPCs(list)
	asserts.AssertVPCs(list)
	return list
end

function asserts.AssertResourceRecords(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceRecords to be of type ''table")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertResourceRecord(v)
	end
end

--  
-- List of ResourceRecord objects
function M.ResourceRecords(list)
	asserts.AssertResourceRecords(list)
	return list
end

function asserts.AssertDelegationSetNameServers(list)
	assert(list)
	assert(type(list) == "table", "Expected DelegationSetNameServers to be of type ''table")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertDNSName(v)
	end
end

--  
-- List of DNSName objects
function M.DelegationSetNameServers(list)
	asserts.AssertDelegationSetNameServers(list)
	return list
end

function asserts.AssertTrafficPolicySummaries(list)
	assert(list)
	assert(type(list) == "table", "Expected TrafficPolicySummaries to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTrafficPolicySummary(v)
	end
end

--  
-- List of TrafficPolicySummary objects
function M.TrafficPolicySummaries(list)
	asserts.AssertTrafficPolicySummaries(list)
	return list
end

function asserts.AssertResourceRecordSets(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceRecordSets to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertResourceRecordSet(v)
	end
end

--  
-- List of ResourceRecordSet objects
function M.ResourceRecordSets(list)
	asserts.AssertResourceRecordSets(list)
	return list
end

function asserts.AssertTrafficPolicyInstances(list)
	assert(list)
	assert(type(list) == "table", "Expected TrafficPolicyInstances to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTrafficPolicyInstance(v)
	end
end

--  
-- List of TrafficPolicyInstance objects
function M.TrafficPolicyInstances(list)
	asserts.AssertTrafficPolicyInstances(list)
	return list
end

function asserts.AssertDimensionList(list)
	assert(list)
	assert(type(list) == "table", "Expected DimensionList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	for _,v in ipairs(list) do
		asserts.AssertDimension(v)
	end
end

--  
-- List of Dimension objects
function M.DimensionList(list)
	asserts.AssertDimensionList(list)
	return list
end

function asserts.AssertChildHealthCheckList(list)
	assert(list)
	assert(type(list) == "table", "Expected ChildHealthCheckList to be of type ''table")
	assert(#list <= 256, "Expected list to be contain 256 elements")
	for _,v in ipairs(list) do
		asserts.AssertHealthCheckId(v)
	end
end

--  
-- List of HealthCheckId objects
function M.ChildHealthCheckList(list)
	asserts.AssertChildHealthCheckList(list)
	return list
end

function asserts.AssertHealthCheckObservations(list)
	assert(list)
	assert(type(list) == "table", "Expected HealthCheckObservations to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertHealthCheckObservation(v)
	end
end

--  
-- List of HealthCheckObservation objects
function M.HealthCheckObservations(list)
	asserts.AssertHealthCheckObservations(list)
	return list
end

function asserts.AssertResourceTagSetList(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceTagSetList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertResourceTagSet(v)
	end
end

--  
-- List of ResourceTagSet objects
function M.ResourceTagSetList(list)
	asserts.AssertResourceTagSetList(list)
	return list
end

function asserts.AssertTrafficPolicies(list)
	assert(list)
	assert(type(list) == "table", "Expected TrafficPolicies to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTrafficPolicy(v)
	end
end

--  
-- List of TrafficPolicy objects
function M.TrafficPolicies(list)
	asserts.AssertTrafficPolicies(list)
	return list
end

function asserts.AssertCheckerIpRanges(list)
	assert(list)
	assert(type(list) == "table", "Expected CheckerIpRanges to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertIPAddressCidr(v)
	end
end

--  
-- List of IPAddressCidr objects
function M.CheckerIpRanges(list)
	asserts.AssertCheckerIpRanges(list)
	return list
end

function asserts.AssertTagList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertTag(v)
	end
end

--  
-- List of Tag objects
function M.TagList(list)
	asserts.AssertTagList(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


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
	assert(config.region, "You must provide a region in the config table")

	settings.service = M.metadata.endpoint_prefix
	settings.protocol = M.metadata.protocol
	settings.region = config.region
	settings.endpoint = config.endpoint_override or endpoint_for_region(config.region, config.use_dualstack)
	settings.uri = (config.scheme or "https") .. "://" .. settings.endpoint
end


--
-- OPERATIONS
--
--- Call ListTrafficPolicyInstancesByHostedZone asynchronously, invoking a callback when done
-- @param ListTrafficPolicyInstancesByHostedZoneRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListTrafficPolicyInstancesByHostedZoneAsync(ListTrafficPolicyInstancesByHostedZoneRequest, cb)
	assert(ListTrafficPolicyInstancesByHostedZoneRequest, "You must provide a ListTrafficPolicyInstancesByHostedZoneRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListTrafficPolicyInstancesByHostedZone",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/2013-04-01/trafficpolicyinstances/hostedzone", ListTrafficPolicyInstancesByHostedZoneRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListTrafficPolicyInstancesByHostedZone synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListTrafficPolicyInstancesByHostedZoneRequest
-- @return response
-- @return error_message
function M.ListTrafficPolicyInstancesByHostedZoneSync(ListTrafficPolicyInstancesByHostedZoneRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTrafficPolicyInstancesByHostedZoneAsync(ListTrafficPolicyInstancesByHostedZoneRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetCheckerIpRanges asynchronously, invoking a callback when done
-- @param GetCheckerIpRangesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetCheckerIpRangesAsync(GetCheckerIpRangesRequest, cb)
	assert(GetCheckerIpRangesRequest, "You must provide a GetCheckerIpRangesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetCheckerIpRanges",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/2013-04-01/checkeripranges", GetCheckerIpRangesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetCheckerIpRanges synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetCheckerIpRangesRequest
-- @return response
-- @return error_message
function M.GetCheckerIpRangesSync(GetCheckerIpRangesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetCheckerIpRangesAsync(GetCheckerIpRangesRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListTrafficPolicyInstancesByPolicy asynchronously, invoking a callback when done
-- @param ListTrafficPolicyInstancesByPolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListTrafficPolicyInstancesByPolicyAsync(ListTrafficPolicyInstancesByPolicyRequest, cb)
	assert(ListTrafficPolicyInstancesByPolicyRequest, "You must provide a ListTrafficPolicyInstancesByPolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListTrafficPolicyInstancesByPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/2013-04-01/trafficpolicyinstances/trafficpolicy", ListTrafficPolicyInstancesByPolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListTrafficPolicyInstancesByPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListTrafficPolicyInstancesByPolicyRequest
-- @return response
-- @return error_message
function M.ListTrafficPolicyInstancesByPolicySync(ListTrafficPolicyInstancesByPolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTrafficPolicyInstancesByPolicyAsync(ListTrafficPolicyInstancesByPolicyRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListTrafficPolicies asynchronously, invoking a callback when done
-- @param ListTrafficPoliciesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListTrafficPoliciesAsync(ListTrafficPoliciesRequest, cb)
	assert(ListTrafficPoliciesRequest, "You must provide a ListTrafficPoliciesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListTrafficPolicies",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/2013-04-01/trafficpolicies", ListTrafficPoliciesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListTrafficPolicies synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListTrafficPoliciesRequest
-- @return response
-- @return error_message
function M.ListTrafficPoliciesSync(ListTrafficPoliciesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTrafficPoliciesAsync(ListTrafficPoliciesRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateHostedZoneComment asynchronously, invoking a callback when done
-- @param UpdateHostedZoneCommentRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateHostedZoneCommentAsync(UpdateHostedZoneCommentRequest, cb)
	assert(UpdateHostedZoneCommentRequest, "You must provide a UpdateHostedZoneCommentRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateHostedZoneComment",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/2013-04-01/hostedzone/{Id}", UpdateHostedZoneCommentRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateHostedZoneComment synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateHostedZoneCommentRequest
-- @return response
-- @return error_message
function M.UpdateHostedZoneCommentSync(UpdateHostedZoneCommentRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateHostedZoneCommentAsync(UpdateHostedZoneCommentRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ChangeTagsForResource asynchronously, invoking a callback when done
-- @param ChangeTagsForResourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ChangeTagsForResourceAsync(ChangeTagsForResourceRequest, cb)
	assert(ChangeTagsForResourceRequest, "You must provide a ChangeTagsForResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ChangeTagsForResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/2013-04-01/tags/{ResourceType}/{ResourceId}", ChangeTagsForResourceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ChangeTagsForResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ChangeTagsForResourceRequest
-- @return response
-- @return error_message
function M.ChangeTagsForResourceSync(ChangeTagsForResourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ChangeTagsForResourceAsync(ChangeTagsForResourceRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetHealthCheck asynchronously, invoking a callback when done
-- @param GetHealthCheckRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetHealthCheckAsync(GetHealthCheckRequest, cb)
	assert(GetHealthCheckRequest, "You must provide a GetHealthCheckRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetHealthCheck",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/2013-04-01/healthcheck/{HealthCheckId}", GetHealthCheckRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetHealthCheck synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetHealthCheckRequest
-- @return response
-- @return error_message
function M.GetHealthCheckSync(GetHealthCheckRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetHealthCheckAsync(GetHealthCheckRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListHostedZonesByName asynchronously, invoking a callback when done
-- @param ListHostedZonesByNameRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListHostedZonesByNameAsync(ListHostedZonesByNameRequest, cb)
	assert(ListHostedZonesByNameRequest, "You must provide a ListHostedZonesByNameRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListHostedZonesByName",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/2013-04-01/hostedzonesbyname", ListHostedZonesByNameRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListHostedZonesByName synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListHostedZonesByNameRequest
-- @return response
-- @return error_message
function M.ListHostedZonesByNameSync(ListHostedZonesByNameRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListHostedZonesByNameAsync(ListHostedZonesByNameRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetHostedZone asynchronously, invoking a callback when done
-- @param GetHostedZoneRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetHostedZoneAsync(GetHostedZoneRequest, cb)
	assert(GetHostedZoneRequest, "You must provide a GetHostedZoneRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetHostedZone",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/2013-04-01/hostedzone/{Id}", GetHostedZoneRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetHostedZone synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetHostedZoneRequest
-- @return response
-- @return error_message
function M.GetHostedZoneSync(GetHostedZoneRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetHostedZoneAsync(GetHostedZoneRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteReusableDelegationSet asynchronously, invoking a callback when done
-- @param DeleteReusableDelegationSetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteReusableDelegationSetAsync(DeleteReusableDelegationSetRequest, cb)
	assert(DeleteReusableDelegationSetRequest, "You must provide a DeleteReusableDelegationSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteReusableDelegationSet",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(settings.uri, "/2013-04-01/delegationset/{Id}", DeleteReusableDelegationSetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteReusableDelegationSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteReusableDelegationSetRequest
-- @return response
-- @return error_message
function M.DeleteReusableDelegationSetSync(DeleteReusableDelegationSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteReusableDelegationSetAsync(DeleteReusableDelegationSetRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteTrafficPolicyInstance asynchronously, invoking a callback when done
-- @param DeleteTrafficPolicyInstanceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteTrafficPolicyInstanceAsync(DeleteTrafficPolicyInstanceRequest, cb)
	assert(DeleteTrafficPolicyInstanceRequest, "You must provide a DeleteTrafficPolicyInstanceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteTrafficPolicyInstance",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(settings.uri, "/2013-04-01/trafficpolicyinstance/{Id}", DeleteTrafficPolicyInstanceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteTrafficPolicyInstance synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteTrafficPolicyInstanceRequest
-- @return response
-- @return error_message
function M.DeleteTrafficPolicyInstanceSync(DeleteTrafficPolicyInstanceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteTrafficPolicyInstanceAsync(DeleteTrafficPolicyInstanceRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetHostedZoneCount asynchronously, invoking a callback when done
-- @param GetHostedZoneCountRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetHostedZoneCountAsync(GetHostedZoneCountRequest, cb)
	assert(GetHostedZoneCountRequest, "You must provide a GetHostedZoneCountRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetHostedZoneCount",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/2013-04-01/hostedzonecount", GetHostedZoneCountRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetHostedZoneCount synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetHostedZoneCountRequest
-- @return response
-- @return error_message
function M.GetHostedZoneCountSync(GetHostedZoneCountRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetHostedZoneCountAsync(GetHostedZoneCountRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetTrafficPolicyInstanceCount asynchronously, invoking a callback when done
-- @param GetTrafficPolicyInstanceCountRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetTrafficPolicyInstanceCountAsync(GetTrafficPolicyInstanceCountRequest, cb)
	assert(GetTrafficPolicyInstanceCountRequest, "You must provide a GetTrafficPolicyInstanceCountRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetTrafficPolicyInstanceCount",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/2013-04-01/trafficpolicyinstancecount", GetTrafficPolicyInstanceCountRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetTrafficPolicyInstanceCount synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetTrafficPolicyInstanceCountRequest
-- @return response
-- @return error_message
function M.GetTrafficPolicyInstanceCountSync(GetTrafficPolicyInstanceCountRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetTrafficPolicyInstanceCountAsync(GetTrafficPolicyInstanceCountRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateTrafficPolicyComment asynchronously, invoking a callback when done
-- @param UpdateTrafficPolicyCommentRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateTrafficPolicyCommentAsync(UpdateTrafficPolicyCommentRequest, cb)
	assert(UpdateTrafficPolicyCommentRequest, "You must provide a UpdateTrafficPolicyCommentRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateTrafficPolicyComment",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/2013-04-01/trafficpolicy/{Id}/{Version}", UpdateTrafficPolicyCommentRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateTrafficPolicyComment synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateTrafficPolicyCommentRequest
-- @return response
-- @return error_message
function M.UpdateTrafficPolicyCommentSync(UpdateTrafficPolicyCommentRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateTrafficPolicyCommentAsync(UpdateTrafficPolicyCommentRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ChangeResourceRecordSets asynchronously, invoking a callback when done
-- @param ChangeResourceRecordSetsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ChangeResourceRecordSetsAsync(ChangeResourceRecordSetsRequest, cb)
	assert(ChangeResourceRecordSetsRequest, "You must provide a ChangeResourceRecordSetsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ChangeResourceRecordSets",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/2013-04-01/hostedzone/{Id}/rrset/", ChangeResourceRecordSetsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ChangeResourceRecordSets synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ChangeResourceRecordSetsRequest
-- @return response
-- @return error_message
function M.ChangeResourceRecordSetsSync(ChangeResourceRecordSetsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ChangeResourceRecordSetsAsync(ChangeResourceRecordSetsRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteTrafficPolicy asynchronously, invoking a callback when done
-- @param DeleteTrafficPolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteTrafficPolicyAsync(DeleteTrafficPolicyRequest, cb)
	assert(DeleteTrafficPolicyRequest, "You must provide a DeleteTrafficPolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteTrafficPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(settings.uri, "/2013-04-01/trafficpolicy/{Id}/{Version}", DeleteTrafficPolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteTrafficPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteTrafficPolicyRequest
-- @return response
-- @return error_message
function M.DeleteTrafficPolicySync(DeleteTrafficPolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteTrafficPolicyAsync(DeleteTrafficPolicyRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateHostedZone asynchronously, invoking a callback when done
-- @param CreateHostedZoneRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateHostedZoneAsync(CreateHostedZoneRequest, cb)
	assert(CreateHostedZoneRequest, "You must provide a CreateHostedZoneRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateHostedZone",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/2013-04-01/hostedzone", CreateHostedZoneRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateHostedZone synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateHostedZoneRequest
-- @return response
-- @return error_message
function M.CreateHostedZoneSync(CreateHostedZoneRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateHostedZoneAsync(CreateHostedZoneRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateVPCAssociationAuthorization asynchronously, invoking a callback when done
-- @param CreateVPCAssociationAuthorizationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateVPCAssociationAuthorizationAsync(CreateVPCAssociationAuthorizationRequest, cb)
	assert(CreateVPCAssociationAuthorizationRequest, "You must provide a CreateVPCAssociationAuthorizationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateVPCAssociationAuthorization",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/2013-04-01/hostedzone/{Id}/authorizevpcassociation", CreateVPCAssociationAuthorizationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateVPCAssociationAuthorization synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateVPCAssociationAuthorizationRequest
-- @return response
-- @return error_message
function M.CreateVPCAssociationAuthorizationSync(CreateVPCAssociationAuthorizationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateVPCAssociationAuthorizationAsync(CreateVPCAssociationAuthorizationRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteHostedZone asynchronously, invoking a callback when done
-- @param DeleteHostedZoneRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteHostedZoneAsync(DeleteHostedZoneRequest, cb)
	assert(DeleteHostedZoneRequest, "You must provide a DeleteHostedZoneRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteHostedZone",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(settings.uri, "/2013-04-01/hostedzone/{Id}", DeleteHostedZoneRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteHostedZone synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteHostedZoneRequest
-- @return response
-- @return error_message
function M.DeleteHostedZoneSync(DeleteHostedZoneRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteHostedZoneAsync(DeleteHostedZoneRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetHealthCheckStatus asynchronously, invoking a callback when done
-- @param GetHealthCheckStatusRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetHealthCheckStatusAsync(GetHealthCheckStatusRequest, cb)
	assert(GetHealthCheckStatusRequest, "You must provide a GetHealthCheckStatusRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetHealthCheckStatus",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/2013-04-01/healthcheck/{HealthCheckId}/status", GetHealthCheckStatusRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetHealthCheckStatus synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetHealthCheckStatusRequest
-- @return response
-- @return error_message
function M.GetHealthCheckStatusSync(GetHealthCheckStatusRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetHealthCheckStatusAsync(GetHealthCheckStatusRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call TestDNSAnswer asynchronously, invoking a callback when done
-- @param TestDNSAnswerRequest
-- @param cb Callback function accepting two args: response, error_message
function M.TestDNSAnswerAsync(TestDNSAnswerRequest, cb)
	assert(TestDNSAnswerRequest, "You must provide a TestDNSAnswerRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".TestDNSAnswer",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/2013-04-01/testdnsanswer", TestDNSAnswerRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call TestDNSAnswer synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param TestDNSAnswerRequest
-- @return response
-- @return error_message
function M.TestDNSAnswerSync(TestDNSAnswerRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.TestDNSAnswerAsync(TestDNSAnswerRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListReusableDelegationSets asynchronously, invoking a callback when done
-- @param ListReusableDelegationSetsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListReusableDelegationSetsAsync(ListReusableDelegationSetsRequest, cb)
	assert(ListReusableDelegationSetsRequest, "You must provide a ListReusableDelegationSetsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListReusableDelegationSets",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/2013-04-01/delegationset", ListReusableDelegationSetsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListReusableDelegationSets synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListReusableDelegationSetsRequest
-- @return response
-- @return error_message
function M.ListReusableDelegationSetsSync(ListReusableDelegationSetsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListReusableDelegationSetsAsync(ListReusableDelegationSetsRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetTrafficPolicy asynchronously, invoking a callback when done
-- @param GetTrafficPolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetTrafficPolicyAsync(GetTrafficPolicyRequest, cb)
	assert(GetTrafficPolicyRequest, "You must provide a GetTrafficPolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetTrafficPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/2013-04-01/trafficpolicy/{Id}/{Version}", GetTrafficPolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetTrafficPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetTrafficPolicyRequest
-- @return response
-- @return error_message
function M.GetTrafficPolicySync(GetTrafficPolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetTrafficPolicyAsync(GetTrafficPolicyRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateTrafficPolicyInstance asynchronously, invoking a callback when done
-- @param CreateTrafficPolicyInstanceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateTrafficPolicyInstanceAsync(CreateTrafficPolicyInstanceRequest, cb)
	assert(CreateTrafficPolicyInstanceRequest, "You must provide a CreateTrafficPolicyInstanceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateTrafficPolicyInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/2013-04-01/trafficpolicyinstance", CreateTrafficPolicyInstanceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateTrafficPolicyInstance synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateTrafficPolicyInstanceRequest
-- @return response
-- @return error_message
function M.CreateTrafficPolicyInstanceSync(CreateTrafficPolicyInstanceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateTrafficPolicyInstanceAsync(CreateTrafficPolicyInstanceRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetGeoLocation asynchronously, invoking a callback when done
-- @param GetGeoLocationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetGeoLocationAsync(GetGeoLocationRequest, cb)
	assert(GetGeoLocationRequest, "You must provide a GetGeoLocationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetGeoLocation",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/2013-04-01/geolocation", GetGeoLocationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetGeoLocation synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetGeoLocationRequest
-- @return response
-- @return error_message
function M.GetGeoLocationSync(GetGeoLocationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetGeoLocationAsync(GetGeoLocationRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetReusableDelegationSet asynchronously, invoking a callback when done
-- @param GetReusableDelegationSetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetReusableDelegationSetAsync(GetReusableDelegationSetRequest, cb)
	assert(GetReusableDelegationSetRequest, "You must provide a GetReusableDelegationSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetReusableDelegationSet",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/2013-04-01/delegationset/{Id}", GetReusableDelegationSetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetReusableDelegationSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetReusableDelegationSetRequest
-- @return response
-- @return error_message
function M.GetReusableDelegationSetSync(GetReusableDelegationSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetReusableDelegationSetAsync(GetReusableDelegationSetRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListHostedZones asynchronously, invoking a callback when done
-- @param ListHostedZonesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListHostedZonesAsync(ListHostedZonesRequest, cb)
	assert(ListHostedZonesRequest, "You must provide a ListHostedZonesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListHostedZones",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/2013-04-01/hostedzone", ListHostedZonesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListHostedZones synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListHostedZonesRequest
-- @return response
-- @return error_message
function M.ListHostedZonesSync(ListHostedZonesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListHostedZonesAsync(ListHostedZonesRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateHealthCheck asynchronously, invoking a callback when done
-- @param UpdateHealthCheckRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateHealthCheckAsync(UpdateHealthCheckRequest, cb)
	assert(UpdateHealthCheckRequest, "You must provide a UpdateHealthCheckRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateHealthCheck",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/2013-04-01/healthcheck/{HealthCheckId}", UpdateHealthCheckRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateHealthCheck synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateHealthCheckRequest
-- @return response
-- @return error_message
function M.UpdateHealthCheckSync(UpdateHealthCheckRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateHealthCheckAsync(UpdateHealthCheckRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetHealthCheckCount asynchronously, invoking a callback when done
-- @param GetHealthCheckCountRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetHealthCheckCountAsync(GetHealthCheckCountRequest, cb)
	assert(GetHealthCheckCountRequest, "You must provide a GetHealthCheckCountRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetHealthCheckCount",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/2013-04-01/healthcheckcount", GetHealthCheckCountRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetHealthCheckCount synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetHealthCheckCountRequest
-- @return response
-- @return error_message
function M.GetHealthCheckCountSync(GetHealthCheckCountRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetHealthCheckCountAsync(GetHealthCheckCountRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DisassociateVPCFromHostedZone asynchronously, invoking a callback when done
-- @param DisassociateVPCFromHostedZoneRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DisassociateVPCFromHostedZoneAsync(DisassociateVPCFromHostedZoneRequest, cb)
	assert(DisassociateVPCFromHostedZoneRequest, "You must provide a DisassociateVPCFromHostedZoneRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DisassociateVPCFromHostedZone",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/2013-04-01/hostedzone/{Id}/disassociatevpc", DisassociateVPCFromHostedZoneRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DisassociateVPCFromHostedZone synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DisassociateVPCFromHostedZoneRequest
-- @return response
-- @return error_message
function M.DisassociateVPCFromHostedZoneSync(DisassociateVPCFromHostedZoneRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisassociateVPCFromHostedZoneAsync(DisassociateVPCFromHostedZoneRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteVPCAssociationAuthorization asynchronously, invoking a callback when done
-- @param DeleteVPCAssociationAuthorizationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteVPCAssociationAuthorizationAsync(DeleteVPCAssociationAuthorizationRequest, cb)
	assert(DeleteVPCAssociationAuthorizationRequest, "You must provide a DeleteVPCAssociationAuthorizationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteVPCAssociationAuthorization",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/2013-04-01/hostedzone/{Id}/deauthorizevpcassociation", DeleteVPCAssociationAuthorizationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteVPCAssociationAuthorization synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteVPCAssociationAuthorizationRequest
-- @return response
-- @return error_message
function M.DeleteVPCAssociationAuthorizationSync(DeleteVPCAssociationAuthorizationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteVPCAssociationAuthorizationAsync(DeleteVPCAssociationAuthorizationRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetTrafficPolicyInstance asynchronously, invoking a callback when done
-- @param GetTrafficPolicyInstanceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetTrafficPolicyInstanceAsync(GetTrafficPolicyInstanceRequest, cb)
	assert(GetTrafficPolicyInstanceRequest, "You must provide a GetTrafficPolicyInstanceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetTrafficPolicyInstance",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/2013-04-01/trafficpolicyinstance/{Id}", GetTrafficPolicyInstanceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetTrafficPolicyInstance synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetTrafficPolicyInstanceRequest
-- @return response
-- @return error_message
function M.GetTrafficPolicyInstanceSync(GetTrafficPolicyInstanceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetTrafficPolicyInstanceAsync(GetTrafficPolicyInstanceRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteHealthCheck asynchronously, invoking a callback when done
-- @param DeleteHealthCheckRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteHealthCheckAsync(DeleteHealthCheckRequest, cb)
	assert(DeleteHealthCheckRequest, "You must provide a DeleteHealthCheckRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteHealthCheck",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(settings.uri, "/2013-04-01/healthcheck/{HealthCheckId}", DeleteHealthCheckRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteHealthCheck synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteHealthCheckRequest
-- @return response
-- @return error_message
function M.DeleteHealthCheckSync(DeleteHealthCheckRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteHealthCheckAsync(DeleteHealthCheckRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateHealthCheck asynchronously, invoking a callback when done
-- @param CreateHealthCheckRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateHealthCheckAsync(CreateHealthCheckRequest, cb)
	assert(CreateHealthCheckRequest, "You must provide a CreateHealthCheckRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateHealthCheck",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/2013-04-01/healthcheck", CreateHealthCheckRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateHealthCheck synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateHealthCheckRequest
-- @return response
-- @return error_message
function M.CreateHealthCheckSync(CreateHealthCheckRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateHealthCheckAsync(CreateHealthCheckRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateTrafficPolicyVersion asynchronously, invoking a callback when done
-- @param CreateTrafficPolicyVersionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateTrafficPolicyVersionAsync(CreateTrafficPolicyVersionRequest, cb)
	assert(CreateTrafficPolicyVersionRequest, "You must provide a CreateTrafficPolicyVersionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateTrafficPolicyVersion",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/2013-04-01/trafficpolicy/{Id}", CreateTrafficPolicyVersionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateTrafficPolicyVersion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateTrafficPolicyVersionRequest
-- @return response
-- @return error_message
function M.CreateTrafficPolicyVersionSync(CreateTrafficPolicyVersionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateTrafficPolicyVersionAsync(CreateTrafficPolicyVersionRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateTrafficPolicy asynchronously, invoking a callback when done
-- @param CreateTrafficPolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateTrafficPolicyAsync(CreateTrafficPolicyRequest, cb)
	assert(CreateTrafficPolicyRequest, "You must provide a CreateTrafficPolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateTrafficPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/2013-04-01/trafficpolicy", CreateTrafficPolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateTrafficPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateTrafficPolicyRequest
-- @return response
-- @return error_message
function M.CreateTrafficPolicySync(CreateTrafficPolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateTrafficPolicyAsync(CreateTrafficPolicyRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListTagsForResources asynchronously, invoking a callback when done
-- @param ListTagsForResourcesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListTagsForResourcesAsync(ListTagsForResourcesRequest, cb)
	assert(ListTagsForResourcesRequest, "You must provide a ListTagsForResourcesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListTagsForResources",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/2013-04-01/tags/{ResourceType}", ListTagsForResourcesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListTagsForResources synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListTagsForResourcesRequest
-- @return response
-- @return error_message
function M.ListTagsForResourcesSync(ListTagsForResourcesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTagsForResourcesAsync(ListTagsForResourcesRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListGeoLocations asynchronously, invoking a callback when done
-- @param ListGeoLocationsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListGeoLocationsAsync(ListGeoLocationsRequest, cb)
	assert(ListGeoLocationsRequest, "You must provide a ListGeoLocationsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListGeoLocations",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/2013-04-01/geolocations", ListGeoLocationsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListGeoLocations synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListGeoLocationsRequest
-- @return response
-- @return error_message
function M.ListGeoLocationsSync(ListGeoLocationsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListGeoLocationsAsync(ListGeoLocationsRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AssociateVPCWithHostedZone asynchronously, invoking a callback when done
-- @param AssociateVPCWithHostedZoneRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AssociateVPCWithHostedZoneAsync(AssociateVPCWithHostedZoneRequest, cb)
	assert(AssociateVPCWithHostedZoneRequest, "You must provide a AssociateVPCWithHostedZoneRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".AssociateVPCWithHostedZone",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/2013-04-01/hostedzone/{Id}/associatevpc", AssociateVPCWithHostedZoneRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AssociateVPCWithHostedZone synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AssociateVPCWithHostedZoneRequest
-- @return response
-- @return error_message
function M.AssociateVPCWithHostedZoneSync(AssociateVPCWithHostedZoneRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AssociateVPCWithHostedZoneAsync(AssociateVPCWithHostedZoneRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListTrafficPolicyInstances asynchronously, invoking a callback when done
-- @param ListTrafficPolicyInstancesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListTrafficPolicyInstancesAsync(ListTrafficPolicyInstancesRequest, cb)
	assert(ListTrafficPolicyInstancesRequest, "You must provide a ListTrafficPolicyInstancesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListTrafficPolicyInstances",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/2013-04-01/trafficpolicyinstances", ListTrafficPolicyInstancesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListTrafficPolicyInstances synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListTrafficPolicyInstancesRequest
-- @return response
-- @return error_message
function M.ListTrafficPolicyInstancesSync(ListTrafficPolicyInstancesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTrafficPolicyInstancesAsync(ListTrafficPolicyInstancesRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListVPCAssociationAuthorizations asynchronously, invoking a callback when done
-- @param ListVPCAssociationAuthorizationsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListVPCAssociationAuthorizationsAsync(ListVPCAssociationAuthorizationsRequest, cb)
	assert(ListVPCAssociationAuthorizationsRequest, "You must provide a ListVPCAssociationAuthorizationsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListVPCAssociationAuthorizations",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/2013-04-01/hostedzone/{Id}/authorizevpcassociation", ListVPCAssociationAuthorizationsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListVPCAssociationAuthorizations synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListVPCAssociationAuthorizationsRequest
-- @return response
-- @return error_message
function M.ListVPCAssociationAuthorizationsSync(ListVPCAssociationAuthorizationsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListVPCAssociationAuthorizationsAsync(ListVPCAssociationAuthorizationsRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetHealthCheckLastFailureReason asynchronously, invoking a callback when done
-- @param GetHealthCheckLastFailureReasonRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetHealthCheckLastFailureReasonAsync(GetHealthCheckLastFailureReasonRequest, cb)
	assert(GetHealthCheckLastFailureReasonRequest, "You must provide a GetHealthCheckLastFailureReasonRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetHealthCheckLastFailureReason",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/2013-04-01/healthcheck/{HealthCheckId}/lastfailurereason", GetHealthCheckLastFailureReasonRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetHealthCheckLastFailureReason synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetHealthCheckLastFailureReasonRequest
-- @return response
-- @return error_message
function M.GetHealthCheckLastFailureReasonSync(GetHealthCheckLastFailureReasonRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetHealthCheckLastFailureReasonAsync(GetHealthCheckLastFailureReasonRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetChange asynchronously, invoking a callback when done
-- @param GetChangeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetChangeAsync(GetChangeRequest, cb)
	assert(GetChangeRequest, "You must provide a GetChangeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetChange",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/2013-04-01/change/{Id}", GetChangeRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetChange synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetChangeRequest
-- @return response
-- @return error_message
function M.GetChangeSync(GetChangeRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetChangeAsync(GetChangeRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateTrafficPolicyInstance asynchronously, invoking a callback when done
-- @param UpdateTrafficPolicyInstanceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateTrafficPolicyInstanceAsync(UpdateTrafficPolicyInstanceRequest, cb)
	assert(UpdateTrafficPolicyInstanceRequest, "You must provide a UpdateTrafficPolicyInstanceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateTrafficPolicyInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/2013-04-01/trafficpolicyinstance/{Id}", UpdateTrafficPolicyInstanceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateTrafficPolicyInstance synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateTrafficPolicyInstanceRequest
-- @return response
-- @return error_message
function M.UpdateTrafficPolicyInstanceSync(UpdateTrafficPolicyInstanceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateTrafficPolicyInstanceAsync(UpdateTrafficPolicyInstanceRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateReusableDelegationSet asynchronously, invoking a callback when done
-- @param CreateReusableDelegationSetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateReusableDelegationSetAsync(CreateReusableDelegationSetRequest, cb)
	assert(CreateReusableDelegationSetRequest, "You must provide a CreateReusableDelegationSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateReusableDelegationSet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/2013-04-01/delegationset", CreateReusableDelegationSetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateReusableDelegationSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateReusableDelegationSetRequest
-- @return response
-- @return error_message
function M.CreateReusableDelegationSetSync(CreateReusableDelegationSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateReusableDelegationSetAsync(CreateReusableDelegationSetRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListResourceRecordSets asynchronously, invoking a callback when done
-- @param ListResourceRecordSetsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListResourceRecordSetsAsync(ListResourceRecordSetsRequest, cb)
	assert(ListResourceRecordSetsRequest, "You must provide a ListResourceRecordSetsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListResourceRecordSets",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/2013-04-01/hostedzone/{Id}/rrset", ListResourceRecordSetsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListResourceRecordSets synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListResourceRecordSetsRequest
-- @return response
-- @return error_message
function M.ListResourceRecordSetsSync(ListResourceRecordSetsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListResourceRecordSetsAsync(ListResourceRecordSetsRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListTagsForResource asynchronously, invoking a callback when done
-- @param ListTagsForResourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListTagsForResourceAsync(ListTagsForResourceRequest, cb)
	assert(ListTagsForResourceRequest, "You must provide a ListTagsForResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListTagsForResource",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/2013-04-01/tags/{ResourceType}/{ResourceId}", ListTagsForResourceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListTagsForResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListTagsForResourceRequest
-- @return response
-- @return error_message
function M.ListTagsForResourceSync(ListTagsForResourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTagsForResourceAsync(ListTagsForResourceRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListHealthChecks asynchronously, invoking a callback when done
-- @param ListHealthChecksRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListHealthChecksAsync(ListHealthChecksRequest, cb)
	assert(ListHealthChecksRequest, "You must provide a ListHealthChecksRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListHealthChecks",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/2013-04-01/healthcheck", ListHealthChecksRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListHealthChecks synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListHealthChecksRequest
-- @return response
-- @return error_message
function M.ListHealthChecksSync(ListHealthChecksRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListHealthChecksAsync(ListHealthChecksRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListTrafficPolicyVersions asynchronously, invoking a callback when done
-- @param ListTrafficPolicyVersionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListTrafficPolicyVersionsAsync(ListTrafficPolicyVersionsRequest, cb)
	assert(ListTrafficPolicyVersionsRequest, "You must provide a ListTrafficPolicyVersionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListTrafficPolicyVersions",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/2013-04-01/trafficpolicies/{Id}/versions", ListTrafficPolicyVersionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListTrafficPolicyVersions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListTrafficPolicyVersionsRequest
-- @return response
-- @return error_message
function M.ListTrafficPolicyVersionsSync(ListTrafficPolicyVersionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTrafficPolicyVersionsAsync(ListTrafficPolicyVersionsRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end


return M
