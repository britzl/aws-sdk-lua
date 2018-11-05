--- GENERATED CODE - DO NOT MODIFY
-- Amazon Route 53 Auto Naming (servicediscovery-2017-03-14)

local M = {}

M.metadata = {
	api_version = "2017-03-14",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "servicediscovery",
	service_abbreviation = "ServiceDiscovery",
	service_full_name = "Amazon Route 53 Auto Naming",
	signature_version = "v4",
	target_prefix = "Route53AutoNaming_v20170314",
	timestamp_format = "",
	global_endpoint = "",
	uid = "servicediscovery-2017-03-14",
}

local keys = {}
local asserts = {}

keys.DeregisterInstanceRequest = { ["InstanceId"] = true, ["ServiceId"] = true, nil }

function asserts.AssertDeregisterInstanceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeregisterInstanceRequest to be of type 'table'")
	assert(struct["ServiceId"], "Expected key ServiceId to exist in table")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	if struct["InstanceId"] then asserts.AssertResourceId(struct["InstanceId"]) end
	if struct["ServiceId"] then asserts.AssertResourceId(struct["ServiceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeregisterInstanceRequest[k], "DeregisterInstanceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeregisterInstanceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceId [ResourceId] <p>The value that you specified for <code>Id</code> in the <a>RegisterInstance</a> request.</p>
-- * ServiceId [ResourceId] <p>The ID of the service that the instance is associated with.</p>
-- Required key: ServiceId
-- Required key: InstanceId
-- @return DeregisterInstanceRequest structure as a key-value pair table
function M.DeregisterInstanceRequest(args)
	assert(args, "You must provide an argument table when creating DeregisterInstanceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceId"] = args["InstanceId"],
		["ServiceId"] = args["ServiceId"],
	}
	asserts.AssertDeregisterInstanceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DnsConfig = { ["DnsRecords"] = true, ["NamespaceId"] = true, ["RoutingPolicy"] = true, nil }

function asserts.AssertDnsConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DnsConfig to be of type 'table'")
	assert(struct["NamespaceId"], "Expected key NamespaceId to exist in table")
	assert(struct["DnsRecords"], "Expected key DnsRecords to exist in table")
	if struct["DnsRecords"] then asserts.AssertDnsRecordList(struct["DnsRecords"]) end
	if struct["NamespaceId"] then asserts.AssertResourceId(struct["NamespaceId"]) end
	if struct["RoutingPolicy"] then asserts.AssertRoutingPolicy(struct["RoutingPolicy"]) end
	for k,_ in pairs(struct) do
		assert(keys.DnsConfig[k], "DnsConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DnsConfig
-- <p>A complex type that contains information about the records that you want Amazon Route 53 to create when you register an instance.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DnsRecords [DnsRecordList] <p>An array that contains one <code>DnsRecord</code> object for each record that you want Route 53 to create when you register an instance.</p>
-- * NamespaceId [ResourceId] <p>The ID of the namespace to use for DNS configuration.</p>
-- * RoutingPolicy [RoutingPolicy] <p>The routing policy that you want to apply to all records that Route 53 creates when you register an instance and specify this service.</p> <note> <p>If you want to use this service to register instances that create alias records, specify <code>WEIGHTED</code> for the routing policy.</p> </note> <p>You can specify the following values:</p> <p> <b>MULTIVALUE</b> </p> <p>If you define a health check for the service and the health check is healthy, Route 53 returns the applicable value for up to eight instances.</p> <p>For example, suppose the service includes configurations for one A record and a health check, and you use the service to register 10 instances. Route 53 responds to DNS queries with IP addresses for up to eight healthy instances. If fewer than eight instances are healthy, Route 53 responds to every DNS query with the IP addresses for all of the healthy instances.</p> <p>If you don't define a health check for the service, Route 53 assumes that all instances are healthy and returns the values for up to eight instances.</p> <p>For more information about the multivalue routing policy, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-policy.html#routing-policy-multivalue">Multivalue Answer Routing</a> in the <i>Route 53 Developer Guide</i>.</p> <p> <b>WEIGHTED</b> </p> <p>Route 53 returns the applicable value from one randomly selected instance from among the instances that you registered using the same service. Currently, all records have the same weight, so you can't route more or less traffic to any instances.</p> <p>For example, suppose the service includes configurations for one A record and a health check, and you use the service to register 10 instances. Route 53 responds to DNS queries with the IP address for one randomly selected instance from among the healthy instances. If no instances are healthy, Route 53 responds to DNS queries as if all of the instances were healthy.</p> <p>If you don't define a health check for the service, Route 53 assumes that all instances are healthy and returns the applicable value for one randomly selected instance.</p> <p>For more information about the weighted routing policy, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-policy.html#routing-policy-weighted">Weighted Routing</a> in the <i>Route 53 Developer Guide</i>.</p>
-- Required key: NamespaceId
-- Required key: DnsRecords
-- @return DnsConfig structure as a key-value pair table
function M.DnsConfig(args)
	assert(args, "You must provide an argument table when creating DnsConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DnsRecords"] = args["DnsRecords"],
		["NamespaceId"] = args["NamespaceId"],
		["RoutingPolicy"] = args["RoutingPolicy"],
	}
	asserts.AssertDnsConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreatePrivateDnsNamespaceResponse = { ["OperationId"] = true, nil }

function asserts.AssertCreatePrivateDnsNamespaceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePrivateDnsNamespaceResponse to be of type 'table'")
	if struct["OperationId"] then asserts.AssertOperationId(struct["OperationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreatePrivateDnsNamespaceResponse[k], "CreatePrivateDnsNamespaceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePrivateDnsNamespaceResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OperationId [OperationId] <p>A value that you can use to determine whether the request completed successfully. To get the status of the operation, see <a>GetOperation</a>.</p>
-- @return CreatePrivateDnsNamespaceResponse structure as a key-value pair table
function M.CreatePrivateDnsNamespaceResponse(args)
	assert(args, "You must provide an argument table when creating CreatePrivateDnsNamespaceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OperationId"] = args["OperationId"],
	}
	asserts.AssertCreatePrivateDnsNamespaceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateInstanceCustomHealthStatusRequest = { ["InstanceId"] = true, ["Status"] = true, ["ServiceId"] = true, nil }

function asserts.AssertUpdateInstanceCustomHealthStatusRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateInstanceCustomHealthStatusRequest to be of type 'table'")
	assert(struct["ServiceId"], "Expected key ServiceId to exist in table")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["InstanceId"] then asserts.AssertResourceId(struct["InstanceId"]) end
	if struct["Status"] then asserts.AssertCustomHealthStatus(struct["Status"]) end
	if struct["ServiceId"] then asserts.AssertResourceId(struct["ServiceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateInstanceCustomHealthStatusRequest[k], "UpdateInstanceCustomHealthStatusRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateInstanceCustomHealthStatusRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceId [ResourceId] 
-- * Status [CustomHealthStatus] 
-- * ServiceId [ResourceId] 
-- Required key: ServiceId
-- Required key: InstanceId
-- Required key: Status
-- @return UpdateInstanceCustomHealthStatusRequest structure as a key-value pair table
function M.UpdateInstanceCustomHealthStatusRequest(args)
	assert(args, "You must provide an argument table when creating UpdateInstanceCustomHealthStatusRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceId"] = args["InstanceId"],
		["Status"] = args["Status"],
		["ServiceId"] = args["ServiceId"],
	}
	asserts.AssertUpdateInstanceCustomHealthStatusRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetInstancesHealthStatusRequest = { ["Instances"] = true, ["ServiceId"] = true, ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertGetInstancesHealthStatusRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetInstancesHealthStatusRequest to be of type 'table'")
	assert(struct["ServiceId"], "Expected key ServiceId to exist in table")
	if struct["Instances"] then asserts.AssertInstanceIdList(struct["Instances"]) end
	if struct["ServiceId"] then asserts.AssertResourceId(struct["ServiceId"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetInstancesHealthStatusRequest[k], "GetInstancesHealthStatusRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetInstancesHealthStatusRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Instances [InstanceIdList] <p>An array that contains the IDs of all the instances that you want to get the health status for.</p> <p>If you omit <code>Instances</code>, Amazon Route 53 returns the health status for all the instances that are associated with the specified service.</p> <note> <p>To get the IDs for the instances that you've registered by using a specified service, submit a <a>ListInstances</a> request.</p> </note>
-- * ServiceId [ResourceId] <p>The ID of the service that the instance is associated with.</p>
-- * NextToken [NextToken] <p>For the first <code>GetInstancesHealthStatus</code> request, omit this value.</p> <p>If more than <code>MaxResults</code> instances match the specified criteria, you can submit another <code>GetInstancesHealthStatus</code> request to get the next group of results. Specify the value of <code>NextToken</code> from the previous response in the next request.</p>
-- * MaxResults [MaxResults] <p>The maximum number of instances that you want Route 53 to return in the response to a <code>GetInstancesHealthStatus</code> request. If you don't specify a value for <code>MaxResults</code>, Route 53 returns up to 100 instances.</p>
-- Required key: ServiceId
-- @return GetInstancesHealthStatusRequest structure as a key-value pair table
function M.GetInstancesHealthStatusRequest(args)
	assert(args, "You must provide an argument table when creating GetInstancesHealthStatusRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Instances"] = args["Instances"],
		["ServiceId"] = args["ServiceId"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertGetInstancesHealthStatusRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Service = { ["InstanceCount"] = true, ["Description"] = true, ["DnsConfig"] = true, ["CreateDate"] = true, ["CreatorRequestId"] = true, ["HealthCheckConfig"] = true, ["HealthCheckCustomConfig"] = true, ["Id"] = true, ["Arn"] = true, ["Name"] = true, nil }

function asserts.AssertService(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Service to be of type 'table'")
	if struct["InstanceCount"] then asserts.AssertResourceCount(struct["InstanceCount"]) end
	if struct["Description"] then asserts.AssertResourceDescription(struct["Description"]) end
	if struct["DnsConfig"] then asserts.AssertDnsConfig(struct["DnsConfig"]) end
	if struct["CreateDate"] then asserts.AssertTimestamp(struct["CreateDate"]) end
	if struct["CreatorRequestId"] then asserts.AssertResourceId(struct["CreatorRequestId"]) end
	if struct["HealthCheckConfig"] then asserts.AssertHealthCheckConfig(struct["HealthCheckConfig"]) end
	if struct["HealthCheckCustomConfig"] then asserts.AssertHealthCheckCustomConfig(struct["HealthCheckCustomConfig"]) end
	if struct["Id"] then asserts.AssertResourceId(struct["Id"]) end
	if struct["Arn"] then asserts.AssertArn(struct["Arn"]) end
	if struct["Name"] then asserts.AssertServiceName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.Service[k], "Service contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Service
-- <p>A complex type that contains information about the specified service.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceCount [ResourceCount] <p>The number of instances that are currently associated with the service. Instances that were previously associated with the service but that have been deleted are not included in the count.</p>
-- * Description [ResourceDescription] <p>The description of the service.</p>
-- * DnsConfig [DnsConfig] <p>A complex type that contains information about the records that you want Route 53 to create when you register an instance.</p>
-- * CreateDate [Timestamp] <p>The date and time that the service was created, in Unix format and Coordinated Universal Time (UTC). The value of <code>CreateDate</code> is accurate to milliseconds. For example, the value <code>1516925490.087</code> represents Friday, January 26, 2018 12:11:30.087 AM.</p>
-- * CreatorRequestId [ResourceId] <p>A unique string that identifies the request and that allows failed requests to be retried without the risk of executing the operation twice. <code>CreatorRequestId</code> can be any unique string, for example, a date/time stamp.</p>
-- * HealthCheckConfig [HealthCheckConfig] <p> <i>Public DNS namespaces only.</i> A complex type that contains settings for an optional health check. If you specify settings for a health check, Route 53 associates the health check with all the records that you specify in <code>DnsConfig</code>.</p> <p>For information about the charges for health checks, see <a href="http://aws.amazon.com/route53/pricing">Route 53 Pricing</a>.</p>
-- * HealthCheckCustomConfig [HealthCheckCustomConfig] 
-- * Id [ResourceId] <p>The ID that Route 53 assigned to the service when you created it.</p>
-- * Arn [Arn] <p>The Amazon Resource Name (ARN) that Route 53 assigns to the service when you create it.</p>
-- * Name [ServiceName] <p>The name of the service.</p>
-- @return Service structure as a key-value pair table
function M.Service(args)
	assert(args, "You must provide an argument table when creating Service")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceCount"] = args["InstanceCount"],
		["Description"] = args["Description"],
		["DnsConfig"] = args["DnsConfig"],
		["CreateDate"] = args["CreateDate"],
		["CreatorRequestId"] = args["CreatorRequestId"],
		["HealthCheckConfig"] = args["HealthCheckConfig"],
		["HealthCheckCustomConfig"] = args["HealthCheckCustomConfig"],
		["Id"] = args["Id"],
		["Arn"] = args["Arn"],
		["Name"] = args["Name"],
	}
	asserts.AssertService(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetNamespaceRequest = { ["Id"] = true, nil }

function asserts.AssertGetNamespaceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetNamespaceRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then asserts.AssertResourceId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetNamespaceRequest[k], "GetNamespaceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetNamespaceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [ResourceId] <p>The ID of the namespace that you want to get information about.</p>
-- Required key: Id
-- @return GetNamespaceRequest structure as a key-value pair table
function M.GetNamespaceRequest(args)
	assert(args, "You must provide an argument table when creating GetNamespaceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Id"] = args["Id"],
	}
	asserts.AssertGetNamespaceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListOperationsRequest = { ["NextToken"] = true, ["Filters"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListOperationsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListOperationsRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Filters"] then asserts.AssertOperationFilters(struct["Filters"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListOperationsRequest[k], "ListOperationsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListOperationsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>For the first <code>ListOperations</code> request, omit this value.</p> <p>If the response contains <code>NextToken</code>, submit another <code>ListOperations</code> request to get the next group of results. Specify the value of <code>NextToken</code> from the previous response in the next request.</p> <note> <p>Route 53 gets <code>MaxResults</code> operations and then filters them based on the specified criteria. It's possible that no operations in the first <code>MaxResults</code> operations matched the specified criteria but that subsequent groups of <code>MaxResults</code> operations do contain operations that match the criteria.</p> </note>
-- * Filters [OperationFilters] <p>A complex type that contains specifications for the operations that you want to list, for example, operations that you started between a specified start date and end date.</p> <p>If you specify more than one filter, an operation must match all filters to be returned by <code>ListOperations</code>.</p>
-- * MaxResults [MaxResults] <p>The maximum number of items that you want Amazon Route 53 to return in the response to a <code>ListOperations</code> request. If you don't specify a value for <code>MaxResults</code>, Route 53 returns up to 100 operations.</p>
-- @return ListOperationsRequest structure as a key-value pair table
function M.ListOperationsRequest(args)
	assert(args, "You must provide an argument table when creating ListOperationsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Filters"] = args["Filters"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListOperationsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetInstancesHealthStatusResponse = { ["Status"] = true, ["NextToken"] = true, nil }

function asserts.AssertGetInstancesHealthStatusResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetInstancesHealthStatusResponse to be of type 'table'")
	if struct["Status"] then asserts.AssertInstanceHealthStatusMap(struct["Status"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetInstancesHealthStatusResponse[k], "GetInstancesHealthStatusResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetInstancesHealthStatusResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [InstanceHealthStatusMap] <p>A complex type that contains the IDs and the health status of the instances that you specified in the <code>GetInstancesHealthStatus</code> request.</p>
-- * NextToken [NextToken] <p>If more than <code>MaxResults</code> instances match the specified criteria, you can submit another <code>GetInstancesHealthStatus</code> request to get the next group of results. Specify the value of <code>NextToken</code> from the previous response in the next request.</p>
-- @return GetInstancesHealthStatusResponse structure as a key-value pair table
function M.GetInstancesHealthStatusResponse(args)
	assert(args, "You must provide an argument table when creating GetInstancesHealthStatusResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertGetInstancesHealthStatusResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DuplicateRequest = { ["Message"] = true, nil }

function asserts.AssertDuplicateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DuplicateRequest to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.DuplicateRequest[k], "DuplicateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DuplicateRequest
-- <p>The operation is already in progress.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return DuplicateRequest structure as a key-value pair table
function M.DuplicateRequest(args)
	assert(args, "You must provide an argument table when creating DuplicateRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertDuplicateRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListServicesResponse = { ["Services"] = true, ["NextToken"] = true, nil }

function asserts.AssertListServicesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListServicesResponse to be of type 'table'")
	if struct["Services"] then asserts.AssertServiceSummariesList(struct["Services"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListServicesResponse[k], "ListServicesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListServicesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Services [ServiceSummariesList] <p>An array that contains one <code>ServiceSummary</code> object for each service that matches the specified filter criteria.</p>
-- * NextToken [NextToken] <p>If the response contains <code>NextToken</code>, submit another <code>ListServices</code> request to get the next group of results. Specify the value of <code>NextToken</code> from the previous response in the next request.</p> <note> <p>Route 53 gets <code>MaxResults</code> services and then filters them based on the specified criteria. It's possible that no services in the first <code>MaxResults</code> services matched the specified criteria but that subsequent groups of <code>MaxResults</code> services do contain services that match the criteria.</p> </note>
-- @return ListServicesResponse structure as a key-value pair table
function M.ListServicesResponse(args)
	assert(args, "You must provide an argument table when creating ListServicesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Services"] = args["Services"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListServicesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetOperationResponse = { ["Operation"] = true, nil }

function asserts.AssertGetOperationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetOperationResponse to be of type 'table'")
	if struct["Operation"] then asserts.AssertOperation(struct["Operation"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetOperationResponse[k], "GetOperationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetOperationResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Operation [Operation] <p>A complex type that contains information about the operation.</p>
-- @return GetOperationResponse structure as a key-value pair table
function M.GetOperationResponse(args)
	assert(args, "You must provide an argument table when creating GetOperationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Operation"] = args["Operation"],
	}
	asserts.AssertGetOperationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RegisterInstanceResponse = { ["OperationId"] = true, nil }

function asserts.AssertRegisterInstanceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterInstanceResponse to be of type 'table'")
	if struct["OperationId"] then asserts.AssertOperationId(struct["OperationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RegisterInstanceResponse[k], "RegisterInstanceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterInstanceResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OperationId [OperationId] <p>A value that you can use to determine whether the request completed successfully. To get the status of the operation, see <a>GetOperation</a>.</p>
-- @return RegisterInstanceResponse structure as a key-value pair table
function M.RegisterInstanceResponse(args)
	assert(args, "You must provide an argument table when creating RegisterInstanceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OperationId"] = args["OperationId"],
	}
	asserts.AssertRegisterInstanceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NamespaceProperties = { ["DnsProperties"] = true, nil }

function asserts.AssertNamespaceProperties(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NamespaceProperties to be of type 'table'")
	if struct["DnsProperties"] then asserts.AssertDnsProperties(struct["DnsProperties"]) end
	for k,_ in pairs(struct) do
		assert(keys.NamespaceProperties[k], "NamespaceProperties contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NamespaceProperties
-- <p>A complex type that contains information that is specific to the namespace type.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DnsProperties [DnsProperties] <p>A complex type that contains the ID for the hosted zone that Route 53 creates when you create a namespace.</p>
-- @return NamespaceProperties structure as a key-value pair table
function M.NamespaceProperties(args)
	assert(args, "You must provide an argument table when creating NamespaceProperties")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DnsProperties"] = args["DnsProperties"],
	}
	asserts.AssertNamespaceProperties(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DnsConfigChange = { ["DnsRecords"] = true, nil }

function asserts.AssertDnsConfigChange(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DnsConfigChange to be of type 'table'")
	assert(struct["DnsRecords"], "Expected key DnsRecords to exist in table")
	if struct["DnsRecords"] then asserts.AssertDnsRecordList(struct["DnsRecords"]) end
	for k,_ in pairs(struct) do
		assert(keys.DnsConfigChange[k], "DnsConfigChange contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DnsConfigChange
-- <p>A complex type that contains information about changes to the records that Route 53 creates when you register an instance.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DnsRecords [DnsRecordList] <p>An array that contains one <code>DnsRecord</code> object for each record that you want Route 53 to create when you register an instance.</p>
-- Required key: DnsRecords
-- @return DnsConfigChange structure as a key-value pair table
function M.DnsConfigChange(args)
	assert(args, "You must provide an argument table when creating DnsConfigChange")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DnsRecords"] = args["DnsRecords"],
	}
	asserts.AssertDnsConfigChange(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResourceLimitExceeded = { ["Message"] = true, nil }

function asserts.AssertResourceLimitExceeded(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceLimitExceeded to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceLimitExceeded[k], "ResourceLimitExceeded contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceLimitExceeded
-- <p>The resource can't be created because you've reached the limit on the number of resources.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return ResourceLimitExceeded structure as a key-value pair table
function M.ResourceLimitExceeded(args)
	assert(args, "You must provide an argument table when creating ResourceLimitExceeded")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertResourceLimitExceeded(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.HealthCheckCustomConfig = { ["FailureThreshold"] = true, nil }

function asserts.AssertHealthCheckCustomConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HealthCheckCustomConfig to be of type 'table'")
	if struct["FailureThreshold"] then asserts.AssertFailureThreshold(struct["FailureThreshold"]) end
	for k,_ in pairs(struct) do
		assert(keys.HealthCheckCustomConfig[k], "HealthCheckCustomConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HealthCheckCustomConfig
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FailureThreshold [FailureThreshold] 
-- @return HealthCheckCustomConfig structure as a key-value pair table
function M.HealthCheckCustomConfig(args)
	assert(args, "You must provide an argument table when creating HealthCheckCustomConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FailureThreshold"] = args["FailureThreshold"],
	}
	asserts.AssertHealthCheckCustomConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ServiceAlreadyExists = { ["Message"] = true, ["ServiceId"] = true, ["CreatorRequestId"] = true, nil }

function asserts.AssertServiceAlreadyExists(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceAlreadyExists to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	if struct["ServiceId"] then asserts.AssertResourceId(struct["ServiceId"]) end
	if struct["CreatorRequestId"] then asserts.AssertResourceId(struct["CreatorRequestId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ServiceAlreadyExists[k], "ServiceAlreadyExists contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceAlreadyExists
-- <p>The service can't be created because a service with the same name already exists.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- * ServiceId [ResourceId] <p>The ID of the existing service.</p>
-- * CreatorRequestId [ResourceId] <p>The <code>CreatorRequestId</code> that was used to create the service.</p>
-- @return ServiceAlreadyExists structure as a key-value pair table
function M.ServiceAlreadyExists(args)
	assert(args, "You must provide an argument table when creating ServiceAlreadyExists")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
		["ServiceId"] = args["ServiceId"],
		["CreatorRequestId"] = args["CreatorRequestId"],
	}
	asserts.AssertServiceAlreadyExists(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Operation = { ["Status"] = true, ["CreateDate"] = true, ["ErrorMessage"] = true, ["Targets"] = true, ["ErrorCode"] = true, ["UpdateDate"] = true, ["Type"] = true, ["Id"] = true, nil }

function asserts.AssertOperation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Operation to be of type 'table'")
	if struct["Status"] then asserts.AssertOperationStatus(struct["Status"]) end
	if struct["CreateDate"] then asserts.AssertTimestamp(struct["CreateDate"]) end
	if struct["ErrorMessage"] then asserts.AssertMessage(struct["ErrorMessage"]) end
	if struct["Targets"] then asserts.AssertOperationTargetsMap(struct["Targets"]) end
	if struct["ErrorCode"] then asserts.AssertCode(struct["ErrorCode"]) end
	if struct["UpdateDate"] then asserts.AssertTimestamp(struct["UpdateDate"]) end
	if struct["Type"] then asserts.AssertOperationType(struct["Type"]) end
	if struct["Id"] then asserts.AssertOperationId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.Operation[k], "Operation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Operation
-- <p>A complex type that contains information about a specified operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [OperationStatus] <p>The status of the operation. Values include the following:</p> <ul> <li> <p> <b>SUBMITTED</b>: This is the initial state immediately after you submit a request.</p> </li> <li> <p> <b>PENDING</b>: Route 53 is performing the operation.</p> </li> <li> <p> <b>SUCCESS</b>: The operation succeeded.</p> </li> <li> <p> <b>FAIL</b>: The operation failed. For the failure reason, see <code>ErrorMessage</code>.</p> </li> </ul>
-- * CreateDate [Timestamp] <p>The date and time that the request was submitted, in Unix date/time format and Coordinated Universal Time (UTC). The value of <code>CreateDate</code> is accurate to milliseconds. For example, the value <code>1516925490.087</code> represents Friday, January 26, 2018 12:11:30.087 AM.</p>
-- * ErrorMessage [Message] <p>If the value of <code>Status</code> is <code>FAIL</code>, the reason that the operation failed.</p>
-- * Targets [OperationTargetsMap] <p>The name of the target entity that is associated with the operation:</p> <ul> <li> <p> <b>NAMESPACE</b>: The namespace ID is returned in the <code>ResourceId</code> property.</p> </li> <li> <p> <b>SERVICE</b>: The service ID is returned in the <code>ResourceId</code> property.</p> </li> <li> <p> <b>INSTANCE</b>: The instance ID is returned in the <code>ResourceId</code> property.</p> </li> </ul>
-- * ErrorCode [Code] <p>The code associated with <code>ErrorMessage</code>. Values for <code>ErrorCode</code> include the following:</p> <ul> <li> <p> <code>ACCESS_DENIED</code> </p> </li> <li> <p> <code>CANNOT_CREATE_HOSTED_ZONE</code> </p> </li> <li> <p> <code>EXPIRED_TOKEN</code> </p> </li> <li> <p> <code>HOSTED_ZONE_NOT_FOUND</code> </p> </li> <li> <p> <code>INTERNAL_FAILURE</code> </p> </li> <li> <p> <code>INVALID_CHANGE_BATCH</code> </p> </li> <li> <p> <code>THROTTLED_REQUEST</code> </p> </li> </ul>
-- * UpdateDate [Timestamp] <p>The date and time that the value of <code>Status</code> changed to the current value, in Unix date/time format and Coordinated Universal Time (UTC). The value of <code>UpdateDate</code> is accurate to milliseconds. For example, the value <code>1516925490.087</code> represents Friday, January 26, 2018 12:11:30.087 AM.</p>
-- * Type [OperationType] <p>The name of the operation that is associated with the specified ID.</p>
-- * Id [OperationId] <p>The ID of the operation that you want to get information about.</p>
-- @return Operation structure as a key-value pair table
function M.Operation(args)
	assert(args, "You must provide an argument table when creating Operation")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["CreateDate"] = args["CreateDate"],
		["ErrorMessage"] = args["ErrorMessage"],
		["Targets"] = args["Targets"],
		["ErrorCode"] = args["ErrorCode"],
		["UpdateDate"] = args["UpdateDate"],
		["Type"] = args["Type"],
		["Id"] = args["Id"],
	}
	asserts.AssertOperation(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListInstancesResponse = { ["Instances"] = true, ["NextToken"] = true, nil }

function asserts.AssertListInstancesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListInstancesResponse to be of type 'table'")
	if struct["Instances"] then asserts.AssertInstanceSummaryList(struct["Instances"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListInstancesResponse[k], "ListInstancesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListInstancesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Instances [InstanceSummaryList] <p>Summary information about the instances that are associated with the specified service.</p>
-- * NextToken [NextToken] <p>If more than <code>MaxResults</code> instances match the specified criteria, you can submit another <code>ListInstances</code> request to get the next group of results. Specify the value of <code>NextToken</code> from the previous response in the next request.</p>
-- @return ListInstancesResponse structure as a key-value pair table
function M.ListInstancesResponse(args)
	assert(args, "You must provide an argument table when creating ListInstancesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Instances"] = args["Instances"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListInstancesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Namespace = { ["Description"] = true, ["ServiceCount"] = true, ["CreatorRequestId"] = true, ["Properties"] = true, ["CreateDate"] = true, ["Type"] = true, ["Id"] = true, ["Arn"] = true, ["Name"] = true, nil }

function asserts.AssertNamespace(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Namespace to be of type 'table'")
	if struct["Description"] then asserts.AssertResourceDescription(struct["Description"]) end
	if struct["ServiceCount"] then asserts.AssertResourceCount(struct["ServiceCount"]) end
	if struct["CreatorRequestId"] then asserts.AssertResourceId(struct["CreatorRequestId"]) end
	if struct["Properties"] then asserts.AssertNamespaceProperties(struct["Properties"]) end
	if struct["CreateDate"] then asserts.AssertTimestamp(struct["CreateDate"]) end
	if struct["Type"] then asserts.AssertNamespaceType(struct["Type"]) end
	if struct["Id"] then asserts.AssertResourceId(struct["Id"]) end
	if struct["Arn"] then asserts.AssertArn(struct["Arn"]) end
	if struct["Name"] then asserts.AssertNamespaceName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.Namespace[k], "Namespace contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Namespace
-- <p>A complex type that contains information about a specified namespace.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Description [ResourceDescription] <p>The description that you specify for the namespace when you create it.</p>
-- * ServiceCount [ResourceCount] <p>The number of services that are associated with the namespace.</p>
-- * CreatorRequestId [ResourceId] <p>A unique string that identifies the request and that allows failed requests to be retried without the risk of executing an operation twice. </p>
-- * Properties [NamespaceProperties] <p>A complex type that contains information that's specific to the type of the namespace.</p>
-- * CreateDate [Timestamp] <p>The date that the namespace was created, in Unix date/time format and Coordinated Universal Time (UTC). The value of <code>CreateDate</code> is accurate to milliseconds. For example, the value <code>1516925490.087</code> represents Friday, January 26, 2018 12:11:30.087 AM.</p>
-- * Type [NamespaceType] <p>The type of the namespace. Valid values are <code>DNS_PUBLIC</code> and <code>DNS_PRIVATE</code>.</p>
-- * Id [ResourceId] <p>The ID of a namespace.</p>
-- * Arn [Arn] <p>The Amazon Resource Name (ARN) that Route 53 assigns to the namespace when you create it.</p>
-- * Name [NamespaceName] <p>The name of the namespace, such as <code>example.com</code>.</p>
-- @return Namespace structure as a key-value pair table
function M.Namespace(args)
	assert(args, "You must provide an argument table when creating Namespace")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Description"] = args["Description"],
		["ServiceCount"] = args["ServiceCount"],
		["CreatorRequestId"] = args["CreatorRequestId"],
		["Properties"] = args["Properties"],
		["CreateDate"] = args["CreateDate"],
		["Type"] = args["Type"],
		["Id"] = args["Id"],
		["Arn"] = args["Arn"],
		["Name"] = args["Name"],
	}
	asserts.AssertNamespace(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetServiceRequest = { ["Id"] = true, nil }

function asserts.AssertGetServiceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetServiceRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then asserts.AssertResourceId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetServiceRequest[k], "GetServiceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetServiceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [ResourceId] <p>The ID of the service that you want to get settings for.</p>
-- Required key: Id
-- @return GetServiceRequest structure as a key-value pair table
function M.GetServiceRequest(args)
	assert(args, "You must provide an argument table when creating GetServiceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Id"] = args["Id"],
	}
	asserts.AssertGetServiceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListNamespacesRequest = { ["NextToken"] = true, ["Filters"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListNamespacesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListNamespacesRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Filters"] then asserts.AssertNamespaceFilters(struct["Filters"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListNamespacesRequest[k], "ListNamespacesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListNamespacesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>For the first <code>ListNamespaces</code> request, omit this value.</p> <p>If the response contains <code>NextToken</code>, submit another <code>ListNamespaces</code> request to get the next group of results. Specify the value of <code>NextToken</code> from the previous response in the next request.</p> <note> <p>Route 53 gets <code>MaxResults</code> namespaces and then filters them based on the specified criteria. It's possible that no namespaces in the first <code>MaxResults</code> namespaces matched the specified criteria but that subsequent groups of <code>MaxResults</code> namespaces do contain namespaces that match the criteria.</p> </note>
-- * Filters [NamespaceFilters] <p>A complex type that contains specifications for the namespaces that you want to list.</p> <p>If you specify more than one filter, a namespace must match all filters to be returned by <code>ListNamespaces</code>.</p>
-- * MaxResults [MaxResults] <p>The maximum number of namespaces that you want Amazon Route 53 to return in the response to a <code>ListNamespaces</code> request. If you don't specify a value for <code>MaxResults</code>, Route 53 returns up to 100 namespaces.</p>
-- @return ListNamespacesRequest structure as a key-value pair table
function M.ListNamespacesRequest(args)
	assert(args, "You must provide an argument table when creating ListNamespacesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Filters"] = args["Filters"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListNamespacesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetOperationRequest = { ["OperationId"] = true, nil }

function asserts.AssertGetOperationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetOperationRequest to be of type 'table'")
	assert(struct["OperationId"], "Expected key OperationId to exist in table")
	if struct["OperationId"] then asserts.AssertResourceId(struct["OperationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetOperationRequest[k], "GetOperationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetOperationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OperationId [ResourceId] <p>The ID of the operation that you want to get more information about.</p>
-- Required key: OperationId
-- @return GetOperationRequest structure as a key-value pair table
function M.GetOperationRequest(args)
	assert(args, "You must provide an argument table when creating GetOperationRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OperationId"] = args["OperationId"],
	}
	asserts.AssertGetOperationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteNamespaceResponse = { ["OperationId"] = true, nil }

function asserts.AssertDeleteNamespaceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteNamespaceResponse to be of type 'table'")
	if struct["OperationId"] then asserts.AssertOperationId(struct["OperationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteNamespaceResponse[k], "DeleteNamespaceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteNamespaceResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OperationId [OperationId] <p>A value that you can use to determine whether the request completed successfully. To get the status of the operation, see <a>GetOperation</a>.</p>
-- @return DeleteNamespaceResponse structure as a key-value pair table
function M.DeleteNamespaceResponse(args)
	assert(args, "You must provide an argument table when creating DeleteNamespaceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OperationId"] = args["OperationId"],
	}
	asserts.AssertDeleteNamespaceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteNamespaceRequest = { ["Id"] = true, nil }

function asserts.AssertDeleteNamespaceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteNamespaceRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then asserts.AssertResourceId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteNamespaceRequest[k], "DeleteNamespaceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteNamespaceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [ResourceId] <p>The ID of the namespace that you want to delete.</p>
-- Required key: Id
-- @return DeleteNamespaceRequest structure as a key-value pair table
function M.DeleteNamespaceRequest(args)
	assert(args, "You must provide an argument table when creating DeleteNamespaceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Id"] = args["Id"],
	}
	asserts.AssertDeleteNamespaceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NamespaceSummary = { ["Type"] = true, ["Id"] = true, ["Arn"] = true, ["Name"] = true, nil }

function asserts.AssertNamespaceSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NamespaceSummary to be of type 'table'")
	if struct["Type"] then asserts.AssertNamespaceType(struct["Type"]) end
	if struct["Id"] then asserts.AssertResourceId(struct["Id"]) end
	if struct["Arn"] then asserts.AssertArn(struct["Arn"]) end
	if struct["Name"] then asserts.AssertNamespaceName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.NamespaceSummary[k], "NamespaceSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NamespaceSummary
-- <p>A complex type that contains information about a namespace.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Type [NamespaceType] <p>The type of the namespace, either public or private.</p>
-- * Id [ResourceId] <p>The ID of the namespace.</p>
-- * Arn [Arn] <p>The Amazon Resource Name (ARN) that Route 53 assigns to the namespace when you create it.</p>
-- * Name [NamespaceName] <p>The name of the namespace. When you create a namespace, Route 53 automatically creates a hosted zone that has the same name as the namespace.</p>
-- @return NamespaceSummary structure as a key-value pair table
function M.NamespaceSummary(args)
	assert(args, "You must provide an argument table when creating NamespaceSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Type"] = args["Type"],
		["Id"] = args["Id"],
		["Arn"] = args["Arn"],
		["Name"] = args["Name"],
	}
	asserts.AssertNamespaceSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ServiceFilter = { ["Values"] = true, ["Name"] = true, ["Condition"] = true, nil }

function asserts.AssertServiceFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceFilter to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Values"], "Expected key Values to exist in table")
	if struct["Values"] then asserts.AssertFilterValues(struct["Values"]) end
	if struct["Name"] then asserts.AssertServiceFilterName(struct["Name"]) end
	if struct["Condition"] then asserts.AssertFilterCondition(struct["Condition"]) end
	for k,_ in pairs(struct) do
		assert(keys.ServiceFilter[k], "ServiceFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceFilter
-- <p>A complex type that lets you specify the namespaces that you want to list services for.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Values [FilterValues] <p>The values that are applicable to the value that you specify for <code>Condition</code> to filter the list of services.</p>
-- * Name [ServiceFilterName] <p>Specify <code>NAMESPACE_ID</code>.</p>
-- * Condition [FilterCondition] <p>The operator that you want to use to determine whether a service is returned by <code>ListServices</code>. Valid values for <code>Condition</code> include the following:</p> <ul> <li> <p> <code>EQ</code>: When you specify <code>EQ</code>, specify one namespace ID for <code>Values</code>. <code>EQ</code> is the default condition and can be omitted.</p> </li> <li> <p> <code>IN</code>: When you specify <code>IN</code>, specify a list of the IDs for the namespaces that you want <code>ListServices</code> to return a list of services for.</p> </li> <li> <p> <code>BETWEEN</code>: Not applicable.</p> </li> </ul>
-- Required key: Name
-- Required key: Values
-- @return ServiceFilter structure as a key-value pair table
function M.ServiceFilter(args)
	assert(args, "You must provide an argument table when creating ServiceFilter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Values"] = args["Values"],
		["Name"] = args["Name"],
		["Condition"] = args["Condition"],
	}
	asserts.AssertServiceFilter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CustomHealthNotFound = { ["Message"] = true, nil }

function asserts.AssertCustomHealthNotFound(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CustomHealthNotFound to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.CustomHealthNotFound[k], "CustomHealthNotFound contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CustomHealthNotFound
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return CustomHealthNotFound structure as a key-value pair table
function M.CustomHealthNotFound(args)
	assert(args, "You must provide an argument table when creating CustomHealthNotFound")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertCustomHealthNotFound(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NamespaceFilter = { ["Values"] = true, ["Name"] = true, ["Condition"] = true, nil }

function asserts.AssertNamespaceFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NamespaceFilter to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Values"], "Expected key Values to exist in table")
	if struct["Values"] then asserts.AssertFilterValues(struct["Values"]) end
	if struct["Name"] then asserts.AssertNamespaceFilterName(struct["Name"]) end
	if struct["Condition"] then asserts.AssertFilterCondition(struct["Condition"]) end
	for k,_ in pairs(struct) do
		assert(keys.NamespaceFilter[k], "NamespaceFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NamespaceFilter
-- <p>A complex type that identifies the namespaces that you want to list. You can choose to list public or private namespaces.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Values [FilterValues] <p>If you specify <code>EQ</code> for <code>Condition</code>, specify either <code>DNS_PUBLIC</code> or <code>DNS_PRIVATE</code>.</p> <p>If you specify <code>IN</code> for <code>Condition</code>, you can specify <code>DNS_PUBLIC</code>, <code>DNS_PRIVATE</code>, or both.</p>
-- * Name [NamespaceFilterName] <p>Specify <code>TYPE</code>.</p>
-- * Condition [FilterCondition] <p>The operator that you want to use to determine whether <code>ListNamespaces</code> returns a namespace. Valid values for <code>condition</code> include:</p> <ul> <li> <p> <code>EQ</code>: When you specify <code>EQ</code> for the condition, you can choose to list only public namespaces or private namespaces, but not both. <code>EQ</code> is the default condition and can be omitted.</p> </li> <li> <p> <code>IN</code>: When you specify <code>IN</code> for the condition, you can choose to list public namespaces, private namespaces, or both. </p> </li> <li> <p> <code>BETWEEN</code>: Not applicable</p> </li> </ul>
-- Required key: Name
-- Required key: Values
-- @return NamespaceFilter structure as a key-value pair table
function M.NamespaceFilter(args)
	assert(args, "You must provide an argument table when creating NamespaceFilter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Values"] = args["Values"],
		["Name"] = args["Name"],
		["Condition"] = args["Condition"],
	}
	asserts.AssertNamespaceFilter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OperationNotFound = { ["Message"] = true, nil }

function asserts.AssertOperationNotFound(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OperationNotFound to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.OperationNotFound[k], "OperationNotFound contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OperationNotFound
-- <p>No operation exists with the specified ID.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return OperationNotFound structure as a key-value pair table
function M.OperationNotFound(args)
	assert(args, "You must provide an argument table when creating OperationNotFound")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertOperationNotFound(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetNamespaceResponse = { ["Namespace"] = true, nil }

function asserts.AssertGetNamespaceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetNamespaceResponse to be of type 'table'")
	if struct["Namespace"] then asserts.AssertNamespace(struct["Namespace"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetNamespaceResponse[k], "GetNamespaceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetNamespaceResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Namespace [Namespace] <p>A complex type that contains information about the specified namespace.</p>
-- @return GetNamespaceResponse structure as a key-value pair table
function M.GetNamespaceResponse(args)
	assert(args, "You must provide an argument table when creating GetNamespaceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Namespace"] = args["Namespace"],
	}
	asserts.AssertGetNamespaceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InstanceSummary = { ["Attributes"] = true, ["Id"] = true, nil }

function asserts.AssertInstanceSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceSummary to be of type 'table'")
	if struct["Attributes"] then asserts.AssertAttributes(struct["Attributes"]) end
	if struct["Id"] then asserts.AssertResourceId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.InstanceSummary[k], "InstanceSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceSummary
-- <p>A complex type that contains information about the instances that you registered by using a specified service.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Attributes [Attributes] <p>A string map that contains the following information:</p> <ul> <li> <p>The attributes that are associate with the instance. </p> </li> <li> <p>For each attribute, the applicable value.</p> </li> </ul> <p>Supported attribute keys include the following:</p> <ul> <li> <p> <code>AWS_ALIAS_DNS_NAME</code>: For an alias record that routes traffic to an Elastic Load Balancing load balancer, the DNS name that is associated with the load balancer. </p> </li> <li> <p> <code>AWS_INSTANCE_CNAME</code>: For a CNAME record, the domain name that Route 53 returns in response to DNS queries, for example, <code>example.com</code>.</p> </li> <li> <p> <code>AWS_INSTANCE_IPV4</code>: For an A record, the IPv4 address that Route 53 returns in response to DNS queries, for example, <code>192.0.2.44</code>.</p> </li> <li> <p> <code>AWS_INSTANCE_IPV6</code>: For an AAAA record, the IPv6 address that Route 53 returns in response to DNS queries, for example, <code>2001:0db8:85a3:0000:0000:abcd:0001:2345</code>.</p> </li> <li> <p> <code>AWS_INSTANCE_PORT</code>: For an SRV record, the value that Route 53 returns for the port. In addition, if the service includes <code>HealthCheckConfig</code>, the port on the endpoint that Route 53 sends requests to.</p> </li> </ul>
-- * Id [ResourceId] <p>The ID for an instance that you created by using a specified service.</p>
-- @return InstanceSummary structure as a key-value pair table
function M.InstanceSummary(args)
	assert(args, "You must provide an argument table when creating InstanceSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Attributes"] = args["Attributes"],
		["Id"] = args["Id"],
	}
	asserts.AssertInstanceSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateServiceRequest = { ["Name"] = true, ["DnsConfig"] = true, ["CreatorRequestId"] = true, ["HealthCheckConfig"] = true, ["HealthCheckCustomConfig"] = true, ["Description"] = true, nil }

function asserts.AssertCreateServiceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateServiceRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["DnsConfig"], "Expected key DnsConfig to exist in table")
	if struct["Name"] then asserts.AssertServiceName(struct["Name"]) end
	if struct["DnsConfig"] then asserts.AssertDnsConfig(struct["DnsConfig"]) end
	if struct["CreatorRequestId"] then asserts.AssertResourceId(struct["CreatorRequestId"]) end
	if struct["HealthCheckConfig"] then asserts.AssertHealthCheckConfig(struct["HealthCheckConfig"]) end
	if struct["HealthCheckCustomConfig"] then asserts.AssertHealthCheckCustomConfig(struct["HealthCheckCustomConfig"]) end
	if struct["Description"] then asserts.AssertResourceDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateServiceRequest[k], "CreateServiceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateServiceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [ServiceName] <p>The name that you want to assign to the service.</p>
-- * DnsConfig [DnsConfig] <p>A complex type that contains information about the records that you want Route 53 to create when you register an instance. </p>
-- * CreatorRequestId [ResourceId] <p>A unique string that identifies the request and that allows failed <code>CreateService</code> requests to be retried without the risk of executing the operation twice. <code>CreatorRequestId</code> can be any unique string, for example, a date/time stamp.</p>
-- * HealthCheckConfig [HealthCheckConfig] <p> <i>Public DNS namespaces only.</i> A complex type that contains settings for an optional health check. If you specify settings for a health check, Route 53 associates the health check with all the records that you specify in <code>DnsConfig</code>.</p> <p>For information about the charges for health checks, see <a href="http://aws.amazon.com/route53/pricing">Route 53 Pricing</a>.</p>
-- * HealthCheckCustomConfig [HealthCheckCustomConfig] 
-- * Description [ResourceDescription] <p>A description for the service.</p>
-- Required key: Name
-- Required key: DnsConfig
-- @return CreateServiceRequest structure as a key-value pair table
function M.CreateServiceRequest(args)
	assert(args, "You must provide an argument table when creating CreateServiceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
		["DnsConfig"] = args["DnsConfig"],
		["CreatorRequestId"] = args["CreatorRequestId"],
		["HealthCheckConfig"] = args["HealthCheckConfig"],
		["HealthCheckCustomConfig"] = args["HealthCheckCustomConfig"],
		["Description"] = args["Description"],
	}
	asserts.AssertCreateServiceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateServiceRequest = { ["Id"] = true, ["Service"] = true, nil }

function asserts.AssertUpdateServiceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateServiceRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["Service"], "Expected key Service to exist in table")
	if struct["Id"] then asserts.AssertResourceId(struct["Id"]) end
	if struct["Service"] then asserts.AssertServiceChange(struct["Service"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateServiceRequest[k], "UpdateServiceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateServiceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [ResourceId] <p>The ID of the service that you want to update.</p>
-- * Service [ServiceChange] <p>A complex type that contains the new settings for the service.</p>
-- Required key: Id
-- Required key: Service
-- @return UpdateServiceRequest structure as a key-value pair table
function M.UpdateServiceRequest(args)
	assert(args, "You must provide an argument table when creating UpdateServiceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Id"] = args["Id"],
		["Service"] = args["Service"],
	}
	asserts.AssertUpdateServiceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DnsRecord = { ["Type"] = true, ["TTL"] = true, nil }

function asserts.AssertDnsRecord(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DnsRecord to be of type 'table'")
	assert(struct["Type"], "Expected key Type to exist in table")
	assert(struct["TTL"], "Expected key TTL to exist in table")
	if struct["Type"] then asserts.AssertRecordType(struct["Type"]) end
	if struct["TTL"] then asserts.AssertRecordTTL(struct["TTL"]) end
	for k,_ in pairs(struct) do
		assert(keys.DnsRecord[k], "DnsRecord contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DnsRecord
-- <p>A complex type that contains information about the records that you want Route 53 to create when you register an instance.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Type [RecordType] <p>The type of the resource, which indicates the type of value that Route 53 returns in response to DNS queries.</p> <p>Note the following:</p> <ul> <li> <p> <b>A, AAAA, and SRV records: You can specify settings for a maximum of one A, one AAAA, and one SRV record. You can specify them in any combination.</b> </p> </li> <li> <p> <b>CNAME records:</b> If you specify <code>CNAME</code> for <code>Type</code>, you can't define any other records. This is a limitation of DNS—you can't create a CNAME record and any other type of record that has the same name as a CNAME record.</p> </li> <li> <p> <b>Alias records:</b> If you want Route 53 to create an alias record when you register an instance, specify <code>A</code> or <code>AAAA</code> for <code>Type</code>.</p> </li> <li> <p> <b>All records:</b> You specify settings other than <code>TTL</code> and <code>Type</code> when you register an instance.</p> </li> </ul> <p>The following values are supported:</p> <p> <b>A</b> </p> <p>Route 53 returns the IP address of the resource in IPv4 format, such as 192.0.2.44.</p> <p> <b>AAAA</b> </p> <p>Route 53 returns the IP address of the resource in IPv6 format, such as 2001:0db8:85a3:0000:0000:abcd:0001:2345.</p> <p> <b>CNAME</b> </p> <p>Route 53 returns the domain name of the resource, such as www.example.com. Note the following:</p> <ul> <li> <p>You specify the domain name that you want to route traffic to when you register an instance. For more information, see <a>RegisterInstanceRequest$Attributes</a>.</p> </li> <li> <p>You must specify <code>WEIGHTED</code> for the value of <code>RoutingPolicy</code>.</p> </li> <li> <p>You can't specify both <code>CNAME</code> for <code>Type</code> and settings for <code>HealthCheckConfig</code>. If you do, the request will fail with an <code>InvalidInput</code> error.</p> </li> </ul> <p> <b>SRV</b> </p> <p>Route 53 returns the value for an SRV record. The value for an SRV record uses the following values:</p> <p> <code>priority weight port service-hostname</code> </p> <p>Note the following about the values:</p> <ul> <li> <p>The values of <code>priority</code> and <code>weight</code> are both set to <code>1</code> and can't be changed. </p> </li> <li> <p>The value of <code>port</code> comes from the value that you specify for the <code>AWS_INSTANCE_PORT</code> attribute when you submit a <a>RegisterInstance</a> request. </p> </li> <li> <p>The value of <code>service-hostname</code> is a concatenation of the following values:</p> <ul> <li> <p>The value that you specify for <code>InstanceId</code> when you register an instance.</p> </li> <li> <p>The name of the service.</p> </li> <li> <p>The name of the namespace. </p> </li> </ul> <p>For example, if the value of <code>InstanceId</code> is <code>test</code>, the name of the service is <code>backend</code>, and the name of the namespace is <code>example.com</code>, the value of <code>service-hostname</code> is:</p> <p> <code>test.backend.example.com</code> </p> </li> </ul> <p>If you specify settings for an SRV record and if you specify values for <code>AWS_INSTANCE_IPV4</code>, <code>AWS_INSTANCE_IPV6</code>, or both in the <code>RegisterInstance</code> request, Route 53 automatically creates <code>A</code> and/or <code>AAAA</code> records that have the same name as the value of <code>service-hostname</code> in the SRV record. You can ignore these records.</p>
-- * TTL [RecordTTL] <p>The amount of time, in seconds, that you want DNS resolvers to cache the settings for this record.</p> <note> <p>Alias records don't include a TTL because Route 53 uses the TTL for the AWS resource that an alias record routes traffic to. If you include the <code>AWS_ALIAS_DNS_NAME</code> attribute when you submit a <a>RegisterInstance</a> request, the <code>TTL</code> value is ignored. Always specify a TTL for the service; you can use a service to register instances that create either alias or non-alias records.</p> </note>
-- Required key: Type
-- Required key: TTL
-- @return DnsRecord structure as a key-value pair table
function M.DnsRecord(args)
	assert(args, "You must provide an argument table when creating DnsRecord")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Type"] = args["Type"],
		["TTL"] = args["TTL"],
	}
	asserts.AssertDnsRecord(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OperationSummary = { ["Status"] = true, ["Id"] = true, nil }

function asserts.AssertOperationSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OperationSummary to be of type 'table'")
	if struct["Status"] then asserts.AssertOperationStatus(struct["Status"]) end
	if struct["Id"] then asserts.AssertOperationId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.OperationSummary[k], "OperationSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OperationSummary
-- <p>A complex type that contains information about an operation that matches the criteria that you specified in a <a>ListOperations</a> request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [OperationStatus] <p>The status of the operation. Values include the following:</p> <ul> <li> <p> <b>SUBMITTED</b>: This is the initial state immediately after you submit a request.</p> </li> <li> <p> <b>PENDING</b>: Route 53 is performing the operation.</p> </li> <li> <p> <b>SUCCESS</b>: The operation succeeded.</p> </li> <li> <p> <b>FAIL</b>: The operation failed. For the failure reason, see <code>ErrorMessage</code>.</p> </li> </ul>
-- * Id [OperationId] <p>The ID for an operation.</p>
-- @return OperationSummary structure as a key-value pair table
function M.OperationSummary(args)
	assert(args, "You must provide an argument table when creating OperationSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["Id"] = args["Id"],
	}
	asserts.AssertOperationSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ServiceSummary = { ["Description"] = true, ["InstanceCount"] = true, ["Id"] = true, ["Arn"] = true, ["Name"] = true, nil }

function asserts.AssertServiceSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceSummary to be of type 'table'")
	if struct["Description"] then asserts.AssertResourceDescription(struct["Description"]) end
	if struct["InstanceCount"] then asserts.AssertResourceCount(struct["InstanceCount"]) end
	if struct["Id"] then asserts.AssertResourceId(struct["Id"]) end
	if struct["Arn"] then asserts.AssertArn(struct["Arn"]) end
	if struct["Name"] then asserts.AssertServiceName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.ServiceSummary[k], "ServiceSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceSummary
-- <p>A complex type that contains information about a specified service.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Description [ResourceDescription] <p>The description that you specify when you create the service.</p>
-- * InstanceCount [ResourceCount] <p>The number of instances that are currently associated with the service. Instances that were previously associated with the service but that have been deleted are not included in the count.</p>
-- * Id [ResourceId] <p>The ID that Route 53 assigned to the service when you created it.</p>
-- * Arn [Arn] <p>The Amazon Resource Name (ARN) that Route 53 assigns to the service when you create it.</p>
-- * Name [ServiceName] <p>The name of the service.</p>
-- @return ServiceSummary structure as a key-value pair table
function M.ServiceSummary(args)
	assert(args, "You must provide an argument table when creating ServiceSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Description"] = args["Description"],
		["InstanceCount"] = args["InstanceCount"],
		["Id"] = args["Id"],
		["Arn"] = args["Arn"],
		["Name"] = args["Name"],
	}
	asserts.AssertServiceSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreatePublicDnsNamespaceResponse = { ["OperationId"] = true, nil }

function asserts.AssertCreatePublicDnsNamespaceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePublicDnsNamespaceResponse to be of type 'table'")
	if struct["OperationId"] then asserts.AssertOperationId(struct["OperationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreatePublicDnsNamespaceResponse[k], "CreatePublicDnsNamespaceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePublicDnsNamespaceResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OperationId [OperationId] <p>A value that you can use to determine whether the request completed successfully. To get the status of the operation, see <a>GetOperation</a>.</p>
-- @return CreatePublicDnsNamespaceResponse structure as a key-value pair table
function M.CreatePublicDnsNamespaceResponse(args)
	assert(args, "You must provide an argument table when creating CreatePublicDnsNamespaceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OperationId"] = args["OperationId"],
	}
	asserts.AssertCreatePublicDnsNamespaceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResourceInUse = { ["Message"] = true, nil }

function asserts.AssertResourceInUse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceInUse to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceInUse[k], "ResourceInUse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceInUse
-- <p>The specified resource can't be deleted because it contains other resources. For example, you can't delete a service that contains any instances.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return ResourceInUse structure as a key-value pair table
function M.ResourceInUse(args)
	assert(args, "You must provide an argument table when creating ResourceInUse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertResourceInUse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetServiceResponse = { ["Service"] = true, nil }

function asserts.AssertGetServiceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetServiceResponse to be of type 'table'")
	if struct["Service"] then asserts.AssertService(struct["Service"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetServiceResponse[k], "GetServiceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetServiceResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Service [Service] <p>A complex type that contains information about the service.</p>
-- @return GetServiceResponse structure as a key-value pair table
function M.GetServiceResponse(args)
	assert(args, "You must provide an argument table when creating GetServiceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Service"] = args["Service"],
	}
	asserts.AssertGetServiceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetInstanceRequest = { ["InstanceId"] = true, ["ServiceId"] = true, nil }

function asserts.AssertGetInstanceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetInstanceRequest to be of type 'table'")
	assert(struct["ServiceId"], "Expected key ServiceId to exist in table")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	if struct["InstanceId"] then asserts.AssertResourceId(struct["InstanceId"]) end
	if struct["ServiceId"] then asserts.AssertResourceId(struct["ServiceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetInstanceRequest[k], "GetInstanceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetInstanceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceId [ResourceId] <p>The ID of the instance that you want to get information about.</p>
-- * ServiceId [ResourceId] <p>The ID of the service that the instance is associated with.</p>
-- Required key: ServiceId
-- Required key: InstanceId
-- @return GetInstanceRequest structure as a key-value pair table
function M.GetInstanceRequest(args)
	assert(args, "You must provide an argument table when creating GetInstanceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceId"] = args["InstanceId"],
		["ServiceId"] = args["ServiceId"],
	}
	asserts.AssertGetInstanceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteServiceResponse = { nil }

function asserts.AssertDeleteServiceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteServiceResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteServiceResponse[k], "DeleteServiceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteServiceResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteServiceResponse structure as a key-value pair table
function M.DeleteServiceResponse(args)
	assert(args, "You must provide an argument table when creating DeleteServiceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteServiceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetInstanceResponse = { ["Instance"] = true, nil }

function asserts.AssertGetInstanceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetInstanceResponse to be of type 'table'")
	if struct["Instance"] then asserts.AssertInstance(struct["Instance"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetInstanceResponse[k], "GetInstanceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetInstanceResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Instance [Instance] <p>A complex type that contains information about a specified instance.</p>
-- @return GetInstanceResponse structure as a key-value pair table
function M.GetInstanceResponse(args)
	assert(args, "You must provide an argument table when creating GetInstanceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Instance"] = args["Instance"],
	}
	asserts.AssertGetInstanceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateServiceResponse = { ["OperationId"] = true, nil }

function asserts.AssertUpdateServiceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateServiceResponse to be of type 'table'")
	if struct["OperationId"] then asserts.AssertOperationId(struct["OperationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateServiceResponse[k], "UpdateServiceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateServiceResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OperationId [OperationId] <p>A value that you can use to determine whether the request completed successfully. To get the status of the operation, see <a>GetOperation</a>.</p>
-- @return UpdateServiceResponse structure as a key-value pair table
function M.UpdateServiceResponse(args)
	assert(args, "You must provide an argument table when creating UpdateServiceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OperationId"] = args["OperationId"],
	}
	asserts.AssertUpdateServiceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Instance = { ["Attributes"] = true, ["CreatorRequestId"] = true, ["Id"] = true, nil }

function asserts.AssertInstance(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Instance to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Attributes"] then asserts.AssertAttributes(struct["Attributes"]) end
	if struct["CreatorRequestId"] then asserts.AssertResourceId(struct["CreatorRequestId"]) end
	if struct["Id"] then asserts.AssertResourceId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.Instance[k], "Instance contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Instance
-- <p>A complex type that contains information about an instance that Amazon Route 53 creates when you submit a <code>RegisterInstance</code> request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Attributes [Attributes] <p>A string map that contains the following information for the service that you specify in <code>ServiceId</code>:</p> <ul> <li> <p>The attributes that apply to the records that are defined in the service. </p> </li> <li> <p>For each attribute, the applicable value.</p> </li> </ul> <p>Supported attribute keys include the following:</p> <p> <b>AWS_ALIAS_DNS_NAME</b> </p> <p> <b/> </p> <p>If you want Route 53 to create an alias record that routes traffic to an Elastic Load Balancing load balancer, specify the DNS name that is associated with the load balancer. For information about how to get the DNS name, see "DNSName" in the topic <a href="http://docs.aws.amazon.com/http:/docs.aws.amazon.com/Route53/latest/APIReference/API_AliasTarget.html">AliasTarget</a>.</p> <p>Note the following:</p> <ul> <li> <p>The configuration for the service that is specified by <code>ServiceId</code> must include settings for an A record, an AAAA record, or both.</p> </li> <li> <p>In the service that is specified by <code>ServiceId</code>, the value of <code>RoutingPolicy</code> must be <code>WEIGHTED</code>.</p> </li> <li> <p>If the service that is specified by <code>ServiceId</code> includes <code>HealthCheckConfig</code> settings, Route 53 will create the health check, but it won't associate the health check with the alias record.</p> </li> <li> <p>Auto naming currently doesn't support creating alias records that route traffic to AWS resources other than ELB load balancers.</p> </li> <li> <p>If you specify a value for <code>AWS_ALIAS_DNS_NAME</code>, don't specify values for any of the <code>AWS_INSTANCE</code> attributes.</p> </li> </ul> <p> <b>AWS_INSTANCE_CNAME</b> </p> <p>If the service configuration includes a CNAME record, the domain name that you want Route 53 to return in response to DNS queries, for example, <code>example.com</code>.</p> <p>This value is required if the service specified by <code>ServiceId</code> includes settings for an CNAME record.</p> <p> <b>AWS_INSTANCE_IPV4</b> </p> <p>If the service configuration includes an A record, the IPv4 address that you want Route 53 to return in response to DNS queries, for example, <code>192.0.2.44</code>.</p> <p>This value is required if the service specified by <code>ServiceId</code> includes settings for an A record. If the service includes settings for an SRV record, you must specify a value for <code>AWS_INSTANCE_IPV4</code>, <code>AWS_INSTANCE_IPV6</code>, or both.</p> <p> <b>AWS_INSTANCE_IPV6</b> </p> <p>If the service configuration includes an AAAA record, the IPv6 address that you want Route 53 to return in response to DNS queries, for example, <code>2001:0db8:85a3:0000:0000:abcd:0001:2345</code>.</p> <p>This value is required if the service specified by <code>ServiceId</code> includes settings for an AAAA record. If the service includes settings for an SRV record, you must specify a value for <code>AWS_INSTANCE_IPV4</code>, <code>AWS_INSTANCE_IPV6</code>, or both.</p> <p> <b>AWS_INSTANCE_PORT</b> </p> <p>If the service includes an SRV record, the value that you want Route 53 to return for the port.</p> <p>If the service includes <code>HealthCheckConfig</code>, the port on the endpoint that you want Route 53 to send requests to. </p> <p>This value is required if you specified settings for an SRV record when you created the service.</p>
-- * CreatorRequestId [ResourceId] <p>A unique string that identifies the request and that allows failed <code>RegisterInstance</code> requests to be retried without the risk of executing the operation twice. You must use a unique <code>CreatorRequestId</code> string every time you submit a <code>RegisterInstance</code> request if you're registering additional instances for the same namespace and service. <code>CreatorRequestId</code> can be any unique string, for example, a date/time stamp.</p>
-- * Id [ResourceId] <p>An identifier that you want to associate with the instance. Note the following:</p> <ul> <li> <p>If the service that is specified by <code>ServiceId</code> includes settings for an SRV record, the value of <code>InstanceId</code> is automatically included as part of the value for the SRV record. For more information, see <a>DnsRecord$Type</a>.</p> </li> <li> <p>You can use this value to update an existing instance.</p> </li> <li> <p>To register a new instance, you must specify a value that is unique among instances that you register by using the same service. </p> </li> <li> <p>If you specify an existing <code>InstanceId</code> and <code>ServiceId</code>, Route 53 updates the existing records. If there's also an existing health check, Route 53 deletes the old health check and creates a new one. </p> <note> <p>The health check isn't deleted immediately, so it will still appear for a while if you submit a <code>ListHealthChecks</code> request, for example.</p> </note> </li> </ul>
-- Required key: Id
-- @return Instance structure as a key-value pair table
function M.Instance(args)
	assert(args, "You must provide an argument table when creating Instance")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Attributes"] = args["Attributes"],
		["CreatorRequestId"] = args["CreatorRequestId"],
		["Id"] = args["Id"],
	}
	asserts.AssertInstance(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NamespaceNotFound = { ["Message"] = true, nil }

function asserts.AssertNamespaceNotFound(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NamespaceNotFound to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.NamespaceNotFound[k], "NamespaceNotFound contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NamespaceNotFound
-- <p>No namespace exists with the specified ID.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return NamespaceNotFound structure as a key-value pair table
function M.NamespaceNotFound(args)
	assert(args, "You must provide an argument table when creating NamespaceNotFound")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertNamespaceNotFound(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DnsProperties = { ["HostedZoneId"] = true, nil }

function asserts.AssertDnsProperties(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DnsProperties to be of type 'table'")
	if struct["HostedZoneId"] then asserts.AssertResourceId(struct["HostedZoneId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DnsProperties[k], "DnsProperties contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DnsProperties
-- <p>A complex type that contains the ID for the hosted zone that Route 53 creates when you create a namespace.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HostedZoneId [ResourceId] <p>The ID for the hosted zone that Route 53 creates when you create a namespace.</p>
-- @return DnsProperties structure as a key-value pair table
function M.DnsProperties(args)
	assert(args, "You must provide an argument table when creating DnsProperties")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HostedZoneId"] = args["HostedZoneId"],
	}
	asserts.AssertDnsProperties(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ServiceChange = { ["HealthCheckConfig"] = true, ["Description"] = true, ["DnsConfig"] = true, nil }

function asserts.AssertServiceChange(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceChange to be of type 'table'")
	assert(struct["DnsConfig"], "Expected key DnsConfig to exist in table")
	if struct["HealthCheckConfig"] then asserts.AssertHealthCheckConfig(struct["HealthCheckConfig"]) end
	if struct["Description"] then asserts.AssertResourceDescription(struct["Description"]) end
	if struct["DnsConfig"] then asserts.AssertDnsConfigChange(struct["DnsConfig"]) end
	for k,_ in pairs(struct) do
		assert(keys.ServiceChange[k], "ServiceChange contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceChange
-- <p>A complex type that contains changes to an existing service.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HealthCheckConfig [HealthCheckConfig] 
-- * Description [ResourceDescription] <p>A description for the service.</p>
-- * DnsConfig [DnsConfigChange] <p>A complex type that contains information about the records that you want Route 53 to create when you register an instance.</p>
-- Required key: DnsConfig
-- @return ServiceChange structure as a key-value pair table
function M.ServiceChange(args)
	assert(args, "You must provide an argument table when creating ServiceChange")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HealthCheckConfig"] = args["HealthCheckConfig"],
		["Description"] = args["Description"],
		["DnsConfig"] = args["DnsConfig"],
	}
	asserts.AssertServiceChange(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OperationFilter = { ["Values"] = true, ["Name"] = true, ["Condition"] = true, nil }

function asserts.AssertOperationFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OperationFilter to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Values"], "Expected key Values to exist in table")
	if struct["Values"] then asserts.AssertFilterValues(struct["Values"]) end
	if struct["Name"] then asserts.AssertOperationFilterName(struct["Name"]) end
	if struct["Condition"] then asserts.AssertFilterCondition(struct["Condition"]) end
	for k,_ in pairs(struct) do
		assert(keys.OperationFilter[k], "OperationFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OperationFilter
-- <p>A complex type that lets you select the operations that you want to list.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Values [FilterValues] <p>Specify values that are applicable to the value that you specify for <code>Name</code>: </p> <ul> <li> <p> <b>NAMESPACE_ID</b>: Specify one namespace ID.</p> </li> <li> <p> <b>SERVICE_ID</b>: Specify one service ID.</p> </li> <li> <p> <b>STATUS</b>: Specify one or more statuses: <code>SUBMITTED</code>, <code>PENDING</code>, <code>SUCCEED</code>, or <code>FAIL</code>.</p> </li> <li> <p> <b>TYPE</b>: Specify one or more of the following types: <code>CREATE_NAMESPACE</code>, <code>DELETE_NAMESPACE</code>, <code>UPDATE_SERVICE</code>, <code>REGISTER_INSTANCE</code>, or <code>DEREGISTER_INSTANCE</code>.</p> </li> <li> <p> <b>UPDATE_DATE</b>: Specify a start date and an end date in Unix date/time format and Coordinated Universal Time (UTC). The start date must be the first value.</p> </li> </ul>
-- * Name [OperationFilterName] <p>Specify the operations that you want to get:</p> <ul> <li> <p> <b>NAMESPACE_ID</b>: Gets operations related to specified namespaces.</p> </li> <li> <p> <b>SERVICE_ID</b>: Gets operations related to specified services.</p> </li> <li> <p> <b>STATUS</b>: Gets operations based on the status of the operations: <code>SUBMITTED</code>, <code>PENDING</code>, <code>SUCCEED</code>, or <code>FAIL</code>.</p> </li> <li> <p> <b>TYPE</b>: Gets specified types of operation.</p> </li> <li> <p> <b>UPDATE_DATE</b>: Gets operations that changed status during a specified date/time range. </p> </li> </ul>
-- * Condition [FilterCondition] <p>The operator that you want to use to determine whether an operation matches the specified value. Valid values for condition include:</p> <ul> <li> <p> <code>EQ</code>: When you specify <code>EQ</code> for the condition, you can specify only one value. <code>EQ</code> is supported for <code>NAMESPACE_ID</code>, <code>SERVICE_ID</code>, <code>STATUS</code>, and <code>TYPE</code>. <code>EQ</code> is the default condition and can be omitted.</p> </li> <li> <p> <code>IN</code>: When you specify <code>IN</code> for the condition, you can specify a list of one or more values. <code>IN</code> is supported for <code>STATUS</code> and <code>TYPE</code>. An operation must match one of the specified values to be returned in the response.</p> </li> <li> <p> <code>BETWEEN</code>: Specify a start date and an end date in Unix date/time format and Coordinated Universal Time (UTC). The start date must be the first value. <code>BETWEEN</code> is supported for <code>UPDATE_DATE</code>. </p> </li> </ul>
-- Required key: Name
-- Required key: Values
-- @return OperationFilter structure as a key-value pair table
function M.OperationFilter(args)
	assert(args, "You must provide an argument table when creating OperationFilter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Values"] = args["Values"],
		["Name"] = args["Name"],
		["Condition"] = args["Condition"],
	}
	asserts.AssertOperationFilter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListServicesRequest = { ["NextToken"] = true, ["Filters"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListServicesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListServicesRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Filters"] then asserts.AssertServiceFilters(struct["Filters"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListServicesRequest[k], "ListServicesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListServicesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>For the first <code>ListServices</code> request, omit this value.</p> <p>If the response contains <code>NextToken</code>, submit another <code>ListServices</code> request to get the next group of results. Specify the value of <code>NextToken</code> from the previous response in the next request.</p> <note> <p>Route 53 gets <code>MaxResults</code> services and then filters them based on the specified criteria. It's possible that no services in the first <code>MaxResults</code> services matched the specified criteria but that subsequent groups of <code>MaxResults</code> services do contain services that match the criteria.</p> </note>
-- * Filters [ServiceFilters] <p>A complex type that contains specifications for the namespaces that you want to list services for. </p> <p>If you specify more than one filter, an operation must match all filters to be returned by <code>ListServices</code>.</p>
-- * MaxResults [MaxResults] <p>The maximum number of services that you want Amazon Route 53 to return in the response to a <code>ListServices</code> request. If you don't specify a value for <code>MaxResults</code>, Route 53 returns up to 100 services.</p>
-- @return ListServicesRequest structure as a key-value pair table
function M.ListServicesRequest(args)
	assert(args, "You must provide an argument table when creating ListServicesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Filters"] = args["Filters"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListServicesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreatePublicDnsNamespaceRequest = { ["CreatorRequestId"] = true, ["Name"] = true, ["Description"] = true, nil }

function asserts.AssertCreatePublicDnsNamespaceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePublicDnsNamespaceRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["CreatorRequestId"] then asserts.AssertResourceId(struct["CreatorRequestId"]) end
	if struct["Name"] then asserts.AssertNamespaceName(struct["Name"]) end
	if struct["Description"] then asserts.AssertResourceDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreatePublicDnsNamespaceRequest[k], "CreatePublicDnsNamespaceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePublicDnsNamespaceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CreatorRequestId [ResourceId] <p>A unique string that identifies the request and that allows failed <code>CreatePublicDnsNamespace</code> requests to be retried without the risk of executing the operation twice. <code>CreatorRequestId</code> can be any unique string, for example, a date/time stamp.</p>
-- * Name [NamespaceName] <p>The name that you want to assign to this namespace.</p>
-- * Description [ResourceDescription] <p>A description for the namespace.</p>
-- Required key: Name
-- @return CreatePublicDnsNamespaceRequest structure as a key-value pair table
function M.CreatePublicDnsNamespaceRequest(args)
	assert(args, "You must provide an argument table when creating CreatePublicDnsNamespaceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CreatorRequestId"] = args["CreatorRequestId"],
		["Name"] = args["Name"],
		["Description"] = args["Description"],
	}
	asserts.AssertCreatePublicDnsNamespaceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.HealthCheckConfig = { ["Type"] = true, ["ResourcePath"] = true, ["FailureThreshold"] = true, nil }

function asserts.AssertHealthCheckConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HealthCheckConfig to be of type 'table'")
	if struct["Type"] then asserts.AssertHealthCheckType(struct["Type"]) end
	if struct["ResourcePath"] then asserts.AssertResourcePath(struct["ResourcePath"]) end
	if struct["FailureThreshold"] then asserts.AssertFailureThreshold(struct["FailureThreshold"]) end
	for k,_ in pairs(struct) do
		assert(keys.HealthCheckConfig[k], "HealthCheckConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HealthCheckConfig
-- <p> <i>Public DNS namespaces only.</i> A complex type that contains settings for an optional health check. If you specify settings for a health check, Amazon Route 53 associates the health check with all the records that you specify in <code>DnsConfig</code>.</p> <p> <b>A and AAAA records</b> </p> <p>If <code>DnsConfig</code> includes configurations for both A and AAAA records, Route 53 creates a health check that uses the IPv4 address to check the health of the resource. If the endpoint that is specified by the IPv4 address is unhealthy, Route 53 considers both the A and AAAA records to be unhealthy. </p> <p> <b>CNAME records</b> </p> <p>You can't specify settings for <code>HealthCheckConfig</code> when the <code>DNSConfig</code> includes <code>CNAME</code> for the value of <code>Type</code>. If you do, the <code>CreateService</code> request will fail with an <code>InvalidInput</code> error.</p> <p> <b>Request interval</b> </p> <p>The health check uses 30 seconds as the request interval. This is the number of seconds between the time that each Route 53 health checker gets a response from your endpoint and the time that it sends the next health check request. A health checker in each data center around the world sends your endpoint a health check request every 30 seconds. On average, your endpoint receives a health check request about every two seconds. Health checkers in different data centers don't coordinate with one another, so you'll sometimes see several requests per second followed by a few seconds with no health checks at all.</p> <p> <b>Health checking regions</b> </p> <p>Health checkers perform checks from all Route 53 health-checking regions. For a list of the current regions, see <a href="http://docs.aws.amazon.com/Route53/latest/APIReference/API_HealthCheckConfig.html#Route53-Type-HealthCheckConfig-Regions">Regions</a>.</p> <p> <b>Alias records</b> </p> <p>When you register an instance, if you include the <code>AWS_ALIAS_DNS_NAME</code> attribute, Route 53 creates an alias record. Note the following:</p> <ul> <li> <p>Route 53 automatically sets <code>EvaluateTargetHealth</code> to true for alias records. When <code>EvaluateTargetHealth</code> is true, the alias record inherits the health of the referenced AWS resource. such as an ELB load balancer. For more information, see <a href="http://docs.aws.amazon.com/Route53/latest/APIReference/API_AliasTarget.html#Route53-Type-AliasTarget-EvaluateTargetHealth">EvaluateTargetHealth</a>.</p> </li> <li> <p>If you include <code>HealthCheckConfig</code> and then use the service to register an instance that creates an alias record, Route 53 doesn't create the health check.</p> </li> </ul> <p>For information about the charges for health checks, see <a href="http://aws.amazon.com/route53/pricing">Route 53 Pricing</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Type [HealthCheckType] <p>The type of health check that you want to create, which indicates how Route 53 determines whether an endpoint is healthy.</p> <important> <p>You can't change the value of <code>Type</code> after you create a health check.</p> </important> <p>You can create the following types of health checks:</p> <ul> <li> <p> <b>HTTP</b>: Route 53 tries to establish a TCP connection. If successful, Route 53 submits an HTTP request and waits for an HTTP status code of 200 or greater and less than 400.</p> </li> <li> <p> <b>HTTPS</b>: Route 53 tries to establish a TCP connection. If successful, Route 53 submits an HTTPS request and waits for an HTTP status code of 200 or greater and less than 400.</p> <important> <p>If you specify HTTPS for the value of <code>Type</code>, the endpoint must support TLS v1.0 or later.</p> </important> </li> <li> <p> <b>TCP</b>: Route 53 tries to establish a TCP connection.</p> </li> </ul> <p>For more information, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-determining-health-of-endpoints.html">How Route 53 Determines Whether an Endpoint Is Healthy</a> in the <i>Route 53 Developer Guide</i>.</p>
-- * ResourcePath [ResourcePath] <p>The path that you want Route 53 to request when performing health checks. The path can be any value for which your endpoint will return an HTTP status code of 2xx or 3xx when the endpoint is healthy, such as the file <code>/docs/route53-health-check.html</code>. Route 53 automatically adds the DNS name for the service and a leading forward slash (<code>/</code>) character. </p>
-- * FailureThreshold [FailureThreshold] <p>The number of consecutive health checks that an endpoint must pass or fail for Route 53 to change the current status of the endpoint from unhealthy to healthy or vice versa. For more information, see <a href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-determining-health-of-endpoints.html">How Route 53 Determines Whether an Endpoint Is Healthy</a> in the <i>Route 53 Developer Guide</i>.</p>
-- @return HealthCheckConfig structure as a key-value pair table
function M.HealthCheckConfig(args)
	assert(args, "You must provide an argument table when creating HealthCheckConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Type"] = args["Type"],
		["ResourcePath"] = args["ResourcePath"],
		["FailureThreshold"] = args["FailureThreshold"],
	}
	asserts.AssertHealthCheckConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidInput = { ["Message"] = true, nil }

function asserts.AssertInvalidInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidInput to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidInput[k], "InvalidInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidInput
-- <p>One or more specified values aren't valid. For example, when you're creating a namespace, the value of <code>Name</code> might not be a valid DNS name.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return InvalidInput structure as a key-value pair table
function M.InvalidInput(args)
	assert(args, "You must provide an argument table when creating InvalidInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertInvalidInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NamespaceAlreadyExists = { ["Message"] = true, ["CreatorRequestId"] = true, ["NamespaceId"] = true, nil }

function asserts.AssertNamespaceAlreadyExists(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NamespaceAlreadyExists to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	if struct["CreatorRequestId"] then asserts.AssertResourceId(struct["CreatorRequestId"]) end
	if struct["NamespaceId"] then asserts.AssertResourceId(struct["NamespaceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.NamespaceAlreadyExists[k], "NamespaceAlreadyExists contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NamespaceAlreadyExists
-- <p>The namespace that you're trying to create already exists.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- * CreatorRequestId [ResourceId] <p>The <code>CreatorRequestId</code> that was used to create the namespace.</p>
-- * NamespaceId [ResourceId] <p>The ID of the existing namespace.</p>
-- @return NamespaceAlreadyExists structure as a key-value pair table
function M.NamespaceAlreadyExists(args)
	assert(args, "You must provide an argument table when creating NamespaceAlreadyExists")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
		["CreatorRequestId"] = args["CreatorRequestId"],
		["NamespaceId"] = args["NamespaceId"],
	}
	asserts.AssertNamespaceAlreadyExists(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ServiceNotFound = { ["Message"] = true, nil }

function asserts.AssertServiceNotFound(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceNotFound to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ServiceNotFound[k], "ServiceNotFound contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceNotFound
-- <p>No service exists with the specified ID.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return ServiceNotFound structure as a key-value pair table
function M.ServiceNotFound(args)
	assert(args, "You must provide an argument table when creating ServiceNotFound")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertServiceNotFound(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListInstancesRequest = { ["ServiceId"] = true, ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListInstancesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListInstancesRequest to be of type 'table'")
	assert(struct["ServiceId"], "Expected key ServiceId to exist in table")
	if struct["ServiceId"] then asserts.AssertResourceId(struct["ServiceId"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListInstancesRequest[k], "ListInstancesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListInstancesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ServiceId [ResourceId] <p>The ID of the service that you want to list instances for.</p>
-- * NextToken [NextToken] <p>For the first <code>ListInstances</code> request, omit this value.</p> <p>If more than <code>MaxResults</code> instances match the specified criteria, you can submit another <code>ListInstances</code> request to get the next group of results. Specify the value of <code>NextToken</code> from the previous response in the next request.</p>
-- * MaxResults [MaxResults] <p>The maximum number of instances that you want Amazon Route 53 to return in the response to a <code>ListInstances</code> request. If you don't specify a value for <code>MaxResults</code>, Route 53 returns up to 100 instances.</p>
-- Required key: ServiceId
-- @return ListInstancesRequest structure as a key-value pair table
function M.ListInstancesRequest(args)
	assert(args, "You must provide an argument table when creating ListInstancesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ServiceId"] = args["ServiceId"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListInstancesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreatePrivateDnsNamespaceRequest = { ["CreatorRequestId"] = true, ["Name"] = true, ["Vpc"] = true, ["Description"] = true, nil }

function asserts.AssertCreatePrivateDnsNamespaceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePrivateDnsNamespaceRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Vpc"], "Expected key Vpc to exist in table")
	if struct["CreatorRequestId"] then asserts.AssertResourceId(struct["CreatorRequestId"]) end
	if struct["Name"] then asserts.AssertNamespaceName(struct["Name"]) end
	if struct["Vpc"] then asserts.AssertResourceId(struct["Vpc"]) end
	if struct["Description"] then asserts.AssertResourceDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreatePrivateDnsNamespaceRequest[k], "CreatePrivateDnsNamespaceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePrivateDnsNamespaceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CreatorRequestId [ResourceId] <p>A unique string that identifies the request and that allows failed <code>CreatePrivateDnsNamespace</code> requests to be retried without the risk of executing the operation twice. <code>CreatorRequestId</code> can be any unique string, for example, a date/time stamp.</p>
-- * Name [NamespaceName] <p>The name that you want to assign to this namespace. When you create a namespace, Amazon Route 53 automatically creates a hosted zone that has the same name as the namespace.</p>
-- * Vpc [ResourceId] <p>The ID of the Amazon VPC that you want to associate the namespace with.</p>
-- * Description [ResourceDescription] <p>A description for the namespace.</p>
-- Required key: Name
-- Required key: Vpc
-- @return CreatePrivateDnsNamespaceRequest structure as a key-value pair table
function M.CreatePrivateDnsNamespaceRequest(args)
	assert(args, "You must provide an argument table when creating CreatePrivateDnsNamespaceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CreatorRequestId"] = args["CreatorRequestId"],
		["Name"] = args["Name"],
		["Vpc"] = args["Vpc"],
		["Description"] = args["Description"],
	}
	asserts.AssertCreatePrivateDnsNamespaceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateServiceResponse = { ["Service"] = true, nil }

function asserts.AssertCreateServiceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateServiceResponse to be of type 'table'")
	if struct["Service"] then asserts.AssertService(struct["Service"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateServiceResponse[k], "CreateServiceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateServiceResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Service [Service] <p>A complex type that contains information about the new service.</p>
-- @return CreateServiceResponse structure as a key-value pair table
function M.CreateServiceResponse(args)
	assert(args, "You must provide an argument table when creating CreateServiceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Service"] = args["Service"],
	}
	asserts.AssertCreateServiceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RegisterInstanceRequest = { ["InstanceId"] = true, ["Attributes"] = true, ["ServiceId"] = true, ["CreatorRequestId"] = true, nil }

function asserts.AssertRegisterInstanceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterInstanceRequest to be of type 'table'")
	assert(struct["ServiceId"], "Expected key ServiceId to exist in table")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	assert(struct["Attributes"], "Expected key Attributes to exist in table")
	if struct["InstanceId"] then asserts.AssertResourceId(struct["InstanceId"]) end
	if struct["Attributes"] then asserts.AssertAttributes(struct["Attributes"]) end
	if struct["ServiceId"] then asserts.AssertResourceId(struct["ServiceId"]) end
	if struct["CreatorRequestId"] then asserts.AssertResourceId(struct["CreatorRequestId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RegisterInstanceRequest[k], "RegisterInstanceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterInstanceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceId [ResourceId] <p>An identifier that you want to associate with the instance. Note the following:</p> <ul> <li> <p>If the service that is specified by <code>ServiceId</code> includes settings for an SRV record, the value of <code>InstanceId</code> is automatically included as part of the value for the SRV record. For more information, see <a>DnsRecord$Type</a>.</p> </li> <li> <p>You can use this value to update an existing instance.</p> </li> <li> <p>To register a new instance, you must specify a value that is unique among instances that you register by using the same service. </p> </li> <li> <p>If you specify an existing <code>InstanceId</code> and <code>ServiceId</code>, Route 53 updates the existing records. If there's also an existing health check, Route 53 deletes the old health check and creates a new one. </p> <note> <p>The health check isn't deleted immediately, so it will still appear for a while if you submit a <code>ListHealthChecks</code> request, for example.</p> </note> </li> </ul>
-- * Attributes [Attributes] <p>A string map that contains the following information for the service that you specify in <code>ServiceId</code>:</p> <ul> <li> <p>The attributes that apply to the records that are defined in the service. </p> </li> <li> <p>For each attribute, the applicable value.</p> </li> </ul> <p>Supported attribute keys include the following:</p> <p> <b>AWS_ALIAS_DNS_NAME</b> </p> <p> <b/> </p> <p>If you want Route 53 to create an alias record that routes traffic to an Elastic Load Balancing load balancer, specify the DNS name that is associated with the load balancer. For information about how to get the DNS name, see "DNSName" in the topic <a href="http://docs.aws.amazon.com/http:/docs.aws.amazon.com/Route53/latest/APIReference/API_AliasTarget.html">AliasTarget</a>.</p> <p>Note the following:</p> <ul> <li> <p>The configuration for the service that is specified by <code>ServiceId</code> must include settings for an A record, an AAAA record, or both.</p> </li> <li> <p>In the service that is specified by <code>ServiceId</code>, the value of <code>RoutingPolicy</code> must be <code>WEIGHTED</code>.</p> </li> <li> <p>If the service that is specified by <code>ServiceId</code> includes <code>HealthCheckConfig</code> settings, Route 53 will create the health check, but it won't associate the health check with the alias record.</p> </li> <li> <p>Auto naming currently doesn't support creating alias records that route traffic to AWS resources other than ELB load balancers.</p> </li> <li> <p>If you specify a value for <code>AWS_ALIAS_DNS_NAME</code>, don't specify values for any of the <code>AWS_INSTANCE</code> attributes.</p> </li> </ul> <p> <b>AWS_INSTANCE_CNAME</b> </p> <p>If the service configuration includes a CNAME record, the domain name that you want Route 53 to return in response to DNS queries, for example, <code>example.com</code>.</p> <p>This value is required if the service specified by <code>ServiceId</code> includes settings for an CNAME record.</p> <p> <b>AWS_INSTANCE_IPV4</b> </p> <p>If the service configuration includes an A record, the IPv4 address that you want Route 53 to return in response to DNS queries, for example, <code>192.0.2.44</code>.</p> <p>This value is required if the service specified by <code>ServiceId</code> includes settings for an A record. If the service includes settings for an SRV record, you must specify a value for <code>AWS_INSTANCE_IPV4</code>, <code>AWS_INSTANCE_IPV6</code>, or both.</p> <p> <b>AWS_INSTANCE_IPV6</b> </p> <p>If the service configuration includes an AAAA record, the IPv6 address that you want Route 53 to return in response to DNS queries, for example, <code>2001:0db8:85a3:0000:0000:abcd:0001:2345</code>.</p> <p>This value is required if the service specified by <code>ServiceId</code> includes settings for an AAAA record. If the service includes settings for an SRV record, you must specify a value for <code>AWS_INSTANCE_IPV4</code>, <code>AWS_INSTANCE_IPV6</code>, or both.</p> <p> <b>AWS_INSTANCE_PORT</b> </p> <p>If the service includes an SRV record, the value that you want Route 53 to return for the port.</p> <p>If the service includes <code>HealthCheckConfig</code>, the port on the endpoint that you want Route 53 to send requests to. </p> <p>This value is required if you specified settings for an SRV record when you created the service.</p>
-- * ServiceId [ResourceId] <p>The ID of the service that you want to use for settings for the records and health check that Route 53 will create.</p>
-- * CreatorRequestId [ResourceId] <p>A unique string that identifies the request and that allows failed <code>RegisterInstance</code> requests to be retried without the risk of executing the operation twice. You must use a unique <code>CreatorRequestId</code> string every time you submit a <code>RegisterInstance</code> request if you're registering additional instances for the same namespace and service. <code>CreatorRequestId</code> can be any unique string, for example, a date/time stamp.</p>
-- Required key: ServiceId
-- Required key: InstanceId
-- Required key: Attributes
-- @return RegisterInstanceRequest structure as a key-value pair table
function M.RegisterInstanceRequest(args)
	assert(args, "You must provide an argument table when creating RegisterInstanceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceId"] = args["InstanceId"],
		["Attributes"] = args["Attributes"],
		["ServiceId"] = args["ServiceId"],
		["CreatorRequestId"] = args["CreatorRequestId"],
	}
	asserts.AssertRegisterInstanceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InstanceNotFound = { ["Message"] = true, nil }

function asserts.AssertInstanceNotFound(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceNotFound to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InstanceNotFound[k], "InstanceNotFound contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceNotFound
-- <p>No instance exists with the specified ID, or the instance was recently registered, and information about the instance hasn't propagated yet.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return InstanceNotFound structure as a key-value pair table
function M.InstanceNotFound(args)
	assert(args, "You must provide an argument table when creating InstanceNotFound")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertInstanceNotFound(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListOperationsResponse = { ["Operations"] = true, ["NextToken"] = true, nil }

function asserts.AssertListOperationsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListOperationsResponse to be of type 'table'")
	if struct["Operations"] then asserts.AssertOperationSummaryList(struct["Operations"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListOperationsResponse[k], "ListOperationsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListOperationsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Operations [OperationSummaryList] <p>Summary information about the operations that match the specified criteria.</p>
-- * NextToken [NextToken] <p>If the response contains <code>NextToken</code>, submit another <code>ListOperations</code> request to get the next group of results. Specify the value of <code>NextToken</code> from the previous response in the next request.</p> <note> <p>Route 53 gets <code>MaxResults</code> operations and then filters them based on the specified criteria. It's possible that no operations in the first <code>MaxResults</code> operations matched the specified criteria but that subsequent groups of <code>MaxResults</code> operations do contain operations that match the criteria.</p> </note>
-- @return ListOperationsResponse structure as a key-value pair table
function M.ListOperationsResponse(args)
	assert(args, "You must provide an argument table when creating ListOperationsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Operations"] = args["Operations"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListOperationsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeregisterInstanceResponse = { ["OperationId"] = true, nil }

function asserts.AssertDeregisterInstanceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeregisterInstanceResponse to be of type 'table'")
	if struct["OperationId"] then asserts.AssertOperationId(struct["OperationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeregisterInstanceResponse[k], "DeregisterInstanceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeregisterInstanceResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OperationId [OperationId] <p>A value that you can use to determine whether the request completed successfully. For more information, see <a>GetOperation</a>.</p>
-- @return DeregisterInstanceResponse structure as a key-value pair table
function M.DeregisterInstanceResponse(args)
	assert(args, "You must provide an argument table when creating DeregisterInstanceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OperationId"] = args["OperationId"],
	}
	asserts.AssertDeregisterInstanceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListNamespacesResponse = { ["NextToken"] = true, ["Namespaces"] = true, nil }

function asserts.AssertListNamespacesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListNamespacesResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Namespaces"] then asserts.AssertNamespaceSummariesList(struct["Namespaces"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListNamespacesResponse[k], "ListNamespacesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListNamespacesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>If the response contains <code>NextToken</code>, submit another <code>ListNamespaces</code> request to get the next group of results. Specify the value of <code>NextToken</code> from the previous response in the next request.</p> <note> <p>Route 53 gets <code>MaxResults</code> namespaces and then filters them based on the specified criteria. It's possible that no namespaces in the first <code>MaxResults</code> namespaces matched the specified criteria but that subsequent groups of <code>MaxResults</code> namespaces do contain namespaces that match the criteria.</p> </note>
-- * Namespaces [NamespaceSummariesList] <p>An array that contains one <code>NamespaceSummary</code> object for each namespace that matches the specified filter criteria.</p>
-- @return ListNamespacesResponse structure as a key-value pair table
function M.ListNamespacesResponse(args)
	assert(args, "You must provide an argument table when creating ListNamespacesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Namespaces"] = args["Namespaces"],
	}
	asserts.AssertListNamespacesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteServiceRequest = { ["Id"] = true, nil }

function asserts.AssertDeleteServiceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteServiceRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then asserts.AssertResourceId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteServiceRequest[k], "DeleteServiceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteServiceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [ResourceId] <p>The ID of the service that you want to delete.</p>
-- Required key: Id
-- @return DeleteServiceRequest structure as a key-value pair table
function M.DeleteServiceRequest(args)
	assert(args, "You must provide an argument table when creating DeleteServiceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Id"] = args["Id"],
	}
	asserts.AssertDeleteServiceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertOperationStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected OperationStatus to be of type 'string'")
end

--  
function M.OperationStatus(str)
	asserts.AssertOperationStatus(str)
	return str
end

function asserts.AssertResourceDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceDescription to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
end

--  
function M.ResourceDescription(str)
	asserts.AssertResourceDescription(str)
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

function asserts.AssertNamespaceType(str)
	assert(str)
	assert(type(str) == "string", "Expected NamespaceType to be of type 'string'")
end

--  
function M.NamespaceType(str)
	asserts.AssertNamespaceType(str)
	return str
end

function asserts.AssertHealthStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected HealthStatus to be of type 'string'")
end

--  
function M.HealthStatus(str)
	asserts.AssertHealthStatus(str)
	return str
end

function asserts.AssertOperationTargetType(str)
	assert(str)
	assert(type(str) == "string", "Expected OperationTargetType to be of type 'string'")
end

--  
function M.OperationTargetType(str)
	asserts.AssertOperationTargetType(str)
	return str
end

function asserts.AssertArn(str)
	assert(str)
	assert(type(str) == "string", "Expected Arn to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
end

--  
function M.Arn(str)
	asserts.AssertArn(str)
	return str
end

function asserts.AssertAttrKey(str)
	assert(str)
	assert(type(str) == "string", "Expected AttrKey to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
end

--  
function M.AttrKey(str)
	asserts.AssertAttrKey(str)
	return str
end

function asserts.AssertNextToken(str)
	assert(str)
	assert(type(str) == "string", "Expected NextToken to be of type 'string'")
	assert(#str <= 4096, "Expected string to be max 4096 characters")
end

--  
function M.NextToken(str)
	asserts.AssertNextToken(str)
	return str
end

function asserts.AssertRoutingPolicy(str)
	assert(str)
	assert(type(str) == "string", "Expected RoutingPolicy to be of type 'string'")
end

--  
function M.RoutingPolicy(str)
	asserts.AssertRoutingPolicy(str)
	return str
end

function asserts.AssertServiceName(str)
	assert(str)
	assert(type(str) == "string", "Expected ServiceName to be of type 'string'")
end

--  
function M.ServiceName(str)
	asserts.AssertServiceName(str)
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

function asserts.AssertOperationFilterName(str)
	assert(str)
	assert(type(str) == "string", "Expected OperationFilterName to be of type 'string'")
end

--  
function M.OperationFilterName(str)
	asserts.AssertOperationFilterName(str)
	return str
end

function asserts.AssertNamespaceFilterName(str)
	assert(str)
	assert(type(str) == "string", "Expected NamespaceFilterName to be of type 'string'")
end

--  
function M.NamespaceFilterName(str)
	asserts.AssertNamespaceFilterName(str)
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

function asserts.AssertFilterValue(str)
	assert(str)
	assert(type(str) == "string", "Expected FilterValue to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.FilterValue(str)
	asserts.AssertFilterValue(str)
	return str
end

function asserts.AssertServiceFilterName(str)
	assert(str)
	assert(type(str) == "string", "Expected ServiceFilterName to be of type 'string'")
end

--  
function M.ServiceFilterName(str)
	asserts.AssertServiceFilterName(str)
	return str
end

function asserts.AssertFilterCondition(str)
	assert(str)
	assert(type(str) == "string", "Expected FilterCondition to be of type 'string'")
end

--  
function M.FilterCondition(str)
	asserts.AssertFilterCondition(str)
	return str
end

function asserts.AssertOperationType(str)
	assert(str)
	assert(type(str) == "string", "Expected OperationType to be of type 'string'")
end

--  
function M.OperationType(str)
	asserts.AssertOperationType(str)
	return str
end

function asserts.AssertCode(str)
	assert(str)
	assert(type(str) == "string", "Expected Code to be of type 'string'")
end

--  
function M.Code(str)
	asserts.AssertCode(str)
	return str
end

function asserts.AssertNamespaceName(str)
	assert(str)
	assert(type(str) == "string", "Expected NamespaceName to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
end

--  
function M.NamespaceName(str)
	asserts.AssertNamespaceName(str)
	return str
end

function asserts.AssertResourceId(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceId to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
end

--  
function M.ResourceId(str)
	asserts.AssertResourceId(str)
	return str
end

function asserts.AssertOperationId(str)
	assert(str)
	assert(type(str) == "string", "Expected OperationId to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
end

--  
function M.OperationId(str)
	asserts.AssertOperationId(str)
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

function asserts.AssertCustomHealthStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected CustomHealthStatus to be of type 'string'")
end

--  
function M.CustomHealthStatus(str)
	asserts.AssertCustomHealthStatus(str)
	return str
end

function asserts.AssertAttrValue(str)
	assert(str)
	assert(type(str) == "string", "Expected AttrValue to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
end

--  
function M.AttrValue(str)
	asserts.AssertAttrValue(str)
	return str
end

function asserts.AssertRecordTTL(long)
	assert(long)
	assert(type(long) == "number", "Expected RecordTTL to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.RecordTTL(long)
	asserts.AssertRecordTTL(long)
	return long
end

function asserts.AssertResourceCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ResourceCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.ResourceCount(integer)
	asserts.AssertResourceCount(integer)
	return integer
end

function asserts.AssertMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaxResults(integer)
	asserts.AssertMaxResults(integer)
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

function asserts.AssertAttributes(map)
	assert(map)
	assert(type(map) == "table", "Expected Attributes to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertAttrKey(k)
		asserts.AssertAttrValue(v)
	end
end

function M.Attributes(map)
	asserts.AssertAttributes(map)
	return map
end

function asserts.AssertOperationTargetsMap(map)
	assert(map)
	assert(type(map) == "table", "Expected OperationTargetsMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertOperationTargetType(k)
		asserts.AssertResourceId(v)
	end
end

function M.OperationTargetsMap(map)
	asserts.AssertOperationTargetsMap(map)
	return map
end

function asserts.AssertInstanceHealthStatusMap(map)
	assert(map)
	assert(type(map) == "table", "Expected InstanceHealthStatusMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertResourceId(k)
		asserts.AssertHealthStatus(v)
	end
end

function M.InstanceHealthStatusMap(map)
	asserts.AssertInstanceHealthStatusMap(map)
	return map
end

function asserts.AssertTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Timestamp to be of type 'string'")
end

function M.Timestamp(timestamp)
	asserts.AssertTimestamp(timestamp)
	return timestamp
end

function asserts.AssertInstanceIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstanceIdList to be of type ''table")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertResourceId(v)
	end
end

--  
-- List of ResourceId objects
function M.InstanceIdList(list)
	asserts.AssertInstanceIdList(list)
	return list
end

function asserts.AssertNamespaceSummariesList(list)
	assert(list)
	assert(type(list) == "table", "Expected NamespaceSummariesList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertNamespaceSummary(v)
	end
end

--  
-- List of NamespaceSummary objects
function M.NamespaceSummariesList(list)
	asserts.AssertNamespaceSummariesList(list)
	return list
end

function asserts.AssertNamespaceFilters(list)
	assert(list)
	assert(type(list) == "table", "Expected NamespaceFilters to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertNamespaceFilter(v)
	end
end

--  
-- List of NamespaceFilter objects
function M.NamespaceFilters(list)
	asserts.AssertNamespaceFilters(list)
	return list
end

function asserts.AssertDnsRecordList(list)
	assert(list)
	assert(type(list) == "table", "Expected DnsRecordList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDnsRecord(v)
	end
end

--  
-- List of DnsRecord objects
function M.DnsRecordList(list)
	asserts.AssertDnsRecordList(list)
	return list
end

function asserts.AssertServiceFilters(list)
	assert(list)
	assert(type(list) == "table", "Expected ServiceFilters to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertServiceFilter(v)
	end
end

--  
-- List of ServiceFilter objects
function M.ServiceFilters(list)
	asserts.AssertServiceFilters(list)
	return list
end

function asserts.AssertOperationSummaryList(list)
	assert(list)
	assert(type(list) == "table", "Expected OperationSummaryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertOperationSummary(v)
	end
end

--  
-- List of OperationSummary objects
function M.OperationSummaryList(list)
	asserts.AssertOperationSummaryList(list)
	return list
end

function asserts.AssertInstanceSummaryList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstanceSummaryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInstanceSummary(v)
	end
end

--  
-- List of InstanceSummary objects
function M.InstanceSummaryList(list)
	asserts.AssertInstanceSummaryList(list)
	return list
end

function asserts.AssertServiceSummariesList(list)
	assert(list)
	assert(type(list) == "table", "Expected ServiceSummariesList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertServiceSummary(v)
	end
end

--  
-- List of ServiceSummary objects
function M.ServiceSummariesList(list)
	asserts.AssertServiceSummariesList(list)
	return list
end

function asserts.AssertFilterValues(list)
	assert(list)
	assert(type(list) == "table", "Expected FilterValues to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertFilterValue(v)
	end
end

--  
-- List of FilterValue objects
function M.FilterValues(list)
	asserts.AssertFilterValues(list)
	return list
end

function asserts.AssertOperationFilters(list)
	assert(list)
	assert(type(list) == "table", "Expected OperationFilters to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertOperationFilter(v)
	end
end

--  
-- List of OperationFilter objects
function M.OperationFilters(list)
	asserts.AssertOperationFilters(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "servicediscovery.amazonaws.com"
		end
	end
	local ss = { "servicediscovery" }
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
--- Call CreateService asynchronously, invoking a callback when done
-- @param CreateServiceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateServiceAsync(CreateServiceRequest, cb)
	assert(CreateServiceRequest, "You must provide a CreateServiceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Route53AutoNaming_v20170314.CreateService",
	}
	for header,value in pairs(CreateServiceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateServiceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateService synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateServiceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateServiceSync(CreateServiceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateServiceAsync(CreateServiceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeregisterInstance asynchronously, invoking a callback when done
-- @param DeregisterInstanceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeregisterInstanceAsync(DeregisterInstanceRequest, cb)
	assert(DeregisterInstanceRequest, "You must provide a DeregisterInstanceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Route53AutoNaming_v20170314.DeregisterInstance",
	}
	for header,value in pairs(DeregisterInstanceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeregisterInstanceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeregisterInstance synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeregisterInstanceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeregisterInstanceSync(DeregisterInstanceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeregisterInstanceAsync(DeregisterInstanceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListServices asynchronously, invoking a callback when done
-- @param ListServicesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListServicesAsync(ListServicesRequest, cb)
	assert(ListServicesRequest, "You must provide a ListServicesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Route53AutoNaming_v20170314.ListServices",
	}
	for header,value in pairs(ListServicesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListServicesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListServices synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListServicesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListServicesSync(ListServicesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListServicesAsync(ListServicesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetInstance asynchronously, invoking a callback when done
-- @param GetInstanceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetInstanceAsync(GetInstanceRequest, cb)
	assert(GetInstanceRequest, "You must provide a GetInstanceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Route53AutoNaming_v20170314.GetInstance",
	}
	for header,value in pairs(GetInstanceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetInstanceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetInstance synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetInstanceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetInstanceSync(GetInstanceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetInstanceAsync(GetInstanceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreatePublicDnsNamespace asynchronously, invoking a callback when done
-- @param CreatePublicDnsNamespaceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreatePublicDnsNamespaceAsync(CreatePublicDnsNamespaceRequest, cb)
	assert(CreatePublicDnsNamespaceRequest, "You must provide a CreatePublicDnsNamespaceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Route53AutoNaming_v20170314.CreatePublicDnsNamespace",
	}
	for header,value in pairs(CreatePublicDnsNamespaceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreatePublicDnsNamespaceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreatePublicDnsNamespace synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreatePublicDnsNamespaceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreatePublicDnsNamespaceSync(CreatePublicDnsNamespaceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreatePublicDnsNamespaceAsync(CreatePublicDnsNamespaceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListNamespaces asynchronously, invoking a callback when done
-- @param ListNamespacesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListNamespacesAsync(ListNamespacesRequest, cb)
	assert(ListNamespacesRequest, "You must provide a ListNamespacesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Route53AutoNaming_v20170314.ListNamespaces",
	}
	for header,value in pairs(ListNamespacesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListNamespacesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListNamespaces synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListNamespacesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListNamespacesSync(ListNamespacesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListNamespacesAsync(ListNamespacesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetOperation asynchronously, invoking a callback when done
-- @param GetOperationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetOperationAsync(GetOperationRequest, cb)
	assert(GetOperationRequest, "You must provide a GetOperationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Route53AutoNaming_v20170314.GetOperation",
	}
	for header,value in pairs(GetOperationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetOperationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetOperation synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetOperationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetOperationSync(GetOperationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetOperationAsync(GetOperationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetNamespace asynchronously, invoking a callback when done
-- @param GetNamespaceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetNamespaceAsync(GetNamespaceRequest, cb)
	assert(GetNamespaceRequest, "You must provide a GetNamespaceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Route53AutoNaming_v20170314.GetNamespace",
	}
	for header,value in pairs(GetNamespaceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetNamespaceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetNamespace synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetNamespaceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetNamespaceSync(GetNamespaceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetNamespaceAsync(GetNamespaceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetService asynchronously, invoking a callback when done
-- @param GetServiceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetServiceAsync(GetServiceRequest, cb)
	assert(GetServiceRequest, "You must provide a GetServiceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Route53AutoNaming_v20170314.GetService",
	}
	for header,value in pairs(GetServiceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetServiceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetService synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetServiceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetServiceSync(GetServiceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetServiceAsync(GetServiceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreatePrivateDnsNamespace asynchronously, invoking a callback when done
-- @param CreatePrivateDnsNamespaceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreatePrivateDnsNamespaceAsync(CreatePrivateDnsNamespaceRequest, cb)
	assert(CreatePrivateDnsNamespaceRequest, "You must provide a CreatePrivateDnsNamespaceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Route53AutoNaming_v20170314.CreatePrivateDnsNamespace",
	}
	for header,value in pairs(CreatePrivateDnsNamespaceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreatePrivateDnsNamespaceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreatePrivateDnsNamespace synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreatePrivateDnsNamespaceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreatePrivateDnsNamespaceSync(CreatePrivateDnsNamespaceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreatePrivateDnsNamespaceAsync(CreatePrivateDnsNamespaceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateInstanceCustomHealthStatus asynchronously, invoking a callback when done
-- @param UpdateInstanceCustomHealthStatusRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateInstanceCustomHealthStatusAsync(UpdateInstanceCustomHealthStatusRequest, cb)
	assert(UpdateInstanceCustomHealthStatusRequest, "You must provide a UpdateInstanceCustomHealthStatusRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Route53AutoNaming_v20170314.UpdateInstanceCustomHealthStatus",
	}
	for header,value in pairs(UpdateInstanceCustomHealthStatusRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateInstanceCustomHealthStatusRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateInstanceCustomHealthStatus synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateInstanceCustomHealthStatusRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateInstanceCustomHealthStatusSync(UpdateInstanceCustomHealthStatusRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateInstanceCustomHealthStatusAsync(UpdateInstanceCustomHealthStatusRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetInstancesHealthStatus asynchronously, invoking a callback when done
-- @param GetInstancesHealthStatusRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetInstancesHealthStatusAsync(GetInstancesHealthStatusRequest, cb)
	assert(GetInstancesHealthStatusRequest, "You must provide a GetInstancesHealthStatusRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Route53AutoNaming_v20170314.GetInstancesHealthStatus",
	}
	for header,value in pairs(GetInstancesHealthStatusRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetInstancesHealthStatusRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetInstancesHealthStatus synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetInstancesHealthStatusRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetInstancesHealthStatusSync(GetInstancesHealthStatusRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetInstancesHealthStatusAsync(GetInstancesHealthStatusRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListInstances asynchronously, invoking a callback when done
-- @param ListInstancesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListInstancesAsync(ListInstancesRequest, cb)
	assert(ListInstancesRequest, "You must provide a ListInstancesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Route53AutoNaming_v20170314.ListInstances",
	}
	for header,value in pairs(ListInstancesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListInstancesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListInstances synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListInstancesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListInstancesSync(ListInstancesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListInstancesAsync(ListInstancesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteService asynchronously, invoking a callback when done
-- @param DeleteServiceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteServiceAsync(DeleteServiceRequest, cb)
	assert(DeleteServiceRequest, "You must provide a DeleteServiceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Route53AutoNaming_v20170314.DeleteService",
	}
	for header,value in pairs(DeleteServiceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteServiceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteService synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteServiceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteServiceSync(DeleteServiceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteServiceAsync(DeleteServiceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateService asynchronously, invoking a callback when done
-- @param UpdateServiceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateServiceAsync(UpdateServiceRequest, cb)
	assert(UpdateServiceRequest, "You must provide a UpdateServiceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Route53AutoNaming_v20170314.UpdateService",
	}
	for header,value in pairs(UpdateServiceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateServiceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateService synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateServiceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateServiceSync(UpdateServiceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateServiceAsync(UpdateServiceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RegisterInstance asynchronously, invoking a callback when done
-- @param RegisterInstanceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RegisterInstanceAsync(RegisterInstanceRequest, cb)
	assert(RegisterInstanceRequest, "You must provide a RegisterInstanceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Route53AutoNaming_v20170314.RegisterInstance",
	}
	for header,value in pairs(RegisterInstanceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RegisterInstanceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RegisterInstance synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RegisterInstanceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.RegisterInstanceSync(RegisterInstanceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RegisterInstanceAsync(RegisterInstanceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListOperations asynchronously, invoking a callback when done
-- @param ListOperationsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListOperationsAsync(ListOperationsRequest, cb)
	assert(ListOperationsRequest, "You must provide a ListOperationsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Route53AutoNaming_v20170314.ListOperations",
	}
	for header,value in pairs(ListOperationsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListOperationsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListOperations synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListOperationsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListOperationsSync(ListOperationsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListOperationsAsync(ListOperationsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteNamespace asynchronously, invoking a callback when done
-- @param DeleteNamespaceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteNamespaceAsync(DeleteNamespaceRequest, cb)
	assert(DeleteNamespaceRequest, "You must provide a DeleteNamespaceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Route53AutoNaming_v20170314.DeleteNamespace",
	}
	for header,value in pairs(DeleteNamespaceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteNamespaceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteNamespace synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteNamespaceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteNamespaceSync(DeleteNamespaceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteNamespaceAsync(DeleteNamespaceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
