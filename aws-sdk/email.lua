--- GENERATED CODE - DO NOT MODIFY
-- Amazon Simple Email Service (email-2010-12-01)

local M = {}

M.metadata = {
	api_version = "2010-12-01",
	json_version = "",
	protocol = "query",
	checksum_format = "",
	endpoint_prefix = "email",
	service_abbreviation = "Amazon SES",
	service_full_name = "Amazon Simple Email Service",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "email-2010-12-01",
}

local SetIdentityNotificationTopicRequest_keys = { "NotificationType" = true, "Identity" = true, "SnsTopic" = true, nil }

function M.AssertSetIdentityNotificationTopicRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetIdentityNotificationTopicRequest to be of type 'table'")
	assert(struct["Identity"], "Expected key Identity to exist in table")
	assert(struct["NotificationType"], "Expected key NotificationType to exist in table")
	if struct["NotificationType"] then M.AssertNotificationType(struct["NotificationType"]) end
	if struct["Identity"] then M.AssertIdentity(struct["Identity"]) end
	if struct["SnsTopic"] then M.AssertNotificationTopic(struct["SnsTopic"]) end
	for k,_ in pairs(struct) do
		assert(SetIdentityNotificationTopicRequest_keys[k], "SetIdentityNotificationTopicRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetIdentityNotificationTopicRequest
-- &lt;p&gt;Represents a request to specify the Amazon SNS topic to which Amazon SES will publish bounce, complaint, or delivery notifications for emails sent with that identity as the Source. For information about Amazon SES notifications, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications-via-sns.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param NotificationType [NotificationType] &lt;p&gt;The type of notifications that will be published to the specified Amazon SNS topic.&lt;/p&gt;
-- @param Identity [Identity] &lt;p&gt;The identity for which the Amazon SNS topic will be set. You can specify an identity by using its name or by using its Amazon Resource Name (ARN). Examples: &lt;code&gt;user@example.com&lt;/code&gt;, &lt;code&gt;example.com&lt;/code&gt;, &lt;code&gt;arn:aws:ses:us-east-1:123456789012:identity/example.com&lt;/code&gt;.&lt;/p&gt;
-- @param SnsTopic [NotificationTopic] &lt;p&gt;The Amazon Resource Name (ARN) of the Amazon SNS topic. If the parameter is omitted from the request or a null value is passed, &lt;code&gt;SnsTopic&lt;/code&gt; is cleared and publishing is disabled.&lt;/p&gt;
-- Required parameter: Identity
-- Required parameter: NotificationType
function M.SetIdentityNotificationTopicRequest(NotificationType, Identity, SnsTopic, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetIdentityNotificationTopicRequest")
	local t = { 
		["NotificationType"] = NotificationType,
		["Identity"] = Identity,
		["SnsTopic"] = SnsTopic,
	}
	M.AssertSetIdentityNotificationTopicRequest(t)
	return t
end

local ReorderReceiptRuleSetRequest_keys = { "RuleSetName" = true, "RuleNames" = true, nil }

function M.AssertReorderReceiptRuleSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReorderReceiptRuleSetRequest to be of type 'table'")
	assert(struct["RuleSetName"], "Expected key RuleSetName to exist in table")
	assert(struct["RuleNames"], "Expected key RuleNames to exist in table")
	if struct["RuleSetName"] then M.AssertReceiptRuleSetName(struct["RuleSetName"]) end
	if struct["RuleNames"] then M.AssertReceiptRuleNamesList(struct["RuleNames"]) end
	for k,_ in pairs(struct) do
		assert(ReorderReceiptRuleSetRequest_keys[k], "ReorderReceiptRuleSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReorderReceiptRuleSetRequest
-- &lt;p&gt;Represents a request to reorder the receipt rules within a receipt rule set. You use receipt rule sets to receive email with Amazon SES. For more information, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param RuleSetName [ReceiptRuleSetName] &lt;p&gt;The name of the receipt rule set to reorder.&lt;/p&gt;
-- @param RuleNames [ReceiptRuleNamesList] &lt;p&gt;A list of the specified receipt rule set's receipt rules in the order that you want to put them.&lt;/p&gt;
-- Required parameter: RuleSetName
-- Required parameter: RuleNames
function M.ReorderReceiptRuleSetRequest(RuleSetName, RuleNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReorderReceiptRuleSetRequest")
	local t = { 
		["RuleSetName"] = RuleSetName,
		["RuleNames"] = RuleNames,
	}
	M.AssertReorderReceiptRuleSetRequest(t)
	return t
end

local DescribeActiveReceiptRuleSetRequest_keys = { nil }

function M.AssertDescribeActiveReceiptRuleSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeActiveReceiptRuleSetRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DescribeActiveReceiptRuleSetRequest_keys[k], "DescribeActiveReceiptRuleSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeActiveReceiptRuleSetRequest
-- &lt;p&gt;Represents a request to return the metadata and receipt rules for the receipt rule set that is currently active. You use receipt rule sets to receive email with Amazon SES. For more information, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
function M.DescribeActiveReceiptRuleSetRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeActiveReceiptRuleSetRequest")
	local t = { 
	}
	M.AssertDescribeActiveReceiptRuleSetRequest(t)
	return t
end

local InvalidFirehoseDestinationException_keys = { "EventDestinationName" = true, "ConfigurationSetName" = true, nil }

function M.AssertInvalidFirehoseDestinationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidFirehoseDestinationException to be of type 'table'")
	if struct["EventDestinationName"] then M.AssertEventDestinationName(struct["EventDestinationName"]) end
	if struct["ConfigurationSetName"] then M.AssertConfigurationSetName(struct["ConfigurationSetName"]) end
	for k,_ in pairs(struct) do
		assert(InvalidFirehoseDestinationException_keys[k], "InvalidFirehoseDestinationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidFirehoseDestinationException
-- &lt;p&gt;Indicates that the Amazon Kinesis Firehose destination is invalid. See the error message for details.&lt;/p&gt;
-- @param EventDestinationName [EventDestinationName] &lt;p&gt;Indicates that the Amazon Kinesis Firehose destination is invalid. See the error message for details.&lt;/p&gt;
-- @param ConfigurationSetName [ConfigurationSetName] &lt;p&gt;Indicates that the Amazon Kinesis Firehose destination is invalid. See the error message for details.&lt;/p&gt;
function M.InvalidFirehoseDestinationException(EventDestinationName, ConfigurationSetName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidFirehoseDestinationException")
	local t = { 
		["EventDestinationName"] = EventDestinationName,
		["ConfigurationSetName"] = ConfigurationSetName,
	}
	M.AssertInvalidFirehoseDestinationException(t)
	return t
end

local Destination_keys = { "CcAddresses" = true, "BccAddresses" = true, "ToAddresses" = true, nil }

function M.AssertDestination(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Destination to be of type 'table'")
	if struct["CcAddresses"] then M.AssertAddressList(struct["CcAddresses"]) end
	if struct["BccAddresses"] then M.AssertAddressList(struct["BccAddresses"]) end
	if struct["ToAddresses"] then M.AssertAddressList(struct["ToAddresses"]) end
	for k,_ in pairs(struct) do
		assert(Destination_keys[k], "Destination contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Destination
-- &lt;p&gt;Represents the destination of the message, consisting of To:, CC:, and BCC: fields.&lt;/p&gt; &lt;p&gt; By default, the string must be 7-bit ASCII. If the text must contain any other characters, then you must use MIME encoded-word syntax (RFC 2047) instead of a literal string. MIME encoded-word syntax uses the following form: &lt;code&gt;=?charset?encoding?encoded-text?=&lt;/code&gt;. For more information, see &lt;a href=&quot;http://tools.ietf.org/html/rfc2047&quot;&gt;RFC 2047&lt;/a&gt;. &lt;/p&gt;
-- @param CcAddresses [AddressList] &lt;p&gt;The CC: field(s) of the message.&lt;/p&gt;
-- @param BccAddresses [AddressList] &lt;p&gt;The BCC: field(s) of the message.&lt;/p&gt;
-- @param ToAddresses [AddressList] &lt;p&gt;The To: field(s) of the message.&lt;/p&gt;
function M.Destination(CcAddresses, BccAddresses, ToAddresses, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Destination")
	local t = { 
		["CcAddresses"] = CcAddresses,
		["BccAddresses"] = BccAddresses,
		["ToAddresses"] = ToAddresses,
	}
	M.AssertDestination(t)
	return t
end

local VerifyDomainDkimRequest_keys = { "Domain" = true, nil }

function M.AssertVerifyDomainDkimRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VerifyDomainDkimRequest to be of type 'table'")
	assert(struct["Domain"], "Expected key Domain to exist in table")
	if struct["Domain"] then M.AssertDomain(struct["Domain"]) end
	for k,_ in pairs(struct) do
		assert(VerifyDomainDkimRequest_keys[k], "VerifyDomainDkimRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VerifyDomainDkimRequest
-- &lt;p&gt;Represents a request to generate the CNAME records needed to set up Easy DKIM with Amazon SES. For more information about setting up Easy DKIM, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param Domain [Domain] &lt;p&gt;The name of the domain to be verified for Easy DKIM signing.&lt;/p&gt;
-- Required parameter: Domain
function M.VerifyDomainDkimRequest(Domain, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VerifyDomainDkimRequest")
	local t = { 
		["Domain"] = Domain,
	}
	M.AssertVerifyDomainDkimRequest(t)
	return t
end

local S3Action_keys = { "KmsKeyArn" = true, "ObjectKeyPrefix" = true, "BucketName" = true, "TopicArn" = true, nil }

function M.AssertS3Action(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected S3Action to be of type 'table'")
	assert(struct["BucketName"], "Expected key BucketName to exist in table")
	if struct["KmsKeyArn"] then M.AssertAmazonResourceName(struct["KmsKeyArn"]) end
	if struct["ObjectKeyPrefix"] then M.AssertS3KeyPrefix(struct["ObjectKeyPrefix"]) end
	if struct["BucketName"] then M.AssertS3BucketName(struct["BucketName"]) end
	if struct["TopicArn"] then M.AssertAmazonResourceName(struct["TopicArn"]) end
	for k,_ in pairs(struct) do
		assert(S3Action_keys[k], "S3Action contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type S3Action
-- &lt;p&gt;When included in a receipt rule, this action saves the received message to an Amazon Simple Storage Service (Amazon S3) bucket and, optionally, publishes a notification to Amazon Simple Notification Service (Amazon SNS).&lt;/p&gt; &lt;p&gt;To enable Amazon SES to write emails to your Amazon S3 bucket, use an AWS KMS key to encrypt your emails, or publish to an Amazon SNS topic of another account, Amazon SES must have permission to access those resources. For information about giving permissions, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt; &lt;note&gt; &lt;p&gt;When you save your emails to an Amazon S3 bucket, the maximum email size (including headers) is 30 MB. Emails larger than that will bounce.&lt;/p&gt; &lt;/note&gt; &lt;p&gt;For information about specifying Amazon S3 actions in receipt rules, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-s3.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param KmsKeyArn [AmazonResourceName] &lt;p&gt;The customer master key that Amazon SES should use to encrypt your emails before saving them to the Amazon S3 bucket. You can use the default master key or a custom master key you created in AWS KMS as follows:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;To use the default master key, provide an ARN in the form of &lt;code&gt;arn:aws:kms:REGION:ACCOUNT-ID-WITHOUT-HYPHENS:alias/aws/ses&lt;/code&gt;. For example, if your AWS account ID is 123456789012 and you want to use the default master key in the US West (Oregon) region, the ARN of the default master key would be &lt;code&gt;arn:aws:kms:us-west-2:123456789012:alias/aws/ses&lt;/code&gt;. If you use the default master key, you don't need to perform any extra steps to give Amazon SES permission to use the key.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;To use a custom master key you created in AWS KMS, provide the ARN of the master key and ensure that you add a statement to your key's policy to give Amazon SES permission to use it. For more information about giving permissions, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;For more information about key policies, see the &lt;a href=&quot;http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html&quot;&gt;AWS KMS Developer Guide&lt;/a&gt;. If you do not specify a master key, Amazon SES will not encrypt your emails.&lt;/p&gt; &lt;important&gt; &lt;p&gt;Your mail is encrypted by Amazon SES using the Amazon S3 encryption client before the mail is submitted to Amazon S3 for storage. It is not encrypted using Amazon S3 server-side encryption. This means that you must use the Amazon S3 encryption client to decrypt the email after retrieving it from Amazon S3, as the service has no access to use your AWS KMS keys for decryption. This encryption client is currently available with the &lt;a href=&quot;http://aws.amazon.com/sdk-for-java/&quot;&gt;AWS Java SDK&lt;/a&gt; and &lt;a href=&quot;http://aws.amazon.com/sdk-for-ruby/&quot;&gt;AWS Ruby SDK&lt;/a&gt; only. For more information about client-side encryption using AWS KMS master keys, see the &lt;a href=&quot;http://alpha-docs-aws.amazon.com/AmazonS3/latest/dev/UsingClientSideEncryption.html&quot;&gt;Amazon S3 Developer Guide&lt;/a&gt;.&lt;/p&gt; &lt;/important&gt;
-- @param ObjectKeyPrefix [S3KeyPrefix] &lt;p&gt;The key prefix of the Amazon S3 bucket. The key prefix is similar to a directory name that enables you to store similar data under the same directory in a bucket.&lt;/p&gt;
-- @param BucketName [S3BucketName] &lt;p&gt;The name of the Amazon S3 bucket to which to save the received email.&lt;/p&gt;
-- @param TopicArn [AmazonResourceName] &lt;p&gt;The ARN of the Amazon SNS topic to notify when the message is saved to the Amazon S3 bucket. An example of an Amazon SNS topic ARN is &lt;code&gt;arn:aws:sns:us-west-2:123456789012:MyTopic&lt;/code&gt;. For more information about Amazon SNS topics, see the &lt;a href=&quot;http://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html&quot;&gt;Amazon SNS Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: BucketName
function M.S3Action(KmsKeyArn, ObjectKeyPrefix, BucketName, TopicArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating S3Action")
	local t = { 
		["KmsKeyArn"] = KmsKeyArn,
		["ObjectKeyPrefix"] = ObjectKeyPrefix,
		["BucketName"] = BucketName,
		["TopicArn"] = TopicArn,
	}
	M.AssertS3Action(t)
	return t
end

local SetIdentityNotificationTopicResponse_keys = { nil }

function M.AssertSetIdentityNotificationTopicResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetIdentityNotificationTopicResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(SetIdentityNotificationTopicResponse_keys[k], "SetIdentityNotificationTopicResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetIdentityNotificationTopicResponse
-- &lt;p&gt;An empty element returned on a successful request.&lt;/p&gt;
function M.SetIdentityNotificationTopicResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetIdentityNotificationTopicResponse")
	local t = { 
	}
	M.AssertSetIdentityNotificationTopicResponse(t)
	return t
end

local ExtensionField_keys = { "Name" = true, "Value" = true, nil }

function M.AssertExtensionField(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExtensionField to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Value"], "Expected key Value to exist in table")
	if struct["Name"] then M.AssertExtensionFieldName(struct["Name"]) end
	if struct["Value"] then M.AssertExtensionFieldValue(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(ExtensionField_keys[k], "ExtensionField contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExtensionField
-- &lt;p&gt;Additional X-headers to include in the Delivery Status Notification (DSN) when an email that Amazon SES receives on your behalf bounces.&lt;/p&gt; &lt;p&gt;For information about receiving email through Amazon SES, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param Name [ExtensionFieldName] &lt;p&gt;The name of the header to add. Must be between 1 and 50 characters, inclusive, and consist of alphanumeric (a-z, A-Z, 0-9) characters and dashes only.&lt;/p&gt;
-- @param Value [ExtensionFieldValue] &lt;p&gt;The value of the header to add. Must be less than 2048 characters, and must not contain newline characters (&quot;\r&quot; or &quot;\n&quot;).&lt;/p&gt;
-- Required parameter: Name
-- Required parameter: Value
function M.ExtensionField(Name, Value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExtensionField")
	local t = { 
		["Name"] = Name,
		["Value"] = Value,
	}
	M.AssertExtensionField(t)
	return t
end

local UpdateConfigurationSetEventDestinationRequest_keys = { "EventDestination" = true, "ConfigurationSetName" = true, nil }

function M.AssertUpdateConfigurationSetEventDestinationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateConfigurationSetEventDestinationRequest to be of type 'table'")
	assert(struct["ConfigurationSetName"], "Expected key ConfigurationSetName to exist in table")
	assert(struct["EventDestination"], "Expected key EventDestination to exist in table")
	if struct["EventDestination"] then M.AssertEventDestination(struct["EventDestination"]) end
	if struct["ConfigurationSetName"] then M.AssertConfigurationSetName(struct["ConfigurationSetName"]) end
	for k,_ in pairs(struct) do
		assert(UpdateConfigurationSetEventDestinationRequest_keys[k], "UpdateConfigurationSetEventDestinationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateConfigurationSetEventDestinationRequest
-- &lt;p&gt;Represents a request to update the event destination of a configuration set. Configuration sets enable you to publish email sending events. For information about using configuration sets, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param EventDestination [EventDestination] &lt;p&gt;The event destination object that you want to apply to the specified configuration set.&lt;/p&gt;
-- @param ConfigurationSetName [ConfigurationSetName] &lt;p&gt;The name of the configuration set that you want to update.&lt;/p&gt;
-- Required parameter: ConfigurationSetName
-- Required parameter: EventDestination
function M.UpdateConfigurationSetEventDestinationRequest(EventDestination, ConfigurationSetName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateConfigurationSetEventDestinationRequest")
	local t = { 
		["EventDestination"] = EventDestination,
		["ConfigurationSetName"] = ConfigurationSetName,
	}
	M.AssertUpdateConfigurationSetEventDestinationRequest(t)
	return t
end

local Body_keys = { "Text" = true, "Html" = true, nil }

function M.AssertBody(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Body to be of type 'table'")
	if struct["Text"] then M.AssertContent(struct["Text"]) end
	if struct["Html"] then M.AssertContent(struct["Html"]) end
	for k,_ in pairs(struct) do
		assert(Body_keys[k], "Body contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Body
-- &lt;p&gt;Represents the body of the message. You can specify text, HTML, or both. If you use both, then the message should display correctly in the widest variety of email clients.&lt;/p&gt;
-- @param Text [Content] &lt;p&gt;The content of the message, in text format. Use this for text-based email clients, or clients on high-latency networks (such as mobile devices).&lt;/p&gt;
-- @param Html [Content] &lt;p&gt;The content of the message, in HTML format. Use this for email clients that can process HTML. You can include clickable links, formatted text, and much more in an HTML message.&lt;/p&gt;
function M.Body(Text, Html, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Body")
	local t = { 
		["Text"] = Text,
		["Html"] = Html,
	}
	M.AssertBody(t)
	return t
end

local InvalidConfigurationSetException_keys = { nil }

function M.AssertInvalidConfigurationSetException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidConfigurationSetException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidConfigurationSetException_keys[k], "InvalidConfigurationSetException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidConfigurationSetException
-- &lt;p&gt;Indicates that the configuration set is invalid. See the error message for details.&lt;/p&gt;
function M.InvalidConfigurationSetException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidConfigurationSetException")
	local t = { 
	}
	M.AssertInvalidConfigurationSetException(t)
	return t
end

local DeleteConfigurationSetRequest_keys = { "ConfigurationSetName" = true, nil }

function M.AssertDeleteConfigurationSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteConfigurationSetRequest to be of type 'table'")
	assert(struct["ConfigurationSetName"], "Expected key ConfigurationSetName to exist in table")
	if struct["ConfigurationSetName"] then M.AssertConfigurationSetName(struct["ConfigurationSetName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteConfigurationSetRequest_keys[k], "DeleteConfigurationSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteConfigurationSetRequest
-- &lt;p&gt;Represents a request to delete a configuration set. Configuration sets enable you to publish email sending events. For information about using configuration sets, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param ConfigurationSetName [ConfigurationSetName] &lt;p&gt;The name of the configuration set to delete.&lt;/p&gt;
-- Required parameter: ConfigurationSetName
function M.DeleteConfigurationSetRequest(ConfigurationSetName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteConfigurationSetRequest")
	local t = { 
		["ConfigurationSetName"] = ConfigurationSetName,
	}
	M.AssertDeleteConfigurationSetRequest(t)
	return t
end

local BouncedRecipientInfo_keys = { "RecipientArn" = true, "Recipient" = true, "BounceType" = true, "RecipientDsnFields" = true, nil }

function M.AssertBouncedRecipientInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BouncedRecipientInfo to be of type 'table'")
	assert(struct["Recipient"], "Expected key Recipient to exist in table")
	if struct["RecipientArn"] then M.AssertAmazonResourceName(struct["RecipientArn"]) end
	if struct["Recipient"] then M.AssertAddress(struct["Recipient"]) end
	if struct["BounceType"] then M.AssertBounceType(struct["BounceType"]) end
	if struct["RecipientDsnFields"] then M.AssertRecipientDsnFields(struct["RecipientDsnFields"]) end
	for k,_ in pairs(struct) do
		assert(BouncedRecipientInfo_keys[k], "BouncedRecipientInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BouncedRecipientInfo
-- &lt;p&gt;Recipient-related information to include in the Delivery Status Notification (DSN) when an email that Amazon SES receives on your behalf bounces.&lt;/p&gt; &lt;p&gt;For information about receiving email through Amazon SES, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param RecipientArn [AmazonResourceName] &lt;p&gt;This parameter is used only for sending authorization. It is the ARN of the identity that is associated with the sending authorization policy that permits you to receive email for the recipient of the bounced email. For more information about sending authorization, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param Recipient [Address] &lt;p&gt;The email address of the recipient of the bounced email.&lt;/p&gt;
-- @param BounceType [BounceType] &lt;p&gt;The reason for the bounce. You must provide either this parameter or &lt;code&gt;RecipientDsnFields&lt;/code&gt;.&lt;/p&gt;
-- @param RecipientDsnFields [RecipientDsnFields] &lt;p&gt;Recipient-related DSN fields, most of which would normally be filled in automatically when provided with a &lt;code&gt;BounceType&lt;/code&gt;. You must provide either this parameter or &lt;code&gt;BounceType&lt;/code&gt;.&lt;/p&gt;
-- Required parameter: Recipient
function M.BouncedRecipientInfo(RecipientArn, Recipient, BounceType, RecipientDsnFields, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BouncedRecipientInfo")
	local t = { 
		["RecipientArn"] = RecipientArn,
		["Recipient"] = Recipient,
		["BounceType"] = BounceType,
		["RecipientDsnFields"] = RecipientDsnFields,
	}
	M.AssertBouncedRecipientInfo(t)
	return t
end

local CloudWatchDestination_keys = { "DimensionConfigurations" = true, nil }

function M.AssertCloudWatchDestination(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloudWatchDestination to be of type 'table'")
	assert(struct["DimensionConfigurations"], "Expected key DimensionConfigurations to exist in table")
	if struct["DimensionConfigurations"] then M.AssertCloudWatchDimensionConfigurations(struct["DimensionConfigurations"]) end
	for k,_ in pairs(struct) do
		assert(CloudWatchDestination_keys[k], "CloudWatchDestination contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloudWatchDestination
-- &lt;p&gt;Contains information associated with an Amazon CloudWatch event destination to which email sending events are published.&lt;/p&gt; &lt;p&gt;Event destinations, such as Amazon CloudWatch, are associated with configuration sets, which enable you to publish email sending events. For information about using configuration sets, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param DimensionConfigurations [CloudWatchDimensionConfigurations] &lt;p&gt;A list of dimensions upon which to categorize your emails when you publish email sending events to Amazon CloudWatch.&lt;/p&gt;
-- Required parameter: DimensionConfigurations
function M.CloudWatchDestination(DimensionConfigurations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CloudWatchDestination")
	local t = { 
		["DimensionConfigurations"] = DimensionConfigurations,
	}
	M.AssertCloudWatchDestination(t)
	return t
end

local IdentityVerificationAttributes_keys = { "VerificationToken" = true, "VerificationStatus" = true, nil }

function M.AssertIdentityVerificationAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IdentityVerificationAttributes to be of type 'table'")
	assert(struct["VerificationStatus"], "Expected key VerificationStatus to exist in table")
	if struct["VerificationToken"] then M.AssertVerificationToken(struct["VerificationToken"]) end
	if struct["VerificationStatus"] then M.AssertVerificationStatus(struct["VerificationStatus"]) end
	for k,_ in pairs(struct) do
		assert(IdentityVerificationAttributes_keys[k], "IdentityVerificationAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IdentityVerificationAttributes
-- &lt;p&gt;Represents the verification attributes of a single identity.&lt;/p&gt;
-- @param VerificationToken [VerificationToken] &lt;p&gt;The verification token for a domain identity. Null for email address identities.&lt;/p&gt;
-- @param VerificationStatus [VerificationStatus] &lt;p&gt;The verification status of the identity: &quot;Pending&quot;, &quot;Success&quot;, &quot;Failed&quot;, or &quot;TemporaryFailure&quot;.&lt;/p&gt;
-- Required parameter: VerificationStatus
function M.IdentityVerificationAttributes(VerificationToken, VerificationStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IdentityVerificationAttributes")
	local t = { 
		["VerificationToken"] = VerificationToken,
		["VerificationStatus"] = VerificationStatus,
	}
	M.AssertIdentityVerificationAttributes(t)
	return t
end

local ListVerifiedEmailAddressesResponse_keys = { "VerifiedEmailAddresses" = true, nil }

function M.AssertListVerifiedEmailAddressesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListVerifiedEmailAddressesResponse to be of type 'table'")
	if struct["VerifiedEmailAddresses"] then M.AssertAddressList(struct["VerifiedEmailAddresses"]) end
	for k,_ in pairs(struct) do
		assert(ListVerifiedEmailAddressesResponse_keys[k], "ListVerifiedEmailAddressesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListVerifiedEmailAddressesResponse
-- &lt;p&gt;A list of email addresses that you have verified with Amazon SES under your AWS account.&lt;/p&gt;
-- @param VerifiedEmailAddresses [AddressList] &lt;p&gt;A list of email addresses that have been verified.&lt;/p&gt;
function M.ListVerifiedEmailAddressesResponse(VerifiedEmailAddresses, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListVerifiedEmailAddressesResponse")
	local t = { 
		["VerifiedEmailAddresses"] = VerifiedEmailAddresses,
	}
	M.AssertListVerifiedEmailAddressesResponse(t)
	return t
end

local DeleteIdentityResponse_keys = { nil }

function M.AssertDeleteIdentityResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteIdentityResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteIdentityResponse_keys[k], "DeleteIdentityResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteIdentityResponse
-- &lt;p&gt;An empty element returned on a successful request.&lt;/p&gt;
function M.DeleteIdentityResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteIdentityResponse")
	local t = { 
	}
	M.AssertDeleteIdentityResponse(t)
	return t
end

local EventDestinationAlreadyExistsException_keys = { "EventDestinationName" = true, "ConfigurationSetName" = true, nil }

function M.AssertEventDestinationAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventDestinationAlreadyExistsException to be of type 'table'")
	if struct["EventDestinationName"] then M.AssertEventDestinationName(struct["EventDestinationName"]) end
	if struct["ConfigurationSetName"] then M.AssertConfigurationSetName(struct["ConfigurationSetName"]) end
	for k,_ in pairs(struct) do
		assert(EventDestinationAlreadyExistsException_keys[k], "EventDestinationAlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventDestinationAlreadyExistsException
-- &lt;p&gt;Indicates that the event destination could not be created because of a naming conflict.&lt;/p&gt;
-- @param EventDestinationName [EventDestinationName] &lt;p&gt;Indicates that the event destination could not be created because of a naming conflict.&lt;/p&gt;
-- @param ConfigurationSetName [ConfigurationSetName] &lt;p&gt;Indicates that the event destination could not be created because of a naming conflict.&lt;/p&gt;
function M.EventDestinationAlreadyExistsException(EventDestinationName, ConfigurationSetName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EventDestinationAlreadyExistsException")
	local t = { 
		["EventDestinationName"] = EventDestinationName,
		["ConfigurationSetName"] = ConfigurationSetName,
	}
	M.AssertEventDestinationAlreadyExistsException(t)
	return t
end

local VerifyDomainIdentityResponse_keys = { "VerificationToken" = true, nil }

function M.AssertVerifyDomainIdentityResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VerifyDomainIdentityResponse to be of type 'table'")
	assert(struct["VerificationToken"], "Expected key VerificationToken to exist in table")
	if struct["VerificationToken"] then M.AssertVerificationToken(struct["VerificationToken"]) end
	for k,_ in pairs(struct) do
		assert(VerifyDomainIdentityResponse_keys[k], "VerifyDomainIdentityResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VerifyDomainIdentityResponse
-- &lt;p&gt;Returns a TXT record that you must publish to the DNS server of your domain to complete domain verification with Amazon SES.&lt;/p&gt;
-- @param VerificationToken [VerificationToken] &lt;p&gt;A TXT record that must be placed in the DNS settings for the domain, in order to complete domain verification.&lt;/p&gt;
-- Required parameter: VerificationToken
function M.VerifyDomainIdentityResponse(VerificationToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VerifyDomainIdentityResponse")
	local t = { 
		["VerificationToken"] = VerificationToken,
	}
	M.AssertVerifyDomainIdentityResponse(t)
	return t
end

local DeleteConfigurationSetResponse_keys = { nil }

function M.AssertDeleteConfigurationSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteConfigurationSetResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteConfigurationSetResponse_keys[k], "DeleteConfigurationSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteConfigurationSetResponse
-- &lt;p&gt;An empty element returned on a successful request.&lt;/p&gt;
function M.DeleteConfigurationSetResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteConfigurationSetResponse")
	local t = { 
	}
	M.AssertDeleteConfigurationSetResponse(t)
	return t
end

local CreateReceiptFilterResponse_keys = { nil }

function M.AssertCreateReceiptFilterResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateReceiptFilterResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(CreateReceiptFilterResponse_keys[k], "CreateReceiptFilterResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateReceiptFilterResponse
-- &lt;p&gt;An empty element returned on a successful request.&lt;/p&gt;
function M.CreateReceiptFilterResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateReceiptFilterResponse")
	local t = { 
	}
	M.AssertCreateReceiptFilterResponse(t)
	return t
end

local VerifyEmailIdentityResponse_keys = { nil }

function M.AssertVerifyEmailIdentityResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VerifyEmailIdentityResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(VerifyEmailIdentityResponse_keys[k], "VerifyEmailIdentityResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VerifyEmailIdentityResponse
-- &lt;p&gt;An empty element returned on a successful request.&lt;/p&gt;
function M.VerifyEmailIdentityResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating VerifyEmailIdentityResponse")
	local t = { 
	}
	M.AssertVerifyEmailIdentityResponse(t)
	return t
end

local SendRawEmailRequest_keys = { "ReturnPathArn" = true, "Tags" = true, "RawMessage" = true, "Source" = true, "ConfigurationSetName" = true, "FromArn" = true, "SourceArn" = true, "Destinations" = true, nil }

function M.AssertSendRawEmailRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendRawEmailRequest to be of type 'table'")
	assert(struct["RawMessage"], "Expected key RawMessage to exist in table")
	if struct["ReturnPathArn"] then M.AssertAmazonResourceName(struct["ReturnPathArn"]) end
	if struct["Tags"] then M.AssertMessageTagList(struct["Tags"]) end
	if struct["RawMessage"] then M.AssertRawMessage(struct["RawMessage"]) end
	if struct["Source"] then M.AssertAddress(struct["Source"]) end
	if struct["ConfigurationSetName"] then M.AssertConfigurationSetName(struct["ConfigurationSetName"]) end
	if struct["FromArn"] then M.AssertAmazonResourceName(struct["FromArn"]) end
	if struct["SourceArn"] then M.AssertAmazonResourceName(struct["SourceArn"]) end
	if struct["Destinations"] then M.AssertAddressList(struct["Destinations"]) end
	for k,_ in pairs(struct) do
		assert(SendRawEmailRequest_keys[k], "SendRawEmailRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendRawEmailRequest
-- &lt;p&gt;Represents a request to send a single raw email using Amazon SES. For more information, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-email-raw.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param ReturnPathArn [AmazonResourceName] &lt;p&gt;This parameter is used only for sending authorization. It is the ARN of the identity that is associated with the sending authorization policy that permits you to use the email address specified in the &lt;code&gt;ReturnPath&lt;/code&gt; parameter.&lt;/p&gt; &lt;p&gt;For example, if the owner of &lt;code&gt;example.com&lt;/code&gt; (which has ARN &lt;code&gt;arn:aws:ses:us-east-1:123456789012:identity/example.com&lt;/code&gt;) attaches a policy to it that authorizes you to use &lt;code&gt;feedback@example.com&lt;/code&gt;, then you would specify the &lt;code&gt;ReturnPathArn&lt;/code&gt; to be &lt;code&gt;arn:aws:ses:us-east-1:123456789012:identity/example.com&lt;/code&gt;, and the &lt;code&gt;ReturnPath&lt;/code&gt; to be &lt;code&gt;feedback@example.com&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;Instead of using this parameter, you can use the X-header &lt;code&gt;X-SES-RETURN-PATH-ARN&lt;/code&gt; in the raw message of the email. If you use both the &lt;code&gt;ReturnPathArn&lt;/code&gt; parameter and the corresponding X-header, Amazon SES uses the value of the &lt;code&gt;ReturnPathArn&lt;/code&gt; parameter.&lt;/p&gt; &lt;note&gt; &lt;p&gt;For information about when to use this parameter, see the description of &lt;code&gt;SendRawEmail&lt;/code&gt; in this guide, or see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization-delegate-sender-tasks-email.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt; &lt;/note&gt;
-- @param Tags [MessageTagList] &lt;p&gt;A list of tags, in the form of name/value pairs, to apply to an email that you send using &lt;code&gt;SendRawEmail&lt;/code&gt;. Tags correspond to characteristics of the email that you define, so that you can publish email sending events.&lt;/p&gt;
-- @param RawMessage [RawMessage] &lt;p&gt;The raw text of the message. The client is responsible for ensuring the following:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Message must contain a header and a body, separated by a blank line.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;All required header fields must be present.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Each part of a multipart MIME message must be formatted properly.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;MIME content types must be among those supported by Amazon SES. For more information, go to the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/mime-types.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Must be base64-encoded.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param Source [Address] &lt;p&gt;The identity's email address. If you do not provide a value for this parameter, you must specify a &quot;From&quot; address in the raw text of the message. (You can also specify both.)&lt;/p&gt; &lt;p&gt; By default, the string must be 7-bit ASCII. If the text must contain any other characters, then you must use MIME encoded-word syntax (RFC 2047) instead of a literal string. MIME encoded-word syntax uses the following form: &lt;code&gt;=?charset?encoding?encoded-text?=&lt;/code&gt;. For more information, see &lt;a href=&quot;http://tools.ietf.org/html/rfc2047&quot;&gt;RFC 2047&lt;/a&gt;. &lt;/p&gt; &lt;note&gt; &lt;p&gt;If you specify the &lt;code&gt;Source&lt;/code&gt; parameter and have feedback forwarding enabled, then bounces and complaints will be sent to this email address. This takes precedence over any &lt;i&gt;Return-Path&lt;/i&gt; header that you might include in the raw text of the message.&lt;/p&gt; &lt;/note&gt;
-- @param ConfigurationSetName [ConfigurationSetName] &lt;p&gt;The name of the configuration set to use when you send an email using &lt;code&gt;SendRawEmail&lt;/code&gt;.&lt;/p&gt;
-- @param FromArn [AmazonResourceName] &lt;p&gt;This parameter is used only for sending authorization. It is the ARN of the identity that is associated with the sending authorization policy that permits you to specify a particular &quot;From&quot; address in the header of the raw email.&lt;/p&gt; &lt;p&gt;Instead of using this parameter, you can use the X-header &lt;code&gt;X-SES-FROM-ARN&lt;/code&gt; in the raw message of the email. If you use both the &lt;code&gt;FromArn&lt;/code&gt; parameter and the corresponding X-header, Amazon SES uses the value of the &lt;code&gt;FromArn&lt;/code&gt; parameter.&lt;/p&gt; &lt;note&gt; &lt;p&gt;For information about when to use this parameter, see the description of &lt;code&gt;SendRawEmail&lt;/code&gt; in this guide, or see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization-delegate-sender-tasks-email.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt; &lt;/note&gt;
-- @param SourceArn [AmazonResourceName] &lt;p&gt;This parameter is used only for sending authorization. It is the ARN of the identity that is associated with the sending authorization policy that permits you to send for the email address specified in the &lt;code&gt;Source&lt;/code&gt; parameter.&lt;/p&gt; &lt;p&gt;For example, if the owner of &lt;code&gt;example.com&lt;/code&gt; (which has ARN &lt;code&gt;arn:aws:ses:us-east-1:123456789012:identity/example.com&lt;/code&gt;) attaches a policy to it that authorizes you to send from &lt;code&gt;user@example.com&lt;/code&gt;, then you would specify the &lt;code&gt;SourceArn&lt;/code&gt; to be &lt;code&gt;arn:aws:ses:us-east-1:123456789012:identity/example.com&lt;/code&gt;, and the &lt;code&gt;Source&lt;/code&gt; to be &lt;code&gt;user@example.com&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;Instead of using this parameter, you can use the X-header &lt;code&gt;X-SES-SOURCE-ARN&lt;/code&gt; in the raw message of the email. If you use both the &lt;code&gt;SourceArn&lt;/code&gt; parameter and the corresponding X-header, Amazon SES uses the value of the &lt;code&gt;SourceArn&lt;/code&gt; parameter.&lt;/p&gt; &lt;note&gt; &lt;p&gt;For information about when to use this parameter, see the description of &lt;code&gt;SendRawEmail&lt;/code&gt; in this guide, or see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization-delegate-sender-tasks-email.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt; &lt;/note&gt;
-- @param Destinations [AddressList] &lt;p&gt;A list of destinations for the message, consisting of To:, CC:, and BCC: addresses.&lt;/p&gt;
-- Required parameter: RawMessage
function M.SendRawEmailRequest(ReturnPathArn, Tags, RawMessage, Source, ConfigurationSetName, FromArn, SourceArn, Destinations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SendRawEmailRequest")
	local t = { 
		["ReturnPathArn"] = ReturnPathArn,
		["Tags"] = Tags,
		["RawMessage"] = RawMessage,
		["Source"] = Source,
		["ConfigurationSetName"] = ConfigurationSetName,
		["FromArn"] = FromArn,
		["SourceArn"] = SourceArn,
		["Destinations"] = Destinations,
	}
	M.AssertSendRawEmailRequest(t)
	return t
end

local GetIdentityVerificationAttributesResponse_keys = { "VerificationAttributes" = true, nil }

function M.AssertGetIdentityVerificationAttributesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetIdentityVerificationAttributesResponse to be of type 'table'")
	assert(struct["VerificationAttributes"], "Expected key VerificationAttributes to exist in table")
	if struct["VerificationAttributes"] then M.AssertVerificationAttributes(struct["VerificationAttributes"]) end
	for k,_ in pairs(struct) do
		assert(GetIdentityVerificationAttributesResponse_keys[k], "GetIdentityVerificationAttributesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetIdentityVerificationAttributesResponse
-- &lt;p&gt;The Amazon SES verification status of a list of identities. For domain identities, this response also contains the verification token.&lt;/p&gt;
-- @param VerificationAttributes [VerificationAttributes] &lt;p&gt;A map of Identities to IdentityVerificationAttributes objects.&lt;/p&gt;
-- Required parameter: VerificationAttributes
function M.GetIdentityVerificationAttributesResponse(VerificationAttributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetIdentityVerificationAttributesResponse")
	local t = { 
		["VerificationAttributes"] = VerificationAttributes,
	}
	M.AssertGetIdentityVerificationAttributesResponse(t)
	return t
end

local DeleteReceiptFilterResponse_keys = { nil }

function M.AssertDeleteReceiptFilterResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteReceiptFilterResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteReceiptFilterResponse_keys[k], "DeleteReceiptFilterResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteReceiptFilterResponse
-- &lt;p&gt;An empty element returned on a successful request.&lt;/p&gt;
function M.DeleteReceiptFilterResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteReceiptFilterResponse")
	local t = { 
	}
	M.AssertDeleteReceiptFilterResponse(t)
	return t
end

local SetIdentityFeedbackForwardingEnabledRequest_keys = { "ForwardingEnabled" = true, "Identity" = true, nil }

function M.AssertSetIdentityFeedbackForwardingEnabledRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetIdentityFeedbackForwardingEnabledRequest to be of type 'table'")
	assert(struct["Identity"], "Expected key Identity to exist in table")
	assert(struct["ForwardingEnabled"], "Expected key ForwardingEnabled to exist in table")
	if struct["ForwardingEnabled"] then M.AssertEnabled(struct["ForwardingEnabled"]) end
	if struct["Identity"] then M.AssertIdentity(struct["Identity"]) end
	for k,_ in pairs(struct) do
		assert(SetIdentityFeedbackForwardingEnabledRequest_keys[k], "SetIdentityFeedbackForwardingEnabledRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetIdentityFeedbackForwardingEnabledRequest
-- &lt;p&gt;Represents a request to enable or disable whether Amazon SES forwards you bounce and complaint notifications through email. For information about email feedback forwarding, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications-via-email.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param ForwardingEnabled [Enabled] &lt;p&gt;Sets whether Amazon SES will forward bounce and complaint notifications as email. &lt;code&gt;true&lt;/code&gt; specifies that Amazon SES will forward bounce and complaint notifications as email, in addition to any Amazon SNS topic publishing otherwise specified. &lt;code&gt;false&lt;/code&gt; specifies that Amazon SES will publish bounce and complaint notifications only through Amazon SNS. This value can only be set to &lt;code&gt;false&lt;/code&gt; when Amazon SNS topics are set for both &lt;code&gt;Bounce&lt;/code&gt; and &lt;code&gt;Complaint&lt;/code&gt; notification types.&lt;/p&gt;
-- @param Identity [Identity] &lt;p&gt;The identity for which to set bounce and complaint notification forwarding. Examples: &lt;code&gt;user@example.com&lt;/code&gt;, &lt;code&gt;example.com&lt;/code&gt;.&lt;/p&gt;
-- Required parameter: Identity
-- Required parameter: ForwardingEnabled
function M.SetIdentityFeedbackForwardingEnabledRequest(ForwardingEnabled, Identity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetIdentityFeedbackForwardingEnabledRequest")
	local t = { 
		["ForwardingEnabled"] = ForwardingEnabled,
		["Identity"] = Identity,
	}
	M.AssertSetIdentityFeedbackForwardingEnabledRequest(t)
	return t
end

local SendBounceResponse_keys = { "MessageId" = true, nil }

function M.AssertSendBounceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendBounceResponse to be of type 'table'")
	if struct["MessageId"] then M.AssertMessageId(struct["MessageId"]) end
	for k,_ in pairs(struct) do
		assert(SendBounceResponse_keys[k], "SendBounceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendBounceResponse
-- &lt;p&gt;Represents a unique message ID.&lt;/p&gt;
-- @param MessageId [MessageId] &lt;p&gt;The message ID of the bounce message.&lt;/p&gt;
function M.SendBounceResponse(MessageId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SendBounceResponse")
	local t = { 
		["MessageId"] = MessageId,
	}
	M.AssertSendBounceResponse(t)
	return t
end

local VerifyEmailAddressRequest_keys = { "EmailAddress" = true, nil }

function M.AssertVerifyEmailAddressRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VerifyEmailAddressRequest to be of type 'table'")
	assert(struct["EmailAddress"], "Expected key EmailAddress to exist in table")
	if struct["EmailAddress"] then M.AssertAddress(struct["EmailAddress"]) end
	for k,_ in pairs(struct) do
		assert(VerifyEmailAddressRequest_keys[k], "VerifyEmailAddressRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VerifyEmailAddressRequest
-- &lt;p&gt;Represents a request to begin email address verification with Amazon SES. For information about email address verification, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-email-addresses.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param EmailAddress [Address] &lt;p&gt;The email address to be verified.&lt;/p&gt;
-- Required parameter: EmailAddress
function M.VerifyEmailAddressRequest(EmailAddress, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VerifyEmailAddressRequest")
	local t = { 
		["EmailAddress"] = EmailAddress,
	}
	M.AssertVerifyEmailAddressRequest(t)
	return t
end

local SetIdentityHeadersInNotificationsEnabledRequest_keys = { "Enabled" = true, "NotificationType" = true, "Identity" = true, nil }

function M.AssertSetIdentityHeadersInNotificationsEnabledRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetIdentityHeadersInNotificationsEnabledRequest to be of type 'table'")
	assert(struct["Identity"], "Expected key Identity to exist in table")
	assert(struct["NotificationType"], "Expected key NotificationType to exist in table")
	assert(struct["Enabled"], "Expected key Enabled to exist in table")
	if struct["Enabled"] then M.AssertEnabled(struct["Enabled"]) end
	if struct["NotificationType"] then M.AssertNotificationType(struct["NotificationType"]) end
	if struct["Identity"] then M.AssertIdentity(struct["Identity"]) end
	for k,_ in pairs(struct) do
		assert(SetIdentityHeadersInNotificationsEnabledRequest_keys[k], "SetIdentityHeadersInNotificationsEnabledRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetIdentityHeadersInNotificationsEnabledRequest
-- &lt;p&gt;Represents a request to set whether Amazon SES includes the original email headers in the Amazon SNS notifications of a specified type. For information about notifications, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications-via-sns.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param Enabled [Enabled] &lt;p&gt;Sets whether Amazon SES includes the original email headers in Amazon SNS notifications of the specified notification type. A value of &lt;code&gt;true&lt;/code&gt; specifies that Amazon SES will include headers in notifications, and a value of &lt;code&gt;false&lt;/code&gt; specifies that Amazon SES will not include headers in notifications.&lt;/p&gt; &lt;p&gt;This value can only be set when &lt;code&gt;NotificationType&lt;/code&gt; is already set to use a particular Amazon SNS topic.&lt;/p&gt;
-- @param NotificationType [NotificationType] &lt;p&gt;The notification type for which to enable or disable headers in notifications. &lt;/p&gt;
-- @param Identity [Identity] &lt;p&gt;The identity for which to enable or disable headers in notifications. Examples: &lt;code&gt;user@example.com&lt;/code&gt;, &lt;code&gt;example.com&lt;/code&gt;.&lt;/p&gt;
-- Required parameter: Identity
-- Required parameter: NotificationType
-- Required parameter: Enabled
function M.SetIdentityHeadersInNotificationsEnabledRequest(Enabled, NotificationType, Identity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetIdentityHeadersInNotificationsEnabledRequest")
	local t = { 
		["Enabled"] = Enabled,
		["NotificationType"] = NotificationType,
		["Identity"] = Identity,
	}
	M.AssertSetIdentityHeadersInNotificationsEnabledRequest(t)
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
-- &lt;p&gt;Indicates that a resource could not be created because of service limits. For a list of Amazon SES limits, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/limits.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
function M.LimitExceededException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededException")
	local t = { 
	}
	M.AssertLimitExceededException(t)
	return t
end

local ConfigurationSet_keys = { "Name" = true, nil }

function M.AssertConfigurationSet(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfigurationSet to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then M.AssertConfigurationSetName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(ConfigurationSet_keys[k], "ConfigurationSet contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfigurationSet
-- &lt;p&gt;The name of the configuration set.&lt;/p&gt; &lt;p&gt;Configuration sets enable you to publish email sending events. For information about using configuration sets, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param Name [ConfigurationSetName] &lt;p&gt;The name of the configuration set. The name must:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Contain only ASCII letters (a-z, A-Z), numbers (0-9), underscores (_), or dashes (-).&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Contain less than 64 characters.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- Required parameter: Name
function M.ConfigurationSet(Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConfigurationSet")
	local t = { 
		["Name"] = Name,
	}
	M.AssertConfigurationSet(t)
	return t
end

local GetIdentityMailFromDomainAttributesRequest_keys = { "Identities" = true, nil }

function M.AssertGetIdentityMailFromDomainAttributesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetIdentityMailFromDomainAttributesRequest to be of type 'table'")
	assert(struct["Identities"], "Expected key Identities to exist in table")
	if struct["Identities"] then M.AssertIdentityList(struct["Identities"]) end
	for k,_ in pairs(struct) do
		assert(GetIdentityMailFromDomainAttributesRequest_keys[k], "GetIdentityMailFromDomainAttributesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetIdentityMailFromDomainAttributesRequest
-- &lt;p&gt;Represents a request to return the Amazon SES custom MAIL FROM attributes for a list of identities. For information about using a custom MAIL FROM domain, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/mail-from.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param Identities [IdentityList] &lt;p&gt;A list of one or more identities.&lt;/p&gt;
-- Required parameter: Identities
function M.GetIdentityMailFromDomainAttributesRequest(Identities, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetIdentityMailFromDomainAttributesRequest")
	local t = { 
		["Identities"] = Identities,
	}
	M.AssertGetIdentityMailFromDomainAttributesRequest(t)
	return t
end

local GetIdentityPoliciesRequest_keys = { "PolicyNames" = true, "Identity" = true, nil }

function M.AssertGetIdentityPoliciesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetIdentityPoliciesRequest to be of type 'table'")
	assert(struct["Identity"], "Expected key Identity to exist in table")
	assert(struct["PolicyNames"], "Expected key PolicyNames to exist in table")
	if struct["PolicyNames"] then M.AssertPolicyNameList(struct["PolicyNames"]) end
	if struct["Identity"] then M.AssertIdentity(struct["Identity"]) end
	for k,_ in pairs(struct) do
		assert(GetIdentityPoliciesRequest_keys[k], "GetIdentityPoliciesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetIdentityPoliciesRequest
-- &lt;p&gt;Represents a request to return the requested sending authorization policies for an identity. Sending authorization is an Amazon SES feature that enables you to authorize other senders to use your identities. For information, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param PolicyNames [PolicyNameList] &lt;p&gt;A list of the names of policies to be retrieved. You can retrieve a maximum of 20 policies at a time. If you do not know the names of the policies that are attached to the identity, you can use &lt;code&gt;ListIdentityPolicies&lt;/code&gt;.&lt;/p&gt;
-- @param Identity [Identity] &lt;p&gt;The identity for which the policies will be retrieved. You can specify an identity by using its name or by using its Amazon Resource Name (ARN). Examples: &lt;code&gt;user@example.com&lt;/code&gt;, &lt;code&gt;example.com&lt;/code&gt;, &lt;code&gt;arn:aws:ses:us-east-1:123456789012:identity/example.com&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;To successfully call this API, you must own the identity.&lt;/p&gt;
-- Required parameter: Identity
-- Required parameter: PolicyNames
function M.GetIdentityPoliciesRequest(PolicyNames, Identity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetIdentityPoliciesRequest")
	local t = { 
		["PolicyNames"] = PolicyNames,
		["Identity"] = Identity,
	}
	M.AssertGetIdentityPoliciesRequest(t)
	return t
end

local SetIdentityDkimEnabledResponse_keys = { nil }

function M.AssertSetIdentityDkimEnabledResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetIdentityDkimEnabledResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(SetIdentityDkimEnabledResponse_keys[k], "SetIdentityDkimEnabledResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetIdentityDkimEnabledResponse
-- &lt;p&gt;An empty element returned on a successful request.&lt;/p&gt;
function M.SetIdentityDkimEnabledResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetIdentityDkimEnabledResponse")
	local t = { 
	}
	M.AssertSetIdentityDkimEnabledResponse(t)
	return t
end

local CreateConfigurationSetEventDestinationRequest_keys = { "EventDestination" = true, "ConfigurationSetName" = true, nil }

function M.AssertCreateConfigurationSetEventDestinationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateConfigurationSetEventDestinationRequest to be of type 'table'")
	assert(struct["ConfigurationSetName"], "Expected key ConfigurationSetName to exist in table")
	assert(struct["EventDestination"], "Expected key EventDestination to exist in table")
	if struct["EventDestination"] then M.AssertEventDestination(struct["EventDestination"]) end
	if struct["ConfigurationSetName"] then M.AssertConfigurationSetName(struct["ConfigurationSetName"]) end
	for k,_ in pairs(struct) do
		assert(CreateConfigurationSetEventDestinationRequest_keys[k], "CreateConfigurationSetEventDestinationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateConfigurationSetEventDestinationRequest
-- &lt;p&gt;Represents a request to create a configuration set event destination. A configuration set event destination, which can be either Amazon CloudWatch or Amazon Kinesis Firehose, describes an AWS service in which Amazon SES publishes the email sending events associated with a configuration set. For information about using configuration sets, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param EventDestination [EventDestination] &lt;p&gt;An object that describes the AWS service to which Amazon SES will publish the email sending events associated with the specified configuration set.&lt;/p&gt;
-- @param ConfigurationSetName [ConfigurationSetName] &lt;p&gt;The name of the configuration set to which to apply the event destination.&lt;/p&gt;
-- Required parameter: ConfigurationSetName
-- Required parameter: EventDestination
function M.CreateConfigurationSetEventDestinationRequest(EventDestination, ConfigurationSetName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateConfigurationSetEventDestinationRequest")
	local t = { 
		["EventDestination"] = EventDestination,
		["ConfigurationSetName"] = ConfigurationSetName,
	}
	M.AssertCreateConfigurationSetEventDestinationRequest(t)
	return t
end

local GetIdentityDkimAttributesRequest_keys = { "Identities" = true, nil }

function M.AssertGetIdentityDkimAttributesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetIdentityDkimAttributesRequest to be of type 'table'")
	assert(struct["Identities"], "Expected key Identities to exist in table")
	if struct["Identities"] then M.AssertIdentityList(struct["Identities"]) end
	for k,_ in pairs(struct) do
		assert(GetIdentityDkimAttributesRequest_keys[k], "GetIdentityDkimAttributesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetIdentityDkimAttributesRequest
-- &lt;p&gt;Represents a request for the status of Amazon SES Easy DKIM signing for an identity. For domain identities, this request also returns the DKIM tokens that are required for Easy DKIM signing, and whether Amazon SES successfully verified that these tokens were published. For more information about Easy DKIM, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param Identities [IdentityList] &lt;p&gt;A list of one or more verified identities - email addresses, domains, or both.&lt;/p&gt;
-- Required parameter: Identities
function M.GetIdentityDkimAttributesRequest(Identities, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetIdentityDkimAttributesRequest")
	local t = { 
		["Identities"] = Identities,
	}
	M.AssertGetIdentityDkimAttributesRequest(t)
	return t
end

local StopAction_keys = { "Scope" = true, "TopicArn" = true, nil }

function M.AssertStopAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopAction to be of type 'table'")
	assert(struct["Scope"], "Expected key Scope to exist in table")
	if struct["Scope"] then M.AssertStopScope(struct["Scope"]) end
	if struct["TopicArn"] then M.AssertAmazonResourceName(struct["TopicArn"]) end
	for k,_ in pairs(struct) do
		assert(StopAction_keys[k], "StopAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopAction
-- &lt;p&gt;When included in a receipt rule, this action terminates the evaluation of the receipt rule set and, optionally, publishes a notification to Amazon Simple Notification Service (Amazon SNS).&lt;/p&gt; &lt;p&gt;For information about setting a stop action in a receipt rule, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-stop.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param Scope [StopScope] &lt;p&gt;The scope to which the Stop action applies. That is, what is being stopped.&lt;/p&gt;
-- @param TopicArn [AmazonResourceName] &lt;p&gt;The Amazon Resource Name (ARN) of the Amazon SNS topic to notify when the stop action is taken. An example of an Amazon SNS topic ARN is &lt;code&gt;arn:aws:sns:us-west-2:123456789012:MyTopic&lt;/code&gt;. For more information about Amazon SNS topics, see the &lt;a href=&quot;http://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html&quot;&gt;Amazon SNS Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: Scope
function M.StopAction(Scope, TopicArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopAction")
	local t = { 
		["Scope"] = Scope,
		["TopicArn"] = TopicArn,
	}
	M.AssertStopAction(t)
	return t
end

local SendEmailRequest_keys = { "Tags" = true, "ReturnPathArn" = true, "ReplyToAddresses" = true, "Destination" = true, "Source" = true, "ReturnPath" = true, "ConfigurationSetName" = true, "Message" = true, "SourceArn" = true, nil }

function M.AssertSendEmailRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendEmailRequest to be of type 'table'")
	assert(struct["Source"], "Expected key Source to exist in table")
	assert(struct["Destination"], "Expected key Destination to exist in table")
	assert(struct["Message"], "Expected key Message to exist in table")
	if struct["Tags"] then M.AssertMessageTagList(struct["Tags"]) end
	if struct["ReturnPathArn"] then M.AssertAmazonResourceName(struct["ReturnPathArn"]) end
	if struct["ReplyToAddresses"] then M.AssertAddressList(struct["ReplyToAddresses"]) end
	if struct["Destination"] then M.AssertDestination(struct["Destination"]) end
	if struct["Source"] then M.AssertAddress(struct["Source"]) end
	if struct["ReturnPath"] then M.AssertAddress(struct["ReturnPath"]) end
	if struct["ConfigurationSetName"] then M.AssertConfigurationSetName(struct["ConfigurationSetName"]) end
	if struct["Message"] then M.AssertMessage(struct["Message"]) end
	if struct["SourceArn"] then M.AssertAmazonResourceName(struct["SourceArn"]) end
	for k,_ in pairs(struct) do
		assert(SendEmailRequest_keys[k], "SendEmailRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendEmailRequest
-- &lt;p&gt;Represents a request to send a single formatted email using Amazon SES. For more information, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-email-formatted.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param Tags [MessageTagList] &lt;p&gt;A list of tags, in the form of name/value pairs, to apply to an email that you send using &lt;code&gt;SendEmail&lt;/code&gt;. Tags correspond to characteristics of the email that you define, so that you can publish email sending events.&lt;/p&gt;
-- @param ReturnPathArn [AmazonResourceName] &lt;p&gt;This parameter is used only for sending authorization. It is the ARN of the identity that is associated with the sending authorization policy that permits you to use the email address specified in the &lt;code&gt;ReturnPath&lt;/code&gt; parameter.&lt;/p&gt; &lt;p&gt;For example, if the owner of &lt;code&gt;example.com&lt;/code&gt; (which has ARN &lt;code&gt;arn:aws:ses:us-east-1:123456789012:identity/example.com&lt;/code&gt;) attaches a policy to it that authorizes you to use &lt;code&gt;feedback@example.com&lt;/code&gt;, then you would specify the &lt;code&gt;ReturnPathArn&lt;/code&gt; to be &lt;code&gt;arn:aws:ses:us-east-1:123456789012:identity/example.com&lt;/code&gt;, and the &lt;code&gt;ReturnPath&lt;/code&gt; to be &lt;code&gt;feedback@example.com&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;For more information about sending authorization, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;. &lt;/p&gt;
-- @param ReplyToAddresses [AddressList] &lt;p&gt;The reply-to email address(es) for the message. If the recipient replies to the message, each reply-to address will receive the reply.&lt;/p&gt;
-- @param Destination [Destination] &lt;p&gt;The destination for this email, composed of To:, CC:, and BCC: fields.&lt;/p&gt;
-- @param Source [Address] &lt;p&gt;The email address that is sending the email. This email address must be either individually verified with Amazon SES, or from a domain that has been verified with Amazon SES. For information about verifying identities, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt; &lt;p&gt;If you are sending on behalf of another user and have been permitted to do so by a sending authorization policy, then you must also specify the &lt;code&gt;SourceArn&lt;/code&gt; parameter. For more information about sending authorization, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt; &lt;p&gt; In all cases, the email address must be 7-bit ASCII. If the text must contain any other characters, then you must use MIME encoded-word syntax (RFC 2047) instead of a literal string. MIME encoded-word syntax uses the following form: &lt;code&gt;=?charset?encoding?encoded-text?=&lt;/code&gt;. For more information, see &lt;a href=&quot;http://tools.ietf.org/html/rfc2047&quot;&gt;RFC 2047&lt;/a&gt;. &lt;/p&gt;
-- @param ReturnPath [Address] &lt;p&gt;The email address to which bounces and complaints are to be forwarded when feedback forwarding is enabled. If the message cannot be delivered to the recipient, then an error message will be returned from the recipient's ISP; this message will then be forwarded to the email address specified by the &lt;code&gt;ReturnPath&lt;/code&gt; parameter. The &lt;code&gt;ReturnPath&lt;/code&gt; parameter is never overwritten. This email address must be either individually verified with Amazon SES, or from a domain that has been verified with Amazon SES. &lt;/p&gt;
-- @param ConfigurationSetName [ConfigurationSetName] &lt;p&gt;The name of the configuration set to use when you send an email using &lt;code&gt;SendEmail&lt;/code&gt;.&lt;/p&gt;
-- @param Message [Message] &lt;p&gt;The message to be sent.&lt;/p&gt;
-- @param SourceArn [AmazonResourceName] &lt;p&gt;This parameter is used only for sending authorization. It is the ARN of the identity that is associated with the sending authorization policy that permits you to send for the email address specified in the &lt;code&gt;Source&lt;/code&gt; parameter.&lt;/p&gt; &lt;p&gt;For example, if the owner of &lt;code&gt;example.com&lt;/code&gt; (which has ARN &lt;code&gt;arn:aws:ses:us-east-1:123456789012:identity/example.com&lt;/code&gt;) attaches a policy to it that authorizes you to send from &lt;code&gt;user@example.com&lt;/code&gt;, then you would specify the &lt;code&gt;SourceArn&lt;/code&gt; to be &lt;code&gt;arn:aws:ses:us-east-1:123456789012:identity/example.com&lt;/code&gt;, and the &lt;code&gt;Source&lt;/code&gt; to be &lt;code&gt;user@example.com&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;For more information about sending authorization, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;. &lt;/p&gt;
-- Required parameter: Source
-- Required parameter: Destination
-- Required parameter: Message
function M.SendEmailRequest(Tags, ReturnPathArn, ReplyToAddresses, Destination, Source, ReturnPath, ConfigurationSetName, Message, SourceArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SendEmailRequest")
	local t = { 
		["Tags"] = Tags,
		["ReturnPathArn"] = ReturnPathArn,
		["ReplyToAddresses"] = ReplyToAddresses,
		["Destination"] = Destination,
		["Source"] = Source,
		["ReturnPath"] = ReturnPath,
		["ConfigurationSetName"] = ConfigurationSetName,
		["Message"] = Message,
		["SourceArn"] = SourceArn,
	}
	M.AssertSendEmailRequest(t)
	return t
end

local InvalidSnsTopicException_keys = { "Topic" = true, nil }

function M.AssertInvalidSnsTopicException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidSnsTopicException to be of type 'table'")
	if struct["Topic"] then M.AssertAmazonResourceName(struct["Topic"]) end
	for k,_ in pairs(struct) do
		assert(InvalidSnsTopicException_keys[k], "InvalidSnsTopicException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidSnsTopicException
-- &lt;p&gt;Indicates that the provided Amazon SNS topic is invalid, or that Amazon SES could not publish to the topic, possibly due to permissions issues. For information about giving permissions, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param Topic [AmazonResourceName] &lt;p&gt;Indicates that the provided Amazon SNS topic is invalid, or that Amazon SES could not publish to the topic, possibly due to permissions issues. For information about giving permissions, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
function M.InvalidSnsTopicException(Topic, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidSnsTopicException")
	local t = { 
		["Topic"] = Topic,
	}
	M.AssertInvalidSnsTopicException(t)
	return t
end

local DeleteVerifiedEmailAddressRequest_keys = { "EmailAddress" = true, nil }

function M.AssertDeleteVerifiedEmailAddressRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteVerifiedEmailAddressRequest to be of type 'table'")
	assert(struct["EmailAddress"], "Expected key EmailAddress to exist in table")
	if struct["EmailAddress"] then M.AssertAddress(struct["EmailAddress"]) end
	for k,_ in pairs(struct) do
		assert(DeleteVerifiedEmailAddressRequest_keys[k], "DeleteVerifiedEmailAddressRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteVerifiedEmailAddressRequest
-- &lt;p&gt;Represents a request to delete an email address from the list of email addresses you have attempted to verify under your AWS account.&lt;/p&gt;
-- @param EmailAddress [Address] &lt;p&gt;An email address to be removed from the list of verified addresses.&lt;/p&gt;
-- Required parameter: EmailAddress
function M.DeleteVerifiedEmailAddressRequest(EmailAddress, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteVerifiedEmailAddressRequest")
	local t = { 
		["EmailAddress"] = EmailAddress,
	}
	M.AssertDeleteVerifiedEmailAddressRequest(t)
	return t
end

local EventDestination_keys = { "MatchingEventTypes" = true, "Enabled" = true, "Name" = true, "CloudWatchDestination" = true, "KinesisFirehoseDestination" = true, nil }

function M.AssertEventDestination(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventDestination to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["MatchingEventTypes"], "Expected key MatchingEventTypes to exist in table")
	if struct["MatchingEventTypes"] then M.AssertEventTypes(struct["MatchingEventTypes"]) end
	if struct["Enabled"] then M.AssertEnabled(struct["Enabled"]) end
	if struct["Name"] then M.AssertEventDestinationName(struct["Name"]) end
	if struct["CloudWatchDestination"] then M.AssertCloudWatchDestination(struct["CloudWatchDestination"]) end
	if struct["KinesisFirehoseDestination"] then M.AssertKinesisFirehoseDestination(struct["KinesisFirehoseDestination"]) end
	for k,_ in pairs(struct) do
		assert(EventDestination_keys[k], "EventDestination contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventDestination
-- &lt;p&gt;Contains information about the event destination to which the specified email sending events are published.&lt;/p&gt; &lt;note&gt; &lt;p&gt;When you create or update an event destination, you must provide one, and only one, destination. The destination can be either Amazon CloudWatch or Amazon Kinesis Firehose.&lt;/p&gt; &lt;/note&gt; &lt;p&gt;Event destinations are associated with configuration sets, which enable you to publish email sending events to Amazon CloudWatch or Amazon Kinesis Firehose. For information about using configuration sets, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param MatchingEventTypes [EventTypes] &lt;p&gt;The type of email sending events to publish to the event destination.&lt;/p&gt;
-- @param Enabled [Enabled] &lt;p&gt;Sets whether Amazon SES publishes events to this destination when you send an email with the associated configuration set. Set to &lt;code&gt;true&lt;/code&gt; to enable publishing to this destination; set to &lt;code&gt;false&lt;/code&gt; to prevent publishing to this destination. The default value is &lt;code&gt;false&lt;/code&gt;.&lt;/p&gt;
-- @param Name [EventDestinationName] &lt;p&gt;The name of the event destination. The name must:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Contain only ASCII letters (a-z, A-Z), numbers (0-9), underscores (_), or dashes (-).&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Contain less than 64 characters.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param CloudWatchDestination [CloudWatchDestination] &lt;p&gt;An object that contains the names, default values, and sources of the dimensions associated with an Amazon CloudWatch event destination.&lt;/p&gt;
-- @param KinesisFirehoseDestination [KinesisFirehoseDestination] &lt;p&gt;An object that contains the delivery stream ARN and the IAM role ARN associated with an Amazon Kinesis Firehose event destination.&lt;/p&gt;
-- Required parameter: Name
-- Required parameter: MatchingEventTypes
function M.EventDestination(MatchingEventTypes, Enabled, Name, CloudWatchDestination, KinesisFirehoseDestination, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EventDestination")
	local t = { 
		["MatchingEventTypes"] = MatchingEventTypes,
		["Enabled"] = Enabled,
		["Name"] = Name,
		["CloudWatchDestination"] = CloudWatchDestination,
		["KinesisFirehoseDestination"] = KinesisFirehoseDestination,
	}
	M.AssertEventDestination(t)
	return t
end

local DeleteReceiptRuleSetResponse_keys = { nil }

function M.AssertDeleteReceiptRuleSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteReceiptRuleSetResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteReceiptRuleSetResponse_keys[k], "DeleteReceiptRuleSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteReceiptRuleSetResponse
-- &lt;p&gt;An empty element returned on a successful request.&lt;/p&gt;
function M.DeleteReceiptRuleSetResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteReceiptRuleSetResponse")
	local t = { 
	}
	M.AssertDeleteReceiptRuleSetResponse(t)
	return t
end

local IdentityMailFromDomainAttributes_keys = { "MailFromDomain" = true, "BehaviorOnMXFailure" = true, "MailFromDomainStatus" = true, nil }

function M.AssertIdentityMailFromDomainAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IdentityMailFromDomainAttributes to be of type 'table'")
	assert(struct["MailFromDomain"], "Expected key MailFromDomain to exist in table")
	assert(struct["MailFromDomainStatus"], "Expected key MailFromDomainStatus to exist in table")
	assert(struct["BehaviorOnMXFailure"], "Expected key BehaviorOnMXFailure to exist in table")
	if struct["MailFromDomain"] then M.AssertMailFromDomainName(struct["MailFromDomain"]) end
	if struct["BehaviorOnMXFailure"] then M.AssertBehaviorOnMXFailure(struct["BehaviorOnMXFailure"]) end
	if struct["MailFromDomainStatus"] then M.AssertCustomMailFromStatus(struct["MailFromDomainStatus"]) end
	for k,_ in pairs(struct) do
		assert(IdentityMailFromDomainAttributes_keys[k], "IdentityMailFromDomainAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IdentityMailFromDomainAttributes
-- &lt;p&gt;Represents the custom MAIL FROM domain attributes of a verified identity (email address or domain).&lt;/p&gt;
-- @param MailFromDomain [MailFromDomainName] &lt;p&gt;The custom MAIL FROM domain that the identity is configured to use.&lt;/p&gt;
-- @param BehaviorOnMXFailure [BehaviorOnMXFailure] &lt;p&gt;The action that Amazon SES takes if it cannot successfully read the required MX record when you send an email. A value of &lt;code&gt;UseDefaultValue&lt;/code&gt; indicates that if Amazon SES cannot read the required MX record, it uses amazonses.com (or a subdomain of that) as the MAIL FROM domain. A value of &lt;code&gt;RejectMessage&lt;/code&gt; indicates that if Amazon SES cannot read the required MX record, Amazon SES returns a &lt;code&gt;MailFromDomainNotVerified&lt;/code&gt; error and does not send the email.&lt;/p&gt; &lt;p&gt;The custom MAIL FROM setup states that result in this behavior are &lt;code&gt;Pending&lt;/code&gt;, &lt;code&gt;Failed&lt;/code&gt;, and &lt;code&gt;TemporaryFailure&lt;/code&gt;.&lt;/p&gt;
-- @param MailFromDomainStatus [CustomMailFromStatus] &lt;p&gt;The state that indicates whether Amazon SES has successfully read the MX record required for custom MAIL FROM domain setup. If the state is &lt;code&gt;Success&lt;/code&gt;, Amazon SES uses the specified custom MAIL FROM domain when the verified identity sends an email. All other states indicate that Amazon SES takes the action described by &lt;code&gt;BehaviorOnMXFailure&lt;/code&gt;.&lt;/p&gt;
-- Required parameter: MailFromDomain
-- Required parameter: MailFromDomainStatus
-- Required parameter: BehaviorOnMXFailure
function M.IdentityMailFromDomainAttributes(MailFromDomain, BehaviorOnMXFailure, MailFromDomainStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IdentityMailFromDomainAttributes")
	local t = { 
		["MailFromDomain"] = MailFromDomain,
		["BehaviorOnMXFailure"] = BehaviorOnMXFailure,
		["MailFromDomainStatus"] = MailFromDomainStatus,
	}
	M.AssertIdentityMailFromDomainAttributes(t)
	return t
end

local GetSendStatisticsResponse_keys = { "SendDataPoints" = true, nil }

function M.AssertGetSendStatisticsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSendStatisticsResponse to be of type 'table'")
	if struct["SendDataPoints"] then M.AssertSendDataPointList(struct["SendDataPoints"]) end
	for k,_ in pairs(struct) do
		assert(GetSendStatisticsResponse_keys[k], "GetSendStatisticsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSendStatisticsResponse
-- &lt;p&gt;Represents a list of data points. This list contains aggregated data from the previous two weeks of your sending activity with Amazon SES.&lt;/p&gt;
-- @param SendDataPoints [SendDataPointList] &lt;p&gt;A list of data points, each of which represents 15 minutes of activity.&lt;/p&gt;
function M.GetSendStatisticsResponse(SendDataPoints, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSendStatisticsResponse")
	local t = { 
		["SendDataPoints"] = SendDataPoints,
	}
	M.AssertGetSendStatisticsResponse(t)
	return t
end

local SetIdentityDkimEnabledRequest_keys = { "DkimEnabled" = true, "Identity" = true, nil }

function M.AssertSetIdentityDkimEnabledRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetIdentityDkimEnabledRequest to be of type 'table'")
	assert(struct["Identity"], "Expected key Identity to exist in table")
	assert(struct["DkimEnabled"], "Expected key DkimEnabled to exist in table")
	if struct["DkimEnabled"] then M.AssertEnabled(struct["DkimEnabled"]) end
	if struct["Identity"] then M.AssertIdentity(struct["Identity"]) end
	for k,_ in pairs(struct) do
		assert(SetIdentityDkimEnabledRequest_keys[k], "SetIdentityDkimEnabledRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetIdentityDkimEnabledRequest
-- &lt;p&gt;Represents a request to enable or disable Amazon SES Easy DKIM signing for an identity. For more information about setting up Easy DKIM, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param DkimEnabled [Enabled] &lt;p&gt;Sets whether DKIM signing is enabled for an identity. Set to &lt;code&gt;true&lt;/code&gt; to enable DKIM signing for this identity; &lt;code&gt;false&lt;/code&gt; to disable it. &lt;/p&gt;
-- @param Identity [Identity] &lt;p&gt;The identity for which DKIM signing should be enabled or disabled.&lt;/p&gt;
-- Required parameter: Identity
-- Required parameter: DkimEnabled
function M.SetIdentityDkimEnabledRequest(DkimEnabled, Identity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetIdentityDkimEnabledRequest")
	local t = { 
		["DkimEnabled"] = DkimEnabled,
		["Identity"] = Identity,
	}
	M.AssertSetIdentityDkimEnabledRequest(t)
	return t
end

local ReceiptRule_keys = { "Name" = true, "Recipients" = true, "Enabled" = true, "ScanEnabled" = true, "Actions" = true, "TlsPolicy" = true, nil }

function M.AssertReceiptRule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReceiptRule to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then M.AssertReceiptRuleName(struct["Name"]) end
	if struct["Recipients"] then M.AssertRecipientsList(struct["Recipients"]) end
	if struct["Enabled"] then M.AssertEnabled(struct["Enabled"]) end
	if struct["ScanEnabled"] then M.AssertEnabled(struct["ScanEnabled"]) end
	if struct["Actions"] then M.AssertReceiptActionsList(struct["Actions"]) end
	if struct["TlsPolicy"] then M.AssertTlsPolicy(struct["TlsPolicy"]) end
	for k,_ in pairs(struct) do
		assert(ReceiptRule_keys[k], "ReceiptRule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReceiptRule
-- &lt;p&gt;Receipt rules enable you to specify which actions Amazon SES should take when it receives mail on behalf of one or more email addresses or domains that you own.&lt;/p&gt; &lt;p&gt;Each receipt rule defines a set of email addresses or domains to which it applies. If the email addresses or domains match at least one recipient address of the message, Amazon SES executes all of the receipt rule's actions on the message.&lt;/p&gt; &lt;p&gt;For information about setting up receipt rules, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rules.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param Name [ReceiptRuleName] &lt;p&gt;The name of the receipt rule. The name must:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-).&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Start and end with a letter or number.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Contain less than 64 characters.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param Recipients [RecipientsList] &lt;p&gt;The recipient domains and email addresses to which the receipt rule applies. If this field is not specified, this rule will match all recipients under all verified domains.&lt;/p&gt;
-- @param Enabled [Enabled] &lt;p&gt;If &lt;code&gt;true&lt;/code&gt;, the receipt rule is active. The default value is &lt;code&gt;false&lt;/code&gt;.&lt;/p&gt;
-- @param ScanEnabled [Enabled] &lt;p&gt;If &lt;code&gt;true&lt;/code&gt;, then messages to which this receipt rule applies are scanned for spam and viruses. The default value is &lt;code&gt;false&lt;/code&gt;.&lt;/p&gt;
-- @param Actions [ReceiptActionsList] &lt;p&gt;An ordered list of actions to perform on messages that match at least one of the recipient email addresses or domains specified in the receipt rule.&lt;/p&gt;
-- @param TlsPolicy [TlsPolicy] &lt;p&gt;Specifies whether Amazon SES should require that incoming email is delivered over a connection encrypted with Transport Layer Security (TLS). If this parameter is set to &lt;code&gt;Require&lt;/code&gt;, Amazon SES will bounce emails that are not received over TLS. The default is &lt;code&gt;Optional&lt;/code&gt;.&lt;/p&gt;
-- Required parameter: Name
function M.ReceiptRule(Name, Recipients, Enabled, ScanEnabled, Actions, TlsPolicy, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReceiptRule")
	local t = { 
		["Name"] = Name,
		["Recipients"] = Recipients,
		["Enabled"] = Enabled,
		["ScanEnabled"] = ScanEnabled,
		["Actions"] = Actions,
		["TlsPolicy"] = TlsPolicy,
	}
	M.AssertReceiptRule(t)
	return t
end

local CreateReceiptRuleSetResponse_keys = { nil }

function M.AssertCreateReceiptRuleSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateReceiptRuleSetResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(CreateReceiptRuleSetResponse_keys[k], "CreateReceiptRuleSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateReceiptRuleSetResponse
-- &lt;p&gt;An empty element returned on a successful request.&lt;/p&gt;
function M.CreateReceiptRuleSetResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateReceiptRuleSetResponse")
	local t = { 
	}
	M.AssertCreateReceiptRuleSetResponse(t)
	return t
end

local ReceiptAction_keys = { "AddHeaderAction" = true, "S3Action" = true, "SNSAction" = true, "BounceAction" = true, "LambdaAction" = true, "StopAction" = true, "WorkmailAction" = true, nil }

function M.AssertReceiptAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReceiptAction to be of type 'table'")
	if struct["AddHeaderAction"] then M.AssertAddHeaderAction(struct["AddHeaderAction"]) end
	if struct["S3Action"] then M.AssertS3Action(struct["S3Action"]) end
	if struct["SNSAction"] then M.AssertSNSAction(struct["SNSAction"]) end
	if struct["BounceAction"] then M.AssertBounceAction(struct["BounceAction"]) end
	if struct["LambdaAction"] then M.AssertLambdaAction(struct["LambdaAction"]) end
	if struct["StopAction"] then M.AssertStopAction(struct["StopAction"]) end
	if struct["WorkmailAction"] then M.AssertWorkmailAction(struct["WorkmailAction"]) end
	for k,_ in pairs(struct) do
		assert(ReceiptAction_keys[k], "ReceiptAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReceiptAction
-- &lt;p&gt;An action that Amazon SES can take when it receives an email on behalf of one or more email addresses or domains that you own. An instance of this data type can represent only one action.&lt;/p&gt; &lt;p&gt;For information about setting up receipt rules, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rules.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param AddHeaderAction [AddHeaderAction] &lt;p&gt;Adds a header to the received email.&lt;/p&gt;
-- @param S3Action [S3Action] &lt;p&gt;Saves the received message to an Amazon Simple Storage Service (Amazon S3) bucket and, optionally, publishes a notification to Amazon SNS.&lt;/p&gt;
-- @param SNSAction [SNSAction] &lt;p&gt;Publishes the email content within a notification to Amazon SNS.&lt;/p&gt;
-- @param BounceAction [BounceAction] &lt;p&gt;Rejects the received email by returning a bounce response to the sender and, optionally, publishes a notification to Amazon Simple Notification Service (Amazon SNS).&lt;/p&gt;
-- @param LambdaAction [LambdaAction] &lt;p&gt;Calls an AWS Lambda function, and optionally, publishes a notification to Amazon SNS.&lt;/p&gt;
-- @param StopAction [StopAction] &lt;p&gt;Terminates the evaluation of the receipt rule set and optionally publishes a notification to Amazon SNS.&lt;/p&gt;
-- @param WorkmailAction [WorkmailAction] &lt;p&gt;Calls Amazon WorkMail and, optionally, publishes a notification to Amazon SNS.&lt;/p&gt;
function M.ReceiptAction(AddHeaderAction, S3Action, SNSAction, BounceAction, LambdaAction, StopAction, WorkmailAction, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReceiptAction")
	local t = { 
		["AddHeaderAction"] = AddHeaderAction,
		["S3Action"] = S3Action,
		["SNSAction"] = SNSAction,
		["BounceAction"] = BounceAction,
		["LambdaAction"] = LambdaAction,
		["StopAction"] = StopAction,
		["WorkmailAction"] = WorkmailAction,
	}
	M.AssertReceiptAction(t)
	return t
end

local DeleteReceiptRuleSetRequest_keys = { "RuleSetName" = true, nil }

function M.AssertDeleteReceiptRuleSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteReceiptRuleSetRequest to be of type 'table'")
	assert(struct["RuleSetName"], "Expected key RuleSetName to exist in table")
	if struct["RuleSetName"] then M.AssertReceiptRuleSetName(struct["RuleSetName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteReceiptRuleSetRequest_keys[k], "DeleteReceiptRuleSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteReceiptRuleSetRequest
-- &lt;p&gt;Represents a request to delete a receipt rule set and all of the receipt rules it contains. You use receipt rule sets to receive email with Amazon SES. For more information, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param RuleSetName [ReceiptRuleSetName] &lt;p&gt;The name of the receipt rule set to delete.&lt;/p&gt;
-- Required parameter: RuleSetName
function M.DeleteReceiptRuleSetRequest(RuleSetName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteReceiptRuleSetRequest")
	local t = { 
		["RuleSetName"] = RuleSetName,
	}
	M.AssertDeleteReceiptRuleSetRequest(t)
	return t
end

local SetReceiptRulePositionResponse_keys = { nil }

function M.AssertSetReceiptRulePositionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetReceiptRulePositionResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(SetReceiptRulePositionResponse_keys[k], "SetReceiptRulePositionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetReceiptRulePositionResponse
-- &lt;p&gt;An empty element returned on a successful request.&lt;/p&gt;
function M.SetReceiptRulePositionResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetReceiptRulePositionResponse")
	local t = { 
	}
	M.AssertSetReceiptRulePositionResponse(t)
	return t
end

local GetIdentityNotificationAttributesRequest_keys = { "Identities" = true, nil }

function M.AssertGetIdentityNotificationAttributesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetIdentityNotificationAttributesRequest to be of type 'table'")
	assert(struct["Identities"], "Expected key Identities to exist in table")
	if struct["Identities"] then M.AssertIdentityList(struct["Identities"]) end
	for k,_ in pairs(struct) do
		assert(GetIdentityNotificationAttributesRequest_keys[k], "GetIdentityNotificationAttributesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetIdentityNotificationAttributesRequest
-- &lt;p&gt;Represents a request to return the notification attributes for a list of identities you verified with Amazon SES. For information about Amazon SES notifications, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param Identities [IdentityList] &lt;p&gt;A list of one or more identities. You can specify an identity by using its name or by using its Amazon Resource Name (ARN). Examples: &lt;code&gt;user@example.com&lt;/code&gt;, &lt;code&gt;example.com&lt;/code&gt;, &lt;code&gt;arn:aws:ses:us-east-1:123456789012:identity/example.com&lt;/code&gt;.&lt;/p&gt;
-- Required parameter: Identities
function M.GetIdentityNotificationAttributesRequest(Identities, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetIdentityNotificationAttributesRequest")
	local t = { 
		["Identities"] = Identities,
	}
	M.AssertGetIdentityNotificationAttributesRequest(t)
	return t
end

local InvalidS3ConfigurationException_keys = { "Bucket" = true, nil }

function M.AssertInvalidS3ConfigurationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidS3ConfigurationException to be of type 'table'")
	if struct["Bucket"] then M.AssertS3BucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(InvalidS3ConfigurationException_keys[k], "InvalidS3ConfigurationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidS3ConfigurationException
-- &lt;p&gt;Indicates that the provided Amazon S3 bucket or AWS KMS encryption key is invalid, or that Amazon SES could not publish to the bucket, possibly due to permissions issues. For information about giving permissions, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param Bucket [S3BucketName] &lt;p&gt;Indicates that the provided Amazon S3 bucket or AWS KMS encryption key is invalid, or that Amazon SES could not publish to the bucket, possibly due to permissions issues. For information about giving permissions, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
function M.InvalidS3ConfigurationException(Bucket, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidS3ConfigurationException")
	local t = { 
		["Bucket"] = Bucket,
	}
	M.AssertInvalidS3ConfigurationException(t)
	return t
end

local SetIdentityMailFromDomainRequest_keys = { "MailFromDomain" = true, "Identity" = true, "BehaviorOnMXFailure" = true, nil }

function M.AssertSetIdentityMailFromDomainRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetIdentityMailFromDomainRequest to be of type 'table'")
	assert(struct["Identity"], "Expected key Identity to exist in table")
	if struct["MailFromDomain"] then M.AssertMailFromDomainName(struct["MailFromDomain"]) end
	if struct["Identity"] then M.AssertIdentity(struct["Identity"]) end
	if struct["BehaviorOnMXFailure"] then M.AssertBehaviorOnMXFailure(struct["BehaviorOnMXFailure"]) end
	for k,_ in pairs(struct) do
		assert(SetIdentityMailFromDomainRequest_keys[k], "SetIdentityMailFromDomainRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetIdentityMailFromDomainRequest
-- &lt;p&gt;Represents a request to enable or disable the Amazon SES custom MAIL FROM domain setup for a verified identity. For information about using a custom MAIL FROM domain, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/mail-from.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param MailFromDomain [MailFromDomainName] &lt;p&gt;The custom MAIL FROM domain that you want the verified identity to use. The MAIL FROM domain must 1) be a subdomain of the verified identity, 2) not be used in a &quot;From&quot; address if the MAIL FROM domain is the destination of email feedback forwarding (for more information, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/mail-from.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;), and 3) not be used to receive emails. A value of &lt;code&gt;null&lt;/code&gt; disables the custom MAIL FROM setting for the identity.&lt;/p&gt;
-- @param Identity [Identity] &lt;p&gt;The verified identity for which you want to enable or disable the specified custom MAIL FROM domain.&lt;/p&gt;
-- @param BehaviorOnMXFailure [BehaviorOnMXFailure] &lt;p&gt;The action that you want Amazon SES to take if it cannot successfully read the required MX record when you send an email. If you choose &lt;code&gt;UseDefaultValue&lt;/code&gt;, Amazon SES will use amazonses.com (or a subdomain of that) as the MAIL FROM domain. If you choose &lt;code&gt;RejectMessage&lt;/code&gt;, Amazon SES will return a &lt;code&gt;MailFromDomainNotVerified&lt;/code&gt; error and not send the email.&lt;/p&gt; &lt;p&gt;The action specified in &lt;code&gt;BehaviorOnMXFailure&lt;/code&gt; is taken when the custom MAIL FROM domain setup is in the &lt;code&gt;Pending&lt;/code&gt;, &lt;code&gt;Failed&lt;/code&gt;, and &lt;code&gt;TemporaryFailure&lt;/code&gt; states.&lt;/p&gt;
-- Required parameter: Identity
function M.SetIdentityMailFromDomainRequest(MailFromDomain, Identity, BehaviorOnMXFailure, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetIdentityMailFromDomainRequest")
	local t = { 
		["MailFromDomain"] = MailFromDomain,
		["Identity"] = Identity,
		["BehaviorOnMXFailure"] = BehaviorOnMXFailure,
	}
	M.AssertSetIdentityMailFromDomainRequest(t)
	return t
end

local DeleteConfigurationSetEventDestinationResponse_keys = { nil }

function M.AssertDeleteConfigurationSetEventDestinationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteConfigurationSetEventDestinationResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteConfigurationSetEventDestinationResponse_keys[k], "DeleteConfigurationSetEventDestinationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteConfigurationSetEventDestinationResponse
-- &lt;p&gt;An empty element returned on a successful request.&lt;/p&gt;
function M.DeleteConfigurationSetEventDestinationResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteConfigurationSetEventDestinationResponse")
	local t = { 
	}
	M.AssertDeleteConfigurationSetEventDestinationResponse(t)
	return t
end

local UpdateReceiptRuleRequest_keys = { "RuleSetName" = true, "Rule" = true, nil }

function M.AssertUpdateReceiptRuleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateReceiptRuleRequest to be of type 'table'")
	assert(struct["RuleSetName"], "Expected key RuleSetName to exist in table")
	assert(struct["Rule"], "Expected key Rule to exist in table")
	if struct["RuleSetName"] then M.AssertReceiptRuleSetName(struct["RuleSetName"]) end
	if struct["Rule"] then M.AssertReceiptRule(struct["Rule"]) end
	for k,_ in pairs(struct) do
		assert(UpdateReceiptRuleRequest_keys[k], "UpdateReceiptRuleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateReceiptRuleRequest
-- &lt;p&gt;Represents a request to update a receipt rule. You use receipt rules to receive email with Amazon SES. For more information, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param RuleSetName [ReceiptRuleSetName] &lt;p&gt;The name of the receipt rule set to which the receipt rule belongs.&lt;/p&gt;
-- @param Rule [ReceiptRule] &lt;p&gt;A data structure that contains the updated receipt rule information.&lt;/p&gt;
-- Required parameter: RuleSetName
-- Required parameter: Rule
function M.UpdateReceiptRuleRequest(RuleSetName, Rule, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateReceiptRuleRequest")
	local t = { 
		["RuleSetName"] = RuleSetName,
		["Rule"] = Rule,
	}
	M.AssertUpdateReceiptRuleRequest(t)
	return t
end

local SetIdentityHeadersInNotificationsEnabledResponse_keys = { nil }

function M.AssertSetIdentityHeadersInNotificationsEnabledResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetIdentityHeadersInNotificationsEnabledResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(SetIdentityHeadersInNotificationsEnabledResponse_keys[k], "SetIdentityHeadersInNotificationsEnabledResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetIdentityHeadersInNotificationsEnabledResponse
-- &lt;p&gt;An empty element returned on a successful request.&lt;/p&gt;
function M.SetIdentityHeadersInNotificationsEnabledResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetIdentityHeadersInNotificationsEnabledResponse")
	local t = { 
	}
	M.AssertSetIdentityHeadersInNotificationsEnabledResponse(t)
	return t
end

local WorkmailAction_keys = { "OrganizationArn" = true, "TopicArn" = true, nil }

function M.AssertWorkmailAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkmailAction to be of type 'table'")
	assert(struct["OrganizationArn"], "Expected key OrganizationArn to exist in table")
	if struct["OrganizationArn"] then M.AssertAmazonResourceName(struct["OrganizationArn"]) end
	if struct["TopicArn"] then M.AssertAmazonResourceName(struct["TopicArn"]) end
	for k,_ in pairs(struct) do
		assert(WorkmailAction_keys[k], "WorkmailAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkmailAction
-- &lt;p&gt;When included in a receipt rule, this action calls Amazon WorkMail and, optionally, publishes a notification to Amazon Simple Notification Service (Amazon SNS). You will typically not use this action directly because Amazon WorkMail adds the rule automatically during its setup procedure.&lt;/p&gt; &lt;p&gt;For information using a receipt rule to call Amazon WorkMail, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-workmail.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param OrganizationArn [AmazonResourceName] &lt;p&gt;The ARN of the Amazon WorkMail organization. An example of an Amazon WorkMail organization ARN is &lt;code&gt;arn:aws:workmail:us-west-2:123456789012:organization/m-68755160c4cb4e29a2b2f8fb58f359d7&lt;/code&gt;. For information about Amazon WorkMail organizations, see the &lt;a href=&quot;http://docs.aws.amazon.com/workmail/latest/adminguide/organizations_overview.html&quot;&gt;Amazon WorkMail Administrator Guide&lt;/a&gt;.&lt;/p&gt;
-- @param TopicArn [AmazonResourceName] &lt;p&gt;The Amazon Resource Name (ARN) of the Amazon SNS topic to notify when the WorkMail action is called. An example of an Amazon SNS topic ARN is &lt;code&gt;arn:aws:sns:us-west-2:123456789012:MyTopic&lt;/code&gt;. For more information about Amazon SNS topics, see the &lt;a href=&quot;http://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html&quot;&gt;Amazon SNS Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: OrganizationArn
function M.WorkmailAction(OrganizationArn, TopicArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WorkmailAction")
	local t = { 
		["OrganizationArn"] = OrganizationArn,
		["TopicArn"] = TopicArn,
	}
	M.AssertWorkmailAction(t)
	return t
end

local ReceiptFilter_keys = { "IpFilter" = true, "Name" = true, nil }

function M.AssertReceiptFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReceiptFilter to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["IpFilter"], "Expected key IpFilter to exist in table")
	if struct["IpFilter"] then M.AssertReceiptIpFilter(struct["IpFilter"]) end
	if struct["Name"] then M.AssertReceiptFilterName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(ReceiptFilter_keys[k], "ReceiptFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReceiptFilter
-- &lt;p&gt;A receipt IP address filter enables you to specify whether to accept or reject mail originating from an IP address or range of IP addresses.&lt;/p&gt; &lt;p&gt;For information about setting up IP address filters, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-ip-filters.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param IpFilter [ReceiptIpFilter] &lt;p&gt;A structure that provides the IP addresses to block or allow, and whether to block or allow incoming mail from them.&lt;/p&gt;
-- @param Name [ReceiptFilterName] &lt;p&gt;The name of the IP address filter. The name must:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-).&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Start and end with a letter or number.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Contain less than 64 characters.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- Required parameter: Name
-- Required parameter: IpFilter
function M.ReceiptFilter(IpFilter, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReceiptFilter")
	local t = { 
		["IpFilter"] = IpFilter,
		["Name"] = Name,
	}
	M.AssertReceiptFilter(t)
	return t
end

local SetIdentityFeedbackForwardingEnabledResponse_keys = { nil }

function M.AssertSetIdentityFeedbackForwardingEnabledResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetIdentityFeedbackForwardingEnabledResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(SetIdentityFeedbackForwardingEnabledResponse_keys[k], "SetIdentityFeedbackForwardingEnabledResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetIdentityFeedbackForwardingEnabledResponse
-- &lt;p&gt;An empty element returned on a successful request.&lt;/p&gt;
function M.SetIdentityFeedbackForwardingEnabledResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetIdentityFeedbackForwardingEnabledResponse")
	local t = { 
	}
	M.AssertSetIdentityFeedbackForwardingEnabledResponse(t)
	return t
end

local ConfigurationSetAlreadyExistsException_keys = { "ConfigurationSetName" = true, nil }

function M.AssertConfigurationSetAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfigurationSetAlreadyExistsException to be of type 'table'")
	if struct["ConfigurationSetName"] then M.AssertConfigurationSetName(struct["ConfigurationSetName"]) end
	for k,_ in pairs(struct) do
		assert(ConfigurationSetAlreadyExistsException_keys[k], "ConfigurationSetAlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfigurationSetAlreadyExistsException
-- &lt;p&gt;Indicates that the configuration set could not be created because of a naming conflict.&lt;/p&gt;
-- @param ConfigurationSetName [ConfigurationSetName] &lt;p&gt;Indicates that the configuration set could not be created because of a naming conflict.&lt;/p&gt;
function M.ConfigurationSetAlreadyExistsException(ConfigurationSetName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConfigurationSetAlreadyExistsException")
	local t = { 
		["ConfigurationSetName"] = ConfigurationSetName,
	}
	M.AssertConfigurationSetAlreadyExistsException(t)
	return t
end

local DescribeReceiptRuleSetResponse_keys = { "Rules" = true, "Metadata" = true, nil }

function M.AssertDescribeReceiptRuleSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeReceiptRuleSetResponse to be of type 'table'")
	if struct["Rules"] then M.AssertReceiptRulesList(struct["Rules"]) end
	if struct["Metadata"] then M.AssertReceiptRuleSetMetadata(struct["Metadata"]) end
	for k,_ in pairs(struct) do
		assert(DescribeReceiptRuleSetResponse_keys[k], "DescribeReceiptRuleSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeReceiptRuleSetResponse
-- &lt;p&gt;Represents the details of the specified receipt rule set.&lt;/p&gt;
-- @param Rules [ReceiptRulesList] &lt;p&gt;A list of the receipt rules that belong to the specified receipt rule set.&lt;/p&gt;
-- @param Metadata [ReceiptRuleSetMetadata] &lt;p&gt;The metadata for the receipt rule set, which consists of the rule set name and the timestamp of when the rule set was created.&lt;/p&gt;
function M.DescribeReceiptRuleSetResponse(Rules, Metadata, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeReceiptRuleSetResponse")
	local t = { 
		["Rules"] = Rules,
		["Metadata"] = Metadata,
	}
	M.AssertDescribeReceiptRuleSetResponse(t)
	return t
end

local ListReceiptRuleSetsRequest_keys = { "NextToken" = true, nil }

function M.AssertListReceiptRuleSetsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListReceiptRuleSetsRequest to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListReceiptRuleSetsRequest_keys[k], "ListReceiptRuleSetsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListReceiptRuleSetsRequest
-- &lt;p&gt;Represents a request to list the receipt rule sets that exist under your AWS account. You use receipt rule sets to receive email with Amazon SES. For more information, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param NextToken [NextToken] &lt;p&gt;A token returned from a previous call to &lt;code&gt;ListReceiptRuleSets&lt;/code&gt; to indicate the position in the receipt rule set list.&lt;/p&gt;
function M.ListReceiptRuleSetsRequest(NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListReceiptRuleSetsRequest")
	local t = { 
		["NextToken"] = NextToken,
	}
	M.AssertListReceiptRuleSetsRequest(t)
	return t
end

local VerifyEmailIdentityRequest_keys = { "EmailAddress" = true, nil }

function M.AssertVerifyEmailIdentityRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VerifyEmailIdentityRequest to be of type 'table'")
	assert(struct["EmailAddress"], "Expected key EmailAddress to exist in table")
	if struct["EmailAddress"] then M.AssertAddress(struct["EmailAddress"]) end
	for k,_ in pairs(struct) do
		assert(VerifyEmailIdentityRequest_keys[k], "VerifyEmailIdentityRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VerifyEmailIdentityRequest
-- &lt;p&gt;Represents a request to begin email address verification with Amazon SES. For information about email address verification, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-email-addresses.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param EmailAddress [Address] &lt;p&gt;The email address to be verified.&lt;/p&gt;
-- Required parameter: EmailAddress
function M.VerifyEmailIdentityRequest(EmailAddress, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VerifyEmailIdentityRequest")
	local t = { 
		["EmailAddress"] = EmailAddress,
	}
	M.AssertVerifyEmailIdentityRequest(t)
	return t
end

local MessageTag_keys = { "Name" = true, "Value" = true, nil }

function M.AssertMessageTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MessageTag to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Value"], "Expected key Value to exist in table")
	if struct["Name"] then M.AssertMessageTagName(struct["Name"]) end
	if struct["Value"] then M.AssertMessageTagValue(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(MessageTag_keys[k], "MessageTag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MessageTag
-- &lt;p&gt;Contains the name and value of a tag that you can provide to &lt;code&gt;SendEmail&lt;/code&gt; or &lt;code&gt;SendRawEmail&lt;/code&gt; to apply to an email.&lt;/p&gt; &lt;p&gt;Message tags, which you use with configuration sets, enable you to publish email sending events. For information about using configuration sets, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param Name [MessageTagName] &lt;p&gt;The name of the tag. The name must:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Contain only ASCII letters (a-z, A-Z), numbers (0-9), underscores (_), or dashes (-).&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Contain less than 256 characters.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param Value [MessageTagValue] &lt;p&gt;The value of the tag. The value must:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Contain only ASCII letters (a-z, A-Z), numbers (0-9), underscores (_), or dashes (-).&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Contain less than 256 characters.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- Required parameter: Name
-- Required parameter: Value
function M.MessageTag(Name, Value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MessageTag")
	local t = { 
		["Name"] = Name,
		["Value"] = Value,
	}
	M.AssertMessageTag(t)
	return t
end

local GetIdentityMailFromDomainAttributesResponse_keys = { "MailFromDomainAttributes" = true, nil }

function M.AssertGetIdentityMailFromDomainAttributesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetIdentityMailFromDomainAttributesResponse to be of type 'table'")
	assert(struct["MailFromDomainAttributes"], "Expected key MailFromDomainAttributes to exist in table")
	if struct["MailFromDomainAttributes"] then M.AssertMailFromDomainAttributes(struct["MailFromDomainAttributes"]) end
	for k,_ in pairs(struct) do
		assert(GetIdentityMailFromDomainAttributesResponse_keys[k], "GetIdentityMailFromDomainAttributesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetIdentityMailFromDomainAttributesResponse
-- &lt;p&gt;Represents the custom MAIL FROM attributes for a list of identities.&lt;/p&gt;
-- @param MailFromDomainAttributes [MailFromDomainAttributes] &lt;p&gt;A map of identities to custom MAIL FROM attributes.&lt;/p&gt;
-- Required parameter: MailFromDomainAttributes
function M.GetIdentityMailFromDomainAttributesResponse(MailFromDomainAttributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetIdentityMailFromDomainAttributesResponse")
	local t = { 
		["MailFromDomainAttributes"] = MailFromDomainAttributes,
	}
	M.AssertGetIdentityMailFromDomainAttributesResponse(t)
	return t
end

local ListIdentitiesResponse_keys = { "NextToken" = true, "Identities" = true, nil }

function M.AssertListIdentitiesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListIdentitiesResponse to be of type 'table'")
	assert(struct["Identities"], "Expected key Identities to exist in table")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["Identities"] then M.AssertIdentityList(struct["Identities"]) end
	for k,_ in pairs(struct) do
		assert(ListIdentitiesResponse_keys[k], "ListIdentitiesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListIdentitiesResponse
-- &lt;p&gt;A list of all identities that you have attempted to verify under your AWS account, regardless of verification status.&lt;/p&gt;
-- @param NextToken [NextToken] &lt;p&gt;The token used for pagination.&lt;/p&gt;
-- @param Identities [IdentityList] &lt;p&gt;A list of identities.&lt;/p&gt;
-- Required parameter: Identities
function M.ListIdentitiesResponse(NextToken, Identities, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListIdentitiesResponse")
	local t = { 
		["NextToken"] = NextToken,
		["Identities"] = Identities,
	}
	M.AssertListIdentitiesResponse(t)
	return t
end

local Message_keys = { "Body" = true, "Subject" = true, nil }

function M.AssertMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Message to be of type 'table'")
	assert(struct["Subject"], "Expected key Subject to exist in table")
	assert(struct["Body"], "Expected key Body to exist in table")
	if struct["Body"] then M.AssertBody(struct["Body"]) end
	if struct["Subject"] then M.AssertContent(struct["Subject"]) end
	for k,_ in pairs(struct) do
		assert(Message_keys[k], "Message contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Message
-- &lt;p&gt;Represents the message to be sent, composed of a subject and a body.&lt;/p&gt;
-- @param Body [Body] &lt;p&gt;The message body.&lt;/p&gt;
-- @param Subject [Content] &lt;p&gt;The subject of the message: A short summary of the content, which will appear in the recipient's inbox.&lt;/p&gt;
-- Required parameter: Subject
-- Required parameter: Body
function M.Message(Body, Subject, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Message")
	local t = { 
		["Body"] = Body,
		["Subject"] = Subject,
	}
	M.AssertMessage(t)
	return t
end

local DescribeReceiptRuleSetRequest_keys = { "RuleSetName" = true, nil }

function M.AssertDescribeReceiptRuleSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeReceiptRuleSetRequest to be of type 'table'")
	assert(struct["RuleSetName"], "Expected key RuleSetName to exist in table")
	if struct["RuleSetName"] then M.AssertReceiptRuleSetName(struct["RuleSetName"]) end
	for k,_ in pairs(struct) do
		assert(DescribeReceiptRuleSetRequest_keys[k], "DescribeReceiptRuleSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeReceiptRuleSetRequest
-- &lt;p&gt;Represents a request to return the details of a receipt rule set. You use receipt rule sets to receive email with Amazon SES. For more information, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param RuleSetName [ReceiptRuleSetName] &lt;p&gt;The name of the receipt rule set to describe.&lt;/p&gt;
-- Required parameter: RuleSetName
function M.DescribeReceiptRuleSetRequest(RuleSetName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeReceiptRuleSetRequest")
	local t = { 
		["RuleSetName"] = RuleSetName,
	}
	M.AssertDescribeReceiptRuleSetRequest(t)
	return t
end

local SendBounceRequest_keys = { "OriginalMessageId" = true, "BounceSenderArn" = true, "Explanation" = true, "BouncedRecipientInfoList" = true, "BounceSender" = true, "MessageDsn" = true, nil }

function M.AssertSendBounceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendBounceRequest to be of type 'table'")
	assert(struct["OriginalMessageId"], "Expected key OriginalMessageId to exist in table")
	assert(struct["BounceSender"], "Expected key BounceSender to exist in table")
	assert(struct["BouncedRecipientInfoList"], "Expected key BouncedRecipientInfoList to exist in table")
	if struct["OriginalMessageId"] then M.AssertMessageId(struct["OriginalMessageId"]) end
	if struct["BounceSenderArn"] then M.AssertAmazonResourceName(struct["BounceSenderArn"]) end
	if struct["Explanation"] then M.AssertExplanation(struct["Explanation"]) end
	if struct["BouncedRecipientInfoList"] then M.AssertBouncedRecipientInfoList(struct["BouncedRecipientInfoList"]) end
	if struct["BounceSender"] then M.AssertAddress(struct["BounceSender"]) end
	if struct["MessageDsn"] then M.AssertMessageDsn(struct["MessageDsn"]) end
	for k,_ in pairs(struct) do
		assert(SendBounceRequest_keys[k], "SendBounceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendBounceRequest
-- &lt;p&gt;Represents a request to send a bounce message to the sender of an email you received through Amazon SES.&lt;/p&gt;
-- @param OriginalMessageId [MessageId] &lt;p&gt;The message ID of the message to be bounced.&lt;/p&gt;
-- @param BounceSenderArn [AmazonResourceName] &lt;p&gt;This parameter is used only for sending authorization. It is the ARN of the identity that is associated with the sending authorization policy that permits you to use the address in the &quot;From&quot; header of the bounce. For more information about sending authorization, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param Explanation [Explanation] &lt;p&gt;Human-readable text for the bounce message to explain the failure. If not specified, the text will be auto-generated based on the bounced recipient information.&lt;/p&gt;
-- @param BouncedRecipientInfoList [BouncedRecipientInfoList] &lt;p&gt;A list of recipients of the bounced message, including the information required to create the Delivery Status Notifications (DSNs) for the recipients. You must specify at least one &lt;code&gt;BouncedRecipientInfo&lt;/code&gt; in the list.&lt;/p&gt;
-- @param BounceSender [Address] &lt;p&gt;The address to use in the &quot;From&quot; header of the bounce message. This must be an identity that you have verified with Amazon SES.&lt;/p&gt;
-- @param MessageDsn [MessageDsn] &lt;p&gt;Message-related DSN fields. If not specified, Amazon SES will choose the values.&lt;/p&gt;
-- Required parameter: OriginalMessageId
-- Required parameter: BounceSender
-- Required parameter: BouncedRecipientInfoList
function M.SendBounceRequest(OriginalMessageId, BounceSenderArn, Explanation, BouncedRecipientInfoList, BounceSender, MessageDsn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SendBounceRequest")
	local t = { 
		["OriginalMessageId"] = OriginalMessageId,
		["BounceSenderArn"] = BounceSenderArn,
		["Explanation"] = Explanation,
		["BouncedRecipientInfoList"] = BouncedRecipientInfoList,
		["BounceSender"] = BounceSender,
		["MessageDsn"] = MessageDsn,
	}
	M.AssertSendBounceRequest(t)
	return t
end

local CloudWatchDimensionConfiguration_keys = { "DimensionName" = true, "DimensionValueSource" = true, "DefaultDimensionValue" = true, nil }

function M.AssertCloudWatchDimensionConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloudWatchDimensionConfiguration to be of type 'table'")
	assert(struct["DimensionName"], "Expected key DimensionName to exist in table")
	assert(struct["DimensionValueSource"], "Expected key DimensionValueSource to exist in table")
	assert(struct["DefaultDimensionValue"], "Expected key DefaultDimensionValue to exist in table")
	if struct["DimensionName"] then M.AssertDimensionName(struct["DimensionName"]) end
	if struct["DimensionValueSource"] then M.AssertDimensionValueSource(struct["DimensionValueSource"]) end
	if struct["DefaultDimensionValue"] then M.AssertDefaultDimensionValue(struct["DefaultDimensionValue"]) end
	for k,_ in pairs(struct) do
		assert(CloudWatchDimensionConfiguration_keys[k], "CloudWatchDimensionConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloudWatchDimensionConfiguration
-- &lt;p&gt;Contains the dimension configuration to use when you publish email sending events to Amazon CloudWatch.&lt;/p&gt; &lt;p&gt;For information about publishing email sending events to Amazon CloudWatch, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param DimensionName [DimensionName] &lt;p&gt;The name of an Amazon CloudWatch dimension associated with an email sending metric. The name must:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Contain only ASCII letters (a-z, A-Z), numbers (0-9), underscores (_), or dashes (-).&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Contain less than 256 characters.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param DimensionValueSource [DimensionValueSource] &lt;p&gt;The place where Amazon SES finds the value of a dimension to publish to Amazon CloudWatch. If you want Amazon SES to use the message tags that you specify using an &lt;code&gt;X-SES-MESSAGE-TAGS&lt;/code&gt; header or a parameter to the &lt;code&gt;SendEmail&lt;/code&gt;/&lt;code&gt;SendRawEmail&lt;/code&gt; API, choose &lt;code&gt;messageTag&lt;/code&gt;. If you want Amazon SES to use your own email headers, choose &lt;code&gt;emailHeader&lt;/code&gt;.&lt;/p&gt;
-- @param DefaultDimensionValue [DefaultDimensionValue] &lt;p&gt;The default value of the dimension that is published to Amazon CloudWatch if you do not provide the value of the dimension when you send an email. The default value must:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Contain only ASCII letters (a-z, A-Z), numbers (0-9), underscores (_), or dashes (-).&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Contain less than 256 characters.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- Required parameter: DimensionName
-- Required parameter: DimensionValueSource
-- Required parameter: DefaultDimensionValue
function M.CloudWatchDimensionConfiguration(DimensionName, DimensionValueSource, DefaultDimensionValue, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CloudWatchDimensionConfiguration")
	local t = { 
		["DimensionName"] = DimensionName,
		["DimensionValueSource"] = DimensionValueSource,
		["DefaultDimensionValue"] = DefaultDimensionValue,
	}
	M.AssertCloudWatchDimensionConfiguration(t)
	return t
end

local ListIdentityPoliciesRequest_keys = { "Identity" = true, nil }

function M.AssertListIdentityPoliciesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListIdentityPoliciesRequest to be of type 'table'")
	assert(struct["Identity"], "Expected key Identity to exist in table")
	if struct["Identity"] then M.AssertIdentity(struct["Identity"]) end
	for k,_ in pairs(struct) do
		assert(ListIdentityPoliciesRequest_keys[k], "ListIdentityPoliciesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListIdentityPoliciesRequest
-- &lt;p&gt;Represents a request to return a list of sending authorization policies that are attached to an identity. Sending authorization is an Amazon SES feature that enables you to authorize other senders to use your identities. For information, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param Identity [Identity] &lt;p&gt;The identity that is associated with the policy for which the policies will be listed. You can specify an identity by using its name or by using its Amazon Resource Name (ARN). Examples: &lt;code&gt;user@example.com&lt;/code&gt;, &lt;code&gt;example.com&lt;/code&gt;, &lt;code&gt;arn:aws:ses:us-east-1:123456789012:identity/example.com&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;To successfully call this API, you must own the identity.&lt;/p&gt;
-- Required parameter: Identity
function M.ListIdentityPoliciesRequest(Identity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListIdentityPoliciesRequest")
	local t = { 
		["Identity"] = Identity,
	}
	M.AssertListIdentityPoliciesRequest(t)
	return t
end

local AlreadyExistsException_keys = { "Name" = true, nil }

function M.AssertAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AlreadyExistsException to be of type 'table'")
	if struct["Name"] then M.AssertRuleOrRuleSetName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(AlreadyExistsException_keys[k], "AlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AlreadyExistsException
-- &lt;p&gt;Indicates that a resource could not be created because of a naming conflict.&lt;/p&gt;
-- @param Name [RuleOrRuleSetName] &lt;p&gt;Indicates that a resource could not be created because of a naming conflict.&lt;/p&gt;
function M.AlreadyExistsException(Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AlreadyExistsException")
	local t = { 
		["Name"] = Name,
	}
	M.AssertAlreadyExistsException(t)
	return t
end

local DescribeReceiptRuleResponse_keys = { "Rule" = true, nil }

function M.AssertDescribeReceiptRuleResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeReceiptRuleResponse to be of type 'table'")
	if struct["Rule"] then M.AssertReceiptRule(struct["Rule"]) end
	for k,_ in pairs(struct) do
		assert(DescribeReceiptRuleResponse_keys[k], "DescribeReceiptRuleResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeReceiptRuleResponse
-- &lt;p&gt;Represents the details of a receipt rule.&lt;/p&gt;
-- @param Rule [ReceiptRule] &lt;p&gt;A data structure that contains the specified receipt rule's name, actions, recipients, domains, enabled status, scan status, and Transport Layer Security (TLS) policy.&lt;/p&gt;
function M.DescribeReceiptRuleResponse(Rule, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeReceiptRuleResponse")
	local t = { 
		["Rule"] = Rule,
	}
	M.AssertDescribeReceiptRuleResponse(t)
	return t
end

local GetIdentityDkimAttributesResponse_keys = { "DkimAttributes" = true, nil }

function M.AssertGetIdentityDkimAttributesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetIdentityDkimAttributesResponse to be of type 'table'")
	assert(struct["DkimAttributes"], "Expected key DkimAttributes to exist in table")
	if struct["DkimAttributes"] then M.AssertDkimAttributes(struct["DkimAttributes"]) end
	for k,_ in pairs(struct) do
		assert(GetIdentityDkimAttributesResponse_keys[k], "GetIdentityDkimAttributesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetIdentityDkimAttributesResponse
-- &lt;p&gt;Represents the status of Amazon SES Easy DKIM signing for an identity. For domain identities, this response also contains the DKIM tokens that are required for Easy DKIM signing, and whether Amazon SES successfully verified that these tokens were published.&lt;/p&gt;
-- @param DkimAttributes [DkimAttributes] &lt;p&gt;The DKIM attributes for an email address or a domain.&lt;/p&gt;
-- Required parameter: DkimAttributes
function M.GetIdentityDkimAttributesResponse(DkimAttributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetIdentityDkimAttributesResponse")
	local t = { 
		["DkimAttributes"] = DkimAttributes,
	}
	M.AssertGetIdentityDkimAttributesResponse(t)
	return t
end

local CreateReceiptRuleRequest_keys = { "After" = true, "RuleSetName" = true, "Rule" = true, nil }

function M.AssertCreateReceiptRuleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateReceiptRuleRequest to be of type 'table'")
	assert(struct["RuleSetName"], "Expected key RuleSetName to exist in table")
	assert(struct["Rule"], "Expected key Rule to exist in table")
	if struct["After"] then M.AssertReceiptRuleName(struct["After"]) end
	if struct["RuleSetName"] then M.AssertReceiptRuleSetName(struct["RuleSetName"]) end
	if struct["Rule"] then M.AssertReceiptRule(struct["Rule"]) end
	for k,_ in pairs(struct) do
		assert(CreateReceiptRuleRequest_keys[k], "CreateReceiptRuleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateReceiptRuleRequest
-- &lt;p&gt;Represents a request to create a receipt rule. You use receipt rules to receive email with Amazon SES. For more information, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param After [ReceiptRuleName] &lt;p&gt;The name of an existing rule after which the new rule will be placed. If this parameter is null, the new rule will be inserted at the beginning of the rule list.&lt;/p&gt;
-- @param RuleSetName [ReceiptRuleSetName] &lt;p&gt;The name of the rule set to which to add the rule.&lt;/p&gt;
-- @param Rule [ReceiptRule] &lt;p&gt;A data structure that contains the specified rule's name, actions, recipients, domains, enabled status, scan status, and TLS policy.&lt;/p&gt;
-- Required parameter: RuleSetName
-- Required parameter: Rule
function M.CreateReceiptRuleRequest(After, RuleSetName, Rule, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateReceiptRuleRequest")
	local t = { 
		["After"] = After,
		["RuleSetName"] = RuleSetName,
		["Rule"] = Rule,
	}
	M.AssertCreateReceiptRuleRequest(t)
	return t
end

local DeleteReceiptRuleRequest_keys = { "RuleSetName" = true, "RuleName" = true, nil }

function M.AssertDeleteReceiptRuleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteReceiptRuleRequest to be of type 'table'")
	assert(struct["RuleSetName"], "Expected key RuleSetName to exist in table")
	assert(struct["RuleName"], "Expected key RuleName to exist in table")
	if struct["RuleSetName"] then M.AssertReceiptRuleSetName(struct["RuleSetName"]) end
	if struct["RuleName"] then M.AssertReceiptRuleName(struct["RuleName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteReceiptRuleRequest_keys[k], "DeleteReceiptRuleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteReceiptRuleRequest
-- &lt;p&gt;Represents a request to delete a receipt rule. You use receipt rules to receive email with Amazon SES. For more information, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param RuleSetName [ReceiptRuleSetName] &lt;p&gt;The name of the receipt rule set that contains the receipt rule to delete.&lt;/p&gt;
-- @param RuleName [ReceiptRuleName] &lt;p&gt;The name of the receipt rule to delete.&lt;/p&gt;
-- Required parameter: RuleSetName
-- Required parameter: RuleName
function M.DeleteReceiptRuleRequest(RuleSetName, RuleName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteReceiptRuleRequest")
	local t = { 
		["RuleSetName"] = RuleSetName,
		["RuleName"] = RuleName,
	}
	M.AssertDeleteReceiptRuleRequest(t)
	return t
end

local SNSAction_keys = { "TopicArn" = true, "Encoding" = true, nil }

function M.AssertSNSAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SNSAction to be of type 'table'")
	assert(struct["TopicArn"], "Expected key TopicArn to exist in table")
	if struct["TopicArn"] then M.AssertAmazonResourceName(struct["TopicArn"]) end
	if struct["Encoding"] then M.AssertSNSActionEncoding(struct["Encoding"]) end
	for k,_ in pairs(struct) do
		assert(SNSAction_keys[k], "SNSAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SNSAction
-- &lt;p&gt;When included in a receipt rule, this action publishes a notification to Amazon Simple Notification Service (Amazon SNS). This action includes a complete copy of the email content in the Amazon SNS notifications. Amazon SNS notifications for all other actions simply provide information about the email. They do not include the email content itself.&lt;/p&gt; &lt;p&gt;If you own the Amazon SNS topic, you don't need to do anything to give Amazon SES permission to publish emails to it. However, if you don't own the Amazon SNS topic, you need to attach a policy to the topic to give Amazon SES permissions to access it. For information about giving permissions, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt; &lt;important&gt; &lt;p&gt;You can only publish emails that are 150 KB or less (including the header) to Amazon SNS. Larger emails will bounce. If you anticipate emails larger than 150 KB, use the S3 action instead.&lt;/p&gt; &lt;/important&gt; &lt;p&gt;For information about using a receipt rule to publish an Amazon SNS notification, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-sns.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param TopicArn [AmazonResourceName] &lt;p&gt;The Amazon Resource Name (ARN) of the Amazon SNS topic to notify. An example of an Amazon SNS topic ARN is &lt;code&gt;arn:aws:sns:us-west-2:123456789012:MyTopic&lt;/code&gt;. For more information about Amazon SNS topics, see the &lt;a href=&quot;http://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html&quot;&gt;Amazon SNS Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param Encoding [SNSActionEncoding] &lt;p&gt;The encoding to use for the email within the Amazon SNS notification. UTF-8 is easier to use, but may not preserve all special characters when a message was encoded with a different encoding format. Base64 preserves all special characters. The default value is UTF-8.&lt;/p&gt;
-- Required parameter: TopicArn
function M.SNSAction(TopicArn, Encoding, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SNSAction")
	local t = { 
		["TopicArn"] = TopicArn,
		["Encoding"] = Encoding,
	}
	M.AssertSNSAction(t)
	return t
end

local DeleteIdentityPolicyResponse_keys = { nil }

function M.AssertDeleteIdentityPolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteIdentityPolicyResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteIdentityPolicyResponse_keys[k], "DeleteIdentityPolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteIdentityPolicyResponse
-- &lt;p&gt;An empty element returned on a successful request.&lt;/p&gt;
function M.DeleteIdentityPolicyResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteIdentityPolicyResponse")
	local t = { 
	}
	M.AssertDeleteIdentityPolicyResponse(t)
	return t
end

local MessageDsn_keys = { "ArrivalDate" = true, "ReportingMta" = true, "ExtensionFields" = true, nil }

function M.AssertMessageDsn(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MessageDsn to be of type 'table'")
	assert(struct["ReportingMta"], "Expected key ReportingMta to exist in table")
	if struct["ArrivalDate"] then M.AssertArrivalDate(struct["ArrivalDate"]) end
	if struct["ReportingMta"] then M.AssertReportingMta(struct["ReportingMta"]) end
	if struct["ExtensionFields"] then M.AssertExtensionFieldList(struct["ExtensionFields"]) end
	for k,_ in pairs(struct) do
		assert(MessageDsn_keys[k], "MessageDsn contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MessageDsn
-- &lt;p&gt;Message-related information to include in the Delivery Status Notification (DSN) when an email that Amazon SES receives on your behalf bounces.&lt;/p&gt; &lt;p&gt;For information about receiving email through Amazon SES, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param ArrivalDate [ArrivalDate] &lt;p&gt;When the message was received by the reporting mail transfer agent (MTA), in &lt;a href=&quot;https://www.ietf.org/rfc/rfc0822.txt&quot;&gt;RFC 822&lt;/a&gt; date-time format.&lt;/p&gt;
-- @param ReportingMta [ReportingMta] &lt;p&gt;The reporting MTA that attempted to deliver the message, formatted as specified in &lt;a href=&quot;https://tools.ietf.org/html/rfc3464&quot;&gt;RFC 3464&lt;/a&gt; (&lt;code&gt;mta-name-type; mta-name&lt;/code&gt;). The default value is &lt;code&gt;dns; inbound-smtp.[region].amazonaws.com&lt;/code&gt;.&lt;/p&gt;
-- @param ExtensionFields [ExtensionFieldList] &lt;p&gt;Additional X-headers to include in the DSN.&lt;/p&gt;
-- Required parameter: ReportingMta
function M.MessageDsn(ArrivalDate, ReportingMta, ExtensionFields, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MessageDsn")
	local t = { 
		["ArrivalDate"] = ArrivalDate,
		["ReportingMta"] = ReportingMta,
		["ExtensionFields"] = ExtensionFields,
	}
	M.AssertMessageDsn(t)
	return t
end

local VerifyDomainDkimResponse_keys = { "DkimTokens" = true, nil }

function M.AssertVerifyDomainDkimResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VerifyDomainDkimResponse to be of type 'table'")
	assert(struct["DkimTokens"], "Expected key DkimTokens to exist in table")
	if struct["DkimTokens"] then M.AssertVerificationTokenList(struct["DkimTokens"]) end
	for k,_ in pairs(struct) do
		assert(VerifyDomainDkimResponse_keys[k], "VerifyDomainDkimResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VerifyDomainDkimResponse
-- &lt;p&gt;Returns CNAME records that you must publish to the DNS server of your domain to set up Easy DKIM with Amazon SES.&lt;/p&gt;
-- @param DkimTokens [VerificationTokenList] &lt;p&gt;A set of character strings that represent the domain's identity. If the identity is an email address, the tokens represent the domain of that address.&lt;/p&gt; &lt;p&gt;Using these tokens, you will need to create DNS CNAME records that point to DKIM public keys hosted by Amazon SES. Amazon Web Services will eventually detect that you have updated your DNS records; this detection process may take up to 72 hours. Upon successful detection, Amazon SES will be able to DKIM-sign emails originating from that domain.&lt;/p&gt; &lt;p&gt;For more information about creating DNS records using DKIM tokens, go to the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim-dns-records.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: DkimTokens
function M.VerifyDomainDkimResponse(DkimTokens, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VerifyDomainDkimResponse")
	local t = { 
		["DkimTokens"] = DkimTokens,
	}
	M.AssertVerifyDomainDkimResponse(t)
	return t
end

local ListReceiptFiltersRequest_keys = { nil }

function M.AssertListReceiptFiltersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListReceiptFiltersRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ListReceiptFiltersRequest_keys[k], "ListReceiptFiltersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListReceiptFiltersRequest
-- &lt;p&gt;Represents a request to list the IP address filters that exist under your AWS account. You use IP address filters when you receive email with Amazon SES. For more information, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
function M.ListReceiptFiltersRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListReceiptFiltersRequest")
	local t = { 
	}
	M.AssertListReceiptFiltersRequest(t)
	return t
end

local DescribeConfigurationSetRequest_keys = { "ConfigurationSetAttributeNames" = true, "ConfigurationSetName" = true, nil }

function M.AssertDescribeConfigurationSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeConfigurationSetRequest to be of type 'table'")
	assert(struct["ConfigurationSetName"], "Expected key ConfigurationSetName to exist in table")
	if struct["ConfigurationSetAttributeNames"] then M.AssertConfigurationSetAttributeList(struct["ConfigurationSetAttributeNames"]) end
	if struct["ConfigurationSetName"] then M.AssertConfigurationSetName(struct["ConfigurationSetName"]) end
	for k,_ in pairs(struct) do
		assert(DescribeConfigurationSetRequest_keys[k], "DescribeConfigurationSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeConfigurationSetRequest
-- &lt;p&gt;Represents a request to return the details of a configuration set. Configuration sets enable you to publish email sending events. For information about using configuration sets, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param ConfigurationSetAttributeNames [ConfigurationSetAttributeList] &lt;p&gt;A list of configuration set attributes to return.&lt;/p&gt;
-- @param ConfigurationSetName [ConfigurationSetName] &lt;p&gt;The name of the configuration set to describe.&lt;/p&gt;
-- Required parameter: ConfigurationSetName
function M.DescribeConfigurationSetRequest(ConfigurationSetAttributeNames, ConfigurationSetName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeConfigurationSetRequest")
	local t = { 
		["ConfigurationSetAttributeNames"] = ConfigurationSetAttributeNames,
		["ConfigurationSetName"] = ConfigurationSetName,
	}
	M.AssertDescribeConfigurationSetRequest(t)
	return t
end

local CreateConfigurationSetEventDestinationResponse_keys = { nil }

function M.AssertCreateConfigurationSetEventDestinationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateConfigurationSetEventDestinationResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(CreateConfigurationSetEventDestinationResponse_keys[k], "CreateConfigurationSetEventDestinationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateConfigurationSetEventDestinationResponse
-- &lt;p&gt;An empty element returned on a successful request.&lt;/p&gt;
function M.CreateConfigurationSetEventDestinationResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateConfigurationSetEventDestinationResponse")
	local t = { 
	}
	M.AssertCreateConfigurationSetEventDestinationResponse(t)
	return t
end

local SendRawEmailResponse_keys = { "MessageId" = true, nil }

function M.AssertSendRawEmailResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendRawEmailResponse to be of type 'table'")
	assert(struct["MessageId"], "Expected key MessageId to exist in table")
	if struct["MessageId"] then M.AssertMessageId(struct["MessageId"]) end
	for k,_ in pairs(struct) do
		assert(SendRawEmailResponse_keys[k], "SendRawEmailResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendRawEmailResponse
-- &lt;p&gt;Represents a unique message ID.&lt;/p&gt;
-- @param MessageId [MessageId] &lt;p&gt;The unique message identifier returned from the &lt;code&gt;SendRawEmail&lt;/code&gt; action. &lt;/p&gt;
-- Required parameter: MessageId
function M.SendRawEmailResponse(MessageId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SendRawEmailResponse")
	local t = { 
		["MessageId"] = MessageId,
	}
	M.AssertSendRawEmailResponse(t)
	return t
end

local GetIdentityVerificationAttributesRequest_keys = { "Identities" = true, nil }

function M.AssertGetIdentityVerificationAttributesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetIdentityVerificationAttributesRequest to be of type 'table'")
	assert(struct["Identities"], "Expected key Identities to exist in table")
	if struct["Identities"] then M.AssertIdentityList(struct["Identities"]) end
	for k,_ in pairs(struct) do
		assert(GetIdentityVerificationAttributesRequest_keys[k], "GetIdentityVerificationAttributesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetIdentityVerificationAttributesRequest
-- &lt;p&gt;Represents a request to return the Amazon SES verification status of a list of identities. For domain identities, this request also returns the verification token. For information about verifying identities with Amazon SES, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param Identities [IdentityList] &lt;p&gt;A list of identities.&lt;/p&gt;
-- Required parameter: Identities
function M.GetIdentityVerificationAttributesRequest(Identities, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetIdentityVerificationAttributesRequest")
	local t = { 
		["Identities"] = Identities,
	}
	M.AssertGetIdentityVerificationAttributesRequest(t)
	return t
end

local CreateReceiptFilterRequest_keys = { "Filter" = true, nil }

function M.AssertCreateReceiptFilterRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateReceiptFilterRequest to be of type 'table'")
	assert(struct["Filter"], "Expected key Filter to exist in table")
	if struct["Filter"] then M.AssertReceiptFilter(struct["Filter"]) end
	for k,_ in pairs(struct) do
		assert(CreateReceiptFilterRequest_keys[k], "CreateReceiptFilterRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateReceiptFilterRequest
-- &lt;p&gt;Represents a request to create a new IP address filter. You use IP address filters when you receive email with Amazon SES. For more information, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param Filter [ReceiptFilter] &lt;p&gt;A data structure that describes the IP address filter to create, which consists of a name, an IP address range, and whether to allow or block mail from it.&lt;/p&gt;
-- Required parameter: Filter
function M.CreateReceiptFilterRequest(Filter, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateReceiptFilterRequest")
	local t = { 
		["Filter"] = Filter,
	}
	M.AssertCreateReceiptFilterRequest(t)
	return t
end

local CannotDeleteException_keys = { "Name" = true, nil }

function M.AssertCannotDeleteException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CannotDeleteException to be of type 'table'")
	if struct["Name"] then M.AssertRuleOrRuleSetName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(CannotDeleteException_keys[k], "CannotDeleteException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CannotDeleteException
-- &lt;p&gt;Indicates that the delete operation could not be completed.&lt;/p&gt;
-- @param Name [RuleOrRuleSetName] &lt;p&gt;Indicates that the delete operation could not be completed.&lt;/p&gt;
function M.CannotDeleteException(Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CannotDeleteException")
	local t = { 
		["Name"] = Name,
	}
	M.AssertCannotDeleteException(t)
	return t
end

local ListReceiptRuleSetsResponse_keys = { "NextToken" = true, "RuleSets" = true, nil }

function M.AssertListReceiptRuleSetsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListReceiptRuleSetsResponse to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["RuleSets"] then M.AssertReceiptRuleSetsLists(struct["RuleSets"]) end
	for k,_ in pairs(struct) do
		assert(ListReceiptRuleSetsResponse_keys[k], "ListReceiptRuleSetsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListReceiptRuleSetsResponse
-- &lt;p&gt;A list of receipt rule sets that exist under your AWS account.&lt;/p&gt;
-- @param NextToken [NextToken] &lt;p&gt;A token indicating that there are additional receipt rule sets available to be listed. Pass this token to successive calls of &lt;code&gt;ListReceiptRuleSets&lt;/code&gt; to retrieve up to 100 receipt rule sets at a time.&lt;/p&gt;
-- @param RuleSets [ReceiptRuleSetsLists] &lt;p&gt;The metadata for the currently active receipt rule set. The metadata consists of the rule set name and the timestamp of when the rule set was created.&lt;/p&gt;
function M.ListReceiptRuleSetsResponse(NextToken, RuleSets, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListReceiptRuleSetsResponse")
	local t = { 
		["NextToken"] = NextToken,
		["RuleSets"] = RuleSets,
	}
	M.AssertListReceiptRuleSetsResponse(t)
	return t
end

local CloneReceiptRuleSetRequest_keys = { "RuleSetName" = true, "OriginalRuleSetName" = true, nil }

function M.AssertCloneReceiptRuleSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloneReceiptRuleSetRequest to be of type 'table'")
	assert(struct["RuleSetName"], "Expected key RuleSetName to exist in table")
	assert(struct["OriginalRuleSetName"], "Expected key OriginalRuleSetName to exist in table")
	if struct["RuleSetName"] then M.AssertReceiptRuleSetName(struct["RuleSetName"]) end
	if struct["OriginalRuleSetName"] then M.AssertReceiptRuleSetName(struct["OriginalRuleSetName"]) end
	for k,_ in pairs(struct) do
		assert(CloneReceiptRuleSetRequest_keys[k], "CloneReceiptRuleSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloneReceiptRuleSetRequest
-- &lt;p&gt;Represents a request to create a receipt rule set by cloning an existing one. You use receipt rule sets to receive email with Amazon SES. For more information, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param RuleSetName [ReceiptRuleSetName] &lt;p&gt;The name of the rule set to create. The name must:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-).&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Start and end with a letter or number.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Contain less than 64 characters.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param OriginalRuleSetName [ReceiptRuleSetName] &lt;p&gt;The name of the rule set to clone.&lt;/p&gt;
-- Required parameter: RuleSetName
-- Required parameter: OriginalRuleSetName
function M.CloneReceiptRuleSetRequest(RuleSetName, OriginalRuleSetName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CloneReceiptRuleSetRequest")
	local t = { 
		["RuleSetName"] = RuleSetName,
		["OriginalRuleSetName"] = OriginalRuleSetName,
	}
	M.AssertCloneReceiptRuleSetRequest(t)
	return t
end

local DescribeConfigurationSetResponse_keys = { "EventDestinations" = true, "ConfigurationSet" = true, nil }

function M.AssertDescribeConfigurationSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeConfigurationSetResponse to be of type 'table'")
	if struct["EventDestinations"] then M.AssertEventDestinations(struct["EventDestinations"]) end
	if struct["ConfigurationSet"] then M.AssertConfigurationSet(struct["ConfigurationSet"]) end
	for k,_ in pairs(struct) do
		assert(DescribeConfigurationSetResponse_keys[k], "DescribeConfigurationSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeConfigurationSetResponse
-- &lt;p&gt;Represents the details of a configuration set. Configuration sets enable you to publish email sending events. For information about using configuration sets, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param EventDestinations [EventDestinations] &lt;p&gt;A list of event destinations associated with the configuration set. &lt;/p&gt;
-- @param ConfigurationSet [ConfigurationSet] &lt;p&gt;The configuration set object associated with the specified configuration set.&lt;/p&gt;
function M.DescribeConfigurationSetResponse(EventDestinations, ConfigurationSet, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeConfigurationSetResponse")
	local t = { 
		["EventDestinations"] = EventDestinations,
		["ConfigurationSet"] = ConfigurationSet,
	}
	M.AssertDescribeConfigurationSetResponse(t)
	return t
end

local SetActiveReceiptRuleSetResponse_keys = { nil }

function M.AssertSetActiveReceiptRuleSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetActiveReceiptRuleSetResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(SetActiveReceiptRuleSetResponse_keys[k], "SetActiveReceiptRuleSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetActiveReceiptRuleSetResponse
-- &lt;p&gt;An empty element returned on a successful request.&lt;/p&gt;
function M.SetActiveReceiptRuleSetResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetActiveReceiptRuleSetResponse")
	local t = { 
	}
	M.AssertSetActiveReceiptRuleSetResponse(t)
	return t
end

local CreateReceiptRuleSetRequest_keys = { "RuleSetName" = true, nil }

function M.AssertCreateReceiptRuleSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateReceiptRuleSetRequest to be of type 'table'")
	assert(struct["RuleSetName"], "Expected key RuleSetName to exist in table")
	if struct["RuleSetName"] then M.AssertReceiptRuleSetName(struct["RuleSetName"]) end
	for k,_ in pairs(struct) do
		assert(CreateReceiptRuleSetRequest_keys[k], "CreateReceiptRuleSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateReceiptRuleSetRequest
-- &lt;p&gt;Represents a request to create an empty receipt rule set. You use receipt rule sets to receive email with Amazon SES. For more information, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param RuleSetName [ReceiptRuleSetName] &lt;p&gt;The name of the rule set to create. The name must:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-).&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Start and end with a letter or number.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Contain less than 64 characters.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- Required parameter: RuleSetName
function M.CreateReceiptRuleSetRequest(RuleSetName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateReceiptRuleSetRequest")
	local t = { 
		["RuleSetName"] = RuleSetName,
	}
	M.AssertCreateReceiptRuleSetRequest(t)
	return t
end

local PutIdentityPolicyResponse_keys = { nil }

function M.AssertPutIdentityPolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutIdentityPolicyResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(PutIdentityPolicyResponse_keys[k], "PutIdentityPolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutIdentityPolicyResponse
-- &lt;p&gt;An empty element returned on a successful request.&lt;/p&gt;
function M.PutIdentityPolicyResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutIdentityPolicyResponse")
	local t = { 
	}
	M.AssertPutIdentityPolicyResponse(t)
	return t
end

local RawMessage_keys = { "Data" = true, nil }

function M.AssertRawMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RawMessage to be of type 'table'")
	assert(struct["Data"], "Expected key Data to exist in table")
	if struct["Data"] then M.AssertRawMessageData(struct["Data"]) end
	for k,_ in pairs(struct) do
		assert(RawMessage_keys[k], "RawMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RawMessage
-- &lt;p&gt;Represents the raw data of the message.&lt;/p&gt;
-- @param Data [RawMessageData] &lt;p&gt;The raw data of the message. The client must ensure that the message format complies with Internet email standards regarding email header fields, MIME types, MIME encoding, and base64 encoding.&lt;/p&gt; &lt;p&gt;The To:, CC:, and BCC: headers in the raw message can contain a group list.&lt;/p&gt; &lt;p&gt;If you are using &lt;code&gt;SendRawEmail&lt;/code&gt; with sending authorization, you can include X-headers in the raw message to specify the &quot;Source,&quot; &quot;From,&quot; and &quot;Return-Path&quot; addresses. For more information, see the documentation for &lt;code&gt;SendRawEmail&lt;/code&gt;. &lt;/p&gt; &lt;important&gt; &lt;p&gt;Do not include these X-headers in the DKIM signature, because they are removed by Amazon SES before sending the email.&lt;/p&gt; &lt;/important&gt; &lt;p&gt;For more information, go to the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-email-raw.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;. &lt;/p&gt;
-- Required parameter: Data
function M.RawMessage(Data, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RawMessage")
	local t = { 
		["Data"] = Data,
	}
	M.AssertRawMessage(t)
	return t
end

local SendEmailResponse_keys = { "MessageId" = true, nil }

function M.AssertSendEmailResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendEmailResponse to be of type 'table'")
	assert(struct["MessageId"], "Expected key MessageId to exist in table")
	if struct["MessageId"] then M.AssertMessageId(struct["MessageId"]) end
	for k,_ in pairs(struct) do
		assert(SendEmailResponse_keys[k], "SendEmailResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendEmailResponse
-- &lt;p&gt;Represents a unique message ID.&lt;/p&gt;
-- @param MessageId [MessageId] &lt;p&gt;The unique message identifier returned from the &lt;code&gt;SendEmail&lt;/code&gt; action. &lt;/p&gt;
-- Required parameter: MessageId
function M.SendEmailResponse(MessageId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SendEmailResponse")
	local t = { 
		["MessageId"] = MessageId,
	}
	M.AssertSendEmailResponse(t)
	return t
end

local LambdaAction_keys = { "InvocationType" = true, "FunctionArn" = true, "TopicArn" = true, nil }

function M.AssertLambdaAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LambdaAction to be of type 'table'")
	assert(struct["FunctionArn"], "Expected key FunctionArn to exist in table")
	if struct["InvocationType"] then M.AssertInvocationType(struct["InvocationType"]) end
	if struct["FunctionArn"] then M.AssertAmazonResourceName(struct["FunctionArn"]) end
	if struct["TopicArn"] then M.AssertAmazonResourceName(struct["TopicArn"]) end
	for k,_ in pairs(struct) do
		assert(LambdaAction_keys[k], "LambdaAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LambdaAction
-- &lt;p&gt;When included in a receipt rule, this action calls an AWS Lambda function and, optionally, publishes a notification to Amazon Simple Notification Service (Amazon SNS).&lt;/p&gt; &lt;p&gt;To enable Amazon SES to call your AWS Lambda function or to publish to an Amazon SNS topic of another account, Amazon SES must have permission to access those resources. For information about giving permissions, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt; &lt;p&gt;For information about using AWS Lambda actions in receipt rules, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-lambda.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param InvocationType [InvocationType] &lt;p&gt;The invocation type of the AWS Lambda function. An invocation type of &lt;code&gt;RequestResponse&lt;/code&gt; means that the execution of the function will immediately result in a response, and a value of &lt;code&gt;Event&lt;/code&gt; means that the function will be invoked asynchronously. The default value is &lt;code&gt;Event&lt;/code&gt;. For information about AWS Lambda invocation types, see the &lt;a href=&quot;http://docs.aws.amazon.com/lambda/latest/dg/API_Invoke.html&quot;&gt;AWS Lambda Developer Guide&lt;/a&gt;.&lt;/p&gt; &lt;important&gt; &lt;p&gt;There is a 30-second timeout on &lt;code&gt;RequestResponse&lt;/code&gt; invocations. You should use &lt;code&gt;Event&lt;/code&gt; invocation in most cases. Use &lt;code&gt;RequestResponse&lt;/code&gt; only when you want to make a mail flow decision, such as whether to stop the receipt rule or the receipt rule set.&lt;/p&gt; &lt;/important&gt;
-- @param FunctionArn [AmazonResourceName] &lt;p&gt;The Amazon Resource Name (ARN) of the AWS Lambda function. An example of an AWS Lambda function ARN is &lt;code&gt;arn:aws:lambda:us-west-2:account-id:function:MyFunction&lt;/code&gt;. For more information about AWS Lambda, see the &lt;a href=&quot;http://docs.aws.amazon.com/lambda/latest/dg/welcome.html&quot;&gt;AWS Lambda Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param TopicArn [AmazonResourceName] &lt;p&gt;The Amazon Resource Name (ARN) of the Amazon SNS topic to notify when the Lambda action is taken. An example of an Amazon SNS topic ARN is &lt;code&gt;arn:aws:sns:us-west-2:123456789012:MyTopic&lt;/code&gt;. For more information about Amazon SNS topics, see the &lt;a href=&quot;http://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html&quot;&gt;Amazon SNS Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: FunctionArn
function M.LambdaAction(InvocationType, FunctionArn, TopicArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LambdaAction")
	local t = { 
		["InvocationType"] = InvocationType,
		["FunctionArn"] = FunctionArn,
		["TopicArn"] = TopicArn,
	}
	M.AssertLambdaAction(t)
	return t
end

local RuleDoesNotExistException_keys = { "Name" = true, nil }

function M.AssertRuleDoesNotExistException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RuleDoesNotExistException to be of type 'table'")
	if struct["Name"] then M.AssertRuleOrRuleSetName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(RuleDoesNotExistException_keys[k], "RuleDoesNotExistException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RuleDoesNotExistException
-- &lt;p&gt;Indicates that the provided receipt rule does not exist.&lt;/p&gt;
-- @param Name [RuleOrRuleSetName] &lt;p&gt;Indicates that the provided receipt rule does not exist.&lt;/p&gt;
function M.RuleDoesNotExistException(Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RuleDoesNotExistException")
	local t = { 
		["Name"] = Name,
	}
	M.AssertRuleDoesNotExistException(t)
	return t
end

local ReceiptRuleSetMetadata_keys = { "CreatedTimestamp" = true, "Name" = true, nil }

function M.AssertReceiptRuleSetMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReceiptRuleSetMetadata to be of type 'table'")
	if struct["CreatedTimestamp"] then M.AssertTimestamp(struct["CreatedTimestamp"]) end
	if struct["Name"] then M.AssertReceiptRuleSetName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(ReceiptRuleSetMetadata_keys[k], "ReceiptRuleSetMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReceiptRuleSetMetadata
-- &lt;p&gt;Information about a receipt rule set.&lt;/p&gt; &lt;p&gt;A receipt rule set is a collection of rules that specify what Amazon SES should do with mail it receives on behalf of your account's verified domains.&lt;/p&gt; &lt;p&gt;For information about setting up receipt rule sets, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rule-set.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param CreatedTimestamp [Timestamp] &lt;p&gt;The date and time the receipt rule set was created.&lt;/p&gt;
-- @param Name [ReceiptRuleSetName] &lt;p&gt;The name of the receipt rule set. The name must:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-).&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Start and end with a letter or number.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Contain less than 64 characters.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
function M.ReceiptRuleSetMetadata(CreatedTimestamp, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReceiptRuleSetMetadata")
	local t = { 
		["CreatedTimestamp"] = CreatedTimestamp,
		["Name"] = Name,
	}
	M.AssertReceiptRuleSetMetadata(t)
	return t
end

local MailFromDomainNotVerifiedException_keys = { nil }

function M.AssertMailFromDomainNotVerifiedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MailFromDomainNotVerifiedException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(MailFromDomainNotVerifiedException_keys[k], "MailFromDomainNotVerifiedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MailFromDomainNotVerifiedException
-- &lt;p&gt; Indicates that the message could not be sent because Amazon SES could not read the MX record required to use the specified MAIL FROM domain. For information about editing the custom MAIL FROM domain settings for an identity, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/mail-from-edit.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
function M.MailFromDomainNotVerifiedException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating MailFromDomainNotVerifiedException")
	local t = { 
	}
	M.AssertMailFromDomainNotVerifiedException(t)
	return t
end

local SetReceiptRulePositionRequest_keys = { "After" = true, "RuleSetName" = true, "RuleName" = true, nil }

function M.AssertSetReceiptRulePositionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetReceiptRulePositionRequest to be of type 'table'")
	assert(struct["RuleSetName"], "Expected key RuleSetName to exist in table")
	assert(struct["RuleName"], "Expected key RuleName to exist in table")
	if struct["After"] then M.AssertReceiptRuleName(struct["After"]) end
	if struct["RuleSetName"] then M.AssertReceiptRuleSetName(struct["RuleSetName"]) end
	if struct["RuleName"] then M.AssertReceiptRuleName(struct["RuleName"]) end
	for k,_ in pairs(struct) do
		assert(SetReceiptRulePositionRequest_keys[k], "SetReceiptRulePositionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetReceiptRulePositionRequest
-- &lt;p&gt;Represents a request to set the position of a receipt rule in a receipt rule set. You use receipt rule sets to receive email with Amazon SES. For more information, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param After [ReceiptRuleName] &lt;p&gt;The name of the receipt rule after which to place the specified receipt rule.&lt;/p&gt;
-- @param RuleSetName [ReceiptRuleSetName] &lt;p&gt;The name of the receipt rule set that contains the receipt rule to reposition.&lt;/p&gt;
-- @param RuleName [ReceiptRuleName] &lt;p&gt;The name of the receipt rule to reposition.&lt;/p&gt;
-- Required parameter: RuleSetName
-- Required parameter: RuleName
function M.SetReceiptRulePositionRequest(After, RuleSetName, RuleName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetReceiptRulePositionRequest")
	local t = { 
		["After"] = After,
		["RuleSetName"] = RuleSetName,
		["RuleName"] = RuleName,
	}
	M.AssertSetReceiptRulePositionRequest(t)
	return t
end

local SetIdentityMailFromDomainResponse_keys = { nil }

function M.AssertSetIdentityMailFromDomainResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetIdentityMailFromDomainResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(SetIdentityMailFromDomainResponse_keys[k], "SetIdentityMailFromDomainResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetIdentityMailFromDomainResponse
-- &lt;p&gt;An empty element returned on a successful request.&lt;/p&gt;
function M.SetIdentityMailFromDomainResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetIdentityMailFromDomainResponse")
	local t = { 
	}
	M.AssertSetIdentityMailFromDomainResponse(t)
	return t
end

local ConfigurationSetDoesNotExistException_keys = { "ConfigurationSetName" = true, nil }

function M.AssertConfigurationSetDoesNotExistException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfigurationSetDoesNotExistException to be of type 'table'")
	if struct["ConfigurationSetName"] then M.AssertConfigurationSetName(struct["ConfigurationSetName"]) end
	for k,_ in pairs(struct) do
		assert(ConfigurationSetDoesNotExistException_keys[k], "ConfigurationSetDoesNotExistException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfigurationSetDoesNotExistException
-- &lt;p&gt;Indicates that the configuration set does not exist.&lt;/p&gt;
-- @param ConfigurationSetName [ConfigurationSetName] &lt;p&gt;Indicates that the configuration set does not exist.&lt;/p&gt;
function M.ConfigurationSetDoesNotExistException(ConfigurationSetName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConfigurationSetDoesNotExistException")
	local t = { 
		["ConfigurationSetName"] = ConfigurationSetName,
	}
	M.AssertConfigurationSetDoesNotExistException(t)
	return t
end

local GetIdentityPoliciesResponse_keys = { "Policies" = true, nil }

function M.AssertGetIdentityPoliciesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetIdentityPoliciesResponse to be of type 'table'")
	assert(struct["Policies"], "Expected key Policies to exist in table")
	if struct["Policies"] then M.AssertPolicyMap(struct["Policies"]) end
	for k,_ in pairs(struct) do
		assert(GetIdentityPoliciesResponse_keys[k], "GetIdentityPoliciesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetIdentityPoliciesResponse
-- &lt;p&gt;Represents the requested sending authorization policies.&lt;/p&gt;
-- @param Policies [PolicyMap] &lt;p&gt;A map of policy names to policies.&lt;/p&gt;
-- Required parameter: Policies
function M.GetIdentityPoliciesResponse(Policies, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetIdentityPoliciesResponse")
	local t = { 
		["Policies"] = Policies,
	}
	M.AssertGetIdentityPoliciesResponse(t)
	return t
end

local RuleSetDoesNotExistException_keys = { "Name" = true, nil }

function M.AssertRuleSetDoesNotExistException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RuleSetDoesNotExistException to be of type 'table'")
	if struct["Name"] then M.AssertRuleOrRuleSetName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(RuleSetDoesNotExistException_keys[k], "RuleSetDoesNotExistException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RuleSetDoesNotExistException
-- &lt;p&gt;Indicates that the provided receipt rule set does not exist.&lt;/p&gt;
-- @param Name [RuleOrRuleSetName] &lt;p&gt;Indicates that the provided receipt rule set does not exist.&lt;/p&gt;
function M.RuleSetDoesNotExistException(Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RuleSetDoesNotExistException")
	local t = { 
		["Name"] = Name,
	}
	M.AssertRuleSetDoesNotExistException(t)
	return t
end

local DeleteReceiptFilterRequest_keys = { "FilterName" = true, nil }

function M.AssertDeleteReceiptFilterRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteReceiptFilterRequest to be of type 'table'")
	assert(struct["FilterName"], "Expected key FilterName to exist in table")
	if struct["FilterName"] then M.AssertReceiptFilterName(struct["FilterName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteReceiptFilterRequest_keys[k], "DeleteReceiptFilterRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteReceiptFilterRequest
-- &lt;p&gt;Represents a request to delete an IP address filter. You use IP address filters when you receive email with Amazon SES. For more information, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param FilterName [ReceiptFilterName] &lt;p&gt;The name of the IP address filter to delete.&lt;/p&gt;
-- Required parameter: FilterName
function M.DeleteReceiptFilterRequest(FilterName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteReceiptFilterRequest")
	local t = { 
		["FilterName"] = FilterName,
	}
	M.AssertDeleteReceiptFilterRequest(t)
	return t
end

local ListConfigurationSetsRequest_keys = { "NextToken" = true, "MaxItems" = true, nil }

function M.AssertListConfigurationSetsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListConfigurationSetsRequest to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["MaxItems"] then M.AssertMaxItems(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(ListConfigurationSetsRequest_keys[k], "ListConfigurationSetsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListConfigurationSetsRequest
-- &lt;p&gt;Represents a request to list the configuration sets associated with your AWS account. Configuration sets enable you to publish email sending events. For information about using configuration sets, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param NextToken [NextToken] &lt;p&gt;A token returned from a previous call to &lt;code&gt;ListConfigurationSets&lt;/code&gt; to indicate the position of the configuration set in the configuration set list.&lt;/p&gt;
-- @param MaxItems [MaxItems] &lt;p&gt;The number of configuration sets to return.&lt;/p&gt;
function M.ListConfigurationSetsRequest(NextToken, MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListConfigurationSetsRequest")
	local t = { 
		["NextToken"] = NextToken,
		["MaxItems"] = MaxItems,
	}
	M.AssertListConfigurationSetsRequest(t)
	return t
end

local InvalidLambdaFunctionException_keys = { "FunctionArn" = true, nil }

function M.AssertInvalidLambdaFunctionException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidLambdaFunctionException to be of type 'table'")
	if struct["FunctionArn"] then M.AssertAmazonResourceName(struct["FunctionArn"]) end
	for k,_ in pairs(struct) do
		assert(InvalidLambdaFunctionException_keys[k], "InvalidLambdaFunctionException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidLambdaFunctionException
-- &lt;p&gt;Indicates that the provided AWS Lambda function is invalid, or that Amazon SES could not execute the provided function, possibly due to permissions issues. For information about giving permissions, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param FunctionArn [AmazonResourceName] &lt;p&gt;Indicates that the provided AWS Lambda function is invalid, or that Amazon SES could not execute the provided function, possibly due to permissions issues. For information about giving permissions, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
function M.InvalidLambdaFunctionException(FunctionArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidLambdaFunctionException")
	local t = { 
		["FunctionArn"] = FunctionArn,
	}
	M.AssertInvalidLambdaFunctionException(t)
	return t
end

local ReceiptIpFilter_keys = { "Policy" = true, "Cidr" = true, nil }

function M.AssertReceiptIpFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReceiptIpFilter to be of type 'table'")
	assert(struct["Policy"], "Expected key Policy to exist in table")
	assert(struct["Cidr"], "Expected key Cidr to exist in table")
	if struct["Policy"] then M.AssertReceiptFilterPolicy(struct["Policy"]) end
	if struct["Cidr"] then M.AssertCidr(struct["Cidr"]) end
	for k,_ in pairs(struct) do
		assert(ReceiptIpFilter_keys[k], "ReceiptIpFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReceiptIpFilter
-- &lt;p&gt;A receipt IP address filter enables you to specify whether to accept or reject mail originating from an IP address or range of IP addresses.&lt;/p&gt; &lt;p&gt;For information about setting up IP address filters, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-ip-filters.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param Policy [ReceiptFilterPolicy] &lt;p&gt;Indicates whether to block or allow incoming mail from the specified IP addresses.&lt;/p&gt;
-- @param Cidr [Cidr] &lt;p&gt;A single IP address or a range of IP addresses that you want to block or allow, specified in Classless Inter-Domain Routing (CIDR) notation. An example of a single email address is 10.0.0.1. An example of a range of IP addresses is 10.0.0.1/24. For more information about CIDR notation, see &lt;a href=&quot;https://tools.ietf.org/html/rfc2317&quot;&gt;RFC 2317&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: Policy
-- Required parameter: Cidr
function M.ReceiptIpFilter(Policy, Cidr, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReceiptIpFilter")
	local t = { 
		["Policy"] = Policy,
		["Cidr"] = Cidr,
	}
	M.AssertReceiptIpFilter(t)
	return t
end

local IdentityDkimAttributes_keys = { "DkimTokens" = true, "DkimEnabled" = true, "DkimVerificationStatus" = true, nil }

function M.AssertIdentityDkimAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IdentityDkimAttributes to be of type 'table'")
	assert(struct["DkimEnabled"], "Expected key DkimEnabled to exist in table")
	assert(struct["DkimVerificationStatus"], "Expected key DkimVerificationStatus to exist in table")
	if struct["DkimTokens"] then M.AssertVerificationTokenList(struct["DkimTokens"]) end
	if struct["DkimEnabled"] then M.AssertEnabled(struct["DkimEnabled"]) end
	if struct["DkimVerificationStatus"] then M.AssertVerificationStatus(struct["DkimVerificationStatus"]) end
	for k,_ in pairs(struct) do
		assert(IdentityDkimAttributes_keys[k], "IdentityDkimAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IdentityDkimAttributes
-- &lt;p&gt;Represents the DKIM attributes of a verified email address or a domain.&lt;/p&gt;
-- @param DkimTokens [VerificationTokenList] &lt;p&gt;A set of character strings that represent the domain's identity. Using these tokens, you will need to create DNS CNAME records that point to DKIM public keys hosted by Amazon SES. Amazon Web Services will eventually detect that you have updated your DNS records; this detection process may take up to 72 hours. Upon successful detection, Amazon SES will be able to DKIM-sign email originating from that domain. (This only applies to domain identities, not email address identities.)&lt;/p&gt; &lt;p&gt;For more information about creating DNS records using DKIM tokens, go to the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim-dns-records.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param DkimEnabled [Enabled] &lt;p&gt;True if DKIM signing is enabled for email sent from the identity; false otherwise. The default value is true.&lt;/p&gt;
-- @param DkimVerificationStatus [VerificationStatus] &lt;p&gt;Describes whether Amazon SES has successfully verified the DKIM DNS records (tokens) published in the domain name's DNS. (This only applies to domain identities, not email address identities.)&lt;/p&gt;
-- Required parameter: DkimEnabled
-- Required parameter: DkimVerificationStatus
function M.IdentityDkimAttributes(DkimTokens, DkimEnabled, DkimVerificationStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IdentityDkimAttributes")
	local t = { 
		["DkimTokens"] = DkimTokens,
		["DkimEnabled"] = DkimEnabled,
		["DkimVerificationStatus"] = DkimVerificationStatus,
	}
	M.AssertIdentityDkimAttributes(t)
	return t
end

local AddHeaderAction_keys = { "HeaderName" = true, "HeaderValue" = true, nil }

function M.AssertAddHeaderAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddHeaderAction to be of type 'table'")
	assert(struct["HeaderName"], "Expected key HeaderName to exist in table")
	assert(struct["HeaderValue"], "Expected key HeaderValue to exist in table")
	if struct["HeaderName"] then M.AssertHeaderName(struct["HeaderName"]) end
	if struct["HeaderValue"] then M.AssertHeaderValue(struct["HeaderValue"]) end
	for k,_ in pairs(struct) do
		assert(AddHeaderAction_keys[k], "AddHeaderAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddHeaderAction
-- &lt;p&gt;When included in a receipt rule, this action adds a header to the received email.&lt;/p&gt; &lt;p&gt;For information about adding a header using a receipt rule, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-add-header.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param HeaderName [HeaderName] &lt;p&gt;The name of the header to add. Must be between 1 and 50 characters, inclusive, and consist of alphanumeric (a-z, A-Z, 0-9) characters and dashes only.&lt;/p&gt;
-- @param HeaderValue [HeaderValue] &lt;p&gt;Must be less than 2048 characters, and must not contain newline characters (&quot;\r&quot; or &quot;\n&quot;).&lt;/p&gt;
-- Required parameter: HeaderName
-- Required parameter: HeaderValue
function M.AddHeaderAction(HeaderName, HeaderValue, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddHeaderAction")
	local t = { 
		["HeaderName"] = HeaderName,
		["HeaderValue"] = HeaderValue,
	}
	M.AssertAddHeaderAction(t)
	return t
end

local Content_keys = { "Charset" = true, "Data" = true, nil }

function M.AssertContent(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Content to be of type 'table'")
	assert(struct["Data"], "Expected key Data to exist in table")
	if struct["Charset"] then M.AssertCharset(struct["Charset"]) end
	if struct["Data"] then M.AssertMessageData(struct["Data"]) end
	for k,_ in pairs(struct) do
		assert(Content_keys[k], "Content contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Content
-- &lt;p&gt;Represents textual data, plus an optional character set specification.&lt;/p&gt; &lt;p&gt;By default, the text must be 7-bit ASCII, due to the constraints of the SMTP protocol. If the text must contain any other characters, then you must also specify a character set. Examples include UTF-8, ISO-8859-1, and Shift_JIS.&lt;/p&gt;
-- @param Charset [Charset] &lt;p&gt;The character set of the content.&lt;/p&gt;
-- @param Data [MessageData] &lt;p&gt;The textual data of the content.&lt;/p&gt;
-- Required parameter: Data
function M.Content(Charset, Data, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Content")
	local t = { 
		["Charset"] = Charset,
		["Data"] = Data,
	}
	M.AssertContent(t)
	return t
end

local KinesisFirehoseDestination_keys = { "DeliveryStreamARN" = true, "IAMRoleARN" = true, nil }

function M.AssertKinesisFirehoseDestination(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KinesisFirehoseDestination to be of type 'table'")
	assert(struct["IAMRoleARN"], "Expected key IAMRoleARN to exist in table")
	assert(struct["DeliveryStreamARN"], "Expected key DeliveryStreamARN to exist in table")
	if struct["DeliveryStreamARN"] then M.AssertAmazonResourceName(struct["DeliveryStreamARN"]) end
	if struct["IAMRoleARN"] then M.AssertAmazonResourceName(struct["IAMRoleARN"]) end
	for k,_ in pairs(struct) do
		assert(KinesisFirehoseDestination_keys[k], "KinesisFirehoseDestination contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KinesisFirehoseDestination
-- &lt;p&gt;Contains the delivery stream ARN and the IAM role ARN associated with an Amazon Kinesis Firehose event destination.&lt;/p&gt; &lt;p&gt;Event destinations, such as Amazon Kinesis Firehose, are associated with configuration sets, which enable you to publish email sending events. For information about using configuration sets, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param DeliveryStreamARN [AmazonResourceName] &lt;p&gt;The ARN of the Amazon Kinesis Firehose stream to which to publish email sending events.&lt;/p&gt;
-- @param IAMRoleARN [AmazonResourceName] &lt;p&gt;The ARN of the IAM role under which Amazon SES publishes email sending events to the Amazon Kinesis Firehose stream.&lt;/p&gt;
-- Required parameter: IAMRoleARN
-- Required parameter: DeliveryStreamARN
function M.KinesisFirehoseDestination(DeliveryStreamARN, IAMRoleARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating KinesisFirehoseDestination")
	local t = { 
		["DeliveryStreamARN"] = DeliveryStreamARN,
		["IAMRoleARN"] = IAMRoleARN,
	}
	M.AssertKinesisFirehoseDestination(t)
	return t
end

local UpdateReceiptRuleResponse_keys = { nil }

function M.AssertUpdateReceiptRuleResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateReceiptRuleResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(UpdateReceiptRuleResponse_keys[k], "UpdateReceiptRuleResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateReceiptRuleResponse
-- &lt;p&gt;An empty element returned on a successful request.&lt;/p&gt;
function M.UpdateReceiptRuleResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateReceiptRuleResponse")
	local t = { 
	}
	M.AssertUpdateReceiptRuleResponse(t)
	return t
end

local DescribeReceiptRuleRequest_keys = { "RuleSetName" = true, "RuleName" = true, nil }

function M.AssertDescribeReceiptRuleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeReceiptRuleRequest to be of type 'table'")
	assert(struct["RuleSetName"], "Expected key RuleSetName to exist in table")
	assert(struct["RuleName"], "Expected key RuleName to exist in table")
	if struct["RuleSetName"] then M.AssertReceiptRuleSetName(struct["RuleSetName"]) end
	if struct["RuleName"] then M.AssertReceiptRuleName(struct["RuleName"]) end
	for k,_ in pairs(struct) do
		assert(DescribeReceiptRuleRequest_keys[k], "DescribeReceiptRuleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeReceiptRuleRequest
-- &lt;p&gt;Represents a request to return the details of a receipt rule. You use receipt rules to receive email with Amazon SES. For more information, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param RuleSetName [ReceiptRuleSetName] &lt;p&gt;The name of the receipt rule set to which the receipt rule belongs.&lt;/p&gt;
-- @param RuleName [ReceiptRuleName] &lt;p&gt;The name of the receipt rule.&lt;/p&gt;
-- Required parameter: RuleSetName
-- Required parameter: RuleName
function M.DescribeReceiptRuleRequest(RuleSetName, RuleName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeReceiptRuleRequest")
	local t = { 
		["RuleSetName"] = RuleSetName,
		["RuleName"] = RuleName,
	}
	M.AssertDescribeReceiptRuleRequest(t)
	return t
end

local DescribeActiveReceiptRuleSetResponse_keys = { "Rules" = true, "Metadata" = true, nil }

function M.AssertDescribeActiveReceiptRuleSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeActiveReceiptRuleSetResponse to be of type 'table'")
	if struct["Rules"] then M.AssertReceiptRulesList(struct["Rules"]) end
	if struct["Metadata"] then M.AssertReceiptRuleSetMetadata(struct["Metadata"]) end
	for k,_ in pairs(struct) do
		assert(DescribeActiveReceiptRuleSetResponse_keys[k], "DescribeActiveReceiptRuleSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeActiveReceiptRuleSetResponse
-- &lt;p&gt;Represents the metadata and receipt rules for the receipt rule set that is currently active.&lt;/p&gt;
-- @param Rules [ReceiptRulesList] &lt;p&gt;The receipt rules that belong to the active rule set.&lt;/p&gt;
-- @param Metadata [ReceiptRuleSetMetadata] &lt;p&gt;The metadata for the currently active receipt rule set. The metadata consists of the rule set name and a timestamp of when the rule set was created.&lt;/p&gt;
function M.DescribeActiveReceiptRuleSetResponse(Rules, Metadata, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeActiveReceiptRuleSetResponse")
	local t = { 
		["Rules"] = Rules,
		["Metadata"] = Metadata,
	}
	M.AssertDescribeActiveReceiptRuleSetResponse(t)
	return t
end

local GetSendQuotaResponse_keys = { "Max24HourSend" = true, "SentLast24Hours" = true, "MaxSendRate" = true, nil }

function M.AssertGetSendQuotaResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSendQuotaResponse to be of type 'table'")
	if struct["Max24HourSend"] then M.AssertMax24HourSend(struct["Max24HourSend"]) end
	if struct["SentLast24Hours"] then M.AssertSentLast24Hours(struct["SentLast24Hours"]) end
	if struct["MaxSendRate"] then M.AssertMaxSendRate(struct["MaxSendRate"]) end
	for k,_ in pairs(struct) do
		assert(GetSendQuotaResponse_keys[k], "GetSendQuotaResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSendQuotaResponse
-- &lt;p&gt;Represents your Amazon SES daily sending quota, maximum send rate, and the number of emails you have sent in the last 24 hours.&lt;/p&gt;
-- @param Max24HourSend [Max24HourSend] &lt;p&gt;The maximum number of emails the user is allowed to send in a 24-hour interval. A value of -1 signifies an unlimited quota.&lt;/p&gt;
-- @param SentLast24Hours [SentLast24Hours] &lt;p&gt;The number of emails sent during the previous 24 hours.&lt;/p&gt;
-- @param MaxSendRate [MaxSendRate] &lt;p&gt;The maximum number of emails that Amazon SES can accept from the user's account per second.&lt;/p&gt; &lt;note&gt; &lt;p&gt;The rate at which Amazon SES accepts the user's messages might be less than the maximum send rate.&lt;/p&gt; &lt;/note&gt;
function M.GetSendQuotaResponse(Max24HourSend, SentLast24Hours, MaxSendRate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSendQuotaResponse")
	local t = { 
		["Max24HourSend"] = Max24HourSend,
		["SentLast24Hours"] = SentLast24Hours,
		["MaxSendRate"] = MaxSendRate,
	}
	M.AssertGetSendQuotaResponse(t)
	return t
end

local RecipientDsnFields_keys = { "Status" = true, "FinalRecipient" = true, "DiagnosticCode" = true, "LastAttemptDate" = true, "ExtensionFields" = true, "RemoteMta" = true, "Action" = true, nil }

function M.AssertRecipientDsnFields(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RecipientDsnFields to be of type 'table'")
	assert(struct["Action"], "Expected key Action to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["Status"] then M.AssertDsnStatus(struct["Status"]) end
	if struct["FinalRecipient"] then M.AssertAddress(struct["FinalRecipient"]) end
	if struct["DiagnosticCode"] then M.AssertDiagnosticCode(struct["DiagnosticCode"]) end
	if struct["LastAttemptDate"] then M.AssertLastAttemptDate(struct["LastAttemptDate"]) end
	if struct["ExtensionFields"] then M.AssertExtensionFieldList(struct["ExtensionFields"]) end
	if struct["RemoteMta"] then M.AssertRemoteMta(struct["RemoteMta"]) end
	if struct["Action"] then M.AssertDsnAction(struct["Action"]) end
	for k,_ in pairs(struct) do
		assert(RecipientDsnFields_keys[k], "RecipientDsnFields contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RecipientDsnFields
-- &lt;p&gt;Recipient-related information to include in the Delivery Status Notification (DSN) when an email that Amazon SES receives on your behalf bounces.&lt;/p&gt; &lt;p&gt;For information about receiving email through Amazon SES, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param Status [DsnStatus] &lt;p&gt;The status code that indicates what went wrong. This is required by &lt;a href=&quot;https://tools.ietf.org/html/rfc3464&quot;&gt;RFC 3464&lt;/a&gt;.&lt;/p&gt;
-- @param FinalRecipient [Address] &lt;p&gt;The email address to which the message was ultimately delivered. This corresponds to the &lt;code&gt;Final-Recipient&lt;/code&gt; in the DSN. If not specified, &lt;code&gt;FinalRecipient&lt;/code&gt; will be set to the &lt;code&gt;Recipient&lt;/code&gt; specified in the &lt;code&gt;BouncedRecipientInfo&lt;/code&gt; structure. Either &lt;code&gt;FinalRecipient&lt;/code&gt; or the recipient in &lt;code&gt;BouncedRecipientInfo&lt;/code&gt; must be a recipient of the original bounced message.&lt;/p&gt; &lt;note&gt; &lt;p&gt;Do not prepend the &lt;code&gt;FinalRecipient&lt;/code&gt; email address with &lt;code&gt;rfc 822;&lt;/code&gt;, as described in &lt;a href=&quot;https://tools.ietf.org/html/rfc3798&quot;&gt;RFC 3798&lt;/a&gt;.&lt;/p&gt; &lt;/note&gt;
-- @param DiagnosticCode [DiagnosticCode] &lt;p&gt;An extended explanation of what went wrong; this is usually an SMTP response. See &lt;a href=&quot;https://tools.ietf.org/html/rfc3463&quot;&gt;RFC 3463&lt;/a&gt; for the correct formatting of this parameter.&lt;/p&gt;
-- @param LastAttemptDate [LastAttemptDate] &lt;p&gt;The time the final delivery attempt was made, in &lt;a href=&quot;https://www.ietf.org/rfc/rfc0822.txt&quot;&gt;RFC 822&lt;/a&gt; date-time format.&lt;/p&gt;
-- @param ExtensionFields [ExtensionFieldList] &lt;p&gt;Additional X-headers to include in the DSN.&lt;/p&gt;
-- @param RemoteMta [RemoteMta] &lt;p&gt;The MTA to which the remote MTA attempted to deliver the message, formatted as specified in &lt;a href=&quot;https://tools.ietf.org/html/rfc3464&quot;&gt;RFC 3464&lt;/a&gt; (&lt;code&gt;mta-name-type; mta-name&lt;/code&gt;). This parameter typically applies only to propagating synchronous bounces.&lt;/p&gt;
-- @param Action [DsnAction] &lt;p&gt;The action performed by the reporting mail transfer agent (MTA) as a result of its attempt to deliver the message to the recipient address. This is required by &lt;a href=&quot;https://tools.ietf.org/html/rfc3464&quot;&gt;RFC 3464&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: Action
-- Required parameter: Status
function M.RecipientDsnFields(Status, FinalRecipient, DiagnosticCode, LastAttemptDate, ExtensionFields, RemoteMta, Action, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RecipientDsnFields")
	local t = { 
		["Status"] = Status,
		["FinalRecipient"] = FinalRecipient,
		["DiagnosticCode"] = DiagnosticCode,
		["LastAttemptDate"] = LastAttemptDate,
		["ExtensionFields"] = ExtensionFields,
		["RemoteMta"] = RemoteMta,
		["Action"] = Action,
	}
	M.AssertRecipientDsnFields(t)
	return t
end

local SetActiveReceiptRuleSetRequest_keys = { "RuleSetName" = true, nil }

function M.AssertSetActiveReceiptRuleSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetActiveReceiptRuleSetRequest to be of type 'table'")
	if struct["RuleSetName"] then M.AssertReceiptRuleSetName(struct["RuleSetName"]) end
	for k,_ in pairs(struct) do
		assert(SetActiveReceiptRuleSetRequest_keys[k], "SetActiveReceiptRuleSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetActiveReceiptRuleSetRequest
-- &lt;p&gt;Represents a request to set a receipt rule set as the active receipt rule set. You use receipt rule sets to receive email with Amazon SES. For more information, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param RuleSetName [ReceiptRuleSetName] &lt;p&gt;The name of the receipt rule set to make active. Setting this value to null disables all email receiving.&lt;/p&gt;
function M.SetActiveReceiptRuleSetRequest(RuleSetName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetActiveReceiptRuleSetRequest")
	local t = { 
		["RuleSetName"] = RuleSetName,
	}
	M.AssertSetActiveReceiptRuleSetRequest(t)
	return t
end

local DeleteIdentityPolicyRequest_keys = { "PolicyName" = true, "Identity" = true, nil }

function M.AssertDeleteIdentityPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteIdentityPolicyRequest to be of type 'table'")
	assert(struct["Identity"], "Expected key Identity to exist in table")
	assert(struct["PolicyName"], "Expected key PolicyName to exist in table")
	if struct["PolicyName"] then M.AssertPolicyName(struct["PolicyName"]) end
	if struct["Identity"] then M.AssertIdentity(struct["Identity"]) end
	for k,_ in pairs(struct) do
		assert(DeleteIdentityPolicyRequest_keys[k], "DeleteIdentityPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteIdentityPolicyRequest
-- &lt;p&gt;Represents a request to delete a sending authorization policy for an identity. Sending authorization is an Amazon SES feature that enables you to authorize other senders to use your identities. For information, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param PolicyName [PolicyName] &lt;p&gt;The name of the policy to be deleted.&lt;/p&gt;
-- @param Identity [Identity] &lt;p&gt;The identity that is associated with the policy that you want to delete. You can specify the identity by using its name or by using its Amazon Resource Name (ARN). Examples: &lt;code&gt;user@example.com&lt;/code&gt;, &lt;code&gt;example.com&lt;/code&gt;, &lt;code&gt;arn:aws:ses:us-east-1:123456789012:identity/example.com&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;To successfully call this API, you must own the identity.&lt;/p&gt;
-- Required parameter: Identity
-- Required parameter: PolicyName
function M.DeleteIdentityPolicyRequest(PolicyName, Identity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteIdentityPolicyRequest")
	local t = { 
		["PolicyName"] = PolicyName,
		["Identity"] = Identity,
	}
	M.AssertDeleteIdentityPolicyRequest(t)
	return t
end

local CreateConfigurationSetResponse_keys = { nil }

function M.AssertCreateConfigurationSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateConfigurationSetResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(CreateConfigurationSetResponse_keys[k], "CreateConfigurationSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateConfigurationSetResponse
-- &lt;p&gt;An empty element returned on a successful request.&lt;/p&gt;
function M.CreateConfigurationSetResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateConfigurationSetResponse")
	local t = { 
	}
	M.AssertCreateConfigurationSetResponse(t)
	return t
end

local DeleteConfigurationSetEventDestinationRequest_keys = { "EventDestinationName" = true, "ConfigurationSetName" = true, nil }

function M.AssertDeleteConfigurationSetEventDestinationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteConfigurationSetEventDestinationRequest to be of type 'table'")
	assert(struct["ConfigurationSetName"], "Expected key ConfigurationSetName to exist in table")
	assert(struct["EventDestinationName"], "Expected key EventDestinationName to exist in table")
	if struct["EventDestinationName"] then M.AssertEventDestinationName(struct["EventDestinationName"]) end
	if struct["ConfigurationSetName"] then M.AssertConfigurationSetName(struct["ConfigurationSetName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteConfigurationSetEventDestinationRequest_keys[k], "DeleteConfigurationSetEventDestinationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteConfigurationSetEventDestinationRequest
-- &lt;p&gt;Represents a request to delete a configuration set event destination. Configuration set event destinations are associated with configuration sets, which enable you to publish email sending events. For information about using configuration sets, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param EventDestinationName [EventDestinationName] &lt;p&gt;The name of the event destination to delete.&lt;/p&gt;
-- @param ConfigurationSetName [ConfigurationSetName] &lt;p&gt;The name of the configuration set from which to delete the event destination.&lt;/p&gt;
-- Required parameter: ConfigurationSetName
-- Required parameter: EventDestinationName
function M.DeleteConfigurationSetEventDestinationRequest(EventDestinationName, ConfigurationSetName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteConfigurationSetEventDestinationRequest")
	local t = { 
		["EventDestinationName"] = EventDestinationName,
		["ConfigurationSetName"] = ConfigurationSetName,
	}
	M.AssertDeleteConfigurationSetEventDestinationRequest(t)
	return t
end

local ListIdentitiesRequest_keys = { "IdentityType" = true, "NextToken" = true, "MaxItems" = true, nil }

function M.AssertListIdentitiesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListIdentitiesRequest to be of type 'table'")
	if struct["IdentityType"] then M.AssertIdentityType(struct["IdentityType"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["MaxItems"] then M.AssertMaxItems(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(ListIdentitiesRequest_keys[k], "ListIdentitiesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListIdentitiesRequest
-- &lt;p&gt;Represents a request to return a list of all identities (email addresses and domains) that you have attempted to verify under your AWS account, regardless of verification status.&lt;/p&gt;
-- @param IdentityType [IdentityType] &lt;p&gt;The type of the identities to list. Possible values are &quot;EmailAddress&quot; and &quot;Domain&quot;. If this parameter is omitted, then all identities will be listed.&lt;/p&gt;
-- @param NextToken [NextToken] &lt;p&gt;The token to use for pagination.&lt;/p&gt;
-- @param MaxItems [MaxItems] &lt;p&gt;The maximum number of identities per page. Possible values are 1-1000 inclusive.&lt;/p&gt;
function M.ListIdentitiesRequest(IdentityType, NextToken, MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListIdentitiesRequest")
	local t = { 
		["IdentityType"] = IdentityType,
		["NextToken"] = NextToken,
		["MaxItems"] = MaxItems,
	}
	M.AssertListIdentitiesRequest(t)
	return t
end

local IdentityNotificationAttributes_keys = { "BounceTopic" = true, "HeadersInBounceNotificationsEnabled" = true, "DeliveryTopic" = true, "HeadersInDeliveryNotificationsEnabled" = true, "ComplaintTopic" = true, "HeadersInComplaintNotificationsEnabled" = true, "ForwardingEnabled" = true, nil }

function M.AssertIdentityNotificationAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IdentityNotificationAttributes to be of type 'table'")
	assert(struct["BounceTopic"], "Expected key BounceTopic to exist in table")
	assert(struct["ComplaintTopic"], "Expected key ComplaintTopic to exist in table")
	assert(struct["DeliveryTopic"], "Expected key DeliveryTopic to exist in table")
	assert(struct["ForwardingEnabled"], "Expected key ForwardingEnabled to exist in table")
	if struct["BounceTopic"] then M.AssertNotificationTopic(struct["BounceTopic"]) end
	if struct["HeadersInBounceNotificationsEnabled"] then M.AssertEnabled(struct["HeadersInBounceNotificationsEnabled"]) end
	if struct["DeliveryTopic"] then M.AssertNotificationTopic(struct["DeliveryTopic"]) end
	if struct["HeadersInDeliveryNotificationsEnabled"] then M.AssertEnabled(struct["HeadersInDeliveryNotificationsEnabled"]) end
	if struct["ComplaintTopic"] then M.AssertNotificationTopic(struct["ComplaintTopic"]) end
	if struct["HeadersInComplaintNotificationsEnabled"] then M.AssertEnabled(struct["HeadersInComplaintNotificationsEnabled"]) end
	if struct["ForwardingEnabled"] then M.AssertEnabled(struct["ForwardingEnabled"]) end
	for k,_ in pairs(struct) do
		assert(IdentityNotificationAttributes_keys[k], "IdentityNotificationAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IdentityNotificationAttributes
-- &lt;p&gt;Represents the notification attributes of an identity, including whether an identity has Amazon Simple Notification Service (Amazon SNS) topics set for bounce, complaint, and/or delivery notifications, and whether feedback forwarding is enabled for bounce and complaint notifications.&lt;/p&gt;
-- @param BounceTopic [NotificationTopic] &lt;p&gt;The Amazon Resource Name (ARN) of the Amazon SNS topic where Amazon SES will publish bounce notifications.&lt;/p&gt;
-- @param HeadersInBounceNotificationsEnabled [Enabled] &lt;p&gt;Describes whether Amazon SES includes the original email headers in Amazon SNS notifications of type &lt;code&gt;Bounce&lt;/code&gt;. A value of &lt;code&gt;true&lt;/code&gt; specifies that Amazon SES will include headers in bounce notifications, and a value of &lt;code&gt;false&lt;/code&gt; specifies that Amazon SES will not include headers in bounce notifications.&lt;/p&gt;
-- @param DeliveryTopic [NotificationTopic] &lt;p&gt;The Amazon Resource Name (ARN) of the Amazon SNS topic where Amazon SES will publish delivery notifications.&lt;/p&gt;
-- @param HeadersInDeliveryNotificationsEnabled [Enabled] &lt;p&gt;Describes whether Amazon SES includes the original email headers in Amazon SNS notifications of type &lt;code&gt;Delivery&lt;/code&gt;. A value of &lt;code&gt;true&lt;/code&gt; specifies that Amazon SES will include headers in delivery notifications, and a value of &lt;code&gt;false&lt;/code&gt; specifies that Amazon SES will not include headers in delivery notifications.&lt;/p&gt;
-- @param ComplaintTopic [NotificationTopic] &lt;p&gt;The Amazon Resource Name (ARN) of the Amazon SNS topic where Amazon SES will publish complaint notifications.&lt;/p&gt;
-- @param HeadersInComplaintNotificationsEnabled [Enabled] &lt;p&gt;Describes whether Amazon SES includes the original email headers in Amazon SNS notifications of type &lt;code&gt;Complaint&lt;/code&gt;. A value of &lt;code&gt;true&lt;/code&gt; specifies that Amazon SES will include headers in complaint notifications, and a value of &lt;code&gt;false&lt;/code&gt; specifies that Amazon SES will not include headers in complaint notifications.&lt;/p&gt;
-- @param ForwardingEnabled [Enabled] &lt;p&gt;Describes whether Amazon SES will forward bounce and complaint notifications as email. &lt;code&gt;true&lt;/code&gt; indicates that Amazon SES will forward bounce and complaint notifications as email, while &lt;code&gt;false&lt;/code&gt; indicates that bounce and complaint notifications will be published only to the specified bounce and complaint Amazon SNS topics.&lt;/p&gt;
-- Required parameter: BounceTopic
-- Required parameter: ComplaintTopic
-- Required parameter: DeliveryTopic
-- Required parameter: ForwardingEnabled
function M.IdentityNotificationAttributes(BounceTopic, HeadersInBounceNotificationsEnabled, DeliveryTopic, HeadersInDeliveryNotificationsEnabled, ComplaintTopic, HeadersInComplaintNotificationsEnabled, ForwardingEnabled, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IdentityNotificationAttributes")
	local t = { 
		["BounceTopic"] = BounceTopic,
		["HeadersInBounceNotificationsEnabled"] = HeadersInBounceNotificationsEnabled,
		["DeliveryTopic"] = DeliveryTopic,
		["HeadersInDeliveryNotificationsEnabled"] = HeadersInDeliveryNotificationsEnabled,
		["ComplaintTopic"] = ComplaintTopic,
		["HeadersInComplaintNotificationsEnabled"] = HeadersInComplaintNotificationsEnabled,
		["ForwardingEnabled"] = ForwardingEnabled,
	}
	M.AssertIdentityNotificationAttributes(t)
	return t
end

local CreateReceiptRuleResponse_keys = { nil }

function M.AssertCreateReceiptRuleResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateReceiptRuleResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(CreateReceiptRuleResponse_keys[k], "CreateReceiptRuleResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateReceiptRuleResponse
-- &lt;p&gt;An empty element returned on a successful request.&lt;/p&gt;
function M.CreateReceiptRuleResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateReceiptRuleResponse")
	local t = { 
	}
	M.AssertCreateReceiptRuleResponse(t)
	return t
end

local MessageRejected_keys = { nil }

function M.AssertMessageRejected(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MessageRejected to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(MessageRejected_keys[k], "MessageRejected contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MessageRejected
-- &lt;p&gt;Indicates that the action failed, and the message could not be sent. Check the error stack for more information about what caused the error.&lt;/p&gt;
function M.MessageRejected(...)
	assert(select("#", ...) == 0, "Too many arguments when creating MessageRejected")
	local t = { 
	}
	M.AssertMessageRejected(t)
	return t
end

local InvalidPolicyException_keys = { nil }

function M.AssertInvalidPolicyException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidPolicyException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidPolicyException_keys[k], "InvalidPolicyException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidPolicyException
-- &lt;p&gt;Indicates that the provided policy is invalid. Check the error stack for more information about what caused the error.&lt;/p&gt;
function M.InvalidPolicyException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidPolicyException")
	local t = { 
	}
	M.AssertInvalidPolicyException(t)
	return t
end

local CloneReceiptRuleSetResponse_keys = { nil }

function M.AssertCloneReceiptRuleSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloneReceiptRuleSetResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(CloneReceiptRuleSetResponse_keys[k], "CloneReceiptRuleSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloneReceiptRuleSetResponse
-- &lt;p&gt;An empty element returned on a successful request.&lt;/p&gt;
function M.CloneReceiptRuleSetResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CloneReceiptRuleSetResponse")
	local t = { 
	}
	M.AssertCloneReceiptRuleSetResponse(t)
	return t
end

local ListIdentityPoliciesResponse_keys = { "PolicyNames" = true, nil }

function M.AssertListIdentityPoliciesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListIdentityPoliciesResponse to be of type 'table'")
	assert(struct["PolicyNames"], "Expected key PolicyNames to exist in table")
	if struct["PolicyNames"] then M.AssertPolicyNameList(struct["PolicyNames"]) end
	for k,_ in pairs(struct) do
		assert(ListIdentityPoliciesResponse_keys[k], "ListIdentityPoliciesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListIdentityPoliciesResponse
-- &lt;p&gt;A list of names of sending authorization policies that apply to an identity.&lt;/p&gt;
-- @param PolicyNames [PolicyNameList] &lt;p&gt;A list of names of policies that apply to the specified identity.&lt;/p&gt;
-- Required parameter: PolicyNames
function M.ListIdentityPoliciesResponse(PolicyNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListIdentityPoliciesResponse")
	local t = { 
		["PolicyNames"] = PolicyNames,
	}
	M.AssertListIdentityPoliciesResponse(t)
	return t
end

local DeleteIdentityRequest_keys = { "Identity" = true, nil }

function M.AssertDeleteIdentityRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteIdentityRequest to be of type 'table'")
	assert(struct["Identity"], "Expected key Identity to exist in table")
	if struct["Identity"] then M.AssertIdentity(struct["Identity"]) end
	for k,_ in pairs(struct) do
		assert(DeleteIdentityRequest_keys[k], "DeleteIdentityRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteIdentityRequest
-- &lt;p&gt;Represents a request to delete one of your Amazon SES identities (an email address or domain).&lt;/p&gt;
-- @param Identity [Identity] &lt;p&gt;The identity to be removed from the list of identities for the AWS Account.&lt;/p&gt;
-- Required parameter: Identity
function M.DeleteIdentityRequest(Identity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteIdentityRequest")
	local t = { 
		["Identity"] = Identity,
	}
	M.AssertDeleteIdentityRequest(t)
	return t
end

local UpdateConfigurationSetEventDestinationResponse_keys = { nil }

function M.AssertUpdateConfigurationSetEventDestinationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateConfigurationSetEventDestinationResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(UpdateConfigurationSetEventDestinationResponse_keys[k], "UpdateConfigurationSetEventDestinationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateConfigurationSetEventDestinationResponse
-- &lt;p&gt;An empty element returned on a successful request.&lt;/p&gt;
function M.UpdateConfigurationSetEventDestinationResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateConfigurationSetEventDestinationResponse")
	local t = { 
	}
	M.AssertUpdateConfigurationSetEventDestinationResponse(t)
	return t
end

local BounceAction_keys = { "Message" = true, "Sender" = true, "SmtpReplyCode" = true, "TopicArn" = true, "StatusCode" = true, nil }

function M.AssertBounceAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BounceAction to be of type 'table'")
	assert(struct["SmtpReplyCode"], "Expected key SmtpReplyCode to exist in table")
	assert(struct["Message"], "Expected key Message to exist in table")
	assert(struct["Sender"], "Expected key Sender to exist in table")
	if struct["Message"] then M.AssertBounceMessage(struct["Message"]) end
	if struct["Sender"] then M.AssertAddress(struct["Sender"]) end
	if struct["SmtpReplyCode"] then M.AssertBounceSmtpReplyCode(struct["SmtpReplyCode"]) end
	if struct["TopicArn"] then M.AssertAmazonResourceName(struct["TopicArn"]) end
	if struct["StatusCode"] then M.AssertBounceStatusCode(struct["StatusCode"]) end
	for k,_ in pairs(struct) do
		assert(BounceAction_keys[k], "BounceAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BounceAction
-- &lt;p&gt;When included in a receipt rule, this action rejects the received email by returning a bounce response to the sender and, optionally, publishes a notification to Amazon Simple Notification Service (Amazon SNS).&lt;/p&gt; &lt;p&gt;For information about sending a bounce message in response to a received email, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-bounce.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param Message [BounceMessage] &lt;p&gt;Human-readable text to include in the bounce message.&lt;/p&gt;
-- @param Sender [Address] &lt;p&gt;The email address of the sender of the bounced email. This is the address from which the bounce message will be sent.&lt;/p&gt;
-- @param SmtpReplyCode [BounceSmtpReplyCode] &lt;p&gt;The SMTP reply code, as defined by &lt;a href=&quot;https://tools.ietf.org/html/rfc5321&quot;&gt;RFC 5321&lt;/a&gt;.&lt;/p&gt;
-- @param TopicArn [AmazonResourceName] &lt;p&gt;The Amazon Resource Name (ARN) of the Amazon SNS topic to notify when the bounce action is taken. An example of an Amazon SNS topic ARN is &lt;code&gt;arn:aws:sns:us-west-2:123456789012:MyTopic&lt;/code&gt;. For more information about Amazon SNS topics, see the &lt;a href=&quot;http://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html&quot;&gt;Amazon SNS Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param StatusCode [BounceStatusCode] &lt;p&gt;The SMTP enhanced status code, as defined by &lt;a href=&quot;https://tools.ietf.org/html/rfc3463&quot;&gt;RFC 3463&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: SmtpReplyCode
-- Required parameter: Message
-- Required parameter: Sender
function M.BounceAction(Message, Sender, SmtpReplyCode, TopicArn, StatusCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BounceAction")
	local t = { 
		["Message"] = Message,
		["Sender"] = Sender,
		["SmtpReplyCode"] = SmtpReplyCode,
		["TopicArn"] = TopicArn,
		["StatusCode"] = StatusCode,
	}
	M.AssertBounceAction(t)
	return t
end

local ListConfigurationSetsResponse_keys = { "ConfigurationSets" = true, "NextToken" = true, nil }

function M.AssertListConfigurationSetsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListConfigurationSetsResponse to be of type 'table'")
	if struct["ConfigurationSets"] then M.AssertConfigurationSets(struct["ConfigurationSets"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListConfigurationSetsResponse_keys[k], "ListConfigurationSetsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListConfigurationSetsResponse
-- &lt;p&gt;A list of configuration sets associated with your AWS account. Configuration sets enable you to publish email sending events. For information about using configuration sets, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param ConfigurationSets [ConfigurationSets] &lt;p&gt;A list of configuration sets.&lt;/p&gt;
-- @param NextToken [NextToken] &lt;p&gt;A token indicating that there are additional configuration sets available to be listed. Pass this token to successive calls of &lt;code&gt;ListConfigurationSets&lt;/code&gt;. &lt;/p&gt;
function M.ListConfigurationSetsResponse(ConfigurationSets, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListConfigurationSetsResponse")
	local t = { 
		["ConfigurationSets"] = ConfigurationSets,
		["NextToken"] = NextToken,
	}
	M.AssertListConfigurationSetsResponse(t)
	return t
end

local SendDataPoint_keys = { "Complaints" = true, "Timestamp" = true, "DeliveryAttempts" = true, "Bounces" = true, "Rejects" = true, nil }

function M.AssertSendDataPoint(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendDataPoint to be of type 'table'")
	if struct["Complaints"] then M.AssertCounter(struct["Complaints"]) end
	if struct["Timestamp"] then M.AssertTimestamp(struct["Timestamp"]) end
	if struct["DeliveryAttempts"] then M.AssertCounter(struct["DeliveryAttempts"]) end
	if struct["Bounces"] then M.AssertCounter(struct["Bounces"]) end
	if struct["Rejects"] then M.AssertCounter(struct["Rejects"]) end
	for k,_ in pairs(struct) do
		assert(SendDataPoint_keys[k], "SendDataPoint contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendDataPoint
-- &lt;p&gt;Represents sending statistics data. Each &lt;code&gt;SendDataPoint&lt;/code&gt; contains statistics for a 15-minute period of sending activity. &lt;/p&gt;
-- @param Complaints [Counter] &lt;p&gt;Number of unwanted emails that were rejected by recipients.&lt;/p&gt;
-- @param Timestamp [Timestamp] &lt;p&gt;Time of the data point.&lt;/p&gt;
-- @param DeliveryAttempts [Counter] &lt;p&gt;Number of emails that have been sent.&lt;/p&gt;
-- @param Bounces [Counter] &lt;p&gt;Number of emails that have bounced.&lt;/p&gt;
-- @param Rejects [Counter] &lt;p&gt;Number of emails rejected by Amazon SES.&lt;/p&gt;
function M.SendDataPoint(Complaints, Timestamp, DeliveryAttempts, Bounces, Rejects, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SendDataPoint")
	local t = { 
		["Complaints"] = Complaints,
		["Timestamp"] = Timestamp,
		["DeliveryAttempts"] = DeliveryAttempts,
		["Bounces"] = Bounces,
		["Rejects"] = Rejects,
	}
	M.AssertSendDataPoint(t)
	return t
end

local ReorderReceiptRuleSetResponse_keys = { nil }

function M.AssertReorderReceiptRuleSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReorderReceiptRuleSetResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ReorderReceiptRuleSetResponse_keys[k], "ReorderReceiptRuleSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReorderReceiptRuleSetResponse
-- &lt;p&gt;An empty element returned on a successful request.&lt;/p&gt;
function M.ReorderReceiptRuleSetResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReorderReceiptRuleSetResponse")
	local t = { 
	}
	M.AssertReorderReceiptRuleSetResponse(t)
	return t
end

local VerifyDomainIdentityRequest_keys = { "Domain" = true, nil }

function M.AssertVerifyDomainIdentityRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VerifyDomainIdentityRequest to be of type 'table'")
	assert(struct["Domain"], "Expected key Domain to exist in table")
	if struct["Domain"] then M.AssertDomain(struct["Domain"]) end
	for k,_ in pairs(struct) do
		assert(VerifyDomainIdentityRequest_keys[k], "VerifyDomainIdentityRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VerifyDomainIdentityRequest
-- &lt;p&gt;Represents a request to begin Amazon SES domain verification and to generate the TXT records that you must publish to the DNS server of your domain to complete the verification. For information about domain verification, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-domains.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param Domain [Domain] &lt;p&gt;The domain to be verified.&lt;/p&gt;
-- Required parameter: Domain
function M.VerifyDomainIdentityRequest(Domain, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VerifyDomainIdentityRequest")
	local t = { 
		["Domain"] = Domain,
	}
	M.AssertVerifyDomainIdentityRequest(t)
	return t
end

local EventDestinationDoesNotExistException_keys = { "EventDestinationName" = true, "ConfigurationSetName" = true, nil }

function M.AssertEventDestinationDoesNotExistException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventDestinationDoesNotExistException to be of type 'table'")
	if struct["EventDestinationName"] then M.AssertEventDestinationName(struct["EventDestinationName"]) end
	if struct["ConfigurationSetName"] then M.AssertConfigurationSetName(struct["ConfigurationSetName"]) end
	for k,_ in pairs(struct) do
		assert(EventDestinationDoesNotExistException_keys[k], "EventDestinationDoesNotExistException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventDestinationDoesNotExistException
-- &lt;p&gt;Indicates that the event destination does not exist.&lt;/p&gt;
-- @param EventDestinationName [EventDestinationName] &lt;p&gt;Indicates that the event destination does not exist.&lt;/p&gt;
-- @param ConfigurationSetName [ConfigurationSetName] &lt;p&gt;Indicates that the event destination does not exist.&lt;/p&gt;
function M.EventDestinationDoesNotExistException(EventDestinationName, ConfigurationSetName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EventDestinationDoesNotExistException")
	local t = { 
		["EventDestinationName"] = EventDestinationName,
		["ConfigurationSetName"] = ConfigurationSetName,
	}
	M.AssertEventDestinationDoesNotExistException(t)
	return t
end

local GetIdentityNotificationAttributesResponse_keys = { "NotificationAttributes" = true, nil }

function M.AssertGetIdentityNotificationAttributesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetIdentityNotificationAttributesResponse to be of type 'table'")
	assert(struct["NotificationAttributes"], "Expected key NotificationAttributes to exist in table")
	if struct["NotificationAttributes"] then M.AssertNotificationAttributes(struct["NotificationAttributes"]) end
	for k,_ in pairs(struct) do
		assert(GetIdentityNotificationAttributesResponse_keys[k], "GetIdentityNotificationAttributesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetIdentityNotificationAttributesResponse
-- &lt;p&gt;Represents the notification attributes for a list of identities.&lt;/p&gt;
-- @param NotificationAttributes [NotificationAttributes] &lt;p&gt;A map of Identity to IdentityNotificationAttributes.&lt;/p&gt;
-- Required parameter: NotificationAttributes
function M.GetIdentityNotificationAttributesResponse(NotificationAttributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetIdentityNotificationAttributesResponse")
	local t = { 
		["NotificationAttributes"] = NotificationAttributes,
	}
	M.AssertGetIdentityNotificationAttributesResponse(t)
	return t
end

local DeleteReceiptRuleResponse_keys = { nil }

function M.AssertDeleteReceiptRuleResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteReceiptRuleResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteReceiptRuleResponse_keys[k], "DeleteReceiptRuleResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteReceiptRuleResponse
-- &lt;p&gt;An empty element returned on a successful request.&lt;/p&gt;
function M.DeleteReceiptRuleResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteReceiptRuleResponse")
	local t = { 
	}
	M.AssertDeleteReceiptRuleResponse(t)
	return t
end

local InvalidCloudWatchDestinationException_keys = { "EventDestinationName" = true, "ConfigurationSetName" = true, nil }

function M.AssertInvalidCloudWatchDestinationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidCloudWatchDestinationException to be of type 'table'")
	if struct["EventDestinationName"] then M.AssertEventDestinationName(struct["EventDestinationName"]) end
	if struct["ConfigurationSetName"] then M.AssertConfigurationSetName(struct["ConfigurationSetName"]) end
	for k,_ in pairs(struct) do
		assert(InvalidCloudWatchDestinationException_keys[k], "InvalidCloudWatchDestinationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidCloudWatchDestinationException
-- &lt;p&gt;Indicates that the Amazon CloudWatch destination is invalid. See the error message for details.&lt;/p&gt;
-- @param EventDestinationName [EventDestinationName] &lt;p&gt;Indicates that the Amazon CloudWatch destination is invalid. See the error message for details.&lt;/p&gt;
-- @param ConfigurationSetName [ConfigurationSetName] &lt;p&gt;Indicates that the Amazon CloudWatch destination is invalid. See the error message for details.&lt;/p&gt;
function M.InvalidCloudWatchDestinationException(EventDestinationName, ConfigurationSetName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidCloudWatchDestinationException")
	local t = { 
		["EventDestinationName"] = EventDestinationName,
		["ConfigurationSetName"] = ConfigurationSetName,
	}
	M.AssertInvalidCloudWatchDestinationException(t)
	return t
end

local CreateConfigurationSetRequest_keys = { "ConfigurationSet" = true, nil }

function M.AssertCreateConfigurationSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateConfigurationSetRequest to be of type 'table'")
	assert(struct["ConfigurationSet"], "Expected key ConfigurationSet to exist in table")
	if struct["ConfigurationSet"] then M.AssertConfigurationSet(struct["ConfigurationSet"]) end
	for k,_ in pairs(struct) do
		assert(CreateConfigurationSetRequest_keys[k], "CreateConfigurationSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateConfigurationSetRequest
-- &lt;p&gt;Represents a request to create a configuration set. Configuration sets enable you to publish email sending events. For information about using configuration sets, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param ConfigurationSet [ConfigurationSet] &lt;p&gt;A data structure that contains the name of the configuration set.&lt;/p&gt;
-- Required parameter: ConfigurationSet
function M.CreateConfigurationSetRequest(ConfigurationSet, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateConfigurationSetRequest")
	local t = { 
		["ConfigurationSet"] = ConfigurationSet,
	}
	M.AssertCreateConfigurationSetRequest(t)
	return t
end

local ListReceiptFiltersResponse_keys = { "Filters" = true, nil }

function M.AssertListReceiptFiltersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListReceiptFiltersResponse to be of type 'table'")
	if struct["Filters"] then M.AssertReceiptFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(ListReceiptFiltersResponse_keys[k], "ListReceiptFiltersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListReceiptFiltersResponse
-- &lt;p&gt;A list of IP address filters that exist under your AWS account.&lt;/p&gt;
-- @param Filters [ReceiptFilterList] &lt;p&gt;A list of IP address filter data structures, which each consist of a name, an IP address range, and whether to allow or block mail from it.&lt;/p&gt;
function M.ListReceiptFiltersResponse(Filters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListReceiptFiltersResponse")
	local t = { 
		["Filters"] = Filters,
	}
	M.AssertListReceiptFiltersResponse(t)
	return t
end

local PutIdentityPolicyRequest_keys = { "Policy" = true, "PolicyName" = true, "Identity" = true, nil }

function M.AssertPutIdentityPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutIdentityPolicyRequest to be of type 'table'")
	assert(struct["Identity"], "Expected key Identity to exist in table")
	assert(struct["PolicyName"], "Expected key PolicyName to exist in table")
	assert(struct["Policy"], "Expected key Policy to exist in table")
	if struct["Policy"] then M.AssertPolicy(struct["Policy"]) end
	if struct["PolicyName"] then M.AssertPolicyName(struct["PolicyName"]) end
	if struct["Identity"] then M.AssertIdentity(struct["Identity"]) end
	for k,_ in pairs(struct) do
		assert(PutIdentityPolicyRequest_keys[k], "PutIdentityPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutIdentityPolicyRequest
-- &lt;p&gt;Represents a request to add or update a sending authorization policy for an identity. Sending authorization is an Amazon SES feature that enables you to authorize other senders to use your identities. For information, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;.&lt;/p&gt;
-- @param Policy [Policy] &lt;p&gt;The text of the policy in JSON format. The policy cannot exceed 4 KB.&lt;/p&gt; &lt;p&gt;For information about the syntax of sending authorization policies, see the &lt;a href=&quot;http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization-policies.html&quot;&gt;Amazon SES Developer Guide&lt;/a&gt;. &lt;/p&gt;
-- @param PolicyName [PolicyName] &lt;p&gt;The name of the policy.&lt;/p&gt; &lt;p&gt;The policy name cannot exceed 64 characters and can only include alphanumeric characters, dashes, and underscores.&lt;/p&gt;
-- @param Identity [Identity] &lt;p&gt;The identity to which the policy will apply. You can specify an identity by using its name or by using its Amazon Resource Name (ARN). Examples: &lt;code&gt;user@example.com&lt;/code&gt;, &lt;code&gt;example.com&lt;/code&gt;, &lt;code&gt;arn:aws:ses:us-east-1:123456789012:identity/example.com&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;To successfully call this API, you must own the identity.&lt;/p&gt;
-- Required parameter: Identity
-- Required parameter: PolicyName
-- Required parameter: Policy
function M.PutIdentityPolicyRequest(Policy, PolicyName, Identity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutIdentityPolicyRequest")
	local t = { 
		["Policy"] = Policy,
		["PolicyName"] = PolicyName,
		["Identity"] = Identity,
	}
	M.AssertPutIdentityPolicyRequest(t)
	return t
end

function M.AssertNotificationType(str)
	assert(str)
	assert(type(str) == "string", "Expected NotificationType to be of type 'string'")
end

--  
function M.NotificationType(str)
	M.AssertNotificationType(str)
	return str
end

function M.AssertMessageTagValue(str)
	assert(str)
	assert(type(str) == "string", "Expected MessageTagValue to be of type 'string'")
end

--  
function M.MessageTagValue(str)
	M.AssertMessageTagValue(str)
	return str
end

function M.AssertVerificationStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected VerificationStatus to be of type 'string'")
end

--  
function M.VerificationStatus(str)
	M.AssertVerificationStatus(str)
	return str
end

function M.AssertAmazonResourceName(str)
	assert(str)
	assert(type(str) == "string", "Expected AmazonResourceName to be of type 'string'")
end

--  
function M.AmazonResourceName(str)
	M.AssertAmazonResourceName(str)
	return str
end

function M.AssertReceiptRuleSetName(str)
	assert(str)
	assert(type(str) == "string", "Expected ReceiptRuleSetName to be of type 'string'")
end

--  
function M.ReceiptRuleSetName(str)
	M.AssertReceiptRuleSetName(str)
	return str
end

function M.AssertRemoteMta(str)
	assert(str)
	assert(type(str) == "string", "Expected RemoteMta to be of type 'string'")
end

--  
function M.RemoteMta(str)
	M.AssertRemoteMta(str)
	return str
end

function M.AssertTlsPolicy(str)
	assert(str)
	assert(type(str) == "string", "Expected TlsPolicy to be of type 'string'")
end

--  
function M.TlsPolicy(str)
	M.AssertTlsPolicy(str)
	return str
end

function M.AssertMessageData(str)
	assert(str)
	assert(type(str) == "string", "Expected MessageData to be of type 'string'")
end

--  
function M.MessageData(str)
	M.AssertMessageData(str)
	return str
end

function M.AssertExtensionFieldValue(str)
	assert(str)
	assert(type(str) == "string", "Expected ExtensionFieldValue to be of type 'string'")
end

--  
function M.ExtensionFieldValue(str)
	M.AssertExtensionFieldValue(str)
	return str
end

function M.AssertNotificationTopic(str)
	assert(str)
	assert(type(str) == "string", "Expected NotificationTopic to be of type 'string'")
end

--  
function M.NotificationTopic(str)
	M.AssertNotificationTopic(str)
	return str
end

function M.AssertDefaultDimensionValue(str)
	assert(str)
	assert(type(str) == "string", "Expected DefaultDimensionValue to be of type 'string'")
end

--  
function M.DefaultDimensionValue(str)
	M.AssertDefaultDimensionValue(str)
	return str
end

function M.AssertSNSActionEncoding(str)
	assert(str)
	assert(type(str) == "string", "Expected SNSActionEncoding to be of type 'string'")
end

--  
function M.SNSActionEncoding(str)
	M.AssertSNSActionEncoding(str)
	return str
end

function M.AssertEventDestinationName(str)
	assert(str)
	assert(type(str) == "string", "Expected EventDestinationName to be of type 'string'")
end

--  
function M.EventDestinationName(str)
	M.AssertEventDestinationName(str)
	return str
end

function M.AssertMessageId(str)
	assert(str)
	assert(type(str) == "string", "Expected MessageId to be of type 'string'")
end

--  
function M.MessageId(str)
	M.AssertMessageId(str)
	return str
end

function M.AssertDsnStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected DsnStatus to be of type 'string'")
end

--  
function M.DsnStatus(str)
	M.AssertDsnStatus(str)
	return str
end

function M.AssertS3KeyPrefix(str)
	assert(str)
	assert(type(str) == "string", "Expected S3KeyPrefix to be of type 'string'")
end

--  
function M.S3KeyPrefix(str)
	M.AssertS3KeyPrefix(str)
	return str
end

function M.AssertReportingMta(str)
	assert(str)
	assert(type(str) == "string", "Expected ReportingMta to be of type 'string'")
end

--  
function M.ReportingMta(str)
	M.AssertReportingMta(str)
	return str
end

function M.AssertBounceType(str)
	assert(str)
	assert(type(str) == "string", "Expected BounceType to be of type 'string'")
end

--  
function M.BounceType(str)
	M.AssertBounceType(str)
	return str
end

function M.AssertS3BucketName(str)
	assert(str)
	assert(type(str) == "string", "Expected S3BucketName to be of type 'string'")
end

--  
function M.S3BucketName(str)
	M.AssertS3BucketName(str)
	return str
end

function M.AssertExtensionFieldName(str)
	assert(str)
	assert(type(str) == "string", "Expected ExtensionFieldName to be of type 'string'")
end

--  
function M.ExtensionFieldName(str)
	M.AssertExtensionFieldName(str)
	return str
end

function M.AssertDimensionValueSource(str)
	assert(str)
	assert(type(str) == "string", "Expected DimensionValueSource to be of type 'string'")
end

--  
function M.DimensionValueSource(str)
	M.AssertDimensionValueSource(str)
	return str
end

function M.AssertDomain(str)
	assert(str)
	assert(type(str) == "string", "Expected Domain to be of type 'string'")
end

--  
function M.Domain(str)
	M.AssertDomain(str)
	return str
end

function M.AssertReceiptFilterPolicy(str)
	assert(str)
	assert(type(str) == "string", "Expected ReceiptFilterPolicy to be of type 'string'")
end

--  
function M.ReceiptFilterPolicy(str)
	M.AssertReceiptFilterPolicy(str)
	return str
end

function M.AssertMailFromDomainName(str)
	assert(str)
	assert(type(str) == "string", "Expected MailFromDomainName to be of type 'string'")
end

--  
function M.MailFromDomainName(str)
	M.AssertMailFromDomainName(str)
	return str
end

function M.AssertStopScope(str)
	assert(str)
	assert(type(str) == "string", "Expected StopScope to be of type 'string'")
end

--  
function M.StopScope(str)
	M.AssertStopScope(str)
	return str
end

function M.AssertCustomMailFromStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected CustomMailFromStatus to be of type 'string'")
end

--  
function M.CustomMailFromStatus(str)
	M.AssertCustomMailFromStatus(str)
	return str
end

function M.AssertEventType(str)
	assert(str)
	assert(type(str) == "string", "Expected EventType to be of type 'string'")
end

--  
function M.EventType(str)
	M.AssertEventType(str)
	return str
end

function M.AssertExplanation(str)
	assert(str)
	assert(type(str) == "string", "Expected Explanation to be of type 'string'")
end

--  
function M.Explanation(str)
	M.AssertExplanation(str)
	return str
end

function M.AssertRecipient(str)
	assert(str)
	assert(type(str) == "string", "Expected Recipient to be of type 'string'")
end

--  
function M.Recipient(str)
	M.AssertRecipient(str)
	return str
end

function M.AssertDiagnosticCode(str)
	assert(str)
	assert(type(str) == "string", "Expected DiagnosticCode to be of type 'string'")
end

--  
function M.DiagnosticCode(str)
	M.AssertDiagnosticCode(str)
	return str
end

function M.AssertHeaderName(str)
	assert(str)
	assert(type(str) == "string", "Expected HeaderName to be of type 'string'")
end

--  
function M.HeaderName(str)
	M.AssertHeaderName(str)
	return str
end

function M.AssertVerificationToken(str)
	assert(str)
	assert(type(str) == "string", "Expected VerificationToken to be of type 'string'")
end

--  
function M.VerificationToken(str)
	M.AssertVerificationToken(str)
	return str
end

function M.AssertBounceSmtpReplyCode(str)
	assert(str)
	assert(type(str) == "string", "Expected BounceSmtpReplyCode to be of type 'string'")
end

--  
function M.BounceSmtpReplyCode(str)
	M.AssertBounceSmtpReplyCode(str)
	return str
end

function M.AssertBounceStatusCode(str)
	assert(str)
	assert(type(str) == "string", "Expected BounceStatusCode to be of type 'string'")
end

--  
function M.BounceStatusCode(str)
	M.AssertBounceStatusCode(str)
	return str
end

function M.AssertDsnAction(str)
	assert(str)
	assert(type(str) == "string", "Expected DsnAction to be of type 'string'")
end

--  
function M.DsnAction(str)
	M.AssertDsnAction(str)
	return str
end

function M.AssertIdentity(str)
	assert(str)
	assert(type(str) == "string", "Expected Identity to be of type 'string'")
end

--  
function M.Identity(str)
	M.AssertIdentity(str)
	return str
end

function M.AssertConfigurationSetAttribute(str)
	assert(str)
	assert(type(str) == "string", "Expected ConfigurationSetAttribute to be of type 'string'")
end

--  
function M.ConfigurationSetAttribute(str)
	M.AssertConfigurationSetAttribute(str)
	return str
end

function M.AssertPolicyName(str)
	assert(str)
	assert(type(str) == "string", "Expected PolicyName to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PolicyName(str)
	M.AssertPolicyName(str)
	return str
end

function M.AssertIdentityType(str)
	assert(str)
	assert(type(str) == "string", "Expected IdentityType to be of type 'string'")
end

--  
function M.IdentityType(str)
	M.AssertIdentityType(str)
	return str
end

function M.AssertCharset(str)
	assert(str)
	assert(type(str) == "string", "Expected Charset to be of type 'string'")
end

--  
function M.Charset(str)
	M.AssertCharset(str)
	return str
end

function M.AssertReceiptFilterName(str)
	assert(str)
	assert(type(str) == "string", "Expected ReceiptFilterName to be of type 'string'")
end

--  
function M.ReceiptFilterName(str)
	M.AssertReceiptFilterName(str)
	return str
end

function M.AssertPolicy(str)
	assert(str)
	assert(type(str) == "string", "Expected Policy to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Policy(str)
	M.AssertPolicy(str)
	return str
end

function M.AssertMessageTagName(str)
	assert(str)
	assert(type(str) == "string", "Expected MessageTagName to be of type 'string'")
end

--  
function M.MessageTagName(str)
	M.AssertMessageTagName(str)
	return str
end

function M.AssertBounceMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected BounceMessage to be of type 'string'")
end

--  
function M.BounceMessage(str)
	M.AssertBounceMessage(str)
	return str
end

function M.AssertInvocationType(str)
	assert(str)
	assert(type(str) == "string", "Expected InvocationType to be of type 'string'")
end

--  
function M.InvocationType(str)
	M.AssertInvocationType(str)
	return str
end

function M.AssertDimensionName(str)
	assert(str)
	assert(type(str) == "string", "Expected DimensionName to be of type 'string'")
end

--  
function M.DimensionName(str)
	M.AssertDimensionName(str)
	return str
end

function M.AssertAddress(str)
	assert(str)
	assert(type(str) == "string", "Expected Address to be of type 'string'")
end

--  
function M.Address(str)
	M.AssertAddress(str)
	return str
end

function M.AssertCidr(str)
	assert(str)
	assert(type(str) == "string", "Expected Cidr to be of type 'string'")
end

--  
function M.Cidr(str)
	M.AssertCidr(str)
	return str
end

function M.AssertRuleOrRuleSetName(str)
	assert(str)
	assert(type(str) == "string", "Expected RuleOrRuleSetName to be of type 'string'")
end

--  
function M.RuleOrRuleSetName(str)
	M.AssertRuleOrRuleSetName(str)
	return str
end

function M.AssertNextToken(str)
	assert(str)
	assert(type(str) == "string", "Expected NextToken to be of type 'string'")
end

--  
function M.NextToken(str)
	M.AssertNextToken(str)
	return str
end

function M.AssertHeaderValue(str)
	assert(str)
	assert(type(str) == "string", "Expected HeaderValue to be of type 'string'")
end

--  
function M.HeaderValue(str)
	M.AssertHeaderValue(str)
	return str
end

function M.AssertBehaviorOnMXFailure(str)
	assert(str)
	assert(type(str) == "string", "Expected BehaviorOnMXFailure to be of type 'string'")
end

--  
function M.BehaviorOnMXFailure(str)
	M.AssertBehaviorOnMXFailure(str)
	return str
end

function M.AssertConfigurationSetName(str)
	assert(str)
	assert(type(str) == "string", "Expected ConfigurationSetName to be of type 'string'")
end

--  
function M.ConfigurationSetName(str)
	M.AssertConfigurationSetName(str)
	return str
end

function M.AssertReceiptRuleName(str)
	assert(str)
	assert(type(str) == "string", "Expected ReceiptRuleName to be of type 'string'")
end

--  
function M.ReceiptRuleName(str)
	M.AssertReceiptRuleName(str)
	return str
end

function M.AssertMaxSendRate(double)
	assert(double)
	assert(type(double) == "number", "Expected MaxSendRate to be of type 'number'")
end

function M.MaxSendRate(double)
	M.AssertMaxSendRate(double)
	return double
end

function M.AssertMax24HourSend(double)
	assert(double)
	assert(type(double) == "number", "Expected Max24HourSend to be of type 'number'")
end

function M.Max24HourSend(double)
	M.AssertMax24HourSend(double)
	return double
end

function M.AssertSentLast24Hours(double)
	assert(double)
	assert(type(double) == "number", "Expected SentLast24Hours to be of type 'number'")
end

function M.SentLast24Hours(double)
	M.AssertSentLast24Hours(double)
	return double
end

function M.AssertCounter(long)
	assert(long)
	assert(type(long) == "number", "Expected Counter to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.Counter(long)
	M.AssertCounter(long)
	return long
end

function M.AssertMaxItems(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxItems to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.MaxItems(integer)
	M.AssertMaxItems(integer)
	return integer
end

function M.AssertEnabled(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Enabled to be of type 'boolean'")
end

function M.Enabled(boolean)
	M.AssertEnabled(boolean)
	return boolean
end

function M.AssertDkimAttributes(map)
	assert(map)
	assert(type(map) == "table", "Expected DkimAttributes to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertIdentity(k)
		M.AssertIdentityDkimAttributes(v)
	end
end

function M.DkimAttributes(map)
	M.AssertDkimAttributes(map)
	return map
end

function M.AssertPolicyMap(map)
	assert(map)
	assert(type(map) == "table", "Expected PolicyMap to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertPolicyName(k)
		M.AssertPolicy(v)
	end
end

function M.PolicyMap(map)
	M.AssertPolicyMap(map)
	return map
end

function M.AssertMailFromDomainAttributes(map)
	assert(map)
	assert(type(map) == "table", "Expected MailFromDomainAttributes to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertIdentity(k)
		M.AssertIdentityMailFromDomainAttributes(v)
	end
end

function M.MailFromDomainAttributes(map)
	M.AssertMailFromDomainAttributes(map)
	return map
end

function M.AssertVerificationAttributes(map)
	assert(map)
	assert(type(map) == "table", "Expected VerificationAttributes to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertIdentity(k)
		M.AssertIdentityVerificationAttributes(v)
	end
end

function M.VerificationAttributes(map)
	M.AssertVerificationAttributes(map)
	return map
end

function M.AssertNotificationAttributes(map)
	assert(map)
	assert(type(map) == "table", "Expected NotificationAttributes to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertIdentity(k)
		M.AssertIdentityNotificationAttributes(v)
	end
end

function M.NotificationAttributes(map)
	M.AssertNotificationAttributes(map)
	return map
end

function M.AssertArrivalDate(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected ArrivalDate to be of type 'string'")
end

function M.ArrivalDate(timestamp)
	M.AssertArrivalDate(timestamp)
	return timestamp
end

function M.AssertLastAttemptDate(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected LastAttemptDate to be of type 'string'")
end

function M.LastAttemptDate(timestamp)
	M.AssertLastAttemptDate(timestamp)
	return timestamp
end

function M.AssertTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Timestamp to be of type 'string'")
end

function M.Timestamp(timestamp)
	M.AssertTimestamp(timestamp)
	return timestamp
end

function M.AssertRawMessageData(blob)
	assert(blob)
	assert(type(string) == "string", "Expected RawMessageData to be of type 'string'")
end

function M.RawMessageData(blob)
	M.AssertRawMessageData(blob)
	return blob
end

function M.AssertAddressList(list)
	assert(list)
	assert(type(list) == "table", "Expected AddressList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAddress(v)
	end
end

--  
-- List of Address objects
function M.AddressList(list)
	M.AssertAddressList(list)
	return list
end

function M.AssertEventDestinations(list)
	assert(list)
	assert(type(list) == "table", "Expected EventDestinations to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertEventDestination(v)
	end
end

--  
-- List of EventDestination objects
function M.EventDestinations(list)
	M.AssertEventDestinations(list)
	return list
end

function M.AssertPolicyNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected PolicyNameList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertPolicyName(v)
	end
end

--  
-- List of PolicyName objects
function M.PolicyNameList(list)
	M.AssertPolicyNameList(list)
	return list
end

function M.AssertBouncedRecipientInfoList(list)
	assert(list)
	assert(type(list) == "table", "Expected BouncedRecipientInfoList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertBouncedRecipientInfo(v)
	end
end

--  
-- List of BouncedRecipientInfo objects
function M.BouncedRecipientInfoList(list)
	M.AssertBouncedRecipientInfoList(list)
	return list
end

function M.AssertIdentityList(list)
	assert(list)
	assert(type(list) == "table", "Expected IdentityList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertIdentity(v)
	end
end

--  
-- List of Identity objects
function M.IdentityList(list)
	M.AssertIdentityList(list)
	return list
end

function M.AssertReceiptRulesList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReceiptRulesList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertReceiptRule(v)
	end
end

--  
-- List of ReceiptRule objects
function M.ReceiptRulesList(list)
	M.AssertReceiptRulesList(list)
	return list
end

function M.AssertCloudWatchDimensionConfigurations(list)
	assert(list)
	assert(type(list) == "table", "Expected CloudWatchDimensionConfigurations to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertCloudWatchDimensionConfiguration(v)
	end
end

--  
-- List of CloudWatchDimensionConfiguration objects
function M.CloudWatchDimensionConfigurations(list)
	M.AssertCloudWatchDimensionConfigurations(list)
	return list
end

function M.AssertReceiptFilterList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReceiptFilterList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertReceiptFilter(v)
	end
end

--  
-- List of ReceiptFilter objects
function M.ReceiptFilterList(list)
	M.AssertReceiptFilterList(list)
	return list
end

function M.AssertExtensionFieldList(list)
	assert(list)
	assert(type(list) == "table", "Expected ExtensionFieldList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertExtensionField(v)
	end
end

--  
-- List of ExtensionField objects
function M.ExtensionFieldList(list)
	M.AssertExtensionFieldList(list)
	return list
end

function M.AssertConfigurationSetAttributeList(list)
	assert(list)
	assert(type(list) == "table", "Expected ConfigurationSetAttributeList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertConfigurationSetAttribute(v)
	end
end

--  
-- List of ConfigurationSetAttribute objects
function M.ConfigurationSetAttributeList(list)
	M.AssertConfigurationSetAttributeList(list)
	return list
end

function M.AssertEventTypes(list)
	assert(list)
	assert(type(list) == "table", "Expected EventTypes to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertEventType(v)
	end
end

--  
-- List of EventType objects
function M.EventTypes(list)
	M.AssertEventTypes(list)
	return list
end

function M.AssertRecipientsList(list)
	assert(list)
	assert(type(list) == "table", "Expected RecipientsList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertRecipient(v)
	end
end

--  
-- List of Recipient objects
function M.RecipientsList(list)
	M.AssertRecipientsList(list)
	return list
end

function M.AssertConfigurationSets(list)
	assert(list)
	assert(type(list) == "table", "Expected ConfigurationSets to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertConfigurationSet(v)
	end
end

--  
-- List of ConfigurationSet objects
function M.ConfigurationSets(list)
	M.AssertConfigurationSets(list)
	return list
end

function M.AssertVerificationTokenList(list)
	assert(list)
	assert(type(list) == "table", "Expected VerificationTokenList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertVerificationToken(v)
	end
end

--  
-- List of VerificationToken objects
function M.VerificationTokenList(list)
	M.AssertVerificationTokenList(list)
	return list
end

function M.AssertReceiptRuleNamesList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReceiptRuleNamesList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertReceiptRuleName(v)
	end
end

--  
-- List of ReceiptRuleName objects
function M.ReceiptRuleNamesList(list)
	M.AssertReceiptRuleNamesList(list)
	return list
end

function M.AssertSendDataPointList(list)
	assert(list)
	assert(type(list) == "table", "Expected SendDataPointList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertSendDataPoint(v)
	end
end

--  
-- List of SendDataPoint objects
function M.SendDataPointList(list)
	M.AssertSendDataPointList(list)
	return list
end

function M.AssertReceiptRuleSetsLists(list)
	assert(list)
	assert(type(list) == "table", "Expected ReceiptRuleSetsLists to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertReceiptRuleSetMetadata(v)
	end
end

--  
-- List of ReceiptRuleSetMetadata objects
function M.ReceiptRuleSetsLists(list)
	M.AssertReceiptRuleSetsLists(list)
	return list
end

function M.AssertMessageTagList(list)
	assert(list)
	assert(type(list) == "table", "Expected MessageTagList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertMessageTag(v)
	end
end

--  
-- List of MessageTag objects
function M.MessageTagList(list)
	M.AssertMessageTagList(list)
	return list
end

function M.AssertReceiptActionsList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReceiptActionsList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertReceiptAction(v)
	end
end

--  
-- List of ReceiptAction objects
function M.ReceiptActionsList(list)
	M.AssertReceiptActionsList(list)
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
			return "email.amazonaws.com"
		end
	end
	local ss = { "email" }
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
--- CreateReceiptRule
-- @param CreateReceiptRuleRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateReceiptRuleAsync(CreateReceiptRuleRequest, cb)
	assert(CreateReceiptRuleRequest, "You must provide a CreateReceiptRuleRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateReceiptRule",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateReceiptRuleRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetSendStatistics
-- @param 
-- @param cb Callback function accepting two args: response, error_message
function M.GetSendStatisticsAsync(, cb)
	assert(, "You must provide a ")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetSendStatistics",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", , headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ReorderReceiptRuleSet
-- @param ReorderReceiptRuleSetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ReorderReceiptRuleSetAsync(ReorderReceiptRuleSetRequest, cb)
	assert(ReorderReceiptRuleSetRequest, "You must provide a ReorderReceiptRuleSetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ReorderReceiptRuleSet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ReorderReceiptRuleSetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetIdentityPolicies
-- @param GetIdentityPoliciesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetIdentityPoliciesAsync(GetIdentityPoliciesRequest, cb)
	assert(GetIdentityPoliciesRequest, "You must provide a GetIdentityPoliciesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetIdentityPolicies",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetIdentityPoliciesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- VerifyEmailAddress
-- @param VerifyEmailAddressRequest
-- @param cb Callback function accepting two args: response, error_message
function M.VerifyEmailAddressAsync(VerifyEmailAddressRequest, cb)
	assert(VerifyEmailAddressRequest, "You must provide a VerifyEmailAddressRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".VerifyEmailAddress",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", VerifyEmailAddressRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SetIdentityMailFromDomain
-- @param SetIdentityMailFromDomainRequest
-- @param cb Callback function accepting two args: response, error_message
function M.SetIdentityMailFromDomainAsync(SetIdentityMailFromDomainRequest, cb)
	assert(SetIdentityMailFromDomainRequest, "You must provide a SetIdentityMailFromDomainRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".SetIdentityMailFromDomain",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SetIdentityMailFromDomainRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListReceiptFilters
-- @param ListReceiptFiltersRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListReceiptFiltersAsync(ListReceiptFiltersRequest, cb)
	assert(ListReceiptFiltersRequest, "You must provide a ListReceiptFiltersRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListReceiptFilters",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListReceiptFiltersRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeReceiptRuleSet
-- @param DescribeReceiptRuleSetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeReceiptRuleSetAsync(DescribeReceiptRuleSetRequest, cb)
	assert(DescribeReceiptRuleSetRequest, "You must provide a DescribeReceiptRuleSetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeReceiptRuleSet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeReceiptRuleSetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteReceiptFilter
-- @param DeleteReceiptFilterRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteReceiptFilterAsync(DeleteReceiptFilterRequest, cb)
	assert(DeleteReceiptFilterRequest, "You must provide a DeleteReceiptFilterRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteReceiptFilter",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteReceiptFilterRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateConfigurationSetEventDestination
-- @param UpdateConfigurationSetEventDestinationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateConfigurationSetEventDestinationAsync(UpdateConfigurationSetEventDestinationRequest, cb)
	assert(UpdateConfigurationSetEventDestinationRequest, "You must provide a UpdateConfigurationSetEventDestinationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateConfigurationSetEventDestination",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateConfigurationSetEventDestinationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SetIdentityFeedbackForwardingEnabled
-- @param SetIdentityFeedbackForwardingEnabledRequest
-- @param cb Callback function accepting two args: response, error_message
function M.SetIdentityFeedbackForwardingEnabledAsync(SetIdentityFeedbackForwardingEnabledRequest, cb)
	assert(SetIdentityFeedbackForwardingEnabledRequest, "You must provide a SetIdentityFeedbackForwardingEnabledRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".SetIdentityFeedbackForwardingEnabled",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SetIdentityFeedbackForwardingEnabledRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateReceiptRule
-- @param UpdateReceiptRuleRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateReceiptRuleAsync(UpdateReceiptRuleRequest, cb)
	assert(UpdateReceiptRuleRequest, "You must provide a UpdateReceiptRuleRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateReceiptRule",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateReceiptRuleRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SendBounce
-- @param SendBounceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.SendBounceAsync(SendBounceRequest, cb)
	assert(SendBounceRequest, "You must provide a SendBounceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".SendBounce",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SendBounceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateConfigurationSetEventDestination
-- @param CreateConfigurationSetEventDestinationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateConfigurationSetEventDestinationAsync(CreateConfigurationSetEventDestinationRequest, cb)
	assert(CreateConfigurationSetEventDestinationRequest, "You must provide a CreateConfigurationSetEventDestinationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateConfigurationSetEventDestination",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateConfigurationSetEventDestinationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetIdentityDkimAttributes
-- @param GetIdentityDkimAttributesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetIdentityDkimAttributesAsync(GetIdentityDkimAttributesRequest, cb)
	assert(GetIdentityDkimAttributesRequest, "You must provide a GetIdentityDkimAttributesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetIdentityDkimAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetIdentityDkimAttributesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SetReceiptRulePosition
-- @param SetReceiptRulePositionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.SetReceiptRulePositionAsync(SetReceiptRulePositionRequest, cb)
	assert(SetReceiptRulePositionRequest, "You must provide a SetReceiptRulePositionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".SetReceiptRulePosition",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SetReceiptRulePositionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteReceiptRule
-- @param DeleteReceiptRuleRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteReceiptRuleAsync(DeleteReceiptRuleRequest, cb)
	assert(DeleteReceiptRuleRequest, "You must provide a DeleteReceiptRuleRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteReceiptRule",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteReceiptRuleRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeConfigurationSet
-- @param DescribeConfigurationSetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeConfigurationSetAsync(DescribeConfigurationSetRequest, cb)
	assert(DescribeConfigurationSetRequest, "You must provide a DescribeConfigurationSetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeConfigurationSet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeConfigurationSetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListVerifiedEmailAddresses
-- @param 
-- @param cb Callback function accepting two args: response, error_message
function M.ListVerifiedEmailAddressesAsync(, cb)
	assert(, "You must provide a ")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListVerifiedEmailAddresses",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", , headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteConfigurationSet
-- @param DeleteConfigurationSetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteConfigurationSetAsync(DeleteConfigurationSetRequest, cb)
	assert(DeleteConfigurationSetRequest, "You must provide a DeleteConfigurationSetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteConfigurationSet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteConfigurationSetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CloneReceiptRuleSet
-- @param CloneReceiptRuleSetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CloneReceiptRuleSetAsync(CloneReceiptRuleSetRequest, cb)
	assert(CloneReceiptRuleSetRequest, "You must provide a CloneReceiptRuleSetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CloneReceiptRuleSet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CloneReceiptRuleSetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- VerifyDomainIdentity
-- @param VerifyDomainIdentityRequest
-- @param cb Callback function accepting two args: response, error_message
function M.VerifyDomainIdentityAsync(VerifyDomainIdentityRequest, cb)
	assert(VerifyDomainIdentityRequest, "You must provide a VerifyDomainIdentityRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".VerifyDomainIdentity",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", VerifyDomainIdentityRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeActiveReceiptRuleSet
-- @param DescribeActiveReceiptRuleSetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeActiveReceiptRuleSetAsync(DescribeActiveReceiptRuleSetRequest, cb)
	assert(DescribeActiveReceiptRuleSetRequest, "You must provide a DescribeActiveReceiptRuleSetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeActiveReceiptRuleSet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeActiveReceiptRuleSetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteIdentityPolicy
-- @param DeleteIdentityPolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteIdentityPolicyAsync(DeleteIdentityPolicyRequest, cb)
	assert(DeleteIdentityPolicyRequest, "You must provide a DeleteIdentityPolicyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteIdentityPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteIdentityPolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SetActiveReceiptRuleSet
-- @param SetActiveReceiptRuleSetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.SetActiveReceiptRuleSetAsync(SetActiveReceiptRuleSetRequest, cb)
	assert(SetActiveReceiptRuleSetRequest, "You must provide a SetActiveReceiptRuleSetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".SetActiveReceiptRuleSet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SetActiveReceiptRuleSetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteReceiptRuleSet
-- @param DeleteReceiptRuleSetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteReceiptRuleSetAsync(DeleteReceiptRuleSetRequest, cb)
	assert(DeleteReceiptRuleSetRequest, "You must provide a DeleteReceiptRuleSetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteReceiptRuleSet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteReceiptRuleSetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SetIdentityDkimEnabled
-- @param SetIdentityDkimEnabledRequest
-- @param cb Callback function accepting two args: response, error_message
function M.SetIdentityDkimEnabledAsync(SetIdentityDkimEnabledRequest, cb)
	assert(SetIdentityDkimEnabledRequest, "You must provide a SetIdentityDkimEnabledRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".SetIdentityDkimEnabled",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SetIdentityDkimEnabledRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetSendQuota
-- @param 
-- @param cb Callback function accepting two args: response, error_message
function M.GetSendQuotaAsync(, cb)
	assert(, "You must provide a ")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetSendQuota",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", , headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SetIdentityNotificationTopic
-- @param SetIdentityNotificationTopicRequest
-- @param cb Callback function accepting two args: response, error_message
function M.SetIdentityNotificationTopicAsync(SetIdentityNotificationTopicRequest, cb)
	assert(SetIdentityNotificationTopicRequest, "You must provide a SetIdentityNotificationTopicRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".SetIdentityNotificationTopic",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SetIdentityNotificationTopicRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateConfigurationSet
-- @param CreateConfigurationSetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateConfigurationSetAsync(CreateConfigurationSetRequest, cb)
	assert(CreateConfigurationSetRequest, "You must provide a CreateConfigurationSetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateConfigurationSet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateConfigurationSetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteVerifiedEmailAddress
-- @param DeleteVerifiedEmailAddressRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteVerifiedEmailAddressAsync(DeleteVerifiedEmailAddressRequest, cb)
	assert(DeleteVerifiedEmailAddressRequest, "You must provide a DeleteVerifiedEmailAddressRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteVerifiedEmailAddress",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteVerifiedEmailAddressRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListConfigurationSets
-- @param ListConfigurationSetsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListConfigurationSetsAsync(ListConfigurationSetsRequest, cb)
	assert(ListConfigurationSetsRequest, "You must provide a ListConfigurationSetsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListConfigurationSets",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListConfigurationSetsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateReceiptFilter
-- @param CreateReceiptFilterRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateReceiptFilterAsync(CreateReceiptFilterRequest, cb)
	assert(CreateReceiptFilterRequest, "You must provide a CreateReceiptFilterRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateReceiptFilter",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateReceiptFilterRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeReceiptRule
-- @param DescribeReceiptRuleRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeReceiptRuleAsync(DescribeReceiptRuleRequest, cb)
	assert(DescribeReceiptRuleRequest, "You must provide a DescribeReceiptRuleRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeReceiptRule",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeReceiptRuleRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListReceiptRuleSets
-- @param ListReceiptRuleSetsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListReceiptRuleSetsAsync(ListReceiptRuleSetsRequest, cb)
	assert(ListReceiptRuleSetsRequest, "You must provide a ListReceiptRuleSetsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListReceiptRuleSets",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListReceiptRuleSetsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetIdentityNotificationAttributes
-- @param GetIdentityNotificationAttributesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetIdentityNotificationAttributesAsync(GetIdentityNotificationAttributesRequest, cb)
	assert(GetIdentityNotificationAttributesRequest, "You must provide a GetIdentityNotificationAttributesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetIdentityNotificationAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetIdentityNotificationAttributesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SetIdentityHeadersInNotificationsEnabled
-- @param SetIdentityHeadersInNotificationsEnabledRequest
-- @param cb Callback function accepting two args: response, error_message
function M.SetIdentityHeadersInNotificationsEnabledAsync(SetIdentityHeadersInNotificationsEnabledRequest, cb)
	assert(SetIdentityHeadersInNotificationsEnabledRequest, "You must provide a SetIdentityHeadersInNotificationsEnabledRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".SetIdentityHeadersInNotificationsEnabled",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SetIdentityHeadersInNotificationsEnabledRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SendEmail
-- @param SendEmailRequest
-- @param cb Callback function accepting two args: response, error_message
function M.SendEmailAsync(SendEmailRequest, cb)
	assert(SendEmailRequest, "You must provide a SendEmailRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".SendEmail",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SendEmailRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteIdentity
-- @param DeleteIdentityRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteIdentityAsync(DeleteIdentityRequest, cb)
	assert(DeleteIdentityRequest, "You must provide a DeleteIdentityRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteIdentity",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteIdentityRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- VerifyDomainDkim
-- @param VerifyDomainDkimRequest
-- @param cb Callback function accepting two args: response, error_message
function M.VerifyDomainDkimAsync(VerifyDomainDkimRequest, cb)
	assert(VerifyDomainDkimRequest, "You must provide a VerifyDomainDkimRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".VerifyDomainDkim",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", VerifyDomainDkimRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetIdentityMailFromDomainAttributes
-- @param GetIdentityMailFromDomainAttributesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetIdentityMailFromDomainAttributesAsync(GetIdentityMailFromDomainAttributesRequest, cb)
	assert(GetIdentityMailFromDomainAttributesRequest, "You must provide a GetIdentityMailFromDomainAttributesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetIdentityMailFromDomainAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetIdentityMailFromDomainAttributesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListIdentityPolicies
-- @param ListIdentityPoliciesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListIdentityPoliciesAsync(ListIdentityPoliciesRequest, cb)
	assert(ListIdentityPoliciesRequest, "You must provide a ListIdentityPoliciesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListIdentityPolicies",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListIdentityPoliciesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteConfigurationSetEventDestination
-- @param DeleteConfigurationSetEventDestinationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteConfigurationSetEventDestinationAsync(DeleteConfigurationSetEventDestinationRequest, cb)
	assert(DeleteConfigurationSetEventDestinationRequest, "You must provide a DeleteConfigurationSetEventDestinationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteConfigurationSetEventDestination",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteConfigurationSetEventDestinationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListIdentities
-- @param ListIdentitiesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListIdentitiesAsync(ListIdentitiesRequest, cb)
	assert(ListIdentitiesRequest, "You must provide a ListIdentitiesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListIdentities",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListIdentitiesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetIdentityVerificationAttributes
-- @param GetIdentityVerificationAttributesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetIdentityVerificationAttributesAsync(GetIdentityVerificationAttributesRequest, cb)
	assert(GetIdentityVerificationAttributesRequest, "You must provide a GetIdentityVerificationAttributesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetIdentityVerificationAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetIdentityVerificationAttributesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- VerifyEmailIdentity
-- @param VerifyEmailIdentityRequest
-- @param cb Callback function accepting two args: response, error_message
function M.VerifyEmailIdentityAsync(VerifyEmailIdentityRequest, cb)
	assert(VerifyEmailIdentityRequest, "You must provide a VerifyEmailIdentityRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".VerifyEmailIdentity",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", VerifyEmailIdentityRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutIdentityPolicy
-- @param PutIdentityPolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutIdentityPolicyAsync(PutIdentityPolicyRequest, cb)
	assert(PutIdentityPolicyRequest, "You must provide a PutIdentityPolicyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".PutIdentityPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", PutIdentityPolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SendRawEmail
-- @param SendRawEmailRequest
-- @param cb Callback function accepting two args: response, error_message
function M.SendRawEmailAsync(SendRawEmailRequest, cb)
	assert(SendRawEmailRequest, "You must provide a SendRawEmailRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".SendRawEmail",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SendRawEmailRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateReceiptRuleSet
-- @param CreateReceiptRuleSetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateReceiptRuleSetAsync(CreateReceiptRuleSetRequest, cb)
	assert(CreateReceiptRuleSetRequest, "You must provide a CreateReceiptRuleSetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateReceiptRuleSet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateReceiptRuleSetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
