--- GENERATED CODE - DO NOT MODIFY
-- Amazon Elastic Container Service for Kubernetes (eks-2017-11-01)

local M = {}

M.metadata = {
	api_version = "2017-11-01",
	json_version = "1.1",
	protocol = "rest-json",
	checksum_format = "",
	endpoint_prefix = "eks",
	service_abbreviation = "Amazon EKS",
	service_full_name = "Amazon Elastic Container Service for Kubernetes",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "eks-2017-11-01",
}

local keys = {}
local asserts = {}

keys.DeleteClusterRequest = { ["name"] = true, nil }

function asserts.AssertDeleteClusterRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteClusterRequest to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["name"] then asserts.AssertString(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteClusterRequest[k], "DeleteClusterRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteClusterRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * name [String] <p>The name of the cluster to delete.</p>
-- Required key: name
-- @return DeleteClusterRequest structure as a key-value pair table
function M.DeleteClusterRequest(args)
	assert(args, "You must provide an argument table when creating DeleteClusterRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{name}"] = args["name"],
    }
    local header_args = { 
    }
	local all_args = { 
		["name"] = args["name"],
	}
	asserts.AssertDeleteClusterRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeClusterResponse = { ["cluster"] = true, nil }

function asserts.AssertDescribeClusterResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeClusterResponse to be of type 'table'")
	if struct["cluster"] then asserts.AssertCluster(struct["cluster"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeClusterResponse[k], "DescribeClusterResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeClusterResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * cluster [Cluster] <p>The full description of your specified cluster.</p>
-- @return DescribeClusterResponse structure as a key-value pair table
function M.DescribeClusterResponse(args)
	assert(args, "You must provide an argument table when creating DescribeClusterResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["cluster"] = args["cluster"],
	}
	asserts.AssertDescribeClusterResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateClusterRequest = { ["resourcesVpcConfig"] = true, ["roleArn"] = true, ["version"] = true, ["name"] = true, ["clientRequestToken"] = true, nil }

function asserts.AssertCreateClusterRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateClusterRequest to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["roleArn"], "Expected key roleArn to exist in table")
	assert(struct["resourcesVpcConfig"], "Expected key resourcesVpcConfig to exist in table")
	if struct["resourcesVpcConfig"] then asserts.AssertVpcConfigRequest(struct["resourcesVpcConfig"]) end
	if struct["roleArn"] then asserts.AssertString(struct["roleArn"]) end
	if struct["version"] then asserts.AssertString(struct["version"]) end
	if struct["name"] then asserts.AssertClusterName(struct["name"]) end
	if struct["clientRequestToken"] then asserts.AssertString(struct["clientRequestToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateClusterRequest[k], "CreateClusterRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateClusterRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * resourcesVpcConfig [VpcConfigRequest] <p>The VPC subnets and security groups used by the cluster control plane. Amazon EKS VPC resources have specific requirements to work properly with Kubernetes. For more information, see <a href="http://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html">Cluster VPC Considerations</a> and <a href="http://docs.aws.amazon.com/eks/latest/userguide/sec-group-reqs.html">Cluster Security Group Considerations</a> in the <i>Amazon EKS User Guide</i>. You must specify at least two subnets. You may specify up to 5 security groups, but we recommend that you use a dedicated security group for your cluster control plane.</p>
-- * roleArn [String] <p>The Amazon Resource Name (ARN) of the IAM role that provides permissions for Amazon EKS to make calls to other AWS API operations on your behalf. For more information, see <a href="http://docs.aws.amazon.com/eks/latest/userguide/service_IAM_role.html">Amazon EKS Service IAM Role</a> in the <i> <i>Amazon EKS User Guide</i> </i>.</p>
-- * version [String] <p>The desired Kubernetes version for your cluster. If you do not specify a value here, the latest version available in Amazon EKS is used.</p>
-- * name [ClusterName] <p>The unique name to give to your cluster.</p>
-- * clientRequestToken [String] <p>Unique, case-sensitive identifier you provide to ensure the idempotency of the request.</p>
-- Required key: name
-- Required key: roleArn
-- Required key: resourcesVpcConfig
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
		["resourcesVpcConfig"] = args["resourcesVpcConfig"],
		["roleArn"] = args["roleArn"],
		["version"] = args["version"],
		["name"] = args["name"],
		["clientRequestToken"] = args["clientRequestToken"],
	}
	asserts.AssertCreateClusterRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Certificate = { ["data"] = true, nil }

function asserts.AssertCertificate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Certificate to be of type 'table'")
	if struct["data"] then asserts.AssertString(struct["data"]) end
	for k,_ in pairs(struct) do
		assert(keys.Certificate[k], "Certificate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Certificate
-- <p>An object representing the <code>certificate-authority-data</code> for your cluster.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * data [String] <p>The base64 encoded certificate data required to communicate with your cluster. Add this to the <code>certificate-authority-data</code> section of the <code>kubeconfig</code> file for your cluster.</p>
-- @return Certificate structure as a key-value pair table
function M.Certificate(args)
	assert(args, "You must provide an argument table when creating Certificate")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["data"] = args["data"],
	}
	asserts.AssertCertificate(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListClustersResponse = { ["clusters"] = true, ["nextToken"] = true, nil }

function asserts.AssertListClustersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListClustersResponse to be of type 'table'")
	if struct["clusters"] then asserts.AssertStringList(struct["clusters"]) end
	if struct["nextToken"] then asserts.AssertString(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListClustersResponse[k], "ListClustersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListClustersResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * clusters [StringList] <p>A list of all of the clusters for your account in the specified Region.</p>
-- * nextToken [String] <p>The <code>nextToken</code> value to include in a future <code>ListClusters</code> request. When the results of a <code>ListClusters</code> request exceed <code>maxResults</code>, this value can be used to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
-- @return ListClustersResponse structure as a key-value pair table
function M.ListClustersResponse(args)
	assert(args, "You must provide an argument table when creating ListClustersResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["clusters"] = args["clusters"],
		["nextToken"] = args["nextToken"],
	}
	asserts.AssertListClustersResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeClusterRequest = { ["name"] = true, nil }

function asserts.AssertDescribeClusterRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeClusterRequest to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["name"] then asserts.AssertString(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeClusterRequest[k], "DescribeClusterRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeClusterRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * name [String] <p>The name of the cluster to describe.</p>
-- Required key: name
-- @return DescribeClusterRequest structure as a key-value pair table
function M.DescribeClusterRequest(args)
	assert(args, "You must provide an argument table when creating DescribeClusterRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{name}"] = args["name"],
    }
    local header_args = { 
    }
	local all_args = { 
		["name"] = args["name"],
	}
	asserts.AssertDescribeClusterRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.VpcConfigRequest = { ["subnetIds"] = true, ["securityGroupIds"] = true, nil }

function asserts.AssertVpcConfigRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VpcConfigRequest to be of type 'table'")
	assert(struct["subnetIds"], "Expected key subnetIds to exist in table")
	if struct["subnetIds"] then asserts.AssertStringList(struct["subnetIds"]) end
	if struct["securityGroupIds"] then asserts.AssertStringList(struct["securityGroupIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.VpcConfigRequest[k], "VpcConfigRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VpcConfigRequest
-- <p>An object representing an Amazon EKS cluster VPC configuration request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * subnetIds [StringList] <p>Specify subnets for your Amazon EKS worker nodes. Amazon EKS creates cross-account elastic network interfaces in these subnets to allow communication between your worker nodes and the Kubernetes control plane.</p>
-- * securityGroupIds [StringList] <p>Specify one or more security groups for the cross-account elastic network interfaces that Amazon EKS creates to use to allow communication between your worker nodes and the Kubernetes control plane.</p>
-- Required key: subnetIds
-- @return VpcConfigRequest structure as a key-value pair table
function M.VpcConfigRequest(args)
	assert(args, "You must provide an argument table when creating VpcConfigRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["subnetIds"] = args["subnetIds"],
		["securityGroupIds"] = args["securityGroupIds"],
	}
	asserts.AssertVpcConfigRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListClustersRequest = { ["nextToken"] = true, ["maxResults"] = true, nil }

function asserts.AssertListClustersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListClustersRequest to be of type 'table'")
	if struct["nextToken"] then asserts.AssertString(struct["nextToken"]) end
	if struct["maxResults"] then asserts.AssertListClustersRequestMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListClustersRequest[k], "ListClustersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListClustersRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [String] <p>The <code>nextToken</code> value returned from a previous paginated <code>ListClusters</code> request where <code>maxResults</code> was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the <code>nextToken</code> value.</p> <note> <p>This token should be treated as an opaque identifier that is only used to retrieve the next items in a list and not for other programmatic purposes.</p> </note>
-- * maxResults [ListClustersRequestMaxResults] <p>The maximum number of cluster results returned by <code>ListClusters</code> in paginated output. When this parameter is used, <code>ListClusters</code> only returns <code>maxResults</code> results in a single page along with a <code>nextToken</code> response element. The remaining results of the initial request can be seen by sending another <code>ListClusters</code> request with the returned <code>nextToken</code> value. This value can be between 1 and 100. If this parameter is not used, then <code>ListClusters</code> returns up to 100 results and a <code>nextToken</code> value if applicable.</p>
-- @return ListClustersRequest structure as a key-value pair table
function M.ListClustersRequest(args)
	assert(args, "You must provide an argument table when creating ListClustersRequest")
    local query_args = { 
        ["nextToken"] = args["nextToken"],
        ["maxResults"] = args["maxResults"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertListClustersRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Cluster = { ["status"] = true, ["endpoint"] = true, ["name"] = true, ["certificateAuthority"] = true, ["roleArn"] = true, ["resourcesVpcConfig"] = true, ["version"] = true, ["arn"] = true, ["platformVersion"] = true, ["createdAt"] = true, ["clientRequestToken"] = true, nil }

function asserts.AssertCluster(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Cluster to be of type 'table'")
	if struct["status"] then asserts.AssertClusterStatus(struct["status"]) end
	if struct["endpoint"] then asserts.AssertString(struct["endpoint"]) end
	if struct["name"] then asserts.AssertString(struct["name"]) end
	if struct["certificateAuthority"] then asserts.AssertCertificate(struct["certificateAuthority"]) end
	if struct["roleArn"] then asserts.AssertString(struct["roleArn"]) end
	if struct["resourcesVpcConfig"] then asserts.AssertVpcConfigResponse(struct["resourcesVpcConfig"]) end
	if struct["version"] then asserts.AssertString(struct["version"]) end
	if struct["arn"] then asserts.AssertString(struct["arn"]) end
	if struct["platformVersion"] then asserts.AssertString(struct["platformVersion"]) end
	if struct["createdAt"] then asserts.AssertTimestamp(struct["createdAt"]) end
	if struct["clientRequestToken"] then asserts.AssertString(struct["clientRequestToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.Cluster[k], "Cluster contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Cluster
-- <p>An object representing an Amazon EKS cluster.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [ClusterStatus] <p>The current status of the cluster.</p>
-- * endpoint [String] <p>The endpoint for your Kubernetes API server.</p>
-- * name [String] <p>The name of the cluster.</p>
-- * certificateAuthority [Certificate] <p>The <code>certificate-authority-data</code> for your cluster.</p>
-- * roleArn [String] <p>The Amazon Resource Name (ARN) of the IAM role that provides permissions for the Kubernetes control plane to make calls to AWS API operations on your behalf.</p>
-- * resourcesVpcConfig [VpcConfigResponse] <p>The VPC subnets and security groups used by the cluster control plane. Amazon EKS VPC resources have specific requirements to work properly with Kubernetes. For more information, see <a href="http://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html">Cluster VPC Considerations</a> and <a href="http://docs.aws.amazon.com/eks/latest/userguide/sec-group-reqs.html">Cluster Security Group Considerations</a> in the <i>Amazon EKS User Guide</i>.</p>
-- * version [String] <p>The Kubernetes server version for the cluster.</p>
-- * arn [String] <p>The Amazon Resource Name (ARN) of the cluster.</p>
-- * platformVersion [String] <p>The platform version of your Amazon EKS cluster. For more information, see <a href="eks/latest/userguide/platform-versions.html">Platform Versions</a> in the <i> <i>Amazon EKS User Guide</i> </i>.</p>
-- * createdAt [Timestamp] <p>The Unix epoch time stamp in seconds for when the cluster was created.</p>
-- * clientRequestToken [String] <p>Unique, case-sensitive identifier you provide to ensure the idempotency of the request.</p>
-- @return Cluster structure as a key-value pair table
function M.Cluster(args)
	assert(args, "You must provide an argument table when creating Cluster")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
		["endpoint"] = args["endpoint"],
		["name"] = args["name"],
		["certificateAuthority"] = args["certificateAuthority"],
		["roleArn"] = args["roleArn"],
		["resourcesVpcConfig"] = args["resourcesVpcConfig"],
		["version"] = args["version"],
		["arn"] = args["arn"],
		["platformVersion"] = args["platformVersion"],
		["createdAt"] = args["createdAt"],
		["clientRequestToken"] = args["clientRequestToken"],
	}
	asserts.AssertCluster(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteClusterResponse = { ["cluster"] = true, nil }

function asserts.AssertDeleteClusterResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteClusterResponse to be of type 'table'")
	if struct["cluster"] then asserts.AssertCluster(struct["cluster"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteClusterResponse[k], "DeleteClusterResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteClusterResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * cluster [Cluster] <p>The full description of the cluster to delete.</p>
-- @return DeleteClusterResponse structure as a key-value pair table
function M.DeleteClusterResponse(args)
	assert(args, "You must provide an argument table when creating DeleteClusterResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["cluster"] = args["cluster"],
	}
	asserts.AssertDeleteClusterResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.VpcConfigResponse = { ["subnetIds"] = true, ["vpcId"] = true, ["securityGroupIds"] = true, nil }

function asserts.AssertVpcConfigResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VpcConfigResponse to be of type 'table'")
	if struct["subnetIds"] then asserts.AssertStringList(struct["subnetIds"]) end
	if struct["vpcId"] then asserts.AssertString(struct["vpcId"]) end
	if struct["securityGroupIds"] then asserts.AssertStringList(struct["securityGroupIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.VpcConfigResponse[k], "VpcConfigResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VpcConfigResponse
-- <p>An object representing an Amazon EKS cluster VPC configuration response.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * subnetIds [StringList] <p>The subnets associated with your cluster.</p>
-- * vpcId [String] <p>The VPC associated with your cluster.</p>
-- * securityGroupIds [StringList] <p>The security groups associated with the cross-account elastic network interfaces that are used to allow communication between your worker nodes and the Kubernetes control plane.</p>
-- @return VpcConfigResponse structure as a key-value pair table
function M.VpcConfigResponse(args)
	assert(args, "You must provide an argument table when creating VpcConfigResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["subnetIds"] = args["subnetIds"],
		["vpcId"] = args["vpcId"],
		["securityGroupIds"] = args["securityGroupIds"],
	}
	asserts.AssertVpcConfigResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateClusterResponse = { ["cluster"] = true, nil }

function asserts.AssertCreateClusterResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateClusterResponse to be of type 'table'")
	if struct["cluster"] then asserts.AssertCluster(struct["cluster"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateClusterResponse[k], "CreateClusterResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateClusterResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * cluster [Cluster] <p>The full description of your new cluster.</p>
-- @return CreateClusterResponse structure as a key-value pair table
function M.CreateClusterResponse(args)
	assert(args, "You must provide an argument table when creating CreateClusterResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["cluster"] = args["cluster"],
	}
	asserts.AssertCreateClusterResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertClusterName(str)
	assert(str)
	assert(type(str) == "string", "Expected ClusterName to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ClusterName(str)
	asserts.AssertClusterName(str)
	return str
end

function asserts.AssertString(str)
	assert(str)
	assert(type(str) == "string", "Expected String to be of type 'string'")
end

--  
function M.String(str)
	asserts.AssertString(str)
	return str
end

function asserts.AssertClusterStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ClusterStatus to be of type 'string'")
end

--  
function M.ClusterStatus(str)
	asserts.AssertClusterStatus(str)
	return str
end

function asserts.AssertListClustersRequestMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ListClustersRequestMaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.ListClustersRequestMaxResults(integer)
	asserts.AssertListClustersRequestMaxResults(integer)
	return integer
end

function asserts.AssertTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Timestamp to be of type 'string'")
end

function M.Timestamp(timestamp)
	asserts.AssertTimestamp(timestamp)
	return timestamp
end

function asserts.AssertStringList(list)
	assert(list)
	assert(type(list) == "table", "Expected StringList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.StringList(list)
	asserts.AssertStringList(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "eks.amazonaws.com"
		end
	end
	local ss = { "eks" }
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
--- Call DescribeCluster asynchronously, invoking a callback when done
-- @param DescribeClusterRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeClusterAsync(DescribeClusterRequest, cb)
	assert(DescribeClusterRequest, "You must provide a DescribeClusterRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeCluster",
	}
	for header,value in pairs(DescribeClusterRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/clusters/{name}", DescribeClusterRequest, headers, settings, cb)
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

--- Call DeleteCluster asynchronously, invoking a callback when done
-- @param DeleteClusterRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteClusterAsync(DeleteClusterRequest, cb)
	assert(DeleteClusterRequest, "You must provide a DeleteClusterRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteCluster",
	}
	for header,value in pairs(DeleteClusterRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/clusters/{name}", DeleteClusterRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteCluster synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteClusterRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteClusterSync(DeleteClusterRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteClusterAsync(DeleteClusterRequest, function(response, error_type, error_message)
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
		[request_headers.AMZ_TARGET_HEADER] = ".ListClusters",
	}
	for header,value in pairs(ListClustersRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/clusters", ListClustersRequest, headers, settings, cb)
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
		[request_headers.AMZ_TARGET_HEADER] = ".CreateCluster",
	}
	for header,value in pairs(CreateClusterRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/clusters", CreateClusterRequest, headers, settings, cb)
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


return M
