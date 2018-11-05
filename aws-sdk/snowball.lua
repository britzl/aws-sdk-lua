--- GENERATED CODE - DO NOT MODIFY
-- Amazon Import/Export Snowball (snowball-2016-06-30)

local M = {}

M.metadata = {
	api_version = "2016-06-30",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "snowball",
	service_abbreviation = "Amazon Snowball",
	service_full_name = "Amazon Import/Export Snowball",
	signature_version = "v4",
	target_prefix = "AWSIESnowballJobManagementService",
	timestamp_format = "",
	global_endpoint = "",
	uid = "snowball-2016-06-30",
}

local keys = {}
local asserts = {}

keys.CancelClusterRequest = { ["ClusterId"] = true, nil }

function asserts.AssertCancelClusterRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelClusterRequest to be of type 'table'")
	assert(struct["ClusterId"], "Expected key ClusterId to exist in table")
	if struct["ClusterId"] then asserts.AssertClusterId(struct["ClusterId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CancelClusterRequest[k], "CancelClusterRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelClusterRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ClusterId [ClusterId] <p>The 39-character ID for the cluster that you want to cancel, for example <code>CID123e4567-e89b-12d3-a456-426655440000</code>.</p>
-- Required key: ClusterId
-- @return CancelClusterRequest structure as a key-value pair table
function M.CancelClusterRequest(args)
	assert(args, "You must provide an argument table when creating CancelClusterRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ClusterId"] = args["ClusterId"],
	}
	asserts.AssertCancelClusterRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CancelClusterResult = { nil }

function asserts.AssertCancelClusterResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelClusterResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CancelClusterResult[k], "CancelClusterResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelClusterResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return CancelClusterResult structure as a key-value pair table
function M.CancelClusterResult(args)
	assert(args, "You must provide an argument table when creating CancelClusterResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertCancelClusterResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateJobRequest = { ["Description"] = true, ["AddressId"] = true, ["Notification"] = true, ["RoleARN"] = true, ["JobId"] = true, ["ShippingOption"] = true, ["ForwardingAddressId"] = true, ["SnowballCapacityPreference"] = true, ["Resources"] = true, nil }

function asserts.AssertUpdateJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateJobRequest to be of type 'table'")
	assert(struct["JobId"], "Expected key JobId to exist in table")
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	if struct["AddressId"] then asserts.AssertAddressId(struct["AddressId"]) end
	if struct["Notification"] then asserts.AssertNotification(struct["Notification"]) end
	if struct["RoleARN"] then asserts.AssertRoleARN(struct["RoleARN"]) end
	if struct["JobId"] then asserts.AssertJobId(struct["JobId"]) end
	if struct["ShippingOption"] then asserts.AssertShippingOption(struct["ShippingOption"]) end
	if struct["ForwardingAddressId"] then asserts.AssertAddressId(struct["ForwardingAddressId"]) end
	if struct["SnowballCapacityPreference"] then asserts.AssertSnowballCapacity(struct["SnowballCapacityPreference"]) end
	if struct["Resources"] then asserts.AssertJobResource(struct["Resources"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateJobRequest[k], "UpdateJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateJobRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Description [String] <p>The updated description of this job's <a>JobMetadata</a> object.</p>
-- * AddressId [AddressId] <p>The ID of the updated <a>Address</a> object.</p>
-- * Notification [Notification] <p>The new or updated <a>Notification</a> object.</p>
-- * RoleARN [RoleARN] <p>The new role Amazon Resource Name (ARN) that you want to associate with this job. To create a role ARN, use the <a href="http://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html">CreateRole</a>AWS Identity and Access Management (IAM) API action.</p>
-- * JobId [JobId] <p>The job ID of the job that you want to update, for example <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>
-- * ShippingOption [ShippingOption] <p>The updated shipping option value of this job's <a>ShippingDetails</a> object.</p>
-- * ForwardingAddressId [AddressId] <p>The updated ID for the forwarding address for a job. This field is not supported in most regions.</p>
-- * SnowballCapacityPreference [SnowballCapacity] <p>The updated <code>SnowballCapacityPreference</code> of this job's <a>JobMetadata</a> object. The 50 TB Snowballs are only available in the US regions.</p>
-- * Resources [JobResource] <p>The updated <code>JobResource</code> object, or the updated <a>JobResource</a> object. </p>
-- Required key: JobId
-- @return UpdateJobRequest structure as a key-value pair table
function M.UpdateJobRequest(args)
	assert(args, "You must provide an argument table when creating UpdateJobRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Description"] = args["Description"],
		["AddressId"] = args["AddressId"],
		["Notification"] = args["Notification"],
		["RoleARN"] = args["RoleARN"],
		["JobId"] = args["JobId"],
		["ShippingOption"] = args["ShippingOption"],
		["ForwardingAddressId"] = args["ForwardingAddressId"],
		["SnowballCapacityPreference"] = args["SnowballCapacityPreference"],
		["Resources"] = args["Resources"],
	}
	asserts.AssertUpdateJobRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateJobRequest = { ["Description"] = true, ["AddressId"] = true, ["KmsKeyARN"] = true, ["Notification"] = true, ["RoleARN"] = true, ["ClusterId"] = true, ["ForwardingAddressId"] = true, ["ShippingOption"] = true, ["JobType"] = true, ["SnowballType"] = true, ["SnowballCapacityPreference"] = true, ["Resources"] = true, nil }

function asserts.AssertCreateJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateJobRequest to be of type 'table'")
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	if struct["AddressId"] then asserts.AssertAddressId(struct["AddressId"]) end
	if struct["KmsKeyARN"] then asserts.AssertKmsKeyARN(struct["KmsKeyARN"]) end
	if struct["Notification"] then asserts.AssertNotification(struct["Notification"]) end
	if struct["RoleARN"] then asserts.AssertRoleARN(struct["RoleARN"]) end
	if struct["ClusterId"] then asserts.AssertClusterId(struct["ClusterId"]) end
	if struct["ForwardingAddressId"] then asserts.AssertAddressId(struct["ForwardingAddressId"]) end
	if struct["ShippingOption"] then asserts.AssertShippingOption(struct["ShippingOption"]) end
	if struct["JobType"] then asserts.AssertJobType(struct["JobType"]) end
	if struct["SnowballType"] then asserts.AssertSnowballType(struct["SnowballType"]) end
	if struct["SnowballCapacityPreference"] then asserts.AssertSnowballCapacity(struct["SnowballCapacityPreference"]) end
	if struct["Resources"] then asserts.AssertJobResource(struct["Resources"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateJobRequest[k], "CreateJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateJobRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Description [String] <p>Defines an optional description of this specific job, for example <code>Important Photos 2016-08-11</code>.</p>
-- * AddressId [AddressId] <p>The ID for the address that you want the Snowball shipped to.</p>
-- * KmsKeyARN [KmsKeyARN] <p>The <code>KmsKeyARN</code> that you want to associate with this job. <code>KmsKeyARN</code>s are created using the <a href="http://docs.aws.amazon.com/kms/latest/APIReference/API_CreateKey.html">CreateKey</a> AWS Key Management Service (KMS) API action.</p>
-- * Notification [Notification] <p>Defines the Amazon Simple Notification Service (Amazon SNS) notification settings for this job.</p>
-- * RoleARN [RoleARN] <p>The <code>RoleARN</code> that you want to associate with this job. <code>RoleArn</code>s are created using the <a href="http://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html">CreateRole</a> AWS Identity and Access Management (IAM) API action.</p>
-- * ClusterId [ClusterId] <p>The ID of a cluster. If you're creating a job for a node in a cluster, you need to provide only this <code>clusterId</code> value. The other job attributes are inherited from the cluster.</p>
-- * ForwardingAddressId [AddressId] <p>The forwarding address ID for a job. This field is not supported in most regions.</p>
-- * ShippingOption [ShippingOption] <p>The shipping speed for this job. This speed doesn't dictate how soon you'll get the Snowball, rather it represents how quickly the Snowball moves to its destination while in transit. Regional shipping speeds are as follows:</p> <ul> <li> <p>In Australia, you have access to express shipping. Typically, Snowballs shipped express are delivered in about a day.</p> </li> <li> <p>In the European Union (EU), you have access to express shipping. Typically, Snowballs shipped express are delivered in about a day. In addition, most countries in the EU have access to standard shipping, which typically takes less than a week, one way.</p> </li> <li> <p>In India, Snowballs are delivered in one to seven days.</p> </li> <li> <p>In the US, you have access to one-day shipping and two-day shipping.</p> </li> </ul>
-- * JobType [JobType] <p>Defines the type of job that you're creating. </p>
-- * SnowballType [SnowballType] <p>The type of AWS Snowball device to use for this job. Currently, the only supported device type for cluster jobs is <code>EDGE</code>.</p>
-- * SnowballCapacityPreference [SnowballCapacity] <p>If your job is being created in one of the US regions, you have the option of specifying what size Snowball you'd like for this job. In all other regions, Snowballs come with 80 TB in storage capacity.</p>
-- * Resources [JobResource] <p>Defines the Amazon S3 buckets associated with this job.</p> <p>With <code>IMPORT</code> jobs, you specify the bucket or buckets that your transferred data will be imported into.</p> <p>With <code>EXPORT</code> jobs, you specify the bucket or buckets that your transferred data will be exported from. Optionally, you can also specify a <code>KeyRange</code> value. If you choose to export a range, you define the length of the range by providing either an inclusive <code>BeginMarker</code> value, an inclusive <code>EndMarker</code> value, or both. Ranges are UTF-8 binary sorted.</p>
-- @return CreateJobRequest structure as a key-value pair table
function M.CreateJobRequest(args)
	assert(args, "You must provide an argument table when creating CreateJobRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Description"] = args["Description"],
		["AddressId"] = args["AddressId"],
		["KmsKeyARN"] = args["KmsKeyARN"],
		["Notification"] = args["Notification"],
		["RoleARN"] = args["RoleARN"],
		["ClusterId"] = args["ClusterId"],
		["ForwardingAddressId"] = args["ForwardingAddressId"],
		["ShippingOption"] = args["ShippingOption"],
		["JobType"] = args["JobType"],
		["SnowballType"] = args["SnowballType"],
		["SnowballCapacityPreference"] = args["SnowballCapacityPreference"],
		["Resources"] = args["Resources"],
	}
	asserts.AssertCreateJobRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListJobsRequest = { ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListJobsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListJobsRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertListLimit(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListJobsRequest[k], "ListJobsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListJobsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [String] <p>HTTP requests are stateless. To identify what object comes "next" in the list of <code>JobListEntry</code> objects, you have the option of specifying <code>NextToken</code> as the starting point for your returned list.</p>
-- * MaxResults [ListLimit] <p>The number of <code>JobListEntry</code> objects to return.</p>
-- @return ListJobsRequest structure as a key-value pair table
function M.ListJobsRequest(args)
	assert(args, "You must provide an argument table when creating ListJobsRequest")
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
	asserts.AssertListJobsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListCompatibleImagesRequest = { ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListCompatibleImagesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListCompatibleImagesRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertListLimit(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListCompatibleImagesRequest[k], "ListCompatibleImagesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListCompatibleImagesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [String] <p>HTTP requests are stateless. To identify what object comes "next" in the list of compatible images, you can specify a value for <code>NextToken</code> as the starting point for your list of returned images.</p>
-- * MaxResults [ListLimit] <p>The maximum number of results for the list of compatible images. Currently, a Snowball Edge device can store 10 AMIs.</p>
-- @return ListCompatibleImagesRequest structure as a key-value pair table
function M.ListCompatibleImagesRequest(args)
	assert(args, "You must provide an argument table when creating ListCompatibleImagesRequest")
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
	asserts.AssertListCompatibleImagesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ClusterMetadata = { ["Description"] = true, ["AddressId"] = true, ["KmsKeyARN"] = true, ["Notification"] = true, ["RoleARN"] = true, ["ClusterId"] = true, ["ForwardingAddressId"] = true, ["ClusterState"] = true, ["ShippingOption"] = true, ["Resources"] = true, ["SnowballType"] = true, ["CreationDate"] = true, ["JobType"] = true, nil }

function asserts.AssertClusterMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterMetadata to be of type 'table'")
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	if struct["AddressId"] then asserts.AssertAddressId(struct["AddressId"]) end
	if struct["KmsKeyARN"] then asserts.AssertKmsKeyARN(struct["KmsKeyARN"]) end
	if struct["Notification"] then asserts.AssertNotification(struct["Notification"]) end
	if struct["RoleARN"] then asserts.AssertRoleARN(struct["RoleARN"]) end
	if struct["ClusterId"] then asserts.AssertString(struct["ClusterId"]) end
	if struct["ForwardingAddressId"] then asserts.AssertAddressId(struct["ForwardingAddressId"]) end
	if struct["ClusterState"] then asserts.AssertClusterState(struct["ClusterState"]) end
	if struct["ShippingOption"] then asserts.AssertShippingOption(struct["ShippingOption"]) end
	if struct["Resources"] then asserts.AssertJobResource(struct["Resources"]) end
	if struct["SnowballType"] then asserts.AssertSnowballType(struct["SnowballType"]) end
	if struct["CreationDate"] then asserts.AssertTimestamp(struct["CreationDate"]) end
	if struct["JobType"] then asserts.AssertJobType(struct["JobType"]) end
	for k,_ in pairs(struct) do
		assert(keys.ClusterMetadata[k], "ClusterMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterMetadata
-- <p>Contains metadata about a specific cluster.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Description [String] <p>The optional description of the cluster.</p>
-- * AddressId [AddressId] <p>The automatically generated ID for a specific address.</p>
-- * KmsKeyARN [KmsKeyARN] <p>The <code>KmsKeyARN</code> Amazon Resource Name (ARN) associated with this cluster. This ARN was created using the <a href="http://docs.aws.amazon.com/kms/latest/APIReference/API_CreateKey.html">CreateKey</a> API action in AWS Key Management Service (AWS KMS).</p>
-- * Notification [Notification] <p>The Amazon Simple Notification Service (Amazon SNS) notification settings for this cluster.</p>
-- * RoleARN [RoleARN] <p>The role ARN associated with this cluster. This ARN was created using the <a href="http://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html">CreateRole</a> API action in AWS Identity and Access Management (IAM).</p>
-- * ClusterId [String] <p>The automatically generated ID for a cluster.</p>
-- * ForwardingAddressId [AddressId] <p>The ID of the address that you want a cluster shipped to, after it will be shipped to its primary address. This field is not supported in most regions.</p>
-- * ClusterState [ClusterState] <p>The current status of the cluster.</p>
-- * ShippingOption [ShippingOption] <p>The shipping speed for each node in this cluster. This speed doesn't dictate how soon you'll get each Snowball Edge device, rather it represents how quickly each device moves to its destination while in transit. Regional shipping speeds are as follows:</p> <ul> <li> <p>In Australia, you have access to express shipping. Typically, devices shipped express are delivered in about a day.</p> </li> <li> <p>In the European Union (EU), you have access to express shipping. Typically, Snowball Edges shipped express are delivered in about a day. In addition, most countries in the EU have access to standard shipping, which typically takes less than a week, one way.</p> </li> <li> <p>In India, Snowball Edges are delivered in one to seven days.</p> </li> <li> <p>In the US, you have access to one-day shipping and two-day shipping.</p> </li> </ul>
-- * Resources [JobResource] <p>The arrays of <a>JobResource</a> objects that can include updated <a>S3Resource</a> objects or <a>LambdaResource</a> objects.</p>
-- * SnowballType [SnowballType] <p>The type of AWS Snowball device to use for this cluster. Currently, the only supported device type for cluster jobs is <code>EDGE</code>.</p>
-- * CreationDate [Timestamp] <p>The creation date for this cluster.</p>
-- * JobType [JobType] <p>The type of job for this cluster. Currently, the only job type supported for clusters is <code>LOCAL_USE</code>.</p>
-- @return ClusterMetadata structure as a key-value pair table
function M.ClusterMetadata(args)
	assert(args, "You must provide an argument table when creating ClusterMetadata")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Description"] = args["Description"],
		["AddressId"] = args["AddressId"],
		["KmsKeyARN"] = args["KmsKeyARN"],
		["Notification"] = args["Notification"],
		["RoleARN"] = args["RoleARN"],
		["ClusterId"] = args["ClusterId"],
		["ForwardingAddressId"] = args["ForwardingAddressId"],
		["ClusterState"] = args["ClusterState"],
		["ShippingOption"] = args["ShippingOption"],
		["Resources"] = args["Resources"],
		["SnowballType"] = args["SnowballType"],
		["CreationDate"] = args["CreationDate"],
		["JobType"] = args["JobType"],
	}
	asserts.AssertClusterMetadata(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetJobUnlockCodeResult = { ["UnlockCode"] = true, nil }

function asserts.AssertGetJobUnlockCodeResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetJobUnlockCodeResult to be of type 'table'")
	if struct["UnlockCode"] then asserts.AssertString(struct["UnlockCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetJobUnlockCodeResult[k], "GetJobUnlockCodeResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetJobUnlockCodeResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UnlockCode [String] <p>The <code>UnlockCode</code> value for the specified job. The <code>UnlockCode</code> value can be accessed for up to 90 days after the job has been created.</p>
-- @return GetJobUnlockCodeResult structure as a key-value pair table
function M.GetJobUnlockCodeResult(args)
	assert(args, "You must provide an argument table when creating GetJobUnlockCodeResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UnlockCode"] = args["UnlockCode"],
	}
	asserts.AssertGetJobUnlockCodeResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.KeyRange = { ["EndMarker"] = true, ["BeginMarker"] = true, nil }

function asserts.AssertKeyRange(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KeyRange to be of type 'table'")
	if struct["EndMarker"] then asserts.AssertString(struct["EndMarker"]) end
	if struct["BeginMarker"] then asserts.AssertString(struct["BeginMarker"]) end
	for k,_ in pairs(struct) do
		assert(keys.KeyRange[k], "KeyRange contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KeyRange
-- <p>Contains a key range. For export jobs, a <code>S3Resource</code> object can have an optional <code>KeyRange</code> value. The length of the range is defined at job creation, and has either an inclusive <code>BeginMarker</code>, an inclusive <code>EndMarker</code>, or both. Ranges are UTF-8 binary sorted.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EndMarker [String] <p>The key that ends an optional key range for an export job. Ranges are inclusive and UTF-8 binary sorted.</p>
-- * BeginMarker [String] <p>The key that starts an optional key range for an export job. Ranges are inclusive and UTF-8 binary sorted.</p>
-- @return KeyRange structure as a key-value pair table
function M.KeyRange(args)
	assert(args, "You must provide an argument table when creating KeyRange")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EndMarker"] = args["EndMarker"],
		["BeginMarker"] = args["BeginMarker"],
	}
	asserts.AssertKeyRange(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Shipment = { ["Status"] = true, ["TrackingNumber"] = true, nil }

function asserts.AssertShipment(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Shipment to be of type 'table'")
	if struct["Status"] then asserts.AssertString(struct["Status"]) end
	if struct["TrackingNumber"] then asserts.AssertString(struct["TrackingNumber"]) end
	for k,_ in pairs(struct) do
		assert(keys.Shipment[k], "Shipment contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Shipment
-- <p>The <code>Status</code> and <code>TrackingNumber</code> information for an inbound or outbound shipment.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [String] <p>Status information for a shipment.</p>
-- * TrackingNumber [String] <p>The tracking number for this job. Using this tracking number with your region's carrier's website, you can track a Snowball as the carrier transports it.</p> <p>For India, the carrier is Amazon Logistics. For all other regions, UPS is the carrier.</p>
-- @return Shipment structure as a key-value pair table
function M.Shipment(args)
	assert(args, "You must provide an argument table when creating Shipment")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["TrackingNumber"] = args["TrackingNumber"],
	}
	asserts.AssertShipment(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EventTriggerDefinition = { ["EventResourceARN"] = true, nil }

function asserts.AssertEventTriggerDefinition(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventTriggerDefinition to be of type 'table'")
	if struct["EventResourceARN"] then asserts.AssertResourceARN(struct["EventResourceARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.EventTriggerDefinition[k], "EventTriggerDefinition contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventTriggerDefinition
-- <p>The container for the <a>EventTriggerDefinition$EventResourceARN</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EventResourceARN [ResourceARN] <p>The Amazon Resource Name (ARN) for any local Amazon S3 resource that is an AWS Lambda function's event trigger associated with this job.</p>
-- @return EventTriggerDefinition structure as a key-value pair table
function M.EventTriggerDefinition(args)
	assert(args, "You must provide an argument table when creating EventTriggerDefinition")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EventResourceARN"] = args["EventResourceARN"],
	}
	asserts.AssertEventTriggerDefinition(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateAddressRequest = { ["Address"] = true, nil }

function asserts.AssertCreateAddressRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAddressRequest to be of type 'table'")
	assert(struct["Address"], "Expected key Address to exist in table")
	if struct["Address"] then asserts.AssertAddress(struct["Address"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateAddressRequest[k], "CreateAddressRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAddressRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Address [Address] <p>The address that you want the Snowball shipped to.</p>
-- Required key: Address
-- @return CreateAddressRequest structure as a key-value pair table
function M.CreateAddressRequest(args)
	assert(args, "You must provide an argument table when creating CreateAddressRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Address"] = args["Address"],
	}
	asserts.AssertCreateAddressRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateAddressResult = { ["AddressId"] = true, nil }

function asserts.AssertCreateAddressResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAddressResult to be of type 'table'")
	if struct["AddressId"] then asserts.AssertString(struct["AddressId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateAddressResult[k], "CreateAddressResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAddressResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AddressId [String] <p>The automatically generated ID for a specific address. You'll use this ID when you create a job to specify which address you want the Snowball for that job shipped to.</p>
-- @return CreateAddressResult structure as a key-value pair table
function M.CreateAddressResult(args)
	assert(args, "You must provide an argument table when creating CreateAddressResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AddressId"] = args["AddressId"],
	}
	asserts.AssertCreateAddressResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListJobsResult = { ["NextToken"] = true, ["JobListEntries"] = true, nil }

function asserts.AssertListJobsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListJobsResult to be of type 'table'")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["JobListEntries"] then asserts.AssertJobListEntryList(struct["JobListEntries"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListJobsResult[k], "ListJobsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListJobsResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [String] <p>HTTP requests are stateless. If you use this automatically generated <code>NextToken</code> value in your next <code>ListJobs</code> call, your returned <code>JobListEntry</code> objects will start from this point in the array.</p>
-- * JobListEntries [JobListEntryList] <p>Each <code>JobListEntry</code> object contains a job's state, a job's ID, and a value that indicates whether the job is a job part, in the case of export jobs. </p>
-- @return ListJobsResult structure as a key-value pair table
function M.ListJobsResult(args)
	assert(args, "You must provide an argument table when creating ListJobsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["JobListEntries"] = args["JobListEntries"],
	}
	asserts.AssertListJobsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ClusterListEntry = { ["ClusterState"] = true, ["CreationDate"] = true, ["ClusterId"] = true, ["Description"] = true, nil }

function asserts.AssertClusterListEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClusterListEntry to be of type 'table'")
	if struct["ClusterState"] then asserts.AssertClusterState(struct["ClusterState"]) end
	if struct["CreationDate"] then asserts.AssertTimestamp(struct["CreationDate"]) end
	if struct["ClusterId"] then asserts.AssertString(struct["ClusterId"]) end
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.ClusterListEntry[k], "ClusterListEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClusterListEntry
-- <p>Contains a cluster's state, a cluster's ID, and other important information.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ClusterState [ClusterState] <p>The current state of this cluster. For information about the state of a specific node, see <a>JobListEntry$JobState</a>.</p>
-- * CreationDate [Timestamp] <p>The creation date for this cluster.</p>
-- * ClusterId [String] <p>The 39-character ID for the cluster that you want to list, for example <code>CID123e4567-e89b-12d3-a456-426655440000</code>.</p>
-- * Description [String] <p>Defines an optional description of the cluster, for example <code>Environmental Data Cluster-01</code>.</p>
-- @return ClusterListEntry structure as a key-value pair table
function M.ClusterListEntry(args)
	assert(args, "You must provide an argument table when creating ClusterListEntry")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ClusterState"] = args["ClusterState"],
		["CreationDate"] = args["CreationDate"],
		["ClusterId"] = args["ClusterId"],
		["Description"] = args["Description"],
	}
	asserts.AssertClusterListEntry(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateClusterRequest = { ["Description"] = true, ["AddressId"] = true, ["KmsKeyARN"] = true, ["Notification"] = true, ["RoleARN"] = true, ["ForwardingAddressId"] = true, ["ShippingOption"] = true, ["JobType"] = true, ["SnowballType"] = true, ["Resources"] = true, nil }

function asserts.AssertCreateClusterRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateClusterRequest to be of type 'table'")
	assert(struct["JobType"], "Expected key JobType to exist in table")
	assert(struct["Resources"], "Expected key Resources to exist in table")
	assert(struct["AddressId"], "Expected key AddressId to exist in table")
	assert(struct["RoleARN"], "Expected key RoleARN to exist in table")
	assert(struct["ShippingOption"], "Expected key ShippingOption to exist in table")
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	if struct["AddressId"] then asserts.AssertAddressId(struct["AddressId"]) end
	if struct["KmsKeyARN"] then asserts.AssertKmsKeyARN(struct["KmsKeyARN"]) end
	if struct["Notification"] then asserts.AssertNotification(struct["Notification"]) end
	if struct["RoleARN"] then asserts.AssertRoleARN(struct["RoleARN"]) end
	if struct["ForwardingAddressId"] then asserts.AssertAddressId(struct["ForwardingAddressId"]) end
	if struct["ShippingOption"] then asserts.AssertShippingOption(struct["ShippingOption"]) end
	if struct["JobType"] then asserts.AssertJobType(struct["JobType"]) end
	if struct["SnowballType"] then asserts.AssertSnowballType(struct["SnowballType"]) end
	if struct["Resources"] then asserts.AssertJobResource(struct["Resources"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateClusterRequest[k], "CreateClusterRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateClusterRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Description [String] <p>An optional description of this specific cluster, for example <code>Environmental Data Cluster-01</code>.</p>
-- * AddressId [AddressId] <p>The ID for the address that you want the cluster shipped to.</p>
-- * KmsKeyARN [KmsKeyARN] <p>The <code>KmsKeyARN</code> value that you want to associate with this cluster. <code>KmsKeyARN</code> values are created by using the <a href="http://docs.aws.amazon.com/kms/latest/APIReference/API_CreateKey.html">CreateKey</a> API action in AWS Key Management Service (AWS KMS). </p>
-- * Notification [Notification] <p>The Amazon Simple Notification Service (Amazon SNS) notification settings for this cluster.</p>
-- * RoleARN [RoleARN] <p>The <code>RoleARN</code> that you want to associate with this cluster. <code>RoleArn</code> values are created by using the <a href="http://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html">CreateRole</a> API action in AWS Identity and Access Management (IAM).</p>
-- * ForwardingAddressId [AddressId] <p>The forwarding address ID for a cluster. This field is not supported in most regions.</p>
-- * ShippingOption [ShippingOption] <p>The shipping speed for each node in this cluster. This speed doesn't dictate how soon you'll get each Snowball Edge device, rather it represents how quickly each device moves to its destination while in transit. Regional shipping speeds are as follows:</p> <ul> <li> <p>In Australia, you have access to express shipping. Typically, devices shipped express are delivered in about a day.</p> </li> <li> <p>In the European Union (EU), you have access to express shipping. Typically, Snowball Edges shipped express are delivered in about a day. In addition, most countries in the EU have access to standard shipping, which typically takes less than a week, one way.</p> </li> <li> <p>In India, Snowball Edges are delivered in one to seven days.</p> </li> <li> <p>In the US, you have access to one-day shipping and two-day shipping.</p> </li> </ul>
-- * JobType [JobType] <p>The type of job for this cluster. Currently, the only job type supported for clusters is <code>LOCAL_USE</code>.</p>
-- * SnowballType [SnowballType] <p>The type of AWS Snowball device to use for this cluster. Currently, the only supported device type for cluster jobs is <code>EDGE</code>.</p>
-- * Resources [JobResource] <p>The resources associated with the cluster job. These resources include Amazon S3 buckets and optional AWS Lambda functions written in the Python language. </p>
-- Required key: JobType
-- Required key: Resources
-- Required key: AddressId
-- Required key: RoleARN
-- Required key: ShippingOption
-- @return CreateClusterRequest structure as a key-value pair table
function M.CreateClusterRequest(args)
	assert(args, "You must provide an argument table when creating CreateClusterRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Description"] = args["Description"],
		["AddressId"] = args["AddressId"],
		["KmsKeyARN"] = args["KmsKeyARN"],
		["Notification"] = args["Notification"],
		["RoleARN"] = args["RoleARN"],
		["ForwardingAddressId"] = args["ForwardingAddressId"],
		["ShippingOption"] = args["ShippingOption"],
		["JobType"] = args["JobType"],
		["SnowballType"] = args["SnowballType"],
		["Resources"] = args["Resources"],
	}
	asserts.AssertCreateClusterRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.JobLogs = { ["JobFailureLogURI"] = true, ["JobSuccessLogURI"] = true, ["JobCompletionReportURI"] = true, nil }

function asserts.AssertJobLogs(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JobLogs to be of type 'table'")
	if struct["JobFailureLogURI"] then asserts.AssertString(struct["JobFailureLogURI"]) end
	if struct["JobSuccessLogURI"] then asserts.AssertString(struct["JobSuccessLogURI"]) end
	if struct["JobCompletionReportURI"] then asserts.AssertString(struct["JobCompletionReportURI"]) end
	for k,_ in pairs(struct) do
		assert(keys.JobLogs[k], "JobLogs contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JobLogs
-- <p>Contains job logs. Whenever Snowball is used to import data into or export data out of Amazon S3, you'll have the option of downloading a PDF job report. Job logs are returned as a part of the response syntax of the <code>DescribeJob</code> action in the <code>JobMetadata</code> data type. The job logs can be accessed for up to 60 minutes after this request has been made. To access any of the job logs after 60 minutes have passed, you'll have to make another call to the <code>DescribeJob</code> action.</p> <p>For import jobs, the PDF job report becomes available at the end of the import process. For export jobs, your job report typically becomes available while the Snowball for your job part is being delivered to you.</p> <p>The job report provides you insight into the state of your Amazon S3 data transfer. The report includes details about your job or job part for your records.</p> <p>For deeper visibility into the status of your transferred objects, you can look at the two associated logs: a success log and a failure log. The logs are saved in comma-separated value (CSV) format, and the name of each log includes the ID of the job or job part that the log describes.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * JobFailureLogURI [String] <p>A link to an Amazon S3 presigned URL where the job failure log is located.</p>
-- * JobSuccessLogURI [String] <p>A link to an Amazon S3 presigned URL where the job success log is located.</p>
-- * JobCompletionReportURI [String] <p>A link to an Amazon S3 presigned URL where the job completion report is located.</p>
-- @return JobLogs structure as a key-value pair table
function M.JobLogs(args)
	assert(args, "You must provide an argument table when creating JobLogs")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["JobFailureLogURI"] = args["JobFailureLogURI"],
		["JobSuccessLogURI"] = args["JobSuccessLogURI"],
		["JobCompletionReportURI"] = args["JobCompletionReportURI"],
	}
	asserts.AssertJobLogs(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetJobManifestRequest = { ["JobId"] = true, nil }

function asserts.AssertGetJobManifestRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetJobManifestRequest to be of type 'table'")
	assert(struct["JobId"], "Expected key JobId to exist in table")
	if struct["JobId"] then asserts.AssertJobId(struct["JobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetJobManifestRequest[k], "GetJobManifestRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetJobManifestRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * JobId [JobId] <p>The ID for a job that you want to get the manifest file for, for example <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>
-- Required key: JobId
-- @return GetJobManifestRequest structure as a key-value pair table
function M.GetJobManifestRequest(args)
	assert(args, "You must provide an argument table when creating GetJobManifestRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["JobId"] = args["JobId"],
	}
	asserts.AssertGetJobManifestRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeJobRequest = { ["JobId"] = true, nil }

function asserts.AssertDescribeJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeJobRequest to be of type 'table'")
	assert(struct["JobId"], "Expected key JobId to exist in table")
	if struct["JobId"] then asserts.AssertJobId(struct["JobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeJobRequest[k], "DescribeJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeJobRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * JobId [JobId] <p>The automatically generated ID for a job, for example <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>
-- Required key: JobId
-- @return DescribeJobRequest structure as a key-value pair table
function M.DescribeJobRequest(args)
	assert(args, "You must provide an argument table when creating DescribeJobRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["JobId"] = args["JobId"],
	}
	asserts.AssertDescribeJobRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetSnowballUsageResult = { ["SnowballLimit"] = true, ["SnowballsInUse"] = true, nil }

function asserts.AssertGetSnowballUsageResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSnowballUsageResult to be of type 'table'")
	if struct["SnowballLimit"] then asserts.AssertInteger(struct["SnowballLimit"]) end
	if struct["SnowballsInUse"] then asserts.AssertInteger(struct["SnowballsInUse"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSnowballUsageResult[k], "GetSnowballUsageResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSnowballUsageResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SnowballLimit [Integer] <p>The service limit for number of Snowballs this account can have at once. The default service limit is 1 (one).</p>
-- * SnowballsInUse [Integer] <p>The number of Snowballs that this account is currently using.</p>
-- @return GetSnowballUsageResult structure as a key-value pair table
function M.GetSnowballUsageResult(args)
	assert(args, "You must provide an argument table when creating GetSnowballUsageResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SnowballLimit"] = args["SnowballLimit"],
		["SnowballsInUse"] = args["SnowballsInUse"],
	}
	asserts.AssertGetSnowballUsageResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateClusterResult = { ["ClusterId"] = true, nil }

function asserts.AssertCreateClusterResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateClusterResult to be of type 'table'")
	if struct["ClusterId"] then asserts.AssertClusterId(struct["ClusterId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateClusterResult[k], "CreateClusterResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateClusterResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ClusterId [ClusterId] <p>The automatically generated ID for a cluster.</p>
-- @return CreateClusterResult structure as a key-value pair table
function M.CreateClusterResult(args)
	assert(args, "You must provide an argument table when creating CreateClusterResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ClusterId"] = args["ClusterId"],
	}
	asserts.AssertCreateClusterResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeAddressResult = { ["Address"] = true, nil }

function asserts.AssertDescribeAddressResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAddressResult to be of type 'table'")
	if struct["Address"] then asserts.AssertAddress(struct["Address"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAddressResult[k], "DescribeAddressResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAddressResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Address [Address] <p>The address that you want the Snowball or Snowballs associated with a specific job to be shipped to.</p>
-- @return DescribeAddressResult structure as a key-value pair table
function M.DescribeAddressResult(args)
	assert(args, "You must provide an argument table when creating DescribeAddressResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Address"] = args["Address"],
	}
	asserts.AssertDescribeAddressResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.JobMetadata = { ["SnowballCapacityPreference"] = true, ["JobState"] = true, ["Description"] = true, ["AddressId"] = true, ["ForwardingAddressId"] = true, ["KmsKeyARN"] = true, ["Notification"] = true, ["RoleARN"] = true, ["ClusterId"] = true, ["JobId"] = true, ["DataTransferProgress"] = true, ["JobType"] = true, ["SnowballType"] = true, ["JobLogInfo"] = true, ["CreationDate"] = true, ["Resources"] = true, ["ShippingDetails"] = true, nil }

function asserts.AssertJobMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JobMetadata to be of type 'table'")
	if struct["SnowballCapacityPreference"] then asserts.AssertSnowballCapacity(struct["SnowballCapacityPreference"]) end
	if struct["JobState"] then asserts.AssertJobState(struct["JobState"]) end
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	if struct["AddressId"] then asserts.AssertAddressId(struct["AddressId"]) end
	if struct["ForwardingAddressId"] then asserts.AssertAddressId(struct["ForwardingAddressId"]) end
	if struct["KmsKeyARN"] then asserts.AssertKmsKeyARN(struct["KmsKeyARN"]) end
	if struct["Notification"] then asserts.AssertNotification(struct["Notification"]) end
	if struct["RoleARN"] then asserts.AssertRoleARN(struct["RoleARN"]) end
	if struct["ClusterId"] then asserts.AssertString(struct["ClusterId"]) end
	if struct["JobId"] then asserts.AssertString(struct["JobId"]) end
	if struct["DataTransferProgress"] then asserts.AssertDataTransfer(struct["DataTransferProgress"]) end
	if struct["JobType"] then asserts.AssertJobType(struct["JobType"]) end
	if struct["SnowballType"] then asserts.AssertSnowballType(struct["SnowballType"]) end
	if struct["JobLogInfo"] then asserts.AssertJobLogs(struct["JobLogInfo"]) end
	if struct["CreationDate"] then asserts.AssertTimestamp(struct["CreationDate"]) end
	if struct["Resources"] then asserts.AssertJobResource(struct["Resources"]) end
	if struct["ShippingDetails"] then asserts.AssertShippingDetails(struct["ShippingDetails"]) end
	for k,_ in pairs(struct) do
		assert(keys.JobMetadata[k], "JobMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JobMetadata
-- <p>Contains information about a specific job including shipping information, job status, and other important metadata. This information is returned as a part of the response syntax of the <code>DescribeJob</code> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SnowballCapacityPreference [SnowballCapacity] <p>The Snowball capacity preference for this job, specified at job creation. In US regions, you can choose between 50 TB and 80 TB Snowballs. All other regions use 80 TB capacity Snowballs.</p>
-- * JobState [JobState] <p>The current status of the jobs.</p>
-- * Description [String] <p>The description of the job, provided at job creation.</p>
-- * AddressId [AddressId] <p>The ID for the address that you want the Snowball shipped to.</p>
-- * ForwardingAddressId [AddressId] <p>The ID of the address that you want a job shipped to, after it will be shipped to its primary address. This field is not supported in most regions.</p>
-- * KmsKeyARN [KmsKeyARN] <p>The Amazon Resource Name (ARN) for the AWS Key Management Service (AWS KMS) key associated with this job. This ARN was created using the <a href="http://docs.aws.amazon.com/kms/latest/APIReference/API_CreateKey.html">CreateKey</a> API action in AWS KMS.</p>
-- * Notification [Notification] <p>The Amazon Simple Notification Service (Amazon SNS) notification settings associated with a specific job. The <code>Notification</code> object is returned as a part of the response syntax of the <code>DescribeJob</code> action in the <code>JobMetadata</code> data type.</p>
-- * RoleARN [RoleARN] <p>The role ARN associated with this job. This ARN was created using the <a href="http://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html">CreateRole</a> API action in AWS Identity and Access Management (IAM).</p>
-- * ClusterId [String] <p>The 39-character ID for the cluster, for example <code>CID123e4567-e89b-12d3-a456-426655440000</code>.</p>
-- * JobId [String] <p>The automatically generated ID for a job, for example <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>
-- * DataTransferProgress [DataTransfer] <p>A value that defines the real-time status of a Snowball's data transfer while the device is at AWS. This data is only available while a job has a <code>JobState</code> value of <code>InProgress</code>, for both import and export jobs.</p>
-- * JobType [JobType] <p>The type of job.</p>
-- * SnowballType [SnowballType] <p>The type of device used with this job.</p>
-- * JobLogInfo [JobLogs] <p>Links to Amazon S3 presigned URLs for the job report and logs. For import jobs, the PDF job report becomes available at the end of the import process. For export jobs, your job report typically becomes available while the Snowball for your job part is being delivered to you.</p>
-- * CreationDate [Timestamp] <p>The creation date for this job.</p>
-- * Resources [JobResource] <p>An array of <code>S3Resource</code> objects. Each <code>S3Resource</code> object represents an Amazon S3 bucket that your transferred data will be exported from or imported into.</p>
-- * ShippingDetails [ShippingDetails] <p>A job's shipping information, including inbound and outbound tracking numbers and shipping speed options.</p>
-- @return JobMetadata structure as a key-value pair table
function M.JobMetadata(args)
	assert(args, "You must provide an argument table when creating JobMetadata")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SnowballCapacityPreference"] = args["SnowballCapacityPreference"],
		["JobState"] = args["JobState"],
		["Description"] = args["Description"],
		["AddressId"] = args["AddressId"],
		["ForwardingAddressId"] = args["ForwardingAddressId"],
		["KmsKeyARN"] = args["KmsKeyARN"],
		["Notification"] = args["Notification"],
		["RoleARN"] = args["RoleARN"],
		["ClusterId"] = args["ClusterId"],
		["JobId"] = args["JobId"],
		["DataTransferProgress"] = args["DataTransferProgress"],
		["JobType"] = args["JobType"],
		["SnowballType"] = args["SnowballType"],
		["JobLogInfo"] = args["JobLogInfo"],
		["CreationDate"] = args["CreationDate"],
		["Resources"] = args["Resources"],
		["ShippingDetails"] = args["ShippingDetails"],
	}
	asserts.AssertJobMetadata(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeJobResult = { ["JobMetadata"] = true, ["SubJobMetadata"] = true, nil }

function asserts.AssertDescribeJobResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeJobResult to be of type 'table'")
	if struct["JobMetadata"] then asserts.AssertJobMetadata(struct["JobMetadata"]) end
	if struct["SubJobMetadata"] then asserts.AssertJobMetadataList(struct["SubJobMetadata"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeJobResult[k], "DescribeJobResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeJobResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * JobMetadata [JobMetadata] <p>Information about a specific job, including shipping information, job status, and other important metadata.</p>
-- * SubJobMetadata [JobMetadataList] <p>Information about a specific job part (in the case of an export job), including shipping information, job status, and other important metadata.</p>
-- @return DescribeJobResult structure as a key-value pair table
function M.DescribeJobResult(args)
	assert(args, "You must provide an argument table when creating DescribeJobResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["JobMetadata"] = args["JobMetadata"],
		["SubJobMetadata"] = args["SubJobMetadata"],
	}
	asserts.AssertDescribeJobResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetJobManifestResult = { ["ManifestURI"] = true, nil }

function asserts.AssertGetJobManifestResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetJobManifestResult to be of type 'table'")
	if struct["ManifestURI"] then asserts.AssertString(struct["ManifestURI"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetJobManifestResult[k], "GetJobManifestResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetJobManifestResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ManifestURI [String] <p>The Amazon S3 presigned URL for the manifest file associated with the specified <code>JobId</code> value.</p>
-- @return GetJobManifestResult structure as a key-value pair table
function M.GetJobManifestResult(args)
	assert(args, "You must provide an argument table when creating GetJobManifestResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ManifestURI"] = args["ManifestURI"],
	}
	asserts.AssertGetJobManifestResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Address = { ["City"] = true, ["Name"] = true, ["AddressId"] = true, ["Street1"] = true, ["Company"] = true, ["Street3"] = true, ["PostalCode"] = true, ["PrefectureOrDistrict"] = true, ["Country"] = true, ["Landmark"] = true, ["PhoneNumber"] = true, ["IsRestricted"] = true, ["StateOrProvince"] = true, ["Street2"] = true, nil }

function asserts.AssertAddress(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Address to be of type 'table'")
	if struct["City"] then asserts.AssertString(struct["City"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["AddressId"] then asserts.AssertAddressId(struct["AddressId"]) end
	if struct["Street1"] then asserts.AssertString(struct["Street1"]) end
	if struct["Company"] then asserts.AssertString(struct["Company"]) end
	if struct["Street3"] then asserts.AssertString(struct["Street3"]) end
	if struct["PostalCode"] then asserts.AssertString(struct["PostalCode"]) end
	if struct["PrefectureOrDistrict"] then asserts.AssertString(struct["PrefectureOrDistrict"]) end
	if struct["Country"] then asserts.AssertString(struct["Country"]) end
	if struct["Landmark"] then asserts.AssertString(struct["Landmark"]) end
	if struct["PhoneNumber"] then asserts.AssertString(struct["PhoneNumber"]) end
	if struct["IsRestricted"] then asserts.AssertBoolean(struct["IsRestricted"]) end
	if struct["StateOrProvince"] then asserts.AssertString(struct["StateOrProvince"]) end
	if struct["Street2"] then asserts.AssertString(struct["Street2"]) end
	for k,_ in pairs(struct) do
		assert(keys.Address[k], "Address contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Address
-- <p>The address that you want the Snowball or Snowballs associated with a specific job to be shipped to. Addresses are validated at the time of creation. The address you provide must be located within the serviceable area of your region. Although no individual elements of the <code>Address</code> are required, if the address is invalid or unsupported, then an exception is thrown.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * City [String] <p>The city in an address that a Snowball is to be delivered to.</p>
-- * Name [String] <p>The name of a person to receive a Snowball at an address.</p>
-- * AddressId [AddressId] <p>The unique ID for an address.</p>
-- * Street1 [String] <p>The first line in a street address that a Snowball is to be delivered to.</p>
-- * Company [String] <p>The name of the company to receive a Snowball at an address.</p>
-- * Street3 [String] <p>The third line in a street address that a Snowball is to be delivered to.</p>
-- * PostalCode [String] <p>The postal code in an address that a Snowball is to be delivered to.</p>
-- * PrefectureOrDistrict [String] <p>This field is no longer used and the value is ignored.</p>
-- * Country [String] <p>The country in an address that a Snowball is to be delivered to.</p>
-- * Landmark [String] <p>This field is no longer used and the value is ignored.</p>
-- * PhoneNumber [String] <p>The phone number associated with an address that a Snowball is to be delivered to.</p>
-- * IsRestricted [Boolean] <p>If the address you are creating is a primary address, then set this option to true. This field is not supported in most regions.</p>
-- * StateOrProvince [String] <p>The state or province in an address that a Snowball is to be delivered to.</p>
-- * Street2 [String] <p>The second line in a street address that a Snowball is to be delivered to.</p>
-- @return Address structure as a key-value pair table
function M.Address(args)
	assert(args, "You must provide an argument table when creating Address")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["City"] = args["City"],
		["Name"] = args["Name"],
		["AddressId"] = args["AddressId"],
		["Street1"] = args["Street1"],
		["Company"] = args["Company"],
		["Street3"] = args["Street3"],
		["PostalCode"] = args["PostalCode"],
		["PrefectureOrDistrict"] = args["PrefectureOrDistrict"],
		["Country"] = args["Country"],
		["Landmark"] = args["Landmark"],
		["PhoneNumber"] = args["PhoneNumber"],
		["IsRestricted"] = args["IsRestricted"],
		["StateOrProvince"] = args["StateOrProvince"],
		["Street2"] = args["Street2"],
	}
	asserts.AssertAddress(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetSnowballUsageRequest = { nil }

function asserts.AssertGetSnowballUsageRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSnowballUsageRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.GetSnowballUsageRequest[k], "GetSnowballUsageRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSnowballUsageRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return GetSnowballUsageRequest structure as a key-value pair table
function M.GetSnowballUsageRequest(args)
	assert(args, "You must provide an argument table when creating GetSnowballUsageRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertGetSnowballUsageRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeAddressRequest = { ["AddressId"] = true, nil }

function asserts.AssertDescribeAddressRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAddressRequest to be of type 'table'")
	assert(struct["AddressId"], "Expected key AddressId to exist in table")
	if struct["AddressId"] then asserts.AssertAddressId(struct["AddressId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAddressRequest[k], "DescribeAddressRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAddressRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AddressId [AddressId] <p>The automatically generated ID for a specific address.</p>
-- Required key: AddressId
-- @return DescribeAddressRequest structure as a key-value pair table
function M.DescribeAddressRequest(args)
	assert(args, "You must provide an argument table when creating DescribeAddressRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AddressId"] = args["AddressId"],
	}
	asserts.AssertDescribeAddressRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LambdaResource = { ["EventTriggers"] = true, ["LambdaArn"] = true, nil }

function asserts.AssertLambdaResource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LambdaResource to be of type 'table'")
	if struct["EventTriggers"] then asserts.AssertEventTriggerDefinitionList(struct["EventTriggers"]) end
	if struct["LambdaArn"] then asserts.AssertResourceARN(struct["LambdaArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.LambdaResource[k], "LambdaResource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LambdaResource
-- <p>Identifies </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EventTriggers [EventTriggerDefinitionList] <p>The array of ARNs for <a>S3Resource</a> objects to trigger the <a>LambdaResource</a> objects associated with this job.</p>
-- * LambdaArn [ResourceARN] <p>An Amazon Resource Name (ARN) that represents an AWS Lambda function to be triggered by PUT object actions on the associated local Amazon S3 resource.</p>
-- @return LambdaResource structure as a key-value pair table
function M.LambdaResource(args)
	assert(args, "You must provide an argument table when creating LambdaResource")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EventTriggers"] = args["EventTriggers"],
		["LambdaArn"] = args["LambdaArn"],
	}
	asserts.AssertLambdaResource(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListClusterJobsResult = { ["NextToken"] = true, ["JobListEntries"] = true, nil }

function asserts.AssertListClusterJobsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListClusterJobsResult to be of type 'table'")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["JobListEntries"] then asserts.AssertJobListEntryList(struct["JobListEntries"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListClusterJobsResult[k], "ListClusterJobsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListClusterJobsResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [String] <p>HTTP requests are stateless. If you use the automatically generated <code>NextToken</code> value in your next <code>ListClusterJobsResult</code> call, your list of returned jobs will start from this point in the array.</p>
-- * JobListEntries [JobListEntryList] <p>Each <code>JobListEntry</code> object contains a job's state, a job's ID, and a value that indicates whether the job is a job part, in the case of export jobs. </p>
-- @return ListClusterJobsResult structure as a key-value pair table
function M.ListClusterJobsResult(args)
	assert(args, "You must provide an argument table when creating ListClusterJobsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["JobListEntries"] = args["JobListEntries"],
	}
	asserts.AssertListClusterJobsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListClustersResult = { ["ClusterListEntries"] = true, ["NextToken"] = true, nil }

function asserts.AssertListClustersResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListClustersResult to be of type 'table'")
	if struct["ClusterListEntries"] then asserts.AssertClusterListEntryList(struct["ClusterListEntries"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListClustersResult[k], "ListClustersResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListClustersResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ClusterListEntries [ClusterListEntryList] <p>Each <code>ClusterListEntry</code> object contains a cluster's state, a cluster's ID, and other important status information.</p>
-- * NextToken [String] <p>HTTP requests are stateless. If you use the automatically generated <code>NextToken</code> value in your next <code>ClusterListEntry</code> call, your list of returned clusters will start from this point in the array.</p>
-- @return ListClustersResult structure as a key-value pair table
function M.ListClustersResult(args)
	assert(args, "You must provide an argument table when creating ListClustersResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ClusterListEntries"] = args["ClusterListEntries"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListClustersResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateClusterRequest = { ["Description"] = true, ["AddressId"] = true, ["Notification"] = true, ["RoleARN"] = true, ["ClusterId"] = true, ["ForwardingAddressId"] = true, ["ShippingOption"] = true, ["Resources"] = true, nil }

function asserts.AssertUpdateClusterRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateClusterRequest to be of type 'table'")
	assert(struct["ClusterId"], "Expected key ClusterId to exist in table")
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	if struct["AddressId"] then asserts.AssertAddressId(struct["AddressId"]) end
	if struct["Notification"] then asserts.AssertNotification(struct["Notification"]) end
	if struct["RoleARN"] then asserts.AssertRoleARN(struct["RoleARN"]) end
	if struct["ClusterId"] then asserts.AssertClusterId(struct["ClusterId"]) end
	if struct["ForwardingAddressId"] then asserts.AssertAddressId(struct["ForwardingAddressId"]) end
	if struct["ShippingOption"] then asserts.AssertShippingOption(struct["ShippingOption"]) end
	if struct["Resources"] then asserts.AssertJobResource(struct["Resources"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateClusterRequest[k], "UpdateClusterRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateClusterRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Description [String] <p>The updated description of this cluster.</p>
-- * AddressId [AddressId] <p>The ID of the updated <a>Address</a> object.</p>
-- * Notification [Notification] <p>The new or updated <a>Notification</a> object.</p>
-- * RoleARN [RoleARN] <p>The new role Amazon Resource Name (ARN) that you want to associate with this cluster. To create a role ARN, use the <a href="http://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html">CreateRole</a> API action in AWS Identity and Access Management (IAM).</p>
-- * ClusterId [ClusterId] <p>The cluster ID of the cluster that you want to update, for example <code>CID123e4567-e89b-12d3-a456-426655440000</code>.</p>
-- * ForwardingAddressId [AddressId] <p>The updated ID for the forwarding address for a cluster. This field is not supported in most regions.</p>
-- * ShippingOption [ShippingOption] <p>The updated shipping option value of this cluster's <a>ShippingDetails</a> object.</p>
-- * Resources [JobResource] <p>The updated arrays of <a>JobResource</a> objects that can include updated <a>S3Resource</a> objects or <a>LambdaResource</a> objects.</p>
-- Required key: ClusterId
-- @return UpdateClusterRequest structure as a key-value pair table
function M.UpdateClusterRequest(args)
	assert(args, "You must provide an argument table when creating UpdateClusterRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Description"] = args["Description"],
		["AddressId"] = args["AddressId"],
		["Notification"] = args["Notification"],
		["RoleARN"] = args["RoleARN"],
		["ClusterId"] = args["ClusterId"],
		["ForwardingAddressId"] = args["ForwardingAddressId"],
		["ShippingOption"] = args["ShippingOption"],
		["Resources"] = args["Resources"],
	}
	asserts.AssertUpdateClusterRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeAddressesResult = { ["NextToken"] = true, ["Addresses"] = true, nil }

function asserts.AssertDescribeAddressesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAddressesResult to be of type 'table'")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["Addresses"] then asserts.AssertAddressList(struct["Addresses"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAddressesResult[k], "DescribeAddressesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAddressesResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [String] <p>HTTP requests are stateless. If you use the automatically generated <code>NextToken</code> value in your next <code>DescribeAddresses</code> call, your list of returned addresses will start from this point in the array.</p>
-- * Addresses [AddressList] <p>The Snowball shipping addresses that were created for this account.</p>
-- @return DescribeAddressesResult structure as a key-value pair table
function M.DescribeAddressesResult(args)
	assert(args, "You must provide an argument table when creating DescribeAddressesResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Addresses"] = args["Addresses"],
	}
	asserts.AssertDescribeAddressesResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Notification = { ["NotifyAll"] = true, ["JobStatesToNotify"] = true, ["SnsTopicARN"] = true, nil }

function asserts.AssertNotification(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Notification to be of type 'table'")
	if struct["NotifyAll"] then asserts.AssertBoolean(struct["NotifyAll"]) end
	if struct["JobStatesToNotify"] then asserts.AssertJobStateList(struct["JobStatesToNotify"]) end
	if struct["SnsTopicARN"] then asserts.AssertSnsTopicARN(struct["SnsTopicARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.Notification[k], "Notification contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Notification
-- <p>The Amazon Simple Notification Service (Amazon SNS) notification settings associated with a specific job. The <code>Notification</code> object is returned as a part of the response syntax of the <code>DescribeJob</code> action in the <code>JobMetadata</code> data type.</p> <p>When the notification settings are defined during job creation, you can choose to notify based on a specific set of job states using the <code>JobStatesToNotify</code> array of strings, or you can specify that you want to have Amazon SNS notifications sent out for all job states with <code>NotifyAll</code> set to true.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NotifyAll [Boolean] <p>Any change in job state will trigger a notification for this job.</p>
-- * JobStatesToNotify [JobStateList] <p>The list of job states that will trigger a notification for this job.</p>
-- * SnsTopicARN [SnsTopicARN] <p>The new SNS <code>TopicArn</code> that you want to associate with this job. You can create Amazon Resource Names (ARNs) for topics by using the <a href="http://docs.aws.amazon.com/sns/latest/api/API_CreateTopic.html">CreateTopic</a> Amazon SNS API action.</p> <p>You can subscribe email addresses to an Amazon SNS topic through the AWS Management Console, or by using the <a href="http://docs.aws.amazon.com/sns/latest/api/API_Subscribe.html">Subscribe</a> AWS Simple Notification Service (SNS) API action.</p>
-- @return Notification structure as a key-value pair table
function M.Notification(args)
	assert(args, "You must provide an argument table when creating Notification")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NotifyAll"] = args["NotifyAll"],
		["JobStatesToNotify"] = args["JobStatesToNotify"],
		["SnsTopicARN"] = args["SnsTopicARN"],
	}
	asserts.AssertNotification(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateClusterResult = { nil }

function asserts.AssertUpdateClusterResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateClusterResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateClusterResult[k], "UpdateClusterResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateClusterResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateClusterResult structure as a key-value pair table
function M.UpdateClusterResult(args)
	assert(args, "You must provide an argument table when creating UpdateClusterResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateClusterResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeAddressesRequest = { ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertDescribeAddressesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAddressesRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertListLimit(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAddressesRequest[k], "DescribeAddressesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAddressesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [String] <p>HTTP requests are stateless. To identify what object comes "next" in the list of <code>ADDRESS</code> objects, you have the option of specifying a value for <code>NextToken</code> as the starting point for your list of returned addresses.</p>
-- * MaxResults [ListLimit] <p>The number of <code>ADDRESS</code> objects to return.</p>
-- @return DescribeAddressesRequest structure as a key-value pair table
function M.DescribeAddressesRequest(args)
	assert(args, "You must provide an argument table when creating DescribeAddressesRequest")
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
	asserts.AssertDescribeAddressesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateJobResult = { nil }

function asserts.AssertUpdateJobResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateJobResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateJobResult[k], "UpdateJobResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateJobResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateJobResult structure as a key-value pair table
function M.UpdateJobResult(args)
	assert(args, "You must provide an argument table when creating UpdateJobResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateJobResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CompatibleImage = { ["AmiId"] = true, ["Name"] = true, nil }

function asserts.AssertCompatibleImage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CompatibleImage to be of type 'table'")
	if struct["AmiId"] then asserts.AssertString(struct["AmiId"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CompatibleImage[k], "CompatibleImage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CompatibleImage
-- <p>A JSON-formatted object that describes a compatible Amazon Machine Image (AMI), including the ID and name for a Snowball Edge AMI. This AMI is compatible with the device's physical hardware requirements, and it should be able to be run in an SBE1 instance on the device.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AmiId [String] <p>The unique identifier for an individual Snowball Edge AMI.</p>
-- * Name [String] <p>The optional name of a compatible image.</p>
-- @return CompatibleImage structure as a key-value pair table
function M.CompatibleImage(args)
	assert(args, "You must provide an argument table when creating CompatibleImage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AmiId"] = args["AmiId"],
		["Name"] = args["Name"],
	}
	asserts.AssertCompatibleImage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateJobResult = { ["JobId"] = true, nil }

function asserts.AssertCreateJobResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateJobResult to be of type 'table'")
	if struct["JobId"] then asserts.AssertJobId(struct["JobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateJobResult[k], "CreateJobResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateJobResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * JobId [JobId] <p>The automatically generated ID for a job, for example <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>
-- @return CreateJobResult structure as a key-value pair table
function M.CreateJobResult(args)
	assert(args, "You must provide an argument table when creating CreateJobResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["JobId"] = args["JobId"],
	}
	asserts.AssertCreateJobResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.JobListEntry = { ["IsMaster"] = true, ["JobState"] = true, ["Description"] = true, ["JobId"] = true, ["SnowballType"] = true, ["CreationDate"] = true, ["JobType"] = true, nil }

function asserts.AssertJobListEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JobListEntry to be of type 'table'")
	if struct["IsMaster"] then asserts.AssertBoolean(struct["IsMaster"]) end
	if struct["JobState"] then asserts.AssertJobState(struct["JobState"]) end
	if struct["Description"] then asserts.AssertString(struct["Description"]) end
	if struct["JobId"] then asserts.AssertString(struct["JobId"]) end
	if struct["SnowballType"] then asserts.AssertSnowballType(struct["SnowballType"]) end
	if struct["CreationDate"] then asserts.AssertTimestamp(struct["CreationDate"]) end
	if struct["JobType"] then asserts.AssertJobType(struct["JobType"]) end
	for k,_ in pairs(struct) do
		assert(keys.JobListEntry[k], "JobListEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JobListEntry
-- <p>Each <code>JobListEntry</code> object contains a job's state, a job's ID, and a value that indicates whether the job is a job part, in the case of an export job.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IsMaster [Boolean] <p>A value that indicates that this job is a master job. A master job represents a successful request to create an export job. Master jobs aren't associated with any Snowballs. Instead, each master job will have at least one job part, and each job part is associated with a Snowball. It might take some time before the job parts associated with a particular master job are listed, because they are created after the master job is created.</p>
-- * JobState [JobState] <p>The current state of this job.</p>
-- * Description [String] <p>The optional description of this specific job, for example <code>Important Photos 2016-08-11</code>.</p>
-- * JobId [String] <p>The automatically generated ID for a job, for example <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>
-- * SnowballType [SnowballType] <p>The type of device used with this job.</p>
-- * CreationDate [Timestamp] <p>The creation date for this job.</p>
-- * JobType [JobType] <p>The type of job.</p>
-- @return JobListEntry structure as a key-value pair table
function M.JobListEntry(args)
	assert(args, "You must provide an argument table when creating JobListEntry")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IsMaster"] = args["IsMaster"],
		["JobState"] = args["JobState"],
		["Description"] = args["Description"],
		["JobId"] = args["JobId"],
		["SnowballType"] = args["SnowballType"],
		["CreationDate"] = args["CreationDate"],
		["JobType"] = args["JobType"],
	}
	asserts.AssertJobListEntry(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DataTransfer = { ["ObjectsTransferred"] = true, ["TotalBytes"] = true, ["BytesTransferred"] = true, ["TotalObjects"] = true, nil }

function asserts.AssertDataTransfer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DataTransfer to be of type 'table'")
	if struct["ObjectsTransferred"] then asserts.AssertLong(struct["ObjectsTransferred"]) end
	if struct["TotalBytes"] then asserts.AssertLong(struct["TotalBytes"]) end
	if struct["BytesTransferred"] then asserts.AssertLong(struct["BytesTransferred"]) end
	if struct["TotalObjects"] then asserts.AssertLong(struct["TotalObjects"]) end
	for k,_ in pairs(struct) do
		assert(keys.DataTransfer[k], "DataTransfer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DataTransfer
-- <p>Defines the real-time status of a Snowball's data transfer while the device is at AWS. This data is only available while a job has a <code>JobState</code> value of <code>InProgress</code>, for both import and export jobs.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ObjectsTransferred [Long] <p>The number of objects transferred between a Snowball and Amazon S3.</p>
-- * TotalBytes [Long] <p>The total bytes of data for a transfer between a Snowball and Amazon S3. This value is set to 0 (zero) until all the keys that will be transferred have been listed.</p>
-- * BytesTransferred [Long] <p>The number of bytes transferred between a Snowball and Amazon S3.</p>
-- * TotalObjects [Long] <p>The total number of objects for a transfer between a Snowball and Amazon S3. This value is set to 0 (zero) until all the keys that will be transferred have been listed.</p>
-- @return DataTransfer structure as a key-value pair table
function M.DataTransfer(args)
	assert(args, "You must provide an argument table when creating DataTransfer")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ObjectsTransferred"] = args["ObjectsTransferred"],
		["TotalBytes"] = args["TotalBytes"],
		["BytesTransferred"] = args["BytesTransferred"],
		["TotalObjects"] = args["TotalObjects"],
	}
	asserts.AssertDataTransfer(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Ec2AmiResource = { ["AmiId"] = true, ["SnowballAmiId"] = true, nil }

function asserts.AssertEc2AmiResource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Ec2AmiResource to be of type 'table'")
	assert(struct["AmiId"], "Expected key AmiId to exist in table")
	if struct["AmiId"] then asserts.AssertAmiId(struct["AmiId"]) end
	if struct["SnowballAmiId"] then asserts.AssertString(struct["SnowballAmiId"]) end
	for k,_ in pairs(struct) do
		assert(keys.Ec2AmiResource[k], "Ec2AmiResource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Ec2AmiResource
-- <p>A JSON-formatted object that contains the IDs for an Amazon Machine Image (AMI), including the Amazon EC2 AMI ID and the Snowball Edge AMI ID. Each AMI has these two IDs to simplify identifying the AMI in both the AWS Cloud and on the device.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AmiId [AmiId] <p>The ID of the AMI in Amazon EC2.</p>
-- * SnowballAmiId [String] <p>The ID of the AMI on the Snowball Edge device.</p>
-- Required key: AmiId
-- @return Ec2AmiResource structure as a key-value pair table
function M.Ec2AmiResource(args)
	assert(args, "You must provide an argument table when creating Ec2AmiResource")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AmiId"] = args["AmiId"],
		["SnowballAmiId"] = args["SnowballAmiId"],
	}
	asserts.AssertEc2AmiResource(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListCompatibleImagesResult = { ["CompatibleImages"] = true, ["NextToken"] = true, nil }

function asserts.AssertListCompatibleImagesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListCompatibleImagesResult to be of type 'table'")
	if struct["CompatibleImages"] then asserts.AssertCompatibleImageList(struct["CompatibleImages"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListCompatibleImagesResult[k], "ListCompatibleImagesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListCompatibleImagesResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CompatibleImages [CompatibleImageList] <p>A JSON-formatted object that describes a compatible AMI, including the ID and name for a Snowball Edge AMI.</p>
-- * NextToken [String] <p>Because HTTP requests are stateless, this is the starting point for your next list of returned images.</p>
-- @return ListCompatibleImagesResult structure as a key-value pair table
function M.ListCompatibleImagesResult(args)
	assert(args, "You must provide an argument table when creating ListCompatibleImagesResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CompatibleImages"] = args["CompatibleImages"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListCompatibleImagesResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CancelJobResult = { nil }

function asserts.AssertCancelJobResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelJobResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CancelJobResult[k], "CancelJobResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelJobResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return CancelJobResult structure as a key-value pair table
function M.CancelJobResult(args)
	assert(args, "You must provide an argument table when creating CancelJobResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertCancelJobResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeClusterRequest = { ["ClusterId"] = true, nil }

function asserts.AssertDescribeClusterRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeClusterRequest to be of type 'table'")
	assert(struct["ClusterId"], "Expected key ClusterId to exist in table")
	if struct["ClusterId"] then asserts.AssertClusterId(struct["ClusterId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeClusterRequest[k], "DescribeClusterRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeClusterRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ClusterId [ClusterId] <p>The automatically generated ID for a cluster.</p>
-- Required key: ClusterId
-- @return DescribeClusterRequest structure as a key-value pair table
function M.DescribeClusterRequest(args)
	assert(args, "You must provide an argument table when creating DescribeClusterRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ClusterId"] = args["ClusterId"],
	}
	asserts.AssertDescribeClusterRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.JobResource = { ["LambdaResources"] = true, ["S3Resources"] = true, ["Ec2AmiResources"] = true, nil }

function asserts.AssertJobResource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JobResource to be of type 'table'")
	if struct["LambdaResources"] then asserts.AssertLambdaResourceList(struct["LambdaResources"]) end
	if struct["S3Resources"] then asserts.AssertS3ResourceList(struct["S3Resources"]) end
	if struct["Ec2AmiResources"] then asserts.AssertEc2AmiResourceList(struct["Ec2AmiResources"]) end
	for k,_ in pairs(struct) do
		assert(keys.JobResource[k], "JobResource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JobResource
-- <p>Contains an array of AWS resource objects. Each object represents an Amazon S3 bucket, an AWS Lambda function, or an Amazon Machine Image (AMI) based on Amazon EC2 that is associated with a particular job.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LambdaResources [LambdaResourceList] <p>The Python-language Lambda functions for this job.</p>
-- * S3Resources [S3ResourceList] <p>An array of <code>S3Resource</code> objects.</p>
-- * Ec2AmiResources [Ec2AmiResourceList] <p>The Amazon Machine Images (AMIs) associated with this job.</p>
-- @return JobResource structure as a key-value pair table
function M.JobResource(args)
	assert(args, "You must provide an argument table when creating JobResource")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LambdaResources"] = args["LambdaResources"],
		["S3Resources"] = args["S3Resources"],
		["Ec2AmiResources"] = args["Ec2AmiResources"],
	}
	asserts.AssertJobResource(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListClustersRequest = { ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListClustersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListClustersRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertListLimit(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListClustersRequest[k], "ListClustersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListClustersRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [String] <p>HTTP requests are stateless. To identify what object comes "next" in the list of <code>ClusterListEntry</code> objects, you have the option of specifying <code>NextToken</code> as the starting point for your returned list.</p>
-- * MaxResults [ListLimit] <p>The number of <code>ClusterListEntry</code> objects to return.</p>
-- @return ListClustersRequest structure as a key-value pair table
function M.ListClustersRequest(args)
	assert(args, "You must provide an argument table when creating ListClustersRequest")
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
	asserts.AssertListClustersRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetJobUnlockCodeRequest = { ["JobId"] = true, nil }

function asserts.AssertGetJobUnlockCodeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetJobUnlockCodeRequest to be of type 'table'")
	assert(struct["JobId"], "Expected key JobId to exist in table")
	if struct["JobId"] then asserts.AssertJobId(struct["JobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetJobUnlockCodeRequest[k], "GetJobUnlockCodeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetJobUnlockCodeRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * JobId [JobId] <p>The ID for the job that you want to get the <code>UnlockCode</code> value for, for example <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>
-- Required key: JobId
-- @return GetJobUnlockCodeRequest structure as a key-value pair table
function M.GetJobUnlockCodeRequest(args)
	assert(args, "You must provide an argument table when creating GetJobUnlockCodeRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["JobId"] = args["JobId"],
	}
	asserts.AssertGetJobUnlockCodeRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.S3Resource = { ["BucketArn"] = true, ["KeyRange"] = true, nil }

function asserts.AssertS3Resource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected S3Resource to be of type 'table'")
	if struct["BucketArn"] then asserts.AssertResourceARN(struct["BucketArn"]) end
	if struct["KeyRange"] then asserts.AssertKeyRange(struct["KeyRange"]) end
	for k,_ in pairs(struct) do
		assert(keys.S3Resource[k], "S3Resource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type S3Resource
-- <p>Each <code>S3Resource</code> object represents an Amazon S3 bucket that your transferred data will be exported from or imported into. For export jobs, this object can have an optional <code>KeyRange</code> value. The length of the range is defined at job creation, and has either an inclusive <code>BeginMarker</code>, an inclusive <code>EndMarker</code>, or both. Ranges are UTF-8 binary sorted.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BucketArn [ResourceARN] <p>The Amazon Resource Name (ARN) of an Amazon S3 bucket.</p>
-- * KeyRange [KeyRange] <p>For export jobs, you can provide an optional <code>KeyRange</code> within a specific Amazon S3 bucket. The length of the range is defined at job creation, and has either an inclusive <code>BeginMarker</code>, an inclusive <code>EndMarker</code>, or both. Ranges are UTF-8 binary sorted.</p>
-- @return S3Resource structure as a key-value pair table
function M.S3Resource(args)
	assert(args, "You must provide an argument table when creating S3Resource")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["BucketArn"] = args["BucketArn"],
		["KeyRange"] = args["KeyRange"],
	}
	asserts.AssertS3Resource(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListClusterJobsRequest = { ["NextToken"] = true, ["ClusterId"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListClusterJobsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListClusterJobsRequest to be of type 'table'")
	assert(struct["ClusterId"], "Expected key ClusterId to exist in table")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["ClusterId"] then asserts.AssertClusterId(struct["ClusterId"]) end
	if struct["MaxResults"] then asserts.AssertListLimit(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListClusterJobsRequest[k], "ListClusterJobsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListClusterJobsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [String] <p>HTTP requests are stateless. To identify what object comes "next" in the list of <code>JobListEntry</code> objects, you have the option of specifying <code>NextToken</code> as the starting point for your returned list.</p>
-- * ClusterId [ClusterId] <p>The 39-character ID for the cluster that you want to list, for example <code>CID123e4567-e89b-12d3-a456-426655440000</code>.</p>
-- * MaxResults [ListLimit] <p>The number of <code>JobListEntry</code> objects to return.</p>
-- Required key: ClusterId
-- @return ListClusterJobsRequest structure as a key-value pair table
function M.ListClusterJobsRequest(args)
	assert(args, "You must provide an argument table when creating ListClusterJobsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["ClusterId"] = args["ClusterId"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListClusterJobsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeClusterResult = { ["ClusterMetadata"] = true, nil }

function asserts.AssertDescribeClusterResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeClusterResult to be of type 'table'")
	if struct["ClusterMetadata"] then asserts.AssertClusterMetadata(struct["ClusterMetadata"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeClusterResult[k], "DescribeClusterResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeClusterResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ClusterMetadata [ClusterMetadata] <p>Information about a specific cluster, including shipping information, cluster status, and other important metadata.</p>
-- @return DescribeClusterResult structure as a key-value pair table
function M.DescribeClusterResult(args)
	assert(args, "You must provide an argument table when creating DescribeClusterResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ClusterMetadata"] = args["ClusterMetadata"],
	}
	asserts.AssertDescribeClusterResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CancelJobRequest = { ["JobId"] = true, nil }

function asserts.AssertCancelJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelJobRequest to be of type 'table'")
	assert(struct["JobId"], "Expected key JobId to exist in table")
	if struct["JobId"] then asserts.AssertJobId(struct["JobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CancelJobRequest[k], "CancelJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelJobRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * JobId [JobId] <p>The 39-character job ID for the job that you want to cancel, for example <code>JID123e4567-e89b-12d3-a456-426655440000</code>.</p>
-- Required key: JobId
-- @return CancelJobRequest structure as a key-value pair table
function M.CancelJobRequest(args)
	assert(args, "You must provide an argument table when creating CancelJobRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["JobId"] = args["JobId"],
	}
	asserts.AssertCancelJobRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ShippingDetails = { ["OutboundShipment"] = true, ["ShippingOption"] = true, ["InboundShipment"] = true, nil }

function asserts.AssertShippingDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ShippingDetails to be of type 'table'")
	if struct["OutboundShipment"] then asserts.AssertShipment(struct["OutboundShipment"]) end
	if struct["ShippingOption"] then asserts.AssertShippingOption(struct["ShippingOption"]) end
	if struct["InboundShipment"] then asserts.AssertShipment(struct["InboundShipment"]) end
	for k,_ in pairs(struct) do
		assert(keys.ShippingDetails[k], "ShippingDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ShippingDetails
-- <p>A job's shipping information, including inbound and outbound tracking numbers and shipping speed options.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OutboundShipment [Shipment] <p>The <code>Status</code> and <code>TrackingNumber</code> values for a Snowball being delivered to the address that you specified for a particular job.</p>
-- * ShippingOption [ShippingOption] <p>The shipping speed for a particular job. This speed doesn't dictate how soon you'll get the Snowball from the job's creation date. This speed represents how quickly it moves to its destination while in transit. Regional shipping speeds are as follows:</p> <ul> <li> <p>In Australia, you have access to express shipping. Typically, Snowballs shipped express are delivered in about a day.</p> </li> <li> <p>In the European Union (EU), you have access to express shipping. Typically, Snowballs shipped express are delivered in about a day. In addition, most countries in the EU have access to standard shipping, which typically takes less than a week, one way.</p> </li> <li> <p>In India, Snowballs are delivered in one to seven days.</p> </li> <li> <p>In the United States of America (US), you have access to one-day shipping and two-day shipping.</p> </li> </ul>
-- * InboundShipment [Shipment] <p>The <code>Status</code> and <code>TrackingNumber</code> values for a Snowball being returned to AWS for a particular job.</p>
-- @return ShippingDetails structure as a key-value pair table
function M.ShippingDetails(args)
	assert(args, "You must provide an argument table when creating ShippingDetails")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OutboundShipment"] = args["OutboundShipment"],
		["ShippingOption"] = args["ShippingOption"],
		["InboundShipment"] = args["InboundShipment"],
	}
	asserts.AssertShippingDetails(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertSnowballType(str)
	assert(str)
	assert(type(str) == "string", "Expected SnowballType to be of type 'string'")
end

--  
function M.SnowballType(str)
	asserts.AssertSnowballType(str)
	return str
end

function asserts.AssertJobState(str)
	assert(str)
	assert(type(str) == "string", "Expected JobState to be of type 'string'")
end

--  
function M.JobState(str)
	asserts.AssertJobState(str)
	return str
end

function asserts.AssertAddressId(str)
	assert(str)
	assert(type(str) == "string", "Expected AddressId to be of type 'string'")
	assert(#str <= 40, "Expected string to be max 40 characters")
	assert(#str >= 40, "Expected string to be min 40 characters")
end

--  
function M.AddressId(str)
	asserts.AssertAddressId(str)
	return str
end

function asserts.AssertClusterId(str)
	assert(str)
	assert(type(str) == "string", "Expected ClusterId to be of type 'string'")
	assert(#str <= 39, "Expected string to be max 39 characters")
	assert(#str >= 39, "Expected string to be min 39 characters")
end

--  
function M.ClusterId(str)
	asserts.AssertClusterId(str)
	return str
end

function asserts.AssertString(str)
	assert(str)
	assert(type(str) == "string", "Expected String to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.String(str)
	asserts.AssertString(str)
	return str
end

function asserts.AssertRoleARN(str)
	assert(str)
	assert(type(str) == "string", "Expected RoleARN to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
end

--  
function M.RoleARN(str)
	asserts.AssertRoleARN(str)
	return str
end

function asserts.AssertAmiId(str)
	assert(str)
	assert(type(str) == "string", "Expected AmiId to be of type 'string'")
	assert(#str <= 21, "Expected string to be max 21 characters")
	assert(#str >= 12, "Expected string to be min 12 characters")
end

--  
function M.AmiId(str)
	asserts.AssertAmiId(str)
	return str
end

function asserts.AssertShippingOption(str)
	assert(str)
	assert(type(str) == "string", "Expected ShippingOption to be of type 'string'")
end

--  
function M.ShippingOption(str)
	asserts.AssertShippingOption(str)
	return str
end

function asserts.AssertResourceARN(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceARN to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
end

--  
function M.ResourceARN(str)
	asserts.AssertResourceARN(str)
	return str
end

function asserts.AssertKmsKeyARN(str)
	assert(str)
	assert(type(str) == "string", "Expected KmsKeyARN to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
end

--  
function M.KmsKeyARN(str)
	asserts.AssertKmsKeyARN(str)
	return str
end

function asserts.AssertJobId(str)
	assert(str)
	assert(type(str) == "string", "Expected JobId to be of type 'string'")
	assert(#str <= 39, "Expected string to be max 39 characters")
	assert(#str >= 39, "Expected string to be min 39 characters")
end

--  
function M.JobId(str)
	asserts.AssertJobId(str)
	return str
end

function asserts.AssertClusterState(str)
	assert(str)
	assert(type(str) == "string", "Expected ClusterState to be of type 'string'")
end

--  
function M.ClusterState(str)
	asserts.AssertClusterState(str)
	return str
end

function asserts.AssertJobType(str)
	assert(str)
	assert(type(str) == "string", "Expected JobType to be of type 'string'")
end

--  
function M.JobType(str)
	asserts.AssertJobType(str)
	return str
end

function asserts.AssertSnowballCapacity(str)
	assert(str)
	assert(type(str) == "string", "Expected SnowballCapacity to be of type 'string'")
end

--  
function M.SnowballCapacity(str)
	asserts.AssertSnowballCapacity(str)
	return str
end

function asserts.AssertSnsTopicARN(str)
	assert(str)
	assert(type(str) == "string", "Expected SnsTopicARN to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
end

--  
function M.SnsTopicARN(str)
	asserts.AssertSnsTopicARN(str)
	return str
end

function asserts.AssertLong(long)
	assert(long)
	assert(type(long) == "number", "Expected Long to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.Long(long)
	asserts.AssertLong(long)
	return long
end

function asserts.AssertListLimit(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ListLimit to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
end

function M.ListLimit(integer)
	asserts.AssertListLimit(integer)
	return integer
end

function asserts.AssertInteger(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Integer to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.Integer(integer)
	asserts.AssertInteger(integer)
	return integer
end

function asserts.AssertBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Boolean to be of type 'boolean'")
end

function M.Boolean(boolean)
	asserts.AssertBoolean(boolean)
	return boolean
end

function asserts.AssertTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Timestamp to be of type 'string'")
end

function M.Timestamp(timestamp)
	asserts.AssertTimestamp(timestamp)
	return timestamp
end

function asserts.AssertCompatibleImageList(list)
	assert(list)
	assert(type(list) == "table", "Expected CompatibleImageList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCompatibleImage(v)
	end
end

--  
-- List of CompatibleImage objects
function M.CompatibleImageList(list)
	asserts.AssertCompatibleImageList(list)
	return list
end

function asserts.AssertJobStateList(list)
	assert(list)
	assert(type(list) == "table", "Expected JobStateList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertJobState(v)
	end
end

--  
-- List of JobState objects
function M.JobStateList(list)
	asserts.AssertJobStateList(list)
	return list
end

function asserts.AssertEc2AmiResourceList(list)
	assert(list)
	assert(type(list) == "table", "Expected Ec2AmiResourceList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEc2AmiResource(v)
	end
end

--  
-- List of Ec2AmiResource objects
function M.Ec2AmiResourceList(list)
	asserts.AssertEc2AmiResourceList(list)
	return list
end

function asserts.AssertAddressList(list)
	assert(list)
	assert(type(list) == "table", "Expected AddressList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAddress(v)
	end
end

--  
-- List of Address objects
function M.AddressList(list)
	asserts.AssertAddressList(list)
	return list
end

function asserts.AssertJobListEntryList(list)
	assert(list)
	assert(type(list) == "table", "Expected JobListEntryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertJobListEntry(v)
	end
end

--  
-- List of JobListEntry objects
function M.JobListEntryList(list)
	asserts.AssertJobListEntryList(list)
	return list
end

function asserts.AssertS3ResourceList(list)
	assert(list)
	assert(type(list) == "table", "Expected S3ResourceList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertS3Resource(v)
	end
end

--  
-- List of S3Resource objects
function M.S3ResourceList(list)
	asserts.AssertS3ResourceList(list)
	return list
end

function asserts.AssertLambdaResourceList(list)
	assert(list)
	assert(type(list) == "table", "Expected LambdaResourceList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertLambdaResource(v)
	end
end

--  
-- List of LambdaResource objects
function M.LambdaResourceList(list)
	asserts.AssertLambdaResourceList(list)
	return list
end

function asserts.AssertJobMetadataList(list)
	assert(list)
	assert(type(list) == "table", "Expected JobMetadataList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertJobMetadata(v)
	end
end

--  
-- List of JobMetadata objects
function M.JobMetadataList(list)
	asserts.AssertJobMetadataList(list)
	return list
end

function asserts.AssertClusterListEntryList(list)
	assert(list)
	assert(type(list) == "table", "Expected ClusterListEntryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertClusterListEntry(v)
	end
end

--  
-- List of ClusterListEntry objects
function M.ClusterListEntryList(list)
	asserts.AssertClusterListEntryList(list)
	return list
end

function asserts.AssertEventTriggerDefinitionList(list)
	assert(list)
	assert(type(list) == "table", "Expected EventTriggerDefinitionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEventTriggerDefinition(v)
	end
end

--  
-- List of EventTriggerDefinition objects
function M.EventTriggerDefinitionList(list)
	asserts.AssertEventTriggerDefinitionList(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "snowball.amazonaws.com"
		end
	end
	local ss = { "snowball" }
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
--- Call ListJobs asynchronously, invoking a callback when done
-- @param ListJobsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListJobsAsync(ListJobsRequest, cb)
	assert(ListJobsRequest, "You must provide a ListJobsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSIESnowballJobManagementService.ListJobs",
	}
	for header,value in pairs(ListJobsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListJobsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListJobs synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListJobsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListJobsSync(ListJobsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListJobsAsync(ListJobsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListClusterJobs asynchronously, invoking a callback when done
-- @param ListClusterJobsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListClusterJobsAsync(ListClusterJobsRequest, cb)
	assert(ListClusterJobsRequest, "You must provide a ListClusterJobsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSIESnowballJobManagementService.ListClusterJobs",
	}
	for header,value in pairs(ListClusterJobsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListClusterJobsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListClusterJobs synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListClusterJobsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListClusterJobsSync(ListClusterJobsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListClusterJobsAsync(ListClusterJobsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetJobUnlockCode asynchronously, invoking a callback when done
-- @param GetJobUnlockCodeRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetJobUnlockCodeAsync(GetJobUnlockCodeRequest, cb)
	assert(GetJobUnlockCodeRequest, "You must provide a GetJobUnlockCodeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSIESnowballJobManagementService.GetJobUnlockCode",
	}
	for header,value in pairs(GetJobUnlockCodeRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetJobUnlockCodeRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetJobUnlockCode synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetJobUnlockCodeRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetJobUnlockCodeSync(GetJobUnlockCodeRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetJobUnlockCodeAsync(GetJobUnlockCodeRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateJob asynchronously, invoking a callback when done
-- @param CreateJobRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateJobAsync(CreateJobRequest, cb)
	assert(CreateJobRequest, "You must provide a CreateJobRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSIESnowballJobManagementService.CreateJob",
	}
	for header,value in pairs(CreateJobRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateJobRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateJobRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateJobSync(CreateJobRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateJobAsync(CreateJobRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListClusters asynchronously, invoking a callback when done
-- @param ListClustersRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListClustersAsync(ListClustersRequest, cb)
	assert(ListClustersRequest, "You must provide a ListClustersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSIESnowballJobManagementService.ListClusters",
	}
	for header,value in pairs(ListClustersRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListClustersRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListClusters synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListClustersRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListClustersSync(ListClustersRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListClustersAsync(ListClustersRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateCluster asynchronously, invoking a callback when done
-- @param CreateClusterRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateClusterAsync(CreateClusterRequest, cb)
	assert(CreateClusterRequest, "You must provide a CreateClusterRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSIESnowballJobManagementService.CreateCluster",
	}
	for header,value in pairs(CreateClusterRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateClusterRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateCluster synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateClusterRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateClusterSync(CreateClusterRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateClusterAsync(CreateClusterRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateJob asynchronously, invoking a callback when done
-- @param UpdateJobRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateJobAsync(UpdateJobRequest, cb)
	assert(UpdateJobRequest, "You must provide a UpdateJobRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSIESnowballJobManagementService.UpdateJob",
	}
	for header,value in pairs(UpdateJobRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateJobRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateJobRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateJobSync(UpdateJobRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateJobAsync(UpdateJobRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListCompatibleImages asynchronously, invoking a callback when done
-- @param ListCompatibleImagesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListCompatibleImagesAsync(ListCompatibleImagesRequest, cb)
	assert(ListCompatibleImagesRequest, "You must provide a ListCompatibleImagesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSIESnowballJobManagementService.ListCompatibleImages",
	}
	for header,value in pairs(ListCompatibleImagesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListCompatibleImagesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListCompatibleImages synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListCompatibleImagesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListCompatibleImagesSync(ListCompatibleImagesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListCompatibleImagesAsync(ListCompatibleImagesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetSnowballUsage asynchronously, invoking a callback when done
-- @param GetSnowballUsageRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetSnowballUsageAsync(GetSnowballUsageRequest, cb)
	assert(GetSnowballUsageRequest, "You must provide a GetSnowballUsageRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSIESnowballJobManagementService.GetSnowballUsage",
	}
	for header,value in pairs(GetSnowballUsageRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetSnowballUsageRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetSnowballUsage synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetSnowballUsageRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetSnowballUsageSync(GetSnowballUsageRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetSnowballUsageAsync(GetSnowballUsageRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetJobManifest asynchronously, invoking a callback when done
-- @param GetJobManifestRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetJobManifestAsync(GetJobManifestRequest, cb)
	assert(GetJobManifestRequest, "You must provide a GetJobManifestRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSIESnowballJobManagementService.GetJobManifest",
	}
	for header,value in pairs(GetJobManifestRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetJobManifestRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetJobManifest synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetJobManifestRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetJobManifestSync(GetJobManifestRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetJobManifestAsync(GetJobManifestRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateAddress asynchronously, invoking a callback when done
-- @param CreateAddressRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateAddressAsync(CreateAddressRequest, cb)
	assert(CreateAddressRequest, "You must provide a CreateAddressRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSIESnowballJobManagementService.CreateAddress",
	}
	for header,value in pairs(CreateAddressRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateAddressRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateAddress synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateAddressRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateAddressSync(CreateAddressRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateAddressAsync(CreateAddressRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeAddress asynchronously, invoking a callback when done
-- @param DescribeAddressRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeAddressAsync(DescribeAddressRequest, cb)
	assert(DescribeAddressRequest, "You must provide a DescribeAddressRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSIESnowballJobManagementService.DescribeAddress",
	}
	for header,value in pairs(DescribeAddressRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeAddressRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeAddress synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeAddressRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeAddressSync(DescribeAddressRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeAddressAsync(DescribeAddressRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeAddresses asynchronously, invoking a callback when done
-- @param DescribeAddressesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeAddressesAsync(DescribeAddressesRequest, cb)
	assert(DescribeAddressesRequest, "You must provide a DescribeAddressesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSIESnowballJobManagementService.DescribeAddresses",
	}
	for header,value in pairs(DescribeAddressesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeAddressesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeAddresses synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeAddressesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeAddressesSync(DescribeAddressesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeAddressesAsync(DescribeAddressesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CancelJob asynchronously, invoking a callback when done
-- @param CancelJobRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CancelJobAsync(CancelJobRequest, cb)
	assert(CancelJobRequest, "You must provide a CancelJobRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSIESnowballJobManagementService.CancelJob",
	}
	for header,value in pairs(CancelJobRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CancelJobRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CancelJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CancelJobRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CancelJobSync(CancelJobRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CancelJobAsync(CancelJobRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CancelCluster asynchronously, invoking a callback when done
-- @param CancelClusterRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CancelClusterAsync(CancelClusterRequest, cb)
	assert(CancelClusterRequest, "You must provide a CancelClusterRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSIESnowballJobManagementService.CancelCluster",
	}
	for header,value in pairs(CancelClusterRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CancelClusterRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CancelCluster synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CancelClusterRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CancelClusterSync(CancelClusterRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CancelClusterAsync(CancelClusterRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeJob asynchronously, invoking a callback when done
-- @param DescribeJobRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeJobAsync(DescribeJobRequest, cb)
	assert(DescribeJobRequest, "You must provide a DescribeJobRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSIESnowballJobManagementService.DescribeJob",
	}
	for header,value in pairs(DescribeJobRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeJobRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeJobRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeJobSync(DescribeJobRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeJobAsync(DescribeJobRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeCluster asynchronously, invoking a callback when done
-- @param DescribeClusterRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeClusterAsync(DescribeClusterRequest, cb)
	assert(DescribeClusterRequest, "You must provide a DescribeClusterRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSIESnowballJobManagementService.DescribeCluster",
	}
	for header,value in pairs(DescribeClusterRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeClusterRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeCluster synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeClusterRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeClusterSync(DescribeClusterRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeClusterAsync(DescribeClusterRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateCluster asynchronously, invoking a callback when done
-- @param UpdateClusterRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateClusterAsync(UpdateClusterRequest, cb)
	assert(UpdateClusterRequest, "You must provide a UpdateClusterRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSIESnowballJobManagementService.UpdateCluster",
	}
	for header,value in pairs(UpdateClusterRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateClusterRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateCluster synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateClusterRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateClusterSync(UpdateClusterRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateClusterAsync(UpdateClusterRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
