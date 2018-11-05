--- GENERATED CODE - DO NOT MODIFY
-- AWS CloudHSM V2 (cloudhsmv2-2017-04-28)

local M = {}

M.metadata = {
	api_version = "2017-04-28",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "cloudhsmv2",
	service_abbreviation = "CloudHSM V2",
	service_full_name = "AWS CloudHSM V2",
	signature_version = "v4",
	target_prefix = "BaldrApiService",
	timestamp_format = "",
	global_endpoint = "",
	uid = "cloudhsmv2-2017-04-28",
}

local keys = {}
local asserts = {}

keys.DescribeClustersRequest = { ["NextToken"] = true, ["MaxResults"] = true, ["Filters"] = true, nil }

function asserts.AssertDescribeClustersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeClustersRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxSize(struct["MaxResults"]) end
	if struct["Filters"] then asserts.AssertFilters(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeClustersRequest[k], "DescribeClustersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeClustersRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The <code>NextToken</code> value that you received in the previous response. Use this value to get more clusters.</p>
-- * MaxResults [MaxSize] <p>The maximum number of clusters to return in the response. When there are more clusters than the number you specify, the response contains a <code>NextToken</code> value.</p>
-- * Filters [Filters] <p>One or more filters to limit the items returned in the response.</p> <p>Use the <code>clusterIds</code> filter to return only the specified clusters. Specify clusters by their cluster identifier (ID).</p> <p>Use the <code>vpcIds</code> filter to return only the clusters in the specified virtual private clouds (VPCs). Specify VPCs by their VPC identifier (ID).</p> <p>Use the <code>states</code> filter to return only clusters that match the specified state.</p>
-- @return DescribeClustersRequest structure as a key-value pair table
function M.DescribeClustersRequest(args)
	assert(args, "You must provide an argument table when creating DescribeClustersRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["Filters"] = args["Filters"],
	}
	asserts.AssertDescribeClustersRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateHsmResponse = { ["Hsm"] = true, nil }

function asserts.AssertCreateHsmResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateHsmResponse to be of type 'table'")
	if struct["Hsm"] then asserts.AssertHsm(struct["Hsm"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateHsmResponse[k], "CreateHsmResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateHsmResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Hsm [Hsm] <p>Information about the HSM that was created.</p>
-- @return CreateHsmResponse structure as a key-value pair table
function M.CreateHsmResponse(args)
	assert(args, "You must provide an argument table when creating CreateHsmResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Hsm"] = args["Hsm"],
	}
	asserts.AssertCreateHsmResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTagsRequest = { ["ResourceId"] = true, ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListTagsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsRequest to be of type 'table'")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	if struct["ResourceId"] then asserts.AssertClusterId(struct["ResourceId"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxSize(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsRequest[k], "ListTagsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceId [ClusterId] <p>The cluster identifier (ID) for the cluster whose tags you are getting. To find the cluster ID, use <a>DescribeClusters</a>.</p>
-- * NextToken [NextToken] <p>The <code>NextToken</code> value that you received in the previous response. Use this value to get more tags.</p>
-- * MaxResults [MaxSize] <p>The maximum number of tags to return in the response. When there are more tags than the number you specify, the response contains a <code>NextToken</code> value.</p>
-- Required key: ResourceId
-- @return ListTagsRequest structure as a key-value pair table
function M.ListTagsRequest(args)
	assert(args, "You must provide an argument table when creating ListTagsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceId"] = args["ResourceId"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListTagsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InitializeClusterRequest = { ["SignedCert"] = true, ["TrustAnchor"] = true, ["ClusterId"] = true, nil }

function asserts.AssertInitializeClusterRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InitializeClusterRequest to be of type 'table'")
	assert(struct["ClusterId"], "Expected key ClusterId to exist in table")
	assert(struct["SignedCert"], "Expected key SignedCert to exist in table")
	assert(struct["TrustAnchor"], "Expected key TrustAnchor to exist in table")
	if struct["SignedCert"] then asserts.AssertCert(struct["SignedCert"]) end
	if struct["TrustAnchor"] then asserts.AssertCert(struct["TrustAnchor"]) end
	if struct["ClusterId"] then asserts.AssertClusterId(struct["ClusterId"]) end
	for k,_ in pairs(struct) do
		assert(keys.InitializeClusterRequest[k], "InitializeClusterRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InitializeClusterRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SignedCert [Cert] <p>The cluster certificate issued (signed) by your issuing certificate authority (CA). The certificate must be in PEM format and can contain a maximum of 5000 characters.</p>
-- * TrustAnchor [Cert] <p>The issuing certificate of the issuing certificate authority (CA) that issued (signed) the cluster certificate. This can be a root (self-signed) certificate or a certificate chain that begins with the certificate that issued the cluster certificate and ends with a root certificate. The certificate or certificate chain must be in PEM format and can contain a maximum of 5000 characters.</p>
-- * ClusterId [ClusterId] <p>The identifier (ID) of the cluster that you are claiming. To find the cluster ID, use <a>DescribeClusters</a>.</p>
-- Required key: ClusterId
-- Required key: SignedCert
-- Required key: TrustAnchor
-- @return InitializeClusterRequest structure as a key-value pair table
function M.InitializeClusterRequest(args)
	assert(args, "You must provide an argument table when creating InitializeClusterRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SignedCert"] = args["SignedCert"],
		["TrustAnchor"] = args["TrustAnchor"],
		["ClusterId"] = args["ClusterId"],
	}
	asserts.AssertInitializeClusterRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteClusterResponse = { ["Cluster"] = true, nil }

function asserts.AssertDeleteClusterResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteClusterResponse to be of type 'table'")
	if struct["Cluster"] then asserts.AssertCluster(struct["Cluster"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteClusterResponse[k], "DeleteClusterResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteClusterResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Cluster [Cluster] <p>Information about the cluster that was deleted.</p>
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
		["Cluster"] = args["Cluster"],
	}
	asserts.AssertDeleteClusterResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Certificates = { ["ClusterCsr"] = true, ["AwsHardwareCertificate"] = true, ["ManufacturerHardwareCertificate"] = true, ["ClusterCertificate"] = true, ["HsmCertificate"] = true, nil }

function asserts.AssertCertificates(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Certificates to be of type 'table'")
	if struct["ClusterCsr"] then asserts.AssertCert(struct["ClusterCsr"]) end
	if struct["AwsHardwareCertificate"] then asserts.AssertCert(struct["AwsHardwareCertificate"]) end
	if struct["ManufacturerHardwareCertificate"] then asserts.AssertCert(struct["ManufacturerHardwareCertificate"]) end
	if struct["ClusterCertificate"] then asserts.AssertCert(struct["ClusterCertificate"]) end
	if struct["HsmCertificate"] then asserts.AssertCert(struct["HsmCertificate"]) end
	for k,_ in pairs(struct) do
		assert(keys.Certificates[k], "Certificates contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Certificates
-- <p>Contains one or more certificates or a certificate signing request (CSR).</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ClusterCsr [Cert] <p>The cluster's certificate signing request (CSR). The CSR exists only when the cluster's state is <code>UNINITIALIZED</code>.</p>
-- * AwsHardwareCertificate [Cert] <p>The HSM hardware certificate issued (signed) by AWS CloudHSM.</p>
-- * ManufacturerHardwareCertificate [Cert] <p>The HSM hardware certificate issued (signed) by the hardware manufacturer.</p>
-- * ClusterCertificate [Cert] <p>The cluster certificate issued (signed) by the issuing certificate authority (CA) of the cluster's owner.</p>
-- * HsmCertificate [Cert] <p>The HSM certificate issued (signed) by the HSM hardware.</p>
-- @return Certificates structure as a key-value pair table
function M.Certificates(args)
	assert(args, "You must provide an argument table when creating Certificates")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ClusterCsr"] = args["ClusterCsr"],
		["AwsHardwareCertificate"] = args["AwsHardwareCertificate"],
		["ManufacturerHardwareCertificate"] = args["ManufacturerHardwareCertificate"],
		["ClusterCertificate"] = args["ClusterCertificate"],
		["HsmCertificate"] = args["HsmCertificate"],
	}
	asserts.AssertCertificates(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteHsmRequest = { ["EniIp"] = true, ["EniId"] = true, ["ClusterId"] = true, ["HsmId"] = true, nil }

function asserts.AssertDeleteHsmRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteHsmRequest to be of type 'table'")
	assert(struct["ClusterId"], "Expected key ClusterId to exist in table")
	if struct["EniIp"] then asserts.AssertIpAddress(struct["EniIp"]) end
	if struct["EniId"] then asserts.AssertEniId(struct["EniId"]) end
	if struct["ClusterId"] then asserts.AssertClusterId(struct["ClusterId"]) end
	if struct["HsmId"] then asserts.AssertHsmId(struct["HsmId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteHsmRequest[k], "DeleteHsmRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteHsmRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EniIp [IpAddress] <p>The IP address of the elastic network interface (ENI) of the HSM that you are deleting.</p>
-- * EniId [EniId] <p>The identifier (ID) of the elastic network interface (ENI) of the HSM that you are deleting.</p>
-- * ClusterId [ClusterId] <p>The identifier (ID) of the cluster that contains the HSM that you are deleting.</p>
-- * HsmId [HsmId] <p>The identifier (ID) of the HSM that you are deleting.</p>
-- Required key: ClusterId
-- @return DeleteHsmRequest structure as a key-value pair table
function M.DeleteHsmRequest(args)
	assert(args, "You must provide an argument table when creating DeleteHsmRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EniIp"] = args["EniIp"],
		["EniId"] = args["EniId"],
		["ClusterId"] = args["ClusterId"],
		["HsmId"] = args["HsmId"],
	}
	asserts.AssertDeleteHsmRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InitializeClusterResponse = { ["StateMessage"] = true, ["State"] = true, nil }

function asserts.AssertInitializeClusterResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InitializeClusterResponse to be of type 'table'")
	if struct["StateMessage"] then asserts.AssertStateMessage(struct["StateMessage"]) end
	if struct["State"] then asserts.AssertClusterState(struct["State"]) end
	for k,_ in pairs(struct) do
		assert(keys.InitializeClusterResponse[k], "InitializeClusterResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InitializeClusterResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StateMessage [StateMessage] <p>A description of the cluster's state.</p>
-- * State [ClusterState] <p>The cluster's state.</p>
-- @return InitializeClusterResponse structure as a key-value pair table
function M.InitializeClusterResponse(args)
	assert(args, "You must provide an argument table when creating InitializeClusterResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StateMessage"] = args["StateMessage"],
		["State"] = args["State"],
	}
	asserts.AssertInitializeClusterResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateClusterResponse = { ["Cluster"] = true, nil }

function asserts.AssertCreateClusterResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateClusterResponse to be of type 'table'")
	if struct["Cluster"] then asserts.AssertCluster(struct["Cluster"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateClusterResponse[k], "CreateClusterResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateClusterResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Cluster [Cluster] <p>Information about the cluster that was created.</p>
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
		["Cluster"] = args["Cluster"],
	}
	asserts.AssertCreateClusterResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TagResourceResponse = { nil }

function asserts.AssertTagResourceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagResourceResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.TagResourceResponse[k], "TagResourceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagResourceResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return TagResourceResponse structure as a key-value pair table
function M.TagResourceResponse(args)
	assert(args, "You must provide an argument table when creating TagResourceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertTagResourceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateClusterRequest = { ["SourceBackupId"] = true, ["SubnetIds"] = true, ["HsmType"] = true, nil }

function asserts.AssertCreateClusterRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateClusterRequest to be of type 'table'")
	assert(struct["SubnetIds"], "Expected key SubnetIds to exist in table")
	assert(struct["HsmType"], "Expected key HsmType to exist in table")
	if struct["SourceBackupId"] then asserts.AssertBackupId(struct["SourceBackupId"]) end
	if struct["SubnetIds"] then asserts.AssertSubnetIds(struct["SubnetIds"]) end
	if struct["HsmType"] then asserts.AssertHsmType(struct["HsmType"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateClusterRequest[k], "CreateClusterRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateClusterRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SourceBackupId [BackupId] <p>The identifier (ID) of the cluster backup to restore. Use this value to restore the cluster from a backup instead of creating a new cluster. To find the backup ID, use <a>DescribeBackups</a>.</p>
-- * SubnetIds [SubnetIds] <p>The identifiers (IDs) of the subnets where you are creating the cluster. You must specify at least one subnet. If you specify multiple subnets, they must meet the following criteria:</p> <ul> <li> <p>All subnets must be in the same virtual private cloud (VPC).</p> </li> <li> <p>You can specify only one subnet per Availability Zone.</p> </li> </ul>
-- * HsmType [HsmType] <p>The type of HSM to use in the cluster. Currently the only allowed value is <code>hsm1.medium</code>.</p>
-- Required key: SubnetIds
-- Required key: HsmType
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
		["SourceBackupId"] = args["SourceBackupId"],
		["SubnetIds"] = args["SubnetIds"],
		["HsmType"] = args["HsmType"],
	}
	asserts.AssertCreateClusterRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Cluster = { ["CreateTimestamp"] = true, ["HsmType"] = true, ["SourceBackupId"] = true, ["BackupPolicy"] = true, ["SubnetMapping"] = true, ["PreCoPassword"] = true, ["ClusterId"] = true, ["SecurityGroup"] = true, ["StateMessage"] = true, ["VpcId"] = true, ["State"] = true, ["Hsms"] = true, ["Certificates"] = true, nil }

function asserts.AssertCluster(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Cluster to be of type 'table'")
	if struct["CreateTimestamp"] then asserts.AssertTimestamp(struct["CreateTimestamp"]) end
	if struct["HsmType"] then asserts.AssertHsmType(struct["HsmType"]) end
	if struct["SourceBackupId"] then asserts.AssertBackupId(struct["SourceBackupId"]) end
	if struct["BackupPolicy"] then asserts.AssertBackupPolicy(struct["BackupPolicy"]) end
	if struct["SubnetMapping"] then asserts.AssertExternalSubnetMapping(struct["SubnetMapping"]) end
	if struct["PreCoPassword"] then asserts.AssertPreCoPassword(struct["PreCoPassword"]) end
	if struct["ClusterId"] then asserts.AssertClusterId(struct["ClusterId"]) end
	if struct["SecurityGroup"] then asserts.AssertSecurityGroup(struct["SecurityGroup"]) end
	if struct["StateMessage"] then asserts.AssertStateMessage(struct["StateMessage"]) end
	if struct["VpcId"] then asserts.AssertVpcId(struct["VpcId"]) end
	if struct["State"] then asserts.AssertClusterState(struct["State"]) end
	if struct["Hsms"] then asserts.AssertHsms(struct["Hsms"]) end
	if struct["Certificates"] then asserts.AssertCertificates(struct["Certificates"]) end
	for k,_ in pairs(struct) do
		assert(keys.Cluster[k], "Cluster contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Cluster
-- <p>Contains information about an AWS CloudHSM cluster.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CreateTimestamp [Timestamp] <p>The date and time when the cluster was created.</p>
-- * HsmType [HsmType] <p>The type of HSM that the cluster contains.</p>
-- * SourceBackupId [BackupId] <p>The identifier (ID) of the backup used to create the cluster. This value exists only when the cluster was created from a backup.</p>
-- * BackupPolicy [BackupPolicy] <p>The cluster's backup policy.</p>
-- * SubnetMapping [ExternalSubnetMapping] <p>A map of the cluster's subnets and their corresponding Availability Zones.</p>
-- * PreCoPassword [PreCoPassword] <p>The default password for the cluster's Pre-Crypto Officer (PRECO) user.</p>
-- * ClusterId [ClusterId] <p>The cluster's identifier (ID).</p>
-- * SecurityGroup [SecurityGroup] <p>The identifier (ID) of the cluster's security group.</p>
-- * StateMessage [StateMessage] <p>A description of the cluster's state.</p>
-- * VpcId [VpcId] <p>The identifier (ID) of the virtual private cloud (VPC) that contains the cluster.</p>
-- * State [ClusterState] <p>The cluster's state.</p>
-- * Hsms [Hsms] <p>Contains information about the HSMs in the cluster.</p>
-- * Certificates [Certificates] <p>Contains one or more certificates or a certificate signing request (CSR).</p>
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
		["CreateTimestamp"] = args["CreateTimestamp"],
		["HsmType"] = args["HsmType"],
		["SourceBackupId"] = args["SourceBackupId"],
		["BackupPolicy"] = args["BackupPolicy"],
		["SubnetMapping"] = args["SubnetMapping"],
		["PreCoPassword"] = args["PreCoPassword"],
		["ClusterId"] = args["ClusterId"],
		["SecurityGroup"] = args["SecurityGroup"],
		["StateMessage"] = args["StateMessage"],
		["VpcId"] = args["VpcId"],
		["State"] = args["State"],
		["Hsms"] = args["Hsms"],
		["Certificates"] = args["Certificates"],
	}
	asserts.AssertCluster(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Hsm = { ["StateMessage"] = true, ["AvailabilityZone"] = true, ["EniId"] = true, ["HsmId"] = true, ["ClusterId"] = true, ["EniIp"] = true, ["State"] = true, ["SubnetId"] = true, nil }

function asserts.AssertHsm(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Hsm to be of type 'table'")
	assert(struct["HsmId"], "Expected key HsmId to exist in table")
	if struct["StateMessage"] then asserts.AssertString(struct["StateMessage"]) end
	if struct["AvailabilityZone"] then asserts.AssertExternalAz(struct["AvailabilityZone"]) end
	if struct["EniId"] then asserts.AssertEniId(struct["EniId"]) end
	if struct["HsmId"] then asserts.AssertHsmId(struct["HsmId"]) end
	if struct["ClusterId"] then asserts.AssertClusterId(struct["ClusterId"]) end
	if struct["EniIp"] then asserts.AssertIpAddress(struct["EniIp"]) end
	if struct["State"] then asserts.AssertHsmState(struct["State"]) end
	if struct["SubnetId"] then asserts.AssertSubnetId(struct["SubnetId"]) end
	for k,_ in pairs(struct) do
		assert(keys.Hsm[k], "Hsm contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Hsm
-- <p>Contains information about a hardware security module (HSM) in an AWS CloudHSM cluster.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StateMessage [String] <p>A description of the HSM's state.</p>
-- * AvailabilityZone [ExternalAz] <p>The Availability Zone that contains the HSM.</p>
-- * EniId [EniId] <p>The identifier (ID) of the HSM's elastic network interface (ENI).</p>
-- * HsmId [HsmId] <p>The HSM's identifier (ID).</p>
-- * ClusterId [ClusterId] <p>The identifier (ID) of the cluster that contains the HSM.</p>
-- * EniIp [IpAddress] <p>The IP address of the HSM's elastic network interface (ENI).</p>
-- * State [HsmState] <p>The HSM's state.</p>
-- * SubnetId [SubnetId] <p>The subnet that contains the HSM's elastic network interface (ENI).</p>
-- Required key: HsmId
-- @return Hsm structure as a key-value pair table
function M.Hsm(args)
	assert(args, "You must provide an argument table when creating Hsm")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StateMessage"] = args["StateMessage"],
		["AvailabilityZone"] = args["AvailabilityZone"],
		["EniId"] = args["EniId"],
		["HsmId"] = args["HsmId"],
		["ClusterId"] = args["ClusterId"],
		["EniIp"] = args["EniIp"],
		["State"] = args["State"],
		["SubnetId"] = args["SubnetId"],
	}
	asserts.AssertHsm(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteBackupResponse = { ["Backup"] = true, nil }

function asserts.AssertDeleteBackupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteBackupResponse to be of type 'table'")
	if struct["Backup"] then asserts.AssertBackup(struct["Backup"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteBackupResponse[k], "DeleteBackupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteBackupResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Backup [Backup] <p>Information on the <code>Backup</code> object deleted.</p>
-- @return DeleteBackupResponse structure as a key-value pair table
function M.DeleteBackupResponse(args)
	assert(args, "You must provide an argument table when creating DeleteBackupResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Backup"] = args["Backup"],
	}
	asserts.AssertDeleteBackupResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UntagResourceResponse = { nil }

function asserts.AssertUntagResourceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UntagResourceResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UntagResourceResponse[k], "UntagResourceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UntagResourceResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UntagResourceResponse structure as a key-value pair table
function M.UntagResourceResponse(args)
	assert(args, "You must provide an argument table when creating UntagResourceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUntagResourceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteClusterRequest = { ["ClusterId"] = true, nil }

function asserts.AssertDeleteClusterRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteClusterRequest to be of type 'table'")
	assert(struct["ClusterId"], "Expected key ClusterId to exist in table")
	if struct["ClusterId"] then asserts.AssertClusterId(struct["ClusterId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteClusterRequest[k], "DeleteClusterRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteClusterRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ClusterId [ClusterId] <p>The identifier (ID) of the cluster that you are deleting. To find the cluster ID, use <a>DescribeClusters</a>.</p>
-- Required key: ClusterId
-- @return DeleteClusterRequest structure as a key-value pair table
function M.DeleteClusterRequest(args)
	assert(args, "You must provide an argument table when creating DeleteClusterRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ClusterId"] = args["ClusterId"],
	}
	asserts.AssertDeleteClusterRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DestinationBackup = { ["SourceBackup"] = true, ["SourceCluster"] = true, ["CreateTimestamp"] = true, ["SourceRegion"] = true, nil }

function asserts.AssertDestinationBackup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DestinationBackup to be of type 'table'")
	if struct["SourceBackup"] then asserts.AssertBackupId(struct["SourceBackup"]) end
	if struct["SourceCluster"] then asserts.AssertClusterId(struct["SourceCluster"]) end
	if struct["CreateTimestamp"] then asserts.AssertTimestamp(struct["CreateTimestamp"]) end
	if struct["SourceRegion"] then asserts.AssertRegion(struct["SourceRegion"]) end
	for k,_ in pairs(struct) do
		assert(keys.DestinationBackup[k], "DestinationBackup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DestinationBackup
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SourceBackup [BackupId] 
-- * SourceCluster [ClusterId] 
-- * CreateTimestamp [Timestamp] 
-- * SourceRegion [Region] 
-- @return DestinationBackup structure as a key-value pair table
function M.DestinationBackup(args)
	assert(args, "You must provide an argument table when creating DestinationBackup")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SourceBackup"] = args["SourceBackup"],
		["SourceCluster"] = args["SourceCluster"],
		["CreateTimestamp"] = args["CreateTimestamp"],
		["SourceRegion"] = args["SourceRegion"],
	}
	asserts.AssertDestinationBackup(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CopyBackupToRegionResponse = { ["DestinationBackup"] = true, nil }

function asserts.AssertCopyBackupToRegionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CopyBackupToRegionResponse to be of type 'table'")
	if struct["DestinationBackup"] then asserts.AssertDestinationBackup(struct["DestinationBackup"]) end
	for k,_ in pairs(struct) do
		assert(keys.CopyBackupToRegionResponse[k], "CopyBackupToRegionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CopyBackupToRegionResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DestinationBackup [DestinationBackup] <p>Information on the backup that will be copied to the destination region, including CreateTimestamp, SourceBackup, SourceCluster, and Source Region. CreateTimestamp of the destination backup will be the same as that of the source backup.</p> <p>You will need to use the <code>sourceBackupID</code> returned in this operation to use the <a>DescribeBackups</a> operation on the backup that will be copied to the destination region.</p>
-- @return CopyBackupToRegionResponse structure as a key-value pair table
function M.CopyBackupToRegionResponse(args)
	assert(args, "You must provide an argument table when creating CopyBackupToRegionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DestinationBackup"] = args["DestinationBackup"],
	}
	asserts.AssertCopyBackupToRegionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RestoreBackupResponse = { ["Backup"] = true, nil }

function asserts.AssertRestoreBackupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestoreBackupResponse to be of type 'table'")
	if struct["Backup"] then asserts.AssertBackup(struct["Backup"]) end
	for k,_ in pairs(struct) do
		assert(keys.RestoreBackupResponse[k], "RestoreBackupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreBackupResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Backup [Backup] <p>Information on the <code>Backup</code> object created.</p>
-- @return RestoreBackupResponse structure as a key-value pair table
function M.RestoreBackupResponse(args)
	assert(args, "You must provide an argument table when creating RestoreBackupResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Backup"] = args["Backup"],
	}
	asserts.AssertRestoreBackupResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeBackupsRequest = { ["NextToken"] = true, ["Filters"] = true, ["MaxResults"] = true, ["SortAscending"] = true, nil }

function asserts.AssertDescribeBackupsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeBackupsRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Filters"] then asserts.AssertFilters(struct["Filters"]) end
	if struct["MaxResults"] then asserts.AssertMaxSize(struct["MaxResults"]) end
	if struct["SortAscending"] then asserts.AssertBoolean(struct["SortAscending"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeBackupsRequest[k], "DescribeBackupsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeBackupsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The <code>NextToken</code> value that you received in the previous response. Use this value to get more backups.</p>
-- * Filters [Filters] <p>One or more filters to limit the items returned in the response.</p> <p>Use the <code>backupIds</code> filter to return only the specified backups. Specify backups by their backup identifier (ID).</p> <p>Use the <code>sourceBackupIds</code> filter to return only the backups created from a source backup. The <code>sourceBackupID</code> of a source backup is returned by the <a>CopyBackupToRegion</a> operation.</p> <p>Use the <code>clusterIds</code> filter to return only the backups for the specified clusters. Specify clusters by their cluster identifier (ID).</p> <p>Use the <code>states</code> filter to return only backups that match the specified state.</p>
-- * MaxResults [MaxSize] <p>The maximum number of backups to return in the response. When there are more backups than the number you specify, the response contains a <code>NextToken</code> value.</p>
-- * SortAscending [Boolean] 
-- @return DescribeBackupsRequest structure as a key-value pair table
function M.DescribeBackupsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeBackupsRequest")
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
		["SortAscending"] = args["SortAscending"],
	}
	asserts.AssertDescribeBackupsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeClustersResponse = { ["Clusters"] = true, ["NextToken"] = true, nil }

function asserts.AssertDescribeClustersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeClustersResponse to be of type 'table'")
	if struct["Clusters"] then asserts.AssertClusters(struct["Clusters"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeClustersResponse[k], "DescribeClustersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeClustersResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Clusters [Clusters] <p>A list of clusters.</p>
-- * NextToken [NextToken] <p>An opaque string that indicates that the response contains only a subset of clusters. Use this value in a subsequent <code>DescribeClusters</code> request to get more clusters.</p>
-- @return DescribeClustersResponse structure as a key-value pair table
function M.DescribeClustersResponse(args)
	assert(args, "You must provide an argument table when creating DescribeClustersResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Clusters"] = args["Clusters"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertDescribeClustersResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteBackupRequest = { ["BackupId"] = true, nil }

function asserts.AssertDeleteBackupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteBackupRequest to be of type 'table'")
	assert(struct["BackupId"], "Expected key BackupId to exist in table")
	if struct["BackupId"] then asserts.AssertBackupId(struct["BackupId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteBackupRequest[k], "DeleteBackupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteBackupRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BackupId [BackupId] <p>The ID of the backup to be deleted. To find the ID of a backup, use the <a>DescribeBackups</a> operation.</p>
-- Required key: BackupId
-- @return DeleteBackupRequest structure as a key-value pair table
function M.DeleteBackupRequest(args)
	assert(args, "You must provide an argument table when creating DeleteBackupRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["BackupId"] = args["BackupId"],
	}
	asserts.AssertDeleteBackupRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TagResourceRequest = { ["ResourceId"] = true, ["TagList"] = true, nil }

function asserts.AssertTagResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagResourceRequest to be of type 'table'")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	assert(struct["TagList"], "Expected key TagList to exist in table")
	if struct["ResourceId"] then asserts.AssertClusterId(struct["ResourceId"]) end
	if struct["TagList"] then asserts.AssertTagList(struct["TagList"]) end
	for k,_ in pairs(struct) do
		assert(keys.TagResourceRequest[k], "TagResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagResourceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceId [ClusterId] <p>The cluster identifier (ID) for the cluster that you are tagging. To find the cluster ID, use <a>DescribeClusters</a>.</p>
-- * TagList [TagList] <p>A list of one or more tags.</p>
-- Required key: ResourceId
-- Required key: TagList
-- @return TagResourceRequest structure as a key-value pair table
function M.TagResourceRequest(args)
	assert(args, "You must provide an argument table when creating TagResourceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceId"] = args["ResourceId"],
		["TagList"] = args["TagList"],
	}
	asserts.AssertTagResourceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RestoreBackupRequest = { ["BackupId"] = true, nil }

function asserts.AssertRestoreBackupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RestoreBackupRequest to be of type 'table'")
	assert(struct["BackupId"], "Expected key BackupId to exist in table")
	if struct["BackupId"] then asserts.AssertBackupId(struct["BackupId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RestoreBackupRequest[k], "RestoreBackupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RestoreBackupRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BackupId [BackupId] <p>The ID of the backup to be restored. To find the ID of a backup, use the <a>DescribeBackups</a> operation.</p>
-- Required key: BackupId
-- @return RestoreBackupRequest structure as a key-value pair table
function M.RestoreBackupRequest(args)
	assert(args, "You must provide an argument table when creating RestoreBackupRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["BackupId"] = args["BackupId"],
	}
	asserts.AssertRestoreBackupRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Backup = { ["CopyTimestamp"] = true, ["SourceRegion"] = true, ["DeleteTimestamp"] = true, ["BackupState"] = true, ["ClusterId"] = true, ["SourceCluster"] = true, ["CreateTimestamp"] = true, ["SourceBackup"] = true, ["BackupId"] = true, nil }

function asserts.AssertBackup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Backup to be of type 'table'")
	assert(struct["BackupId"], "Expected key BackupId to exist in table")
	if struct["CopyTimestamp"] then asserts.AssertTimestamp(struct["CopyTimestamp"]) end
	if struct["SourceRegion"] then asserts.AssertRegion(struct["SourceRegion"]) end
	if struct["DeleteTimestamp"] then asserts.AssertTimestamp(struct["DeleteTimestamp"]) end
	if struct["BackupState"] then asserts.AssertBackupState(struct["BackupState"]) end
	if struct["ClusterId"] then asserts.AssertClusterId(struct["ClusterId"]) end
	if struct["SourceCluster"] then asserts.AssertClusterId(struct["SourceCluster"]) end
	if struct["CreateTimestamp"] then asserts.AssertTimestamp(struct["CreateTimestamp"]) end
	if struct["SourceBackup"] then asserts.AssertBackupId(struct["SourceBackup"]) end
	if struct["BackupId"] then asserts.AssertBackupId(struct["BackupId"]) end
	for k,_ in pairs(struct) do
		assert(keys.Backup[k], "Backup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Backup
-- <p>Contains information about a backup of an AWS CloudHSM cluster.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CopyTimestamp [Timestamp] 
-- * SourceRegion [Region] 
-- * DeleteTimestamp [Timestamp] <p>The date and time when the backup will be permanently deleted.</p>
-- * BackupState [BackupState] <p>The state of the backup.</p>
-- * ClusterId [ClusterId] <p>The identifier (ID) of the cluster that was backed up.</p>
-- * SourceCluster [ClusterId] 
-- * CreateTimestamp [Timestamp] <p>The date and time when the backup was created.</p>
-- * SourceBackup [BackupId] 
-- * BackupId [BackupId] <p>The identifier (ID) of the backup.</p>
-- Required key: BackupId
-- @return Backup structure as a key-value pair table
function M.Backup(args)
	assert(args, "You must provide an argument table when creating Backup")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CopyTimestamp"] = args["CopyTimestamp"],
		["SourceRegion"] = args["SourceRegion"],
		["DeleteTimestamp"] = args["DeleteTimestamp"],
		["BackupState"] = args["BackupState"],
		["ClusterId"] = args["ClusterId"],
		["SourceCluster"] = args["SourceCluster"],
		["CreateTimestamp"] = args["CreateTimestamp"],
		["SourceBackup"] = args["SourceBackup"],
		["BackupId"] = args["BackupId"],
	}
	asserts.AssertBackup(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTagsResponse = { ["NextToken"] = true, ["TagList"] = true, nil }

function asserts.AssertListTagsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsResponse to be of type 'table'")
	assert(struct["TagList"], "Expected key TagList to exist in table")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["TagList"] then asserts.AssertTagList(struct["TagList"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsResponse[k], "ListTagsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>An opaque string that indicates that the response contains only a subset of tags. Use this value in a subsequent <code>ListTags</code> request to get more tags.</p>
-- * TagList [TagList] <p>A list of tags.</p>
-- Required key: TagList
-- @return ListTagsResponse structure as a key-value pair table
function M.ListTagsResponse(args)
	assert(args, "You must provide an argument table when creating ListTagsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["TagList"] = args["TagList"],
	}
	asserts.AssertListTagsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UntagResourceRequest = { ["ResourceId"] = true, ["TagKeyList"] = true, nil }

function asserts.AssertUntagResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UntagResourceRequest to be of type 'table'")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	assert(struct["TagKeyList"], "Expected key TagKeyList to exist in table")
	if struct["ResourceId"] then asserts.AssertClusterId(struct["ResourceId"]) end
	if struct["TagKeyList"] then asserts.AssertTagKeyList(struct["TagKeyList"]) end
	for k,_ in pairs(struct) do
		assert(keys.UntagResourceRequest[k], "UntagResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UntagResourceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceId [ClusterId] <p>The cluster identifier (ID) for the cluster whose tags you are removing. To find the cluster ID, use <a>DescribeClusters</a>.</p>
-- * TagKeyList [TagKeyList] <p>A list of one or more tag keys for the tags that you are removing. Specify only the tag keys, not the tag values.</p>
-- Required key: ResourceId
-- Required key: TagKeyList
-- @return UntagResourceRequest structure as a key-value pair table
function M.UntagResourceRequest(args)
	assert(args, "You must provide an argument table when creating UntagResourceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceId"] = args["ResourceId"],
		["TagKeyList"] = args["TagKeyList"],
	}
	asserts.AssertUntagResourceRequest(all_args)
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
-- <p>Contains a tag. A tag is a key-value pair.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Value [TagValue] <p>The value of the tag.</p>
-- * Key [TagKey] <p>The key of the tag.</p>
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

keys.CopyBackupToRegionRequest = { ["BackupId"] = true, ["DestinationRegion"] = true, nil }

function asserts.AssertCopyBackupToRegionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CopyBackupToRegionRequest to be of type 'table'")
	assert(struct["DestinationRegion"], "Expected key DestinationRegion to exist in table")
	assert(struct["BackupId"], "Expected key BackupId to exist in table")
	if struct["BackupId"] then asserts.AssertBackupId(struct["BackupId"]) end
	if struct["DestinationRegion"] then asserts.AssertRegion(struct["DestinationRegion"]) end
	for k,_ in pairs(struct) do
		assert(keys.CopyBackupToRegionRequest[k], "CopyBackupToRegionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CopyBackupToRegionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BackupId [BackupId] <p>The ID of the backup that will be copied to the destination region. </p>
-- * DestinationRegion [Region] <p>The AWS region that will contain your copied CloudHSM cluster backup.</p>
-- Required key: DestinationRegion
-- Required key: BackupId
-- @return CopyBackupToRegionRequest structure as a key-value pair table
function M.CopyBackupToRegionRequest(args)
	assert(args, "You must provide an argument table when creating CopyBackupToRegionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["BackupId"] = args["BackupId"],
		["DestinationRegion"] = args["DestinationRegion"],
	}
	asserts.AssertCopyBackupToRegionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateHsmRequest = { ["IpAddress"] = true, ["AvailabilityZone"] = true, ["ClusterId"] = true, nil }

function asserts.AssertCreateHsmRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateHsmRequest to be of type 'table'")
	assert(struct["ClusterId"], "Expected key ClusterId to exist in table")
	assert(struct["AvailabilityZone"], "Expected key AvailabilityZone to exist in table")
	if struct["IpAddress"] then asserts.AssertIpAddress(struct["IpAddress"]) end
	if struct["AvailabilityZone"] then asserts.AssertExternalAz(struct["AvailabilityZone"]) end
	if struct["ClusterId"] then asserts.AssertClusterId(struct["ClusterId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateHsmRequest[k], "CreateHsmRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateHsmRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IpAddress [IpAddress] <p>The HSM's IP address. If you specify an IP address, use an available address from the subnet that maps to the Availability Zone where you are creating the HSM. If you don't specify an IP address, one is chosen for you from that subnet.</p>
-- * AvailabilityZone [ExternalAz] <p>The Availability Zone where you are creating the HSM. To find the cluster's Availability Zones, use <a>DescribeClusters</a>.</p>
-- * ClusterId [ClusterId] <p>The identifier (ID) of the HSM's cluster. To find the cluster ID, use <a>DescribeClusters</a>.</p>
-- Required key: ClusterId
-- Required key: AvailabilityZone
-- @return CreateHsmRequest structure as a key-value pair table
function M.CreateHsmRequest(args)
	assert(args, "You must provide an argument table when creating CreateHsmRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IpAddress"] = args["IpAddress"],
		["AvailabilityZone"] = args["AvailabilityZone"],
		["ClusterId"] = args["ClusterId"],
	}
	asserts.AssertCreateHsmRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteHsmResponse = { ["HsmId"] = true, nil }

function asserts.AssertDeleteHsmResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteHsmResponse to be of type 'table'")
	if struct["HsmId"] then asserts.AssertHsmId(struct["HsmId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteHsmResponse[k], "DeleteHsmResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteHsmResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HsmId [HsmId] <p>The identifier (ID) of the HSM that was deleted.</p>
-- @return DeleteHsmResponse structure as a key-value pair table
function M.DeleteHsmResponse(args)
	assert(args, "You must provide an argument table when creating DeleteHsmResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HsmId"] = args["HsmId"],
	}
	asserts.AssertDeleteHsmResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeBackupsResponse = { ["Backups"] = true, ["NextToken"] = true, nil }

function asserts.AssertDescribeBackupsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeBackupsResponse to be of type 'table'")
	if struct["Backups"] then asserts.AssertBackups(struct["Backups"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeBackupsResponse[k], "DescribeBackupsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeBackupsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Backups [Backups] <p>A list of backups.</p>
-- * NextToken [NextToken] <p>An opaque string that indicates that the response contains only a subset of backups. Use this value in a subsequent <code>DescribeBackups</code> request to get more backups.</p>
-- @return DescribeBackupsResponse structure as a key-value pair table
function M.DescribeBackupsResponse(args)
	assert(args, "You must provide an argument table when creating DescribeBackupsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Backups"] = args["Backups"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertDescribeBackupsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertBackupPolicy(str)
	assert(str)
	assert(type(str) == "string", "Expected BackupPolicy to be of type 'string'")
end

--  
function M.BackupPolicy(str)
	asserts.AssertBackupPolicy(str)
	return str
end

function asserts.AssertSecurityGroup(str)
	assert(str)
	assert(type(str) == "string", "Expected SecurityGroup to be of type 'string'")
end

--  
function M.SecurityGroup(str)
	asserts.AssertSecurityGroup(str)
	return str
end

function asserts.AssertField(str)
	assert(str)
	assert(type(str) == "string", "Expected Field to be of type 'string'")
end

--  
function M.Field(str)
	asserts.AssertField(str)
	return str
end

function asserts.AssertNextToken(str)
	assert(str)
	assert(type(str) == "string", "Expected NextToken to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.NextToken(str)
	asserts.AssertNextToken(str)
	return str
end

function asserts.AssertHsmType(str)
	assert(str)
	assert(type(str) == "string", "Expected HsmType to be of type 'string'")
end

--  
function M.HsmType(str)
	asserts.AssertHsmType(str)
	return str
end

function asserts.AssertEniId(str)
	assert(str)
	assert(type(str) == "string", "Expected EniId to be of type 'string'")
end

--  
function M.EniId(str)
	asserts.AssertEniId(str)
	return str
end

function asserts.AssertIpAddress(str)
	assert(str)
	assert(type(str) == "string", "Expected IpAddress to be of type 'string'")
end

--  
function M.IpAddress(str)
	asserts.AssertIpAddress(str)
	return str
end

function asserts.AssertClusterId(str)
	assert(str)
	assert(type(str) == "string", "Expected ClusterId to be of type 'string'")
end

--  
function M.ClusterId(str)
	asserts.AssertClusterId(str)
	return str
end

function asserts.AssertVpcId(str)
	assert(str)
	assert(type(str) == "string", "Expected VpcId to be of type 'string'")
end

--  
function M.VpcId(str)
	asserts.AssertVpcId(str)
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

function asserts.AssertSubnetId(str)
	assert(str)
	assert(type(str) == "string", "Expected SubnetId to be of type 'string'")
end

--  
function M.SubnetId(str)
	asserts.AssertSubnetId(str)
	return str
end

function asserts.AssertHsmState(str)
	assert(str)
	assert(type(str) == "string", "Expected HsmState to be of type 'string'")
end

--  
function M.HsmState(str)
	asserts.AssertHsmState(str)
	return str
end

function asserts.AssertHsmId(str)
	assert(str)
	assert(type(str) == "string", "Expected HsmId to be of type 'string'")
end

--  
function M.HsmId(str)
	asserts.AssertHsmId(str)
	return str
end

function asserts.AssertRegion(str)
	assert(str)
	assert(type(str) == "string", "Expected Region to be of type 'string'")
end

--  
function M.Region(str)
	asserts.AssertRegion(str)
	return str
end

function asserts.AssertCert(str)
	assert(str)
	assert(type(str) == "string", "Expected Cert to be of type 'string'")
	assert(#str <= 5000, "Expected string to be max 5000 characters")
end

--  
function M.Cert(str)
	asserts.AssertCert(str)
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

function asserts.AssertString(str)
	assert(str)
	assert(type(str) == "string", "Expected String to be of type 'string'")
end

--  
function M.String(str)
	asserts.AssertString(str)
	return str
end

function asserts.AssertBackupState(str)
	assert(str)
	assert(type(str) == "string", "Expected BackupState to be of type 'string'")
end

--  
function M.BackupState(str)
	asserts.AssertBackupState(str)
	return str
end

function asserts.AssertPreCoPassword(str)
	assert(str)
	assert(type(str) == "string", "Expected PreCoPassword to be of type 'string'")
	assert(#str <= 32, "Expected string to be max 32 characters")
	assert(#str >= 7, "Expected string to be min 7 characters")
end

--  
function M.PreCoPassword(str)
	asserts.AssertPreCoPassword(str)
	return str
end

function asserts.AssertExternalAz(str)
	assert(str)
	assert(type(str) == "string", "Expected ExternalAz to be of type 'string'")
end

--  
function M.ExternalAz(str)
	asserts.AssertExternalAz(str)
	return str
end

function asserts.AssertStateMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected StateMessage to be of type 'string'")
	assert(#str <= 300, "Expected string to be max 300 characters")
end

--  
function M.StateMessage(str)
	asserts.AssertStateMessage(str)
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

function asserts.AssertBackupId(str)
	assert(str)
	assert(type(str) == "string", "Expected BackupId to be of type 'string'")
end

--  
function M.BackupId(str)
	asserts.AssertBackupId(str)
	return str
end

function asserts.AssertMaxSize(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxSize to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaxSize(integer)
	asserts.AssertMaxSize(integer)
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

function asserts.AssertExternalSubnetMapping(map)
	assert(map)
	assert(type(map) == "table", "Expected ExternalSubnetMapping to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertExternalAz(k)
		asserts.AssertSubnetId(v)
	end
end

function M.ExternalSubnetMapping(map)
	asserts.AssertExternalSubnetMapping(map)
	return map
end

function asserts.AssertFilters(map)
	assert(map)
	assert(type(map) == "table", "Expected Filters to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertField(k)
		asserts.AssertStrings(v)
	end
end

function M.Filters(map)
	asserts.AssertFilters(map)
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

function asserts.AssertHsms(list)
	assert(list)
	assert(type(list) == "table", "Expected Hsms to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertHsm(v)
	end
end

--  
-- List of Hsm objects
function M.Hsms(list)
	asserts.AssertHsms(list)
	return list
end

function asserts.AssertClusters(list)
	assert(list)
	assert(type(list) == "table", "Expected Clusters to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCluster(v)
	end
end

--  
-- List of Cluster objects
function M.Clusters(list)
	asserts.AssertClusters(list)
	return list
end

function asserts.AssertSubnetIds(list)
	assert(list)
	assert(type(list) == "table", "Expected SubnetIds to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertSubnetId(v)
	end
end

--  
-- List of SubnetId objects
function M.SubnetIds(list)
	asserts.AssertSubnetIds(list)
	return list
end

function asserts.AssertStrings(list)
	assert(list)
	assert(type(list) == "table", "Expected Strings to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.Strings(list)
	asserts.AssertStrings(list)
	return list
end

function asserts.AssertTagKeyList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagKeyList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
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

function asserts.AssertBackups(list)
	assert(list)
	assert(type(list) == "table", "Expected Backups to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertBackup(v)
	end
end

--  
-- List of Backup objects
function M.Backups(list)
	asserts.AssertBackups(list)
	return list
end

function asserts.AssertTagList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
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
			return "cloudhsmv2.amazonaws.com"
		end
	end
	local ss = { "cloudhsmv2" }
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
--- Call CreateHsm asynchronously, invoking a callback when done
-- @param CreateHsmRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateHsmAsync(CreateHsmRequest, cb)
	assert(CreateHsmRequest, "You must provide a CreateHsmRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "BaldrApiService.CreateHsm",
	}
	for header,value in pairs(CreateHsmRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateHsmRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateHsm synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateHsmRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateHsmSync(CreateHsmRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateHsmAsync(CreateHsmRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListTags asynchronously, invoking a callback when done
-- @param ListTagsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListTagsAsync(ListTagsRequest, cb)
	assert(ListTagsRequest, "You must provide a ListTagsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "BaldrApiService.ListTags",
	}
	for header,value in pairs(ListTagsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListTagsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListTags synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListTagsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListTagsSync(ListTagsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTagsAsync(ListTagsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UntagResource asynchronously, invoking a callback when done
-- @param UntagResourceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UntagResourceAsync(UntagResourceRequest, cb)
	assert(UntagResourceRequest, "You must provide a UntagResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "BaldrApiService.UntagResource",
	}
	for header,value in pairs(UntagResourceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UntagResourceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UntagResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UntagResourceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UntagResourceSync(UntagResourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UntagResourceAsync(UntagResourceRequest, function(response, error_type, error_message)
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
		[request_headers.AMZ_TARGET_HEADER] = "BaldrApiService.CreateCluster",
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

--- Call DeleteHsm asynchronously, invoking a callback when done
-- @param DeleteHsmRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteHsmAsync(DeleteHsmRequest, cb)
	assert(DeleteHsmRequest, "You must provide a DeleteHsmRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "BaldrApiService.DeleteHsm",
	}
	for header,value in pairs(DeleteHsmRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteHsmRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteHsm synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteHsmRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteHsmSync(DeleteHsmRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteHsmAsync(DeleteHsmRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeBackups asynchronously, invoking a callback when done
-- @param DescribeBackupsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeBackupsAsync(DescribeBackupsRequest, cb)
	assert(DescribeBackupsRequest, "You must provide a DescribeBackupsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "BaldrApiService.DescribeBackups",
	}
	for header,value in pairs(DescribeBackupsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeBackupsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeBackups synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeBackupsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeBackupsSync(DescribeBackupsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeBackupsAsync(DescribeBackupsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteBackup asynchronously, invoking a callback when done
-- @param DeleteBackupRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteBackupAsync(DeleteBackupRequest, cb)
	assert(DeleteBackupRequest, "You must provide a DeleteBackupRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "BaldrApiService.DeleteBackup",
	}
	for header,value in pairs(DeleteBackupRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteBackupRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteBackup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteBackupRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteBackupSync(DeleteBackupRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteBackupAsync(DeleteBackupRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RestoreBackup asynchronously, invoking a callback when done
-- @param RestoreBackupRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RestoreBackupAsync(RestoreBackupRequest, cb)
	assert(RestoreBackupRequest, "You must provide a RestoreBackupRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "BaldrApiService.RestoreBackup",
	}
	for header,value in pairs(RestoreBackupRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RestoreBackupRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RestoreBackup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RestoreBackupRequest
-- @return response
-- @return error_type
-- @return error_message
function M.RestoreBackupSync(RestoreBackupRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RestoreBackupAsync(RestoreBackupRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call InitializeCluster asynchronously, invoking a callback when done
-- @param InitializeClusterRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.InitializeClusterAsync(InitializeClusterRequest, cb)
	assert(InitializeClusterRequest, "You must provide a InitializeClusterRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "BaldrApiService.InitializeCluster",
	}
	for header,value in pairs(InitializeClusterRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", InitializeClusterRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call InitializeCluster synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param InitializeClusterRequest
-- @return response
-- @return error_type
-- @return error_message
function M.InitializeClusterSync(InitializeClusterRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.InitializeClusterAsync(InitializeClusterRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call TagResource asynchronously, invoking a callback when done
-- @param TagResourceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.TagResourceAsync(TagResourceRequest, cb)
	assert(TagResourceRequest, "You must provide a TagResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "BaldrApiService.TagResource",
	}
	for header,value in pairs(TagResourceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", TagResourceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call TagResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param TagResourceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.TagResourceSync(TagResourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.TagResourceAsync(TagResourceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CopyBackupToRegion asynchronously, invoking a callback when done
-- @param CopyBackupToRegionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CopyBackupToRegionAsync(CopyBackupToRegionRequest, cb)
	assert(CopyBackupToRegionRequest, "You must provide a CopyBackupToRegionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "BaldrApiService.CopyBackupToRegion",
	}
	for header,value in pairs(CopyBackupToRegionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CopyBackupToRegionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CopyBackupToRegion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CopyBackupToRegionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CopyBackupToRegionSync(CopyBackupToRegionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CopyBackupToRegionAsync(CopyBackupToRegionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeClusters asynchronously, invoking a callback when done
-- @param DescribeClustersRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeClustersAsync(DescribeClustersRequest, cb)
	assert(DescribeClustersRequest, "You must provide a DescribeClustersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "BaldrApiService.DescribeClusters",
	}
	for header,value in pairs(DescribeClustersRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeClustersRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeClusters synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeClustersRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeClustersSync(DescribeClustersRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeClustersAsync(DescribeClustersRequest, function(response, error_type, error_message)
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
		[request_headers.AMZ_TARGET_HEADER] = "BaldrApiService.DeleteCluster",
	}
	for header,value in pairs(DeleteClusterRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteClusterRequest, headers, settings, cb)
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


return M
