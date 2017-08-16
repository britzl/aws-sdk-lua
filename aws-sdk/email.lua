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

local keys = {}
local asserts = {}

keys.SetIdentityNotificationTopicRequest = { ["NotificationType"] = true, ["Identity"] = true, ["SnsTopic"] = true, nil }

function asserts.AssertSetIdentityNotificationTopicRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetIdentityNotificationTopicRequest to be of type 'table'")
	assert(struct["Identity"], "Expected key Identity to exist in table")
	assert(struct["NotificationType"], "Expected key NotificationType to exist in table")
	if struct["NotificationType"] then asserts.AssertNotificationType(struct["NotificationType"]) end
	if struct["Identity"] then asserts.AssertIdentity(struct["Identity"]) end
	if struct["SnsTopic"] then asserts.AssertNotificationTopic(struct["SnsTopic"]) end
	for k,_ in pairs(struct) do
		assert(keys.SetIdentityNotificationTopicRequest[k], "SetIdentityNotificationTopicRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetIdentityNotificationTopicRequest
-- <p>Represents a request to specify the Amazon SNS topic to which Amazon SES will publish bounce, complaint, or delivery notifications for emails sent with that identity as the Source. For information about Amazon SES notifications, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications-via-sns.html">Amazon SES Developer Guide</a>.</p>
-- @param _NotificationType [NotificationType] <p>The type of notifications that will be published to the specified Amazon SNS topic.</p>
-- @param _Identity [Identity] <p>The identity for which the Amazon SNS topic will be set. You can specify an identity by using its name or by using its Amazon Resource Name (ARN). Examples: <code>user@example.com</code>, <code>example.com</code>, <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>.</p>
-- @param _SnsTopic [NotificationTopic] <p>The Amazon Resource Name (ARN) of the Amazon SNS topic. If the parameter is omitted from the request or a null value is passed, <code>SnsTopic</code> is cleared and publishing is disabled.</p>
-- Required parameter: Identity
-- Required parameter: NotificationType
function M.SetIdentityNotificationTopicRequest(_NotificationType, _Identity, _SnsTopic, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetIdentityNotificationTopicRequest")
	local t = { 
		["NotificationType"] = _NotificationType,
		["Identity"] = _Identity,
		["SnsTopic"] = _SnsTopic,
	}
	asserts.AssertSetIdentityNotificationTopicRequest(t)
	return t
end

keys.ReorderReceiptRuleSetRequest = { ["RuleSetName"] = true, ["RuleNames"] = true, nil }

function asserts.AssertReorderReceiptRuleSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReorderReceiptRuleSetRequest to be of type 'table'")
	assert(struct["RuleSetName"], "Expected key RuleSetName to exist in table")
	assert(struct["RuleNames"], "Expected key RuleNames to exist in table")
	if struct["RuleSetName"] then asserts.AssertReceiptRuleSetName(struct["RuleSetName"]) end
	if struct["RuleNames"] then asserts.AssertReceiptRuleNamesList(struct["RuleNames"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReorderReceiptRuleSetRequest[k], "ReorderReceiptRuleSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReorderReceiptRuleSetRequest
-- <p>Represents a request to reorder the receipt rules within a receipt rule set. You use receipt rule sets to receive email with Amazon SES. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>
-- @param _RuleSetName [ReceiptRuleSetName] <p>The name of the receipt rule set to reorder.</p>
-- @param _RuleNames [ReceiptRuleNamesList] <p>A list of the specified receipt rule set's receipt rules in the order that you want to put them.</p>
-- Required parameter: RuleSetName
-- Required parameter: RuleNames
function M.ReorderReceiptRuleSetRequest(_RuleSetName, _RuleNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReorderReceiptRuleSetRequest")
	local t = { 
		["RuleSetName"] = _RuleSetName,
		["RuleNames"] = _RuleNames,
	}
	asserts.AssertReorderReceiptRuleSetRequest(t)
	return t
end

keys.DescribeActiveReceiptRuleSetRequest = { nil }

function asserts.AssertDescribeActiveReceiptRuleSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeActiveReceiptRuleSetRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DescribeActiveReceiptRuleSetRequest[k], "DescribeActiveReceiptRuleSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeActiveReceiptRuleSetRequest
-- <p>Represents a request to return the metadata and receipt rules for the receipt rule set that is currently active. You use receipt rule sets to receive email with Amazon SES. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>
function M.DescribeActiveReceiptRuleSetRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeActiveReceiptRuleSetRequest")
	local t = { 
	}
	asserts.AssertDescribeActiveReceiptRuleSetRequest(t)
	return t
end

keys.InvalidFirehoseDestinationException = { ["EventDestinationName"] = true, ["ConfigurationSetName"] = true, nil }

function asserts.AssertInvalidFirehoseDestinationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidFirehoseDestinationException to be of type 'table'")
	if struct["EventDestinationName"] then asserts.AssertEventDestinationName(struct["EventDestinationName"]) end
	if struct["ConfigurationSetName"] then asserts.AssertConfigurationSetName(struct["ConfigurationSetName"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidFirehoseDestinationException[k], "InvalidFirehoseDestinationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidFirehoseDestinationException
-- <p>Indicates that the Amazon Kinesis Firehose destination is invalid. See the error message for details.</p>
-- @param _EventDestinationName [EventDestinationName] 
-- @param _ConfigurationSetName [ConfigurationSetName] 
function M.InvalidFirehoseDestinationException(_EventDestinationName, _ConfigurationSetName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidFirehoseDestinationException")
	local t = { 
		["EventDestinationName"] = _EventDestinationName,
		["ConfigurationSetName"] = _ConfigurationSetName,
	}
	asserts.AssertInvalidFirehoseDestinationException(t)
	return t
end

keys.Destination = { ["CcAddresses"] = true, ["BccAddresses"] = true, ["ToAddresses"] = true, nil }

function asserts.AssertDestination(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Destination to be of type 'table'")
	if struct["CcAddresses"] then asserts.AssertAddressList(struct["CcAddresses"]) end
	if struct["BccAddresses"] then asserts.AssertAddressList(struct["BccAddresses"]) end
	if struct["ToAddresses"] then asserts.AssertAddressList(struct["ToAddresses"]) end
	for k,_ in pairs(struct) do
		assert(keys.Destination[k], "Destination contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Destination
-- <p>Represents the destination of the message, consisting of To:, CC:, and BCC: fields.</p> <p> By default, the string must be 7-bit ASCII. If the text must contain any other characters, then you must use MIME encoded-word syntax (RFC 2047) instead of a literal string. MIME encoded-word syntax uses the following form: <code>=?charset?encoding?encoded-text?=</code>. For more information, see <a href="http://tools.ietf.org/html/rfc2047">RFC 2047</a>. </p>
-- @param _CcAddresses [AddressList] <p>The CC: field(s) of the message.</p>
-- @param _BccAddresses [AddressList] <p>The BCC: field(s) of the message.</p>
-- @param _ToAddresses [AddressList] <p>The To: field(s) of the message.</p>
function M.Destination(_CcAddresses, _BccAddresses, _ToAddresses, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Destination")
	local t = { 
		["CcAddresses"] = _CcAddresses,
		["BccAddresses"] = _BccAddresses,
		["ToAddresses"] = _ToAddresses,
	}
	asserts.AssertDestination(t)
	return t
end

keys.VerifyDomainDkimRequest = { ["Domain"] = true, nil }

function asserts.AssertVerifyDomainDkimRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VerifyDomainDkimRequest to be of type 'table'")
	assert(struct["Domain"], "Expected key Domain to exist in table")
	if struct["Domain"] then asserts.AssertDomain(struct["Domain"]) end
	for k,_ in pairs(struct) do
		assert(keys.VerifyDomainDkimRequest[k], "VerifyDomainDkimRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VerifyDomainDkimRequest
-- <p>Represents a request to generate the CNAME records needed to set up Easy DKIM with Amazon SES. For more information about setting up Easy DKIM, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html">Amazon SES Developer Guide</a>.</p>
-- @param _Domain [Domain] <p>The name of the domain to be verified for Easy DKIM signing.</p>
-- Required parameter: Domain
function M.VerifyDomainDkimRequest(_Domain, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VerifyDomainDkimRequest")
	local t = { 
		["Domain"] = _Domain,
	}
	asserts.AssertVerifyDomainDkimRequest(t)
	return t
end

keys.S3Action = { ["KmsKeyArn"] = true, ["ObjectKeyPrefix"] = true, ["BucketName"] = true, ["TopicArn"] = true, nil }

function asserts.AssertS3Action(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected S3Action to be of type 'table'")
	assert(struct["BucketName"], "Expected key BucketName to exist in table")
	if struct["KmsKeyArn"] then asserts.AssertAmazonResourceName(struct["KmsKeyArn"]) end
	if struct["ObjectKeyPrefix"] then asserts.AssertS3KeyPrefix(struct["ObjectKeyPrefix"]) end
	if struct["BucketName"] then asserts.AssertS3BucketName(struct["BucketName"]) end
	if struct["TopicArn"] then asserts.AssertAmazonResourceName(struct["TopicArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.S3Action[k], "S3Action contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type S3Action
-- <p>When included in a receipt rule, this action saves the received message to an Amazon Simple Storage Service (Amazon S3) bucket and, optionally, publishes a notification to Amazon Simple Notification Service (Amazon SNS).</p> <p>To enable Amazon SES to write emails to your Amazon S3 bucket, use an AWS KMS key to encrypt your emails, or publish to an Amazon SNS topic of another account, Amazon SES must have permission to access those resources. For information about giving permissions, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html">Amazon SES Developer Guide</a>.</p> <note> <p>When you save your emails to an Amazon S3 bucket, the maximum email size (including headers) is 30 MB. Emails larger than that will bounce.</p> </note> <p>For information about specifying Amazon S3 actions in receipt rules, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-s3.html">Amazon SES Developer Guide</a>.</p>
-- @param _KmsKeyArn [AmazonResourceName] <p>The customer master key that Amazon SES should use to encrypt your emails before saving them to the Amazon S3 bucket. You can use the default master key or a custom master key you created in AWS KMS as follows:</p> <ul> <li> <p>To use the default master key, provide an ARN in the form of <code>arn:aws:kms:REGION:ACCOUNT-ID-WITHOUT-HYPHENS:alias/aws/ses</code>. For example, if your AWS account ID is 123456789012 and you want to use the default master key in the US West (Oregon) region, the ARN of the default master key would be <code>arn:aws:kms:us-west-2:123456789012:alias/aws/ses</code>. If you use the default master key, you don't need to perform any extra steps to give Amazon SES permission to use the key.</p> </li> <li> <p>To use a custom master key you created in AWS KMS, provide the ARN of the master key and ensure that you add a statement to your key's policy to give Amazon SES permission to use it. For more information about giving permissions, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html">Amazon SES Developer Guide</a>.</p> </li> </ul> <p>For more information about key policies, see the <a href="http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html">AWS KMS Developer Guide</a>. If you do not specify a master key, Amazon SES will not encrypt your emails.</p> <important> <p>Your mail is encrypted by Amazon SES using the Amazon S3 encryption client before the mail is submitted to Amazon S3 for storage. It is not encrypted using Amazon S3 server-side encryption. This means that you must use the Amazon S3 encryption client to decrypt the email after retrieving it from Amazon S3, as the service has no access to use your AWS KMS keys for decryption. This encryption client is currently available with the <a href="http://aws.amazon.com/sdk-for-java/">AWS Java SDK</a> and <a href="http://aws.amazon.com/sdk-for-ruby/">AWS Ruby SDK</a> only. For more information about client-side encryption using AWS KMS master keys, see the <a href="http://alpha-docs-aws.amazon.com/AmazonS3/latest/dev/UsingClientSideEncryption.html">Amazon S3 Developer Guide</a>.</p> </important>
-- @param _ObjectKeyPrefix [S3KeyPrefix] <p>The key prefix of the Amazon S3 bucket. The key prefix is similar to a directory name that enables you to store similar data under the same directory in a bucket.</p>
-- @param _BucketName [S3BucketName] <p>The name of the Amazon S3 bucket to which to save the received email.</p>
-- @param _TopicArn [AmazonResourceName] <p>The ARN of the Amazon SNS topic to notify when the message is saved to the Amazon S3 bucket. An example of an Amazon SNS topic ARN is <code>arn:aws:sns:us-west-2:123456789012:MyTopic</code>. For more information about Amazon SNS topics, see the <a href="http://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html">Amazon SNS Developer Guide</a>.</p>
-- Required parameter: BucketName
function M.S3Action(_KmsKeyArn, _ObjectKeyPrefix, _BucketName, _TopicArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating S3Action")
	local t = { 
		["KmsKeyArn"] = _KmsKeyArn,
		["ObjectKeyPrefix"] = _ObjectKeyPrefix,
		["BucketName"] = _BucketName,
		["TopicArn"] = _TopicArn,
	}
	asserts.AssertS3Action(t)
	return t
end

keys.SetIdentityNotificationTopicResponse = { nil }

function asserts.AssertSetIdentityNotificationTopicResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetIdentityNotificationTopicResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.SetIdentityNotificationTopicResponse[k], "SetIdentityNotificationTopicResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetIdentityNotificationTopicResponse
-- <p>An empty element returned on a successful request.</p>
function M.SetIdentityNotificationTopicResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetIdentityNotificationTopicResponse")
	local t = { 
	}
	asserts.AssertSetIdentityNotificationTopicResponse(t)
	return t
end

keys.ExtensionField = { ["Name"] = true, ["Value"] = true, nil }

function asserts.AssertExtensionField(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExtensionField to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Value"], "Expected key Value to exist in table")
	if struct["Name"] then asserts.AssertExtensionFieldName(struct["Name"]) end
	if struct["Value"] then asserts.AssertExtensionFieldValue(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(keys.ExtensionField[k], "ExtensionField contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExtensionField
-- <p>Additional X-headers to include in the Delivery Status Notification (DSN) when an email that Amazon SES receives on your behalf bounces.</p> <p>For information about receiving email through Amazon SES, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email.html">Amazon SES Developer Guide</a>.</p>
-- @param _Name [ExtensionFieldName] <p>The name of the header to add. Must be between 1 and 50 characters, inclusive, and consist of alphanumeric (a-z, A-Z, 0-9) characters and dashes only.</p>
-- @param _Value [ExtensionFieldValue] <p>The value of the header to add. Must be less than 2048 characters, and must not contain newline characters ("\r" or "\n").</p>
-- Required parameter: Name
-- Required parameter: Value
function M.ExtensionField(_Name, _Value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExtensionField")
	local t = { 
		["Name"] = _Name,
		["Value"] = _Value,
	}
	asserts.AssertExtensionField(t)
	return t
end

keys.UpdateConfigurationSetEventDestinationRequest = { ["EventDestination"] = true, ["ConfigurationSetName"] = true, nil }

function asserts.AssertUpdateConfigurationSetEventDestinationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateConfigurationSetEventDestinationRequest to be of type 'table'")
	assert(struct["ConfigurationSetName"], "Expected key ConfigurationSetName to exist in table")
	assert(struct["EventDestination"], "Expected key EventDestination to exist in table")
	if struct["EventDestination"] then asserts.AssertEventDestination(struct["EventDestination"]) end
	if struct["ConfigurationSetName"] then asserts.AssertConfigurationSetName(struct["ConfigurationSetName"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateConfigurationSetEventDestinationRequest[k], "UpdateConfigurationSetEventDestinationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateConfigurationSetEventDestinationRequest
-- <p>Represents a request to update the event destination of a configuration set. Configuration sets enable you to publish email sending events. For information about using configuration sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>
-- @param _EventDestination [EventDestination] <p>The event destination object that you want to apply to the specified configuration set.</p>
-- @param _ConfigurationSetName [ConfigurationSetName] <p>The name of the configuration set that you want to update.</p>
-- Required parameter: ConfigurationSetName
-- Required parameter: EventDestination
function M.UpdateConfigurationSetEventDestinationRequest(_EventDestination, _ConfigurationSetName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateConfigurationSetEventDestinationRequest")
	local t = { 
		["EventDestination"] = _EventDestination,
		["ConfigurationSetName"] = _ConfigurationSetName,
	}
	asserts.AssertUpdateConfigurationSetEventDestinationRequest(t)
	return t
end

keys.Body = { ["Text"] = true, ["Html"] = true, nil }

function asserts.AssertBody(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Body to be of type 'table'")
	if struct["Text"] then asserts.AssertContent(struct["Text"]) end
	if struct["Html"] then asserts.AssertContent(struct["Html"]) end
	for k,_ in pairs(struct) do
		assert(keys.Body[k], "Body contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Body
-- <p>Represents the body of the message. You can specify text, HTML, or both. If you use both, then the message should display correctly in the widest variety of email clients.</p>
-- @param _Text [Content] <p>The content of the message, in text format. Use this for text-based email clients, or clients on high-latency networks (such as mobile devices).</p>
-- @param _Html [Content] <p>The content of the message, in HTML format. Use this for email clients that can process HTML. You can include clickable links, formatted text, and much more in an HTML message.</p>
function M.Body(_Text, _Html, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Body")
	local t = { 
		["Text"] = _Text,
		["Html"] = _Html,
	}
	asserts.AssertBody(t)
	return t
end

keys.InvalidConfigurationSetException = { nil }

function asserts.AssertInvalidConfigurationSetException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidConfigurationSetException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidConfigurationSetException[k], "InvalidConfigurationSetException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidConfigurationSetException
-- <p>Indicates that the configuration set is invalid. See the error message for details.</p>
function M.InvalidConfigurationSetException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidConfigurationSetException")
	local t = { 
	}
	asserts.AssertInvalidConfigurationSetException(t)
	return t
end

keys.DeleteConfigurationSetRequest = { ["ConfigurationSetName"] = true, nil }

function asserts.AssertDeleteConfigurationSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteConfigurationSetRequest to be of type 'table'")
	assert(struct["ConfigurationSetName"], "Expected key ConfigurationSetName to exist in table")
	if struct["ConfigurationSetName"] then asserts.AssertConfigurationSetName(struct["ConfigurationSetName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteConfigurationSetRequest[k], "DeleteConfigurationSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteConfigurationSetRequest
-- <p>Represents a request to delete a configuration set. Configuration sets enable you to publish email sending events. For information about using configuration sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>
-- @param _ConfigurationSetName [ConfigurationSetName] <p>The name of the configuration set to delete.</p>
-- Required parameter: ConfigurationSetName
function M.DeleteConfigurationSetRequest(_ConfigurationSetName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteConfigurationSetRequest")
	local t = { 
		["ConfigurationSetName"] = _ConfigurationSetName,
	}
	asserts.AssertDeleteConfigurationSetRequest(t)
	return t
end

keys.BouncedRecipientInfo = { ["RecipientArn"] = true, ["Recipient"] = true, ["BounceType"] = true, ["RecipientDsnFields"] = true, nil }

function asserts.AssertBouncedRecipientInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BouncedRecipientInfo to be of type 'table'")
	assert(struct["Recipient"], "Expected key Recipient to exist in table")
	if struct["RecipientArn"] then asserts.AssertAmazonResourceName(struct["RecipientArn"]) end
	if struct["Recipient"] then asserts.AssertAddress(struct["Recipient"]) end
	if struct["BounceType"] then asserts.AssertBounceType(struct["BounceType"]) end
	if struct["RecipientDsnFields"] then asserts.AssertRecipientDsnFields(struct["RecipientDsnFields"]) end
	for k,_ in pairs(struct) do
		assert(keys.BouncedRecipientInfo[k], "BouncedRecipientInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BouncedRecipientInfo
-- <p>Recipient-related information to include in the Delivery Status Notification (DSN) when an email that Amazon SES receives on your behalf bounces.</p> <p>For information about receiving email through Amazon SES, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email.html">Amazon SES Developer Guide</a>.</p>
-- @param _RecipientArn [AmazonResourceName] <p>This parameter is used only for sending authorization. It is the ARN of the identity that is associated with the sending authorization policy that permits you to receive email for the recipient of the bounced email. For more information about sending authorization, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer Guide</a>.</p>
-- @param _Recipient [Address] <p>The email address of the recipient of the bounced email.</p>
-- @param _BounceType [BounceType] <p>The reason for the bounce. You must provide either this parameter or <code>RecipientDsnFields</code>.</p>
-- @param _RecipientDsnFields [RecipientDsnFields] <p>Recipient-related DSN fields, most of which would normally be filled in automatically when provided with a <code>BounceType</code>. You must provide either this parameter or <code>BounceType</code>.</p>
-- Required parameter: Recipient
function M.BouncedRecipientInfo(_RecipientArn, _Recipient, _BounceType, _RecipientDsnFields, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BouncedRecipientInfo")
	local t = { 
		["RecipientArn"] = _RecipientArn,
		["Recipient"] = _Recipient,
		["BounceType"] = _BounceType,
		["RecipientDsnFields"] = _RecipientDsnFields,
	}
	asserts.AssertBouncedRecipientInfo(t)
	return t
end

keys.CloudWatchDestination = { ["DimensionConfigurations"] = true, nil }

function asserts.AssertCloudWatchDestination(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloudWatchDestination to be of type 'table'")
	assert(struct["DimensionConfigurations"], "Expected key DimensionConfigurations to exist in table")
	if struct["DimensionConfigurations"] then asserts.AssertCloudWatchDimensionConfigurations(struct["DimensionConfigurations"]) end
	for k,_ in pairs(struct) do
		assert(keys.CloudWatchDestination[k], "CloudWatchDestination contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloudWatchDestination
-- <p>Contains information associated with an Amazon CloudWatch event destination to which email sending events are published.</p> <p>Event destinations, such as Amazon CloudWatch, are associated with configuration sets, which enable you to publish email sending events. For information about using configuration sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>
-- @param _DimensionConfigurations [CloudWatchDimensionConfigurations] <p>A list of dimensions upon which to categorize your emails when you publish email sending events to Amazon CloudWatch.</p>
-- Required parameter: DimensionConfigurations
function M.CloudWatchDestination(_DimensionConfigurations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CloudWatchDestination")
	local t = { 
		["DimensionConfigurations"] = _DimensionConfigurations,
	}
	asserts.AssertCloudWatchDestination(t)
	return t
end

keys.IdentityVerificationAttributes = { ["VerificationToken"] = true, ["VerificationStatus"] = true, nil }

function asserts.AssertIdentityVerificationAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IdentityVerificationAttributes to be of type 'table'")
	assert(struct["VerificationStatus"], "Expected key VerificationStatus to exist in table")
	if struct["VerificationToken"] then asserts.AssertVerificationToken(struct["VerificationToken"]) end
	if struct["VerificationStatus"] then asserts.AssertVerificationStatus(struct["VerificationStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.IdentityVerificationAttributes[k], "IdentityVerificationAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IdentityVerificationAttributes
-- <p>Represents the verification attributes of a single identity.</p>
-- @param _VerificationToken [VerificationToken] <p>The verification token for a domain identity. Null for email address identities.</p>
-- @param _VerificationStatus [VerificationStatus] <p>The verification status of the identity: "Pending", "Success", "Failed", or "TemporaryFailure".</p>
-- Required parameter: VerificationStatus
function M.IdentityVerificationAttributes(_VerificationToken, _VerificationStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IdentityVerificationAttributes")
	local t = { 
		["VerificationToken"] = _VerificationToken,
		["VerificationStatus"] = _VerificationStatus,
	}
	asserts.AssertIdentityVerificationAttributes(t)
	return t
end

keys.ListVerifiedEmailAddressesResponse = { ["VerifiedEmailAddresses"] = true, nil }

function asserts.AssertListVerifiedEmailAddressesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListVerifiedEmailAddressesResponse to be of type 'table'")
	if struct["VerifiedEmailAddresses"] then asserts.AssertAddressList(struct["VerifiedEmailAddresses"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListVerifiedEmailAddressesResponse[k], "ListVerifiedEmailAddressesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListVerifiedEmailAddressesResponse
-- <p>A list of email addresses that you have verified with Amazon SES under your AWS account.</p>
-- @param _VerifiedEmailAddresses [AddressList] <p>A list of email addresses that have been verified.</p>
function M.ListVerifiedEmailAddressesResponse(_VerifiedEmailAddresses, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListVerifiedEmailAddressesResponse")
	local t = { 
		["VerifiedEmailAddresses"] = _VerifiedEmailAddresses,
	}
	asserts.AssertListVerifiedEmailAddressesResponse(t)
	return t
end

keys.DeleteIdentityResponse = { nil }

function asserts.AssertDeleteIdentityResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteIdentityResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteIdentityResponse[k], "DeleteIdentityResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteIdentityResponse
-- <p>An empty element returned on a successful request.</p>
function M.DeleteIdentityResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteIdentityResponse")
	local t = { 
	}
	asserts.AssertDeleteIdentityResponse(t)
	return t
end

keys.EventDestinationAlreadyExistsException = { ["EventDestinationName"] = true, ["ConfigurationSetName"] = true, nil }

function asserts.AssertEventDestinationAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventDestinationAlreadyExistsException to be of type 'table'")
	if struct["EventDestinationName"] then asserts.AssertEventDestinationName(struct["EventDestinationName"]) end
	if struct["ConfigurationSetName"] then asserts.AssertConfigurationSetName(struct["ConfigurationSetName"]) end
	for k,_ in pairs(struct) do
		assert(keys.EventDestinationAlreadyExistsException[k], "EventDestinationAlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventDestinationAlreadyExistsException
-- <p>Indicates that the event destination could not be created because of a naming conflict.</p>
-- @param _EventDestinationName [EventDestinationName] 
-- @param _ConfigurationSetName [ConfigurationSetName] 
function M.EventDestinationAlreadyExistsException(_EventDestinationName, _ConfigurationSetName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EventDestinationAlreadyExistsException")
	local t = { 
		["EventDestinationName"] = _EventDestinationName,
		["ConfigurationSetName"] = _ConfigurationSetName,
	}
	asserts.AssertEventDestinationAlreadyExistsException(t)
	return t
end

keys.VerifyDomainIdentityResponse = { ["VerificationToken"] = true, nil }

function asserts.AssertVerifyDomainIdentityResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VerifyDomainIdentityResponse to be of type 'table'")
	assert(struct["VerificationToken"], "Expected key VerificationToken to exist in table")
	if struct["VerificationToken"] then asserts.AssertVerificationToken(struct["VerificationToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.VerifyDomainIdentityResponse[k], "VerifyDomainIdentityResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VerifyDomainIdentityResponse
-- <p>Returns a TXT record that you must publish to the DNS server of your domain to complete domain verification with Amazon SES.</p>
-- @param _VerificationToken [VerificationToken] <p>A TXT record that must be placed in the DNS settings for the domain, in order to complete domain verification.</p>
-- Required parameter: VerificationToken
function M.VerifyDomainIdentityResponse(_VerificationToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VerifyDomainIdentityResponse")
	local t = { 
		["VerificationToken"] = _VerificationToken,
	}
	asserts.AssertVerifyDomainIdentityResponse(t)
	return t
end

keys.DeleteConfigurationSetResponse = { nil }

function asserts.AssertDeleteConfigurationSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteConfigurationSetResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteConfigurationSetResponse[k], "DeleteConfigurationSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteConfigurationSetResponse
-- <p>An empty element returned on a successful request.</p>
function M.DeleteConfigurationSetResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteConfigurationSetResponse")
	local t = { 
	}
	asserts.AssertDeleteConfigurationSetResponse(t)
	return t
end

keys.CreateReceiptFilterResponse = { nil }

function asserts.AssertCreateReceiptFilterResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateReceiptFilterResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CreateReceiptFilterResponse[k], "CreateReceiptFilterResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateReceiptFilterResponse
-- <p>An empty element returned on a successful request.</p>
function M.CreateReceiptFilterResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateReceiptFilterResponse")
	local t = { 
	}
	asserts.AssertCreateReceiptFilterResponse(t)
	return t
end

keys.VerifyEmailIdentityResponse = { nil }

function asserts.AssertVerifyEmailIdentityResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VerifyEmailIdentityResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.VerifyEmailIdentityResponse[k], "VerifyEmailIdentityResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VerifyEmailIdentityResponse
-- <p>An empty element returned on a successful request.</p>
function M.VerifyEmailIdentityResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating VerifyEmailIdentityResponse")
	local t = { 
	}
	asserts.AssertVerifyEmailIdentityResponse(t)
	return t
end

keys.SendRawEmailRequest = { ["ReturnPathArn"] = true, ["Tags"] = true, ["RawMessage"] = true, ["Source"] = true, ["ConfigurationSetName"] = true, ["FromArn"] = true, ["SourceArn"] = true, ["Destinations"] = true, nil }

function asserts.AssertSendRawEmailRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendRawEmailRequest to be of type 'table'")
	assert(struct["RawMessage"], "Expected key RawMessage to exist in table")
	if struct["ReturnPathArn"] then asserts.AssertAmazonResourceName(struct["ReturnPathArn"]) end
	if struct["Tags"] then asserts.AssertMessageTagList(struct["Tags"]) end
	if struct["RawMessage"] then asserts.AssertRawMessage(struct["RawMessage"]) end
	if struct["Source"] then asserts.AssertAddress(struct["Source"]) end
	if struct["ConfigurationSetName"] then asserts.AssertConfigurationSetName(struct["ConfigurationSetName"]) end
	if struct["FromArn"] then asserts.AssertAmazonResourceName(struct["FromArn"]) end
	if struct["SourceArn"] then asserts.AssertAmazonResourceName(struct["SourceArn"]) end
	if struct["Destinations"] then asserts.AssertAddressList(struct["Destinations"]) end
	for k,_ in pairs(struct) do
		assert(keys.SendRawEmailRequest[k], "SendRawEmailRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendRawEmailRequest
-- <p>Represents a request to send a single raw email using Amazon SES. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-email-raw.html">Amazon SES Developer Guide</a>.</p>
-- @param _ReturnPathArn [AmazonResourceName] <p>This parameter is used only for sending authorization. It is the ARN of the identity that is associated with the sending authorization policy that permits you to use the email address specified in the <code>ReturnPath</code> parameter.</p> <p>For example, if the owner of <code>example.com</code> (which has ARN <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>) attaches a policy to it that authorizes you to use <code>feedback@example.com</code>, then you would specify the <code>ReturnPathArn</code> to be <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>, and the <code>ReturnPath</code> to be <code>feedback@example.com</code>.</p> <p>Instead of using this parameter, you can use the X-header <code>X-SES-RETURN-PATH-ARN</code> in the raw message of the email. If you use both the <code>ReturnPathArn</code> parameter and the corresponding X-header, Amazon SES uses the value of the <code>ReturnPathArn</code> parameter.</p> <note> <p>For information about when to use this parameter, see the description of <code>SendRawEmail</code> in this guide, or see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization-delegate-sender-tasks-email.html">Amazon SES Developer Guide</a>.</p> </note>
-- @param _Tags [MessageTagList] <p>A list of tags, in the form of name/value pairs, to apply to an email that you send using <code>SendRawEmail</code>. Tags correspond to characteristics of the email that you define, so that you can publish email sending events.</p>
-- @param _RawMessage [RawMessage] <p>The raw text of the message. The client is responsible for ensuring the following:</p> <ul> <li> <p>Message must contain a header and a body, separated by a blank line.</p> </li> <li> <p>All required header fields must be present.</p> </li> <li> <p>Each part of a multipart MIME message must be formatted properly.</p> </li> <li> <p>MIME content types must be among those supported by Amazon SES. For more information, go to the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/mime-types.html">Amazon SES Developer Guide</a>.</p> </li> <li> <p>Must be base64-encoded.</p> </li> </ul>
-- @param _Source [Address] <p>The identity's email address. If you do not provide a value for this parameter, you must specify a "From" address in the raw text of the message. (You can also specify both.)</p> <p> By default, the string must be 7-bit ASCII. If the text must contain any other characters, then you must use MIME encoded-word syntax (RFC 2047) instead of a literal string. MIME encoded-word syntax uses the following form: <code>=?charset?encoding?encoded-text?=</code>. For more information, see <a href="http://tools.ietf.org/html/rfc2047">RFC 2047</a>. </p> <note> <p>If you specify the <code>Source</code> parameter and have feedback forwarding enabled, then bounces and complaints will be sent to this email address. This takes precedence over any <i>Return-Path</i> header that you might include in the raw text of the message.</p> </note>
-- @param _ConfigurationSetName [ConfigurationSetName] <p>The name of the configuration set to use when you send an email using <code>SendRawEmail</code>.</p>
-- @param _FromArn [AmazonResourceName] <p>This parameter is used only for sending authorization. It is the ARN of the identity that is associated with the sending authorization policy that permits you to specify a particular "From" address in the header of the raw email.</p> <p>Instead of using this parameter, you can use the X-header <code>X-SES-FROM-ARN</code> in the raw message of the email. If you use both the <code>FromArn</code> parameter and the corresponding X-header, Amazon SES uses the value of the <code>FromArn</code> parameter.</p> <note> <p>For information about when to use this parameter, see the description of <code>SendRawEmail</code> in this guide, or see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization-delegate-sender-tasks-email.html">Amazon SES Developer Guide</a>.</p> </note>
-- @param _SourceArn [AmazonResourceName] <p>This parameter is used only for sending authorization. It is the ARN of the identity that is associated with the sending authorization policy that permits you to send for the email address specified in the <code>Source</code> parameter.</p> <p>For example, if the owner of <code>example.com</code> (which has ARN <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>) attaches a policy to it that authorizes you to send from <code>user@example.com</code>, then you would specify the <code>SourceArn</code> to be <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>, and the <code>Source</code> to be <code>user@example.com</code>.</p> <p>Instead of using this parameter, you can use the X-header <code>X-SES-SOURCE-ARN</code> in the raw message of the email. If you use both the <code>SourceArn</code> parameter and the corresponding X-header, Amazon SES uses the value of the <code>SourceArn</code> parameter.</p> <note> <p>For information about when to use this parameter, see the description of <code>SendRawEmail</code> in this guide, or see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization-delegate-sender-tasks-email.html">Amazon SES Developer Guide</a>.</p> </note>
-- @param _Destinations [AddressList] <p>A list of destinations for the message, consisting of To:, CC:, and BCC: addresses.</p>
-- Required parameter: RawMessage
function M.SendRawEmailRequest(_ReturnPathArn, _Tags, _RawMessage, _Source, _ConfigurationSetName, _FromArn, _SourceArn, _Destinations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SendRawEmailRequest")
	local t = { 
		["ReturnPathArn"] = _ReturnPathArn,
		["Tags"] = _Tags,
		["RawMessage"] = _RawMessage,
		["Source"] = _Source,
		["ConfigurationSetName"] = _ConfigurationSetName,
		["FromArn"] = _FromArn,
		["SourceArn"] = _SourceArn,
		["Destinations"] = _Destinations,
	}
	asserts.AssertSendRawEmailRequest(t)
	return t
end

keys.GetIdentityVerificationAttributesResponse = { ["VerificationAttributes"] = true, nil }

function asserts.AssertGetIdentityVerificationAttributesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetIdentityVerificationAttributesResponse to be of type 'table'")
	assert(struct["VerificationAttributes"], "Expected key VerificationAttributes to exist in table")
	if struct["VerificationAttributes"] then asserts.AssertVerificationAttributes(struct["VerificationAttributes"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetIdentityVerificationAttributesResponse[k], "GetIdentityVerificationAttributesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetIdentityVerificationAttributesResponse
-- <p>The Amazon SES verification status of a list of identities. For domain identities, this response also contains the verification token.</p>
-- @param _VerificationAttributes [VerificationAttributes] <p>A map of Identities to IdentityVerificationAttributes objects.</p>
-- Required parameter: VerificationAttributes
function M.GetIdentityVerificationAttributesResponse(_VerificationAttributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetIdentityVerificationAttributesResponse")
	local t = { 
		["VerificationAttributes"] = _VerificationAttributes,
	}
	asserts.AssertGetIdentityVerificationAttributesResponse(t)
	return t
end

keys.DeleteReceiptFilterResponse = { nil }

function asserts.AssertDeleteReceiptFilterResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteReceiptFilterResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteReceiptFilterResponse[k], "DeleteReceiptFilterResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteReceiptFilterResponse
-- <p>An empty element returned on a successful request.</p>
function M.DeleteReceiptFilterResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteReceiptFilterResponse")
	local t = { 
	}
	asserts.AssertDeleteReceiptFilterResponse(t)
	return t
end

keys.SetIdentityFeedbackForwardingEnabledRequest = { ["ForwardingEnabled"] = true, ["Identity"] = true, nil }

function asserts.AssertSetIdentityFeedbackForwardingEnabledRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetIdentityFeedbackForwardingEnabledRequest to be of type 'table'")
	assert(struct["Identity"], "Expected key Identity to exist in table")
	assert(struct["ForwardingEnabled"], "Expected key ForwardingEnabled to exist in table")
	if struct["ForwardingEnabled"] then asserts.AssertEnabled(struct["ForwardingEnabled"]) end
	if struct["Identity"] then asserts.AssertIdentity(struct["Identity"]) end
	for k,_ in pairs(struct) do
		assert(keys.SetIdentityFeedbackForwardingEnabledRequest[k], "SetIdentityFeedbackForwardingEnabledRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetIdentityFeedbackForwardingEnabledRequest
-- <p>Represents a request to enable or disable whether Amazon SES forwards you bounce and complaint notifications through email. For information about email feedback forwarding, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications-via-email.html">Amazon SES Developer Guide</a>.</p>
-- @param _ForwardingEnabled [Enabled] <p>Sets whether Amazon SES will forward bounce and complaint notifications as email. <code>true</code> specifies that Amazon SES will forward bounce and complaint notifications as email, in addition to any Amazon SNS topic publishing otherwise specified. <code>false</code> specifies that Amazon SES will publish bounce and complaint notifications only through Amazon SNS. This value can only be set to <code>false</code> when Amazon SNS topics are set for both <code>Bounce</code> and <code>Complaint</code> notification types.</p>
-- @param _Identity [Identity] <p>The identity for which to set bounce and complaint notification forwarding. Examples: <code>user@example.com</code>, <code>example.com</code>.</p>
-- Required parameter: Identity
-- Required parameter: ForwardingEnabled
function M.SetIdentityFeedbackForwardingEnabledRequest(_ForwardingEnabled, _Identity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetIdentityFeedbackForwardingEnabledRequest")
	local t = { 
		["ForwardingEnabled"] = _ForwardingEnabled,
		["Identity"] = _Identity,
	}
	asserts.AssertSetIdentityFeedbackForwardingEnabledRequest(t)
	return t
end

keys.SendBounceResponse = { ["MessageId"] = true, nil }

function asserts.AssertSendBounceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendBounceResponse to be of type 'table'")
	if struct["MessageId"] then asserts.AssertMessageId(struct["MessageId"]) end
	for k,_ in pairs(struct) do
		assert(keys.SendBounceResponse[k], "SendBounceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendBounceResponse
-- <p>Represents a unique message ID.</p>
-- @param _MessageId [MessageId] <p>The message ID of the bounce message.</p>
function M.SendBounceResponse(_MessageId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SendBounceResponse")
	local t = { 
		["MessageId"] = _MessageId,
	}
	asserts.AssertSendBounceResponse(t)
	return t
end

keys.VerifyEmailAddressRequest = { ["EmailAddress"] = true, nil }

function asserts.AssertVerifyEmailAddressRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VerifyEmailAddressRequest to be of type 'table'")
	assert(struct["EmailAddress"], "Expected key EmailAddress to exist in table")
	if struct["EmailAddress"] then asserts.AssertAddress(struct["EmailAddress"]) end
	for k,_ in pairs(struct) do
		assert(keys.VerifyEmailAddressRequest[k], "VerifyEmailAddressRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VerifyEmailAddressRequest
-- <p>Represents a request to begin email address verification with Amazon SES. For information about email address verification, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-email-addresses.html">Amazon SES Developer Guide</a>.</p>
-- @param _EmailAddress [Address] <p>The email address to be verified.</p>
-- Required parameter: EmailAddress
function M.VerifyEmailAddressRequest(_EmailAddress, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VerifyEmailAddressRequest")
	local t = { 
		["EmailAddress"] = _EmailAddress,
	}
	asserts.AssertVerifyEmailAddressRequest(t)
	return t
end

keys.SetIdentityHeadersInNotificationsEnabledRequest = { ["Enabled"] = true, ["NotificationType"] = true, ["Identity"] = true, nil }

function asserts.AssertSetIdentityHeadersInNotificationsEnabledRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetIdentityHeadersInNotificationsEnabledRequest to be of type 'table'")
	assert(struct["Identity"], "Expected key Identity to exist in table")
	assert(struct["NotificationType"], "Expected key NotificationType to exist in table")
	assert(struct["Enabled"], "Expected key Enabled to exist in table")
	if struct["Enabled"] then asserts.AssertEnabled(struct["Enabled"]) end
	if struct["NotificationType"] then asserts.AssertNotificationType(struct["NotificationType"]) end
	if struct["Identity"] then asserts.AssertIdentity(struct["Identity"]) end
	for k,_ in pairs(struct) do
		assert(keys.SetIdentityHeadersInNotificationsEnabledRequest[k], "SetIdentityHeadersInNotificationsEnabledRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetIdentityHeadersInNotificationsEnabledRequest
-- <p>Represents a request to set whether Amazon SES includes the original email headers in the Amazon SNS notifications of a specified type. For information about notifications, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications-via-sns.html">Amazon SES Developer Guide</a>.</p>
-- @param _Enabled [Enabled] <p>Sets whether Amazon SES includes the original email headers in Amazon SNS notifications of the specified notification type. A value of <code>true</code> specifies that Amazon SES will include headers in notifications, and a value of <code>false</code> specifies that Amazon SES will not include headers in notifications.</p> <p>This value can only be set when <code>NotificationType</code> is already set to use a particular Amazon SNS topic.</p>
-- @param _NotificationType [NotificationType] <p>The notification type for which to enable or disable headers in notifications. </p>
-- @param _Identity [Identity] <p>The identity for which to enable or disable headers in notifications. Examples: <code>user@example.com</code>, <code>example.com</code>.</p>
-- Required parameter: Identity
-- Required parameter: NotificationType
-- Required parameter: Enabled
function M.SetIdentityHeadersInNotificationsEnabledRequest(_Enabled, _NotificationType, _Identity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetIdentityHeadersInNotificationsEnabledRequest")
	local t = { 
		["Enabled"] = _Enabled,
		["NotificationType"] = _NotificationType,
		["Identity"] = _Identity,
	}
	asserts.AssertSetIdentityHeadersInNotificationsEnabledRequest(t)
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
-- <p>Indicates that a resource could not be created because of service limits. For a list of Amazon SES limits, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/limits.html">Amazon SES Developer Guide</a>.</p>
function M.LimitExceededException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededException")
	local t = { 
	}
	asserts.AssertLimitExceededException(t)
	return t
end

keys.ConfigurationSet = { ["Name"] = true, nil }

function asserts.AssertConfigurationSet(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfigurationSet to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.AssertConfigurationSetName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConfigurationSet[k], "ConfigurationSet contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfigurationSet
-- <p>The name of the configuration set.</p> <p>Configuration sets enable you to publish email sending events. For information about using configuration sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>
-- @param _Name [ConfigurationSetName] <p>The name of the configuration set. The name must:</p> <ul> <li> <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), underscores (_), or dashes (-).</p> </li> <li> <p>Contain less than 64 characters.</p> </li> </ul>
-- Required parameter: Name
function M.ConfigurationSet(_Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConfigurationSet")
	local t = { 
		["Name"] = _Name,
	}
	asserts.AssertConfigurationSet(t)
	return t
end

keys.GetIdentityMailFromDomainAttributesRequest = { ["Identities"] = true, nil }

function asserts.AssertGetIdentityMailFromDomainAttributesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetIdentityMailFromDomainAttributesRequest to be of type 'table'")
	assert(struct["Identities"], "Expected key Identities to exist in table")
	if struct["Identities"] then asserts.AssertIdentityList(struct["Identities"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetIdentityMailFromDomainAttributesRequest[k], "GetIdentityMailFromDomainAttributesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetIdentityMailFromDomainAttributesRequest
-- <p>Represents a request to return the Amazon SES custom MAIL FROM attributes for a list of identities. For information about using a custom MAIL FROM domain, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/mail-from.html">Amazon SES Developer Guide</a>.</p>
-- @param _Identities [IdentityList] <p>A list of one or more identities.</p>
-- Required parameter: Identities
function M.GetIdentityMailFromDomainAttributesRequest(_Identities, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetIdentityMailFromDomainAttributesRequest")
	local t = { 
		["Identities"] = _Identities,
	}
	asserts.AssertGetIdentityMailFromDomainAttributesRequest(t)
	return t
end

keys.GetIdentityPoliciesRequest = { ["PolicyNames"] = true, ["Identity"] = true, nil }

function asserts.AssertGetIdentityPoliciesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetIdentityPoliciesRequest to be of type 'table'")
	assert(struct["Identity"], "Expected key Identity to exist in table")
	assert(struct["PolicyNames"], "Expected key PolicyNames to exist in table")
	if struct["PolicyNames"] then asserts.AssertPolicyNameList(struct["PolicyNames"]) end
	if struct["Identity"] then asserts.AssertIdentity(struct["Identity"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetIdentityPoliciesRequest[k], "GetIdentityPoliciesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetIdentityPoliciesRequest
-- <p>Represents a request to return the requested sending authorization policies for an identity. Sending authorization is an Amazon SES feature that enables you to authorize other senders to use your identities. For information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer Guide</a>.</p>
-- @param _PolicyNames [PolicyNameList] <p>A list of the names of policies to be retrieved. You can retrieve a maximum of 20 policies at a time. If you do not know the names of the policies that are attached to the identity, you can use <code>ListIdentityPolicies</code>.</p>
-- @param _Identity [Identity] <p>The identity for which the policies will be retrieved. You can specify an identity by using its name or by using its Amazon Resource Name (ARN). Examples: <code>user@example.com</code>, <code>example.com</code>, <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>.</p> <p>To successfully call this API, you must own the identity.</p>
-- Required parameter: Identity
-- Required parameter: PolicyNames
function M.GetIdentityPoliciesRequest(_PolicyNames, _Identity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetIdentityPoliciesRequest")
	local t = { 
		["PolicyNames"] = _PolicyNames,
		["Identity"] = _Identity,
	}
	asserts.AssertGetIdentityPoliciesRequest(t)
	return t
end

keys.SetIdentityDkimEnabledResponse = { nil }

function asserts.AssertSetIdentityDkimEnabledResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetIdentityDkimEnabledResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.SetIdentityDkimEnabledResponse[k], "SetIdentityDkimEnabledResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetIdentityDkimEnabledResponse
-- <p>An empty element returned on a successful request.</p>
function M.SetIdentityDkimEnabledResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetIdentityDkimEnabledResponse")
	local t = { 
	}
	asserts.AssertSetIdentityDkimEnabledResponse(t)
	return t
end

keys.CreateConfigurationSetEventDestinationRequest = { ["EventDestination"] = true, ["ConfigurationSetName"] = true, nil }

function asserts.AssertCreateConfigurationSetEventDestinationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateConfigurationSetEventDestinationRequest to be of type 'table'")
	assert(struct["ConfigurationSetName"], "Expected key ConfigurationSetName to exist in table")
	assert(struct["EventDestination"], "Expected key EventDestination to exist in table")
	if struct["EventDestination"] then asserts.AssertEventDestination(struct["EventDestination"]) end
	if struct["ConfigurationSetName"] then asserts.AssertConfigurationSetName(struct["ConfigurationSetName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateConfigurationSetEventDestinationRequest[k], "CreateConfigurationSetEventDestinationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateConfigurationSetEventDestinationRequest
-- <p>Represents a request to create a configuration set event destination. A configuration set event destination, which can be either Amazon CloudWatch or Amazon Kinesis Firehose, describes an AWS service in which Amazon SES publishes the email sending events associated with a configuration set. For information about using configuration sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>
-- @param _EventDestination [EventDestination] <p>An object that describes the AWS service to which Amazon SES will publish the email sending events associated with the specified configuration set.</p>
-- @param _ConfigurationSetName [ConfigurationSetName] <p>The name of the configuration set to which to apply the event destination.</p>
-- Required parameter: ConfigurationSetName
-- Required parameter: EventDestination
function M.CreateConfigurationSetEventDestinationRequest(_EventDestination, _ConfigurationSetName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateConfigurationSetEventDestinationRequest")
	local t = { 
		["EventDestination"] = _EventDestination,
		["ConfigurationSetName"] = _ConfigurationSetName,
	}
	asserts.AssertCreateConfigurationSetEventDestinationRequest(t)
	return t
end

keys.GetIdentityDkimAttributesRequest = { ["Identities"] = true, nil }

function asserts.AssertGetIdentityDkimAttributesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetIdentityDkimAttributesRequest to be of type 'table'")
	assert(struct["Identities"], "Expected key Identities to exist in table")
	if struct["Identities"] then asserts.AssertIdentityList(struct["Identities"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetIdentityDkimAttributesRequest[k], "GetIdentityDkimAttributesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetIdentityDkimAttributesRequest
-- <p>Represents a request for the status of Amazon SES Easy DKIM signing for an identity. For domain identities, this request also returns the DKIM tokens that are required for Easy DKIM signing, and whether Amazon SES successfully verified that these tokens were published. For more information about Easy DKIM, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html">Amazon SES Developer Guide</a>.</p>
-- @param _Identities [IdentityList] <p>A list of one or more verified identities - email addresses, domains, or both.</p>
-- Required parameter: Identities
function M.GetIdentityDkimAttributesRequest(_Identities, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetIdentityDkimAttributesRequest")
	local t = { 
		["Identities"] = _Identities,
	}
	asserts.AssertGetIdentityDkimAttributesRequest(t)
	return t
end

keys.StopAction = { ["Scope"] = true, ["TopicArn"] = true, nil }

function asserts.AssertStopAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopAction to be of type 'table'")
	assert(struct["Scope"], "Expected key Scope to exist in table")
	if struct["Scope"] then asserts.AssertStopScope(struct["Scope"]) end
	if struct["TopicArn"] then asserts.AssertAmazonResourceName(struct["TopicArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopAction[k], "StopAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopAction
-- <p>When included in a receipt rule, this action terminates the evaluation of the receipt rule set and, optionally, publishes a notification to Amazon Simple Notification Service (Amazon SNS).</p> <p>For information about setting a stop action in a receipt rule, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-stop.html">Amazon SES Developer Guide</a>.</p>
-- @param _Scope [StopScope] <p>The scope to which the Stop action applies. That is, what is being stopped.</p>
-- @param _TopicArn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the Amazon SNS topic to notify when the stop action is taken. An example of an Amazon SNS topic ARN is <code>arn:aws:sns:us-west-2:123456789012:MyTopic</code>. For more information about Amazon SNS topics, see the <a href="http://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html">Amazon SNS Developer Guide</a>.</p>
-- Required parameter: Scope
function M.StopAction(_Scope, _TopicArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopAction")
	local t = { 
		["Scope"] = _Scope,
		["TopicArn"] = _TopicArn,
	}
	asserts.AssertStopAction(t)
	return t
end

keys.SendEmailRequest = { ["Tags"] = true, ["ReturnPathArn"] = true, ["ReplyToAddresses"] = true, ["Destination"] = true, ["Source"] = true, ["ReturnPath"] = true, ["ConfigurationSetName"] = true, ["Message"] = true, ["SourceArn"] = true, nil }

function asserts.AssertSendEmailRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendEmailRequest to be of type 'table'")
	assert(struct["Source"], "Expected key Source to exist in table")
	assert(struct["Destination"], "Expected key Destination to exist in table")
	assert(struct["Message"], "Expected key Message to exist in table")
	if struct["Tags"] then asserts.AssertMessageTagList(struct["Tags"]) end
	if struct["ReturnPathArn"] then asserts.AssertAmazonResourceName(struct["ReturnPathArn"]) end
	if struct["ReplyToAddresses"] then asserts.AssertAddressList(struct["ReplyToAddresses"]) end
	if struct["Destination"] then asserts.AssertDestination(struct["Destination"]) end
	if struct["Source"] then asserts.AssertAddress(struct["Source"]) end
	if struct["ReturnPath"] then asserts.AssertAddress(struct["ReturnPath"]) end
	if struct["ConfigurationSetName"] then asserts.AssertConfigurationSetName(struct["ConfigurationSetName"]) end
	if struct["Message"] then asserts.AssertMessage(struct["Message"]) end
	if struct["SourceArn"] then asserts.AssertAmazonResourceName(struct["SourceArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.SendEmailRequest[k], "SendEmailRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendEmailRequest
-- <p>Represents a request to send a single formatted email using Amazon SES. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-email-formatted.html">Amazon SES Developer Guide</a>.</p>
-- @param _Tags [MessageTagList] <p>A list of tags, in the form of name/value pairs, to apply to an email that you send using <code>SendEmail</code>. Tags correspond to characteristics of the email that you define, so that you can publish email sending events.</p>
-- @param _ReturnPathArn [AmazonResourceName] <p>This parameter is used only for sending authorization. It is the ARN of the identity that is associated with the sending authorization policy that permits you to use the email address specified in the <code>ReturnPath</code> parameter.</p> <p>For example, if the owner of <code>example.com</code> (which has ARN <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>) attaches a policy to it that authorizes you to use <code>feedback@example.com</code>, then you would specify the <code>ReturnPathArn</code> to be <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>, and the <code>ReturnPath</code> to be <code>feedback@example.com</code>.</p> <p>For more information about sending authorization, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer Guide</a>. </p>
-- @param _ReplyToAddresses [AddressList] <p>The reply-to email address(es) for the message. If the recipient replies to the message, each reply-to address will receive the reply.</p>
-- @param _Destination [Destination] <p>The destination for this email, composed of To:, CC:, and BCC: fields.</p>
-- @param _Source [Address] <p>The email address that is sending the email. This email address must be either individually verified with Amazon SES, or from a domain that has been verified with Amazon SES. For information about verifying identities, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html">Amazon SES Developer Guide</a>.</p> <p>If you are sending on behalf of another user and have been permitted to do so by a sending authorization policy, then you must also specify the <code>SourceArn</code> parameter. For more information about sending authorization, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer Guide</a>.</p> <p> In all cases, the email address must be 7-bit ASCII. If the text must contain any other characters, then you must use MIME encoded-word syntax (RFC 2047) instead of a literal string. MIME encoded-word syntax uses the following form: <code>=?charset?encoding?encoded-text?=</code>. For more information, see <a href="http://tools.ietf.org/html/rfc2047">RFC 2047</a>. </p>
-- @param _ReturnPath [Address] <p>The email address to which bounces and complaints are to be forwarded when feedback forwarding is enabled. If the message cannot be delivered to the recipient, then an error message will be returned from the recipient's ISP; this message will then be forwarded to the email address specified by the <code>ReturnPath</code> parameter. The <code>ReturnPath</code> parameter is never overwritten. This email address must be either individually verified with Amazon SES, or from a domain that has been verified with Amazon SES. </p>
-- @param _ConfigurationSetName [ConfigurationSetName] <p>The name of the configuration set to use when you send an email using <code>SendEmail</code>.</p>
-- @param _Message [Message] <p>The message to be sent.</p>
-- @param _SourceArn [AmazonResourceName] <p>This parameter is used only for sending authorization. It is the ARN of the identity that is associated with the sending authorization policy that permits you to send for the email address specified in the <code>Source</code> parameter.</p> <p>For example, if the owner of <code>example.com</code> (which has ARN <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>) attaches a policy to it that authorizes you to send from <code>user@example.com</code>, then you would specify the <code>SourceArn</code> to be <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>, and the <code>Source</code> to be <code>user@example.com</code>.</p> <p>For more information about sending authorization, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer Guide</a>. </p>
-- Required parameter: Source
-- Required parameter: Destination
-- Required parameter: Message
function M.SendEmailRequest(_Tags, _ReturnPathArn, _ReplyToAddresses, _Destination, _Source, _ReturnPath, _ConfigurationSetName, _Message, _SourceArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SendEmailRequest")
	local t = { 
		["Tags"] = _Tags,
		["ReturnPathArn"] = _ReturnPathArn,
		["ReplyToAddresses"] = _ReplyToAddresses,
		["Destination"] = _Destination,
		["Source"] = _Source,
		["ReturnPath"] = _ReturnPath,
		["ConfigurationSetName"] = _ConfigurationSetName,
		["Message"] = _Message,
		["SourceArn"] = _SourceArn,
	}
	asserts.AssertSendEmailRequest(t)
	return t
end

keys.InvalidSnsTopicException = { ["Topic"] = true, nil }

function asserts.AssertInvalidSnsTopicException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidSnsTopicException to be of type 'table'")
	if struct["Topic"] then asserts.AssertAmazonResourceName(struct["Topic"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidSnsTopicException[k], "InvalidSnsTopicException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidSnsTopicException
-- <p>Indicates that the provided Amazon SNS topic is invalid, or that Amazon SES could not publish to the topic, possibly due to permissions issues. For information about giving permissions, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html">Amazon SES Developer Guide</a>.</p>
-- @param _Topic [AmazonResourceName] 
function M.InvalidSnsTopicException(_Topic, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidSnsTopicException")
	local t = { 
		["Topic"] = _Topic,
	}
	asserts.AssertInvalidSnsTopicException(t)
	return t
end

keys.DeleteVerifiedEmailAddressRequest = { ["EmailAddress"] = true, nil }

function asserts.AssertDeleteVerifiedEmailAddressRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteVerifiedEmailAddressRequest to be of type 'table'")
	assert(struct["EmailAddress"], "Expected key EmailAddress to exist in table")
	if struct["EmailAddress"] then asserts.AssertAddress(struct["EmailAddress"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteVerifiedEmailAddressRequest[k], "DeleteVerifiedEmailAddressRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteVerifiedEmailAddressRequest
-- <p>Represents a request to delete an email address from the list of email addresses you have attempted to verify under your AWS account.</p>
-- @param _EmailAddress [Address] <p>An email address to be removed from the list of verified addresses.</p>
-- Required parameter: EmailAddress
function M.DeleteVerifiedEmailAddressRequest(_EmailAddress, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteVerifiedEmailAddressRequest")
	local t = { 
		["EmailAddress"] = _EmailAddress,
	}
	asserts.AssertDeleteVerifiedEmailAddressRequest(t)
	return t
end

keys.EventDestination = { ["MatchingEventTypes"] = true, ["Enabled"] = true, ["Name"] = true, ["CloudWatchDestination"] = true, ["KinesisFirehoseDestination"] = true, nil }

function asserts.AssertEventDestination(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventDestination to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["MatchingEventTypes"], "Expected key MatchingEventTypes to exist in table")
	if struct["MatchingEventTypes"] then asserts.AssertEventTypes(struct["MatchingEventTypes"]) end
	if struct["Enabled"] then asserts.AssertEnabled(struct["Enabled"]) end
	if struct["Name"] then asserts.AssertEventDestinationName(struct["Name"]) end
	if struct["CloudWatchDestination"] then asserts.AssertCloudWatchDestination(struct["CloudWatchDestination"]) end
	if struct["KinesisFirehoseDestination"] then asserts.AssertKinesisFirehoseDestination(struct["KinesisFirehoseDestination"]) end
	for k,_ in pairs(struct) do
		assert(keys.EventDestination[k], "EventDestination contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventDestination
-- <p>Contains information about the event destination to which the specified email sending events are published.</p> <note> <p>When you create or update an event destination, you must provide one, and only one, destination. The destination can be either Amazon CloudWatch or Amazon Kinesis Firehose.</p> </note> <p>Event destinations are associated with configuration sets, which enable you to publish email sending events to Amazon CloudWatch or Amazon Kinesis Firehose. For information about using configuration sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>
-- @param _MatchingEventTypes [EventTypes] <p>The type of email sending events to publish to the event destination.</p>
-- @param _Enabled [Enabled] <p>Sets whether Amazon SES publishes events to this destination when you send an email with the associated configuration set. Set to <code>true</code> to enable publishing to this destination; set to <code>false</code> to prevent publishing to this destination. The default value is <code>false</code>.</p>
-- @param _Name [EventDestinationName] <p>The name of the event destination. The name must:</p> <ul> <li> <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), underscores (_), or dashes (-).</p> </li> <li> <p>Contain less than 64 characters.</p> </li> </ul>
-- @param _CloudWatchDestination [CloudWatchDestination] <p>An object that contains the names, default values, and sources of the dimensions associated with an Amazon CloudWatch event destination.</p>
-- @param _KinesisFirehoseDestination [KinesisFirehoseDestination] <p>An object that contains the delivery stream ARN and the IAM role ARN associated with an Amazon Kinesis Firehose event destination.</p>
-- Required parameter: Name
-- Required parameter: MatchingEventTypes
function M.EventDestination(_MatchingEventTypes, _Enabled, _Name, _CloudWatchDestination, _KinesisFirehoseDestination, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EventDestination")
	local t = { 
		["MatchingEventTypes"] = _MatchingEventTypes,
		["Enabled"] = _Enabled,
		["Name"] = _Name,
		["CloudWatchDestination"] = _CloudWatchDestination,
		["KinesisFirehoseDestination"] = _KinesisFirehoseDestination,
	}
	asserts.AssertEventDestination(t)
	return t
end

keys.DeleteReceiptRuleSetResponse = { nil }

function asserts.AssertDeleteReceiptRuleSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteReceiptRuleSetResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteReceiptRuleSetResponse[k], "DeleteReceiptRuleSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteReceiptRuleSetResponse
-- <p>An empty element returned on a successful request.</p>
function M.DeleteReceiptRuleSetResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteReceiptRuleSetResponse")
	local t = { 
	}
	asserts.AssertDeleteReceiptRuleSetResponse(t)
	return t
end

keys.IdentityMailFromDomainAttributes = { ["MailFromDomain"] = true, ["BehaviorOnMXFailure"] = true, ["MailFromDomainStatus"] = true, nil }

function asserts.AssertIdentityMailFromDomainAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IdentityMailFromDomainAttributes to be of type 'table'")
	assert(struct["MailFromDomain"], "Expected key MailFromDomain to exist in table")
	assert(struct["MailFromDomainStatus"], "Expected key MailFromDomainStatus to exist in table")
	assert(struct["BehaviorOnMXFailure"], "Expected key BehaviorOnMXFailure to exist in table")
	if struct["MailFromDomain"] then asserts.AssertMailFromDomainName(struct["MailFromDomain"]) end
	if struct["BehaviorOnMXFailure"] then asserts.AssertBehaviorOnMXFailure(struct["BehaviorOnMXFailure"]) end
	if struct["MailFromDomainStatus"] then asserts.AssertCustomMailFromStatus(struct["MailFromDomainStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.IdentityMailFromDomainAttributes[k], "IdentityMailFromDomainAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IdentityMailFromDomainAttributes
-- <p>Represents the custom MAIL FROM domain attributes of a verified identity (email address or domain).</p>
-- @param _MailFromDomain [MailFromDomainName] <p>The custom MAIL FROM domain that the identity is configured to use.</p>
-- @param _BehaviorOnMXFailure [BehaviorOnMXFailure] <p>The action that Amazon SES takes if it cannot successfully read the required MX record when you send an email. A value of <code>UseDefaultValue</code> indicates that if Amazon SES cannot read the required MX record, it uses amazonses.com (or a subdomain of that) as the MAIL FROM domain. A value of <code>RejectMessage</code> indicates that if Amazon SES cannot read the required MX record, Amazon SES returns a <code>MailFromDomainNotVerified</code> error and does not send the email.</p> <p>The custom MAIL FROM setup states that result in this behavior are <code>Pending</code>, <code>Failed</code>, and <code>TemporaryFailure</code>.</p>
-- @param _MailFromDomainStatus [CustomMailFromStatus] <p>The state that indicates whether Amazon SES has successfully read the MX record required for custom MAIL FROM domain setup. If the state is <code>Success</code>, Amazon SES uses the specified custom MAIL FROM domain when the verified identity sends an email. All other states indicate that Amazon SES takes the action described by <code>BehaviorOnMXFailure</code>.</p>
-- Required parameter: MailFromDomain
-- Required parameter: MailFromDomainStatus
-- Required parameter: BehaviorOnMXFailure
function M.IdentityMailFromDomainAttributes(_MailFromDomain, _BehaviorOnMXFailure, _MailFromDomainStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IdentityMailFromDomainAttributes")
	local t = { 
		["MailFromDomain"] = _MailFromDomain,
		["BehaviorOnMXFailure"] = _BehaviorOnMXFailure,
		["MailFromDomainStatus"] = _MailFromDomainStatus,
	}
	asserts.AssertIdentityMailFromDomainAttributes(t)
	return t
end

keys.GetSendStatisticsResponse = { ["SendDataPoints"] = true, nil }

function asserts.AssertGetSendStatisticsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSendStatisticsResponse to be of type 'table'")
	if struct["SendDataPoints"] then asserts.AssertSendDataPointList(struct["SendDataPoints"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSendStatisticsResponse[k], "GetSendStatisticsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSendStatisticsResponse
-- <p>Represents a list of data points. This list contains aggregated data from the previous two weeks of your sending activity with Amazon SES.</p>
-- @param _SendDataPoints [SendDataPointList] <p>A list of data points, each of which represents 15 minutes of activity.</p>
function M.GetSendStatisticsResponse(_SendDataPoints, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSendStatisticsResponse")
	local t = { 
		["SendDataPoints"] = _SendDataPoints,
	}
	asserts.AssertGetSendStatisticsResponse(t)
	return t
end

keys.SetIdentityDkimEnabledRequest = { ["DkimEnabled"] = true, ["Identity"] = true, nil }

function asserts.AssertSetIdentityDkimEnabledRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetIdentityDkimEnabledRequest to be of type 'table'")
	assert(struct["Identity"], "Expected key Identity to exist in table")
	assert(struct["DkimEnabled"], "Expected key DkimEnabled to exist in table")
	if struct["DkimEnabled"] then asserts.AssertEnabled(struct["DkimEnabled"]) end
	if struct["Identity"] then asserts.AssertIdentity(struct["Identity"]) end
	for k,_ in pairs(struct) do
		assert(keys.SetIdentityDkimEnabledRequest[k], "SetIdentityDkimEnabledRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetIdentityDkimEnabledRequest
-- <p>Represents a request to enable or disable Amazon SES Easy DKIM signing for an identity. For more information about setting up Easy DKIM, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim.html">Amazon SES Developer Guide</a>.</p>
-- @param _DkimEnabled [Enabled] <p>Sets whether DKIM signing is enabled for an identity. Set to <code>true</code> to enable DKIM signing for this identity; <code>false</code> to disable it. </p>
-- @param _Identity [Identity] <p>The identity for which DKIM signing should be enabled or disabled.</p>
-- Required parameter: Identity
-- Required parameter: DkimEnabled
function M.SetIdentityDkimEnabledRequest(_DkimEnabled, _Identity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetIdentityDkimEnabledRequest")
	local t = { 
		["DkimEnabled"] = _DkimEnabled,
		["Identity"] = _Identity,
	}
	asserts.AssertSetIdentityDkimEnabledRequest(t)
	return t
end

keys.ReceiptRule = { ["Name"] = true, ["Recipients"] = true, ["Enabled"] = true, ["ScanEnabled"] = true, ["Actions"] = true, ["TlsPolicy"] = true, nil }

function asserts.AssertReceiptRule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReceiptRule to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.AssertReceiptRuleName(struct["Name"]) end
	if struct["Recipients"] then asserts.AssertRecipientsList(struct["Recipients"]) end
	if struct["Enabled"] then asserts.AssertEnabled(struct["Enabled"]) end
	if struct["ScanEnabled"] then asserts.AssertEnabled(struct["ScanEnabled"]) end
	if struct["Actions"] then asserts.AssertReceiptActionsList(struct["Actions"]) end
	if struct["TlsPolicy"] then asserts.AssertTlsPolicy(struct["TlsPolicy"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReceiptRule[k], "ReceiptRule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReceiptRule
-- <p>Receipt rules enable you to specify which actions Amazon SES should take when it receives mail on behalf of one or more email addresses or domains that you own.</p> <p>Each receipt rule defines a set of email addresses or domains to which it applies. If the email addresses or domains match at least one recipient address of the message, Amazon SES executes all of the receipt rule's actions on the message.</p> <p>For information about setting up receipt rules, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rules.html">Amazon SES Developer Guide</a>.</p>
-- @param _Name [ReceiptRuleName] <p>The name of the receipt rule. The name must:</p> <ul> <li> <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-).</p> </li> <li> <p>Start and end with a letter or number.</p> </li> <li> <p>Contain less than 64 characters.</p> </li> </ul>
-- @param _Recipients [RecipientsList] <p>The recipient domains and email addresses to which the receipt rule applies. If this field is not specified, this rule will match all recipients under all verified domains.</p>
-- @param _Enabled [Enabled] <p>If <code>true</code>, the receipt rule is active. The default value is <code>false</code>.</p>
-- @param _ScanEnabled [Enabled] <p>If <code>true</code>, then messages to which this receipt rule applies are scanned for spam and viruses. The default value is <code>false</code>.</p>
-- @param _Actions [ReceiptActionsList] <p>An ordered list of actions to perform on messages that match at least one of the recipient email addresses or domains specified in the receipt rule.</p>
-- @param _TlsPolicy [TlsPolicy] <p>Specifies whether Amazon SES should require that incoming email is delivered over a connection encrypted with Transport Layer Security (TLS). If this parameter is set to <code>Require</code>, Amazon SES will bounce emails that are not received over TLS. The default is <code>Optional</code>.</p>
-- Required parameter: Name
function M.ReceiptRule(_Name, _Recipients, _Enabled, _ScanEnabled, _Actions, _TlsPolicy, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReceiptRule")
	local t = { 
		["Name"] = _Name,
		["Recipients"] = _Recipients,
		["Enabled"] = _Enabled,
		["ScanEnabled"] = _ScanEnabled,
		["Actions"] = _Actions,
		["TlsPolicy"] = _TlsPolicy,
	}
	asserts.AssertReceiptRule(t)
	return t
end

keys.CreateReceiptRuleSetResponse = { nil }

function asserts.AssertCreateReceiptRuleSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateReceiptRuleSetResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CreateReceiptRuleSetResponse[k], "CreateReceiptRuleSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateReceiptRuleSetResponse
-- <p>An empty element returned on a successful request.</p>
function M.CreateReceiptRuleSetResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateReceiptRuleSetResponse")
	local t = { 
	}
	asserts.AssertCreateReceiptRuleSetResponse(t)
	return t
end

keys.ReceiptAction = { ["AddHeaderAction"] = true, ["S3Action"] = true, ["SNSAction"] = true, ["BounceAction"] = true, ["LambdaAction"] = true, ["StopAction"] = true, ["WorkmailAction"] = true, nil }

function asserts.AssertReceiptAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReceiptAction to be of type 'table'")
	if struct["AddHeaderAction"] then asserts.AssertAddHeaderAction(struct["AddHeaderAction"]) end
	if struct["S3Action"] then asserts.AssertS3Action(struct["S3Action"]) end
	if struct["SNSAction"] then asserts.AssertSNSAction(struct["SNSAction"]) end
	if struct["BounceAction"] then asserts.AssertBounceAction(struct["BounceAction"]) end
	if struct["LambdaAction"] then asserts.AssertLambdaAction(struct["LambdaAction"]) end
	if struct["StopAction"] then asserts.AssertStopAction(struct["StopAction"]) end
	if struct["WorkmailAction"] then asserts.AssertWorkmailAction(struct["WorkmailAction"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReceiptAction[k], "ReceiptAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReceiptAction
-- <p>An action that Amazon SES can take when it receives an email on behalf of one or more email addresses or domains that you own. An instance of this data type can represent only one action.</p> <p>For information about setting up receipt rules, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rules.html">Amazon SES Developer Guide</a>.</p>
-- @param _AddHeaderAction [AddHeaderAction] <p>Adds a header to the received email.</p>
-- @param _S3Action [S3Action] <p>Saves the received message to an Amazon Simple Storage Service (Amazon S3) bucket and, optionally, publishes a notification to Amazon SNS.</p>
-- @param _SNSAction [SNSAction] <p>Publishes the email content within a notification to Amazon SNS.</p>
-- @param _BounceAction [BounceAction] <p>Rejects the received email by returning a bounce response to the sender and, optionally, publishes a notification to Amazon Simple Notification Service (Amazon SNS).</p>
-- @param _LambdaAction [LambdaAction] <p>Calls an AWS Lambda function, and optionally, publishes a notification to Amazon SNS.</p>
-- @param _StopAction [StopAction] <p>Terminates the evaluation of the receipt rule set and optionally publishes a notification to Amazon SNS.</p>
-- @param _WorkmailAction [WorkmailAction] <p>Calls Amazon WorkMail and, optionally, publishes a notification to Amazon SNS.</p>
function M.ReceiptAction(_AddHeaderAction, _S3Action, _SNSAction, _BounceAction, _LambdaAction, _StopAction, _WorkmailAction, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReceiptAction")
	local t = { 
		["AddHeaderAction"] = _AddHeaderAction,
		["S3Action"] = _S3Action,
		["SNSAction"] = _SNSAction,
		["BounceAction"] = _BounceAction,
		["LambdaAction"] = _LambdaAction,
		["StopAction"] = _StopAction,
		["WorkmailAction"] = _WorkmailAction,
	}
	asserts.AssertReceiptAction(t)
	return t
end

keys.DeleteReceiptRuleSetRequest = { ["RuleSetName"] = true, nil }

function asserts.AssertDeleteReceiptRuleSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteReceiptRuleSetRequest to be of type 'table'")
	assert(struct["RuleSetName"], "Expected key RuleSetName to exist in table")
	if struct["RuleSetName"] then asserts.AssertReceiptRuleSetName(struct["RuleSetName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteReceiptRuleSetRequest[k], "DeleteReceiptRuleSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteReceiptRuleSetRequest
-- <p>Represents a request to delete a receipt rule set and all of the receipt rules it contains. You use receipt rule sets to receive email with Amazon SES. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>
-- @param _RuleSetName [ReceiptRuleSetName] <p>The name of the receipt rule set to delete.</p>
-- Required parameter: RuleSetName
function M.DeleteReceiptRuleSetRequest(_RuleSetName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteReceiptRuleSetRequest")
	local t = { 
		["RuleSetName"] = _RuleSetName,
	}
	asserts.AssertDeleteReceiptRuleSetRequest(t)
	return t
end

keys.SetReceiptRulePositionResponse = { nil }

function asserts.AssertSetReceiptRulePositionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetReceiptRulePositionResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.SetReceiptRulePositionResponse[k], "SetReceiptRulePositionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetReceiptRulePositionResponse
-- <p>An empty element returned on a successful request.</p>
function M.SetReceiptRulePositionResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetReceiptRulePositionResponse")
	local t = { 
	}
	asserts.AssertSetReceiptRulePositionResponse(t)
	return t
end

keys.GetIdentityNotificationAttributesRequest = { ["Identities"] = true, nil }

function asserts.AssertGetIdentityNotificationAttributesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetIdentityNotificationAttributesRequest to be of type 'table'")
	assert(struct["Identities"], "Expected key Identities to exist in table")
	if struct["Identities"] then asserts.AssertIdentityList(struct["Identities"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetIdentityNotificationAttributesRequest[k], "GetIdentityNotificationAttributesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetIdentityNotificationAttributesRequest
-- <p>Represents a request to return the notification attributes for a list of identities you verified with Amazon SES. For information about Amazon SES notifications, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/notifications.html">Amazon SES Developer Guide</a>.</p>
-- @param _Identities [IdentityList] <p>A list of one or more identities. You can specify an identity by using its name or by using its Amazon Resource Name (ARN). Examples: <code>user@example.com</code>, <code>example.com</code>, <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>.</p>
-- Required parameter: Identities
function M.GetIdentityNotificationAttributesRequest(_Identities, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetIdentityNotificationAttributesRequest")
	local t = { 
		["Identities"] = _Identities,
	}
	asserts.AssertGetIdentityNotificationAttributesRequest(t)
	return t
end

keys.InvalidS3ConfigurationException = { ["Bucket"] = true, nil }

function asserts.AssertInvalidS3ConfigurationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidS3ConfigurationException to be of type 'table'")
	if struct["Bucket"] then asserts.AssertS3BucketName(struct["Bucket"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidS3ConfigurationException[k], "InvalidS3ConfigurationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidS3ConfigurationException
-- <p>Indicates that the provided Amazon S3 bucket or AWS KMS encryption key is invalid, or that Amazon SES could not publish to the bucket, possibly due to permissions issues. For information about giving permissions, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html">Amazon SES Developer Guide</a>.</p>
-- @param _Bucket [S3BucketName] 
function M.InvalidS3ConfigurationException(_Bucket, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidS3ConfigurationException")
	local t = { 
		["Bucket"] = _Bucket,
	}
	asserts.AssertInvalidS3ConfigurationException(t)
	return t
end

keys.SetIdentityMailFromDomainRequest = { ["MailFromDomain"] = true, ["Identity"] = true, ["BehaviorOnMXFailure"] = true, nil }

function asserts.AssertSetIdentityMailFromDomainRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetIdentityMailFromDomainRequest to be of type 'table'")
	assert(struct["Identity"], "Expected key Identity to exist in table")
	if struct["MailFromDomain"] then asserts.AssertMailFromDomainName(struct["MailFromDomain"]) end
	if struct["Identity"] then asserts.AssertIdentity(struct["Identity"]) end
	if struct["BehaviorOnMXFailure"] then asserts.AssertBehaviorOnMXFailure(struct["BehaviorOnMXFailure"]) end
	for k,_ in pairs(struct) do
		assert(keys.SetIdentityMailFromDomainRequest[k], "SetIdentityMailFromDomainRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetIdentityMailFromDomainRequest
-- <p>Represents a request to enable or disable the Amazon SES custom MAIL FROM domain setup for a verified identity. For information about using a custom MAIL FROM domain, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/mail-from.html">Amazon SES Developer Guide</a>.</p>
-- @param _MailFromDomain [MailFromDomainName] <p>The custom MAIL FROM domain that you want the verified identity to use. The MAIL FROM domain must 1) be a subdomain of the verified identity, 2) not be used in a "From" address if the MAIL FROM domain is the destination of email feedback forwarding (for more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/mail-from.html">Amazon SES Developer Guide</a>), and 3) not be used to receive emails. A value of <code>null</code> disables the custom MAIL FROM setting for the identity.</p>
-- @param _Identity [Identity] <p>The verified identity for which you want to enable or disable the specified custom MAIL FROM domain.</p>
-- @param _BehaviorOnMXFailure [BehaviorOnMXFailure] <p>The action that you want Amazon SES to take if it cannot successfully read the required MX record when you send an email. If you choose <code>UseDefaultValue</code>, Amazon SES will use amazonses.com (or a subdomain of that) as the MAIL FROM domain. If you choose <code>RejectMessage</code>, Amazon SES will return a <code>MailFromDomainNotVerified</code> error and not send the email.</p> <p>The action specified in <code>BehaviorOnMXFailure</code> is taken when the custom MAIL FROM domain setup is in the <code>Pending</code>, <code>Failed</code>, and <code>TemporaryFailure</code> states.</p>
-- Required parameter: Identity
function M.SetIdentityMailFromDomainRequest(_MailFromDomain, _Identity, _BehaviorOnMXFailure, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetIdentityMailFromDomainRequest")
	local t = { 
		["MailFromDomain"] = _MailFromDomain,
		["Identity"] = _Identity,
		["BehaviorOnMXFailure"] = _BehaviorOnMXFailure,
	}
	asserts.AssertSetIdentityMailFromDomainRequest(t)
	return t
end

keys.DeleteConfigurationSetEventDestinationResponse = { nil }

function asserts.AssertDeleteConfigurationSetEventDestinationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteConfigurationSetEventDestinationResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteConfigurationSetEventDestinationResponse[k], "DeleteConfigurationSetEventDestinationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteConfigurationSetEventDestinationResponse
-- <p>An empty element returned on a successful request.</p>
function M.DeleteConfigurationSetEventDestinationResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteConfigurationSetEventDestinationResponse")
	local t = { 
	}
	asserts.AssertDeleteConfigurationSetEventDestinationResponse(t)
	return t
end

keys.UpdateReceiptRuleRequest = { ["RuleSetName"] = true, ["Rule"] = true, nil }

function asserts.AssertUpdateReceiptRuleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateReceiptRuleRequest to be of type 'table'")
	assert(struct["RuleSetName"], "Expected key RuleSetName to exist in table")
	assert(struct["Rule"], "Expected key Rule to exist in table")
	if struct["RuleSetName"] then asserts.AssertReceiptRuleSetName(struct["RuleSetName"]) end
	if struct["Rule"] then asserts.AssertReceiptRule(struct["Rule"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateReceiptRuleRequest[k], "UpdateReceiptRuleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateReceiptRuleRequest
-- <p>Represents a request to update a receipt rule. You use receipt rules to receive email with Amazon SES. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>
-- @param _RuleSetName [ReceiptRuleSetName] <p>The name of the receipt rule set to which the receipt rule belongs.</p>
-- @param _Rule [ReceiptRule] <p>A data structure that contains the updated receipt rule information.</p>
-- Required parameter: RuleSetName
-- Required parameter: Rule
function M.UpdateReceiptRuleRequest(_RuleSetName, _Rule, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateReceiptRuleRequest")
	local t = { 
		["RuleSetName"] = _RuleSetName,
		["Rule"] = _Rule,
	}
	asserts.AssertUpdateReceiptRuleRequest(t)
	return t
end

keys.SetIdentityHeadersInNotificationsEnabledResponse = { nil }

function asserts.AssertSetIdentityHeadersInNotificationsEnabledResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetIdentityHeadersInNotificationsEnabledResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.SetIdentityHeadersInNotificationsEnabledResponse[k], "SetIdentityHeadersInNotificationsEnabledResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetIdentityHeadersInNotificationsEnabledResponse
-- <p>An empty element returned on a successful request.</p>
function M.SetIdentityHeadersInNotificationsEnabledResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetIdentityHeadersInNotificationsEnabledResponse")
	local t = { 
	}
	asserts.AssertSetIdentityHeadersInNotificationsEnabledResponse(t)
	return t
end

keys.WorkmailAction = { ["OrganizationArn"] = true, ["TopicArn"] = true, nil }

function asserts.AssertWorkmailAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkmailAction to be of type 'table'")
	assert(struct["OrganizationArn"], "Expected key OrganizationArn to exist in table")
	if struct["OrganizationArn"] then asserts.AssertAmazonResourceName(struct["OrganizationArn"]) end
	if struct["TopicArn"] then asserts.AssertAmazonResourceName(struct["TopicArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.WorkmailAction[k], "WorkmailAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkmailAction
-- <p>When included in a receipt rule, this action calls Amazon WorkMail and, optionally, publishes a notification to Amazon Simple Notification Service (Amazon SNS). You will typically not use this action directly because Amazon WorkMail adds the rule automatically during its setup procedure.</p> <p>For information using a receipt rule to call Amazon WorkMail, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-workmail.html">Amazon SES Developer Guide</a>.</p>
-- @param _OrganizationArn [AmazonResourceName] <p>The ARN of the Amazon WorkMail organization. An example of an Amazon WorkMail organization ARN is <code>arn:aws:workmail:us-west-2:123456789012:organization/m-68755160c4cb4e29a2b2f8fb58f359d7</code>. For information about Amazon WorkMail organizations, see the <a href="http://docs.aws.amazon.com/workmail/latest/adminguide/organizations_overview.html">Amazon WorkMail Administrator Guide</a>.</p>
-- @param _TopicArn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the Amazon SNS topic to notify when the WorkMail action is called. An example of an Amazon SNS topic ARN is <code>arn:aws:sns:us-west-2:123456789012:MyTopic</code>. For more information about Amazon SNS topics, see the <a href="http://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html">Amazon SNS Developer Guide</a>.</p>
-- Required parameter: OrganizationArn
function M.WorkmailAction(_OrganizationArn, _TopicArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WorkmailAction")
	local t = { 
		["OrganizationArn"] = _OrganizationArn,
		["TopicArn"] = _TopicArn,
	}
	asserts.AssertWorkmailAction(t)
	return t
end

keys.ReceiptFilter = { ["IpFilter"] = true, ["Name"] = true, nil }

function asserts.AssertReceiptFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReceiptFilter to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["IpFilter"], "Expected key IpFilter to exist in table")
	if struct["IpFilter"] then asserts.AssertReceiptIpFilter(struct["IpFilter"]) end
	if struct["Name"] then asserts.AssertReceiptFilterName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReceiptFilter[k], "ReceiptFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReceiptFilter
-- <p>A receipt IP address filter enables you to specify whether to accept or reject mail originating from an IP address or range of IP addresses.</p> <p>For information about setting up IP address filters, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-ip-filters.html">Amazon SES Developer Guide</a>.</p>
-- @param _IpFilter [ReceiptIpFilter] <p>A structure that provides the IP addresses to block or allow, and whether to block or allow incoming mail from them.</p>
-- @param _Name [ReceiptFilterName] <p>The name of the IP address filter. The name must:</p> <ul> <li> <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-).</p> </li> <li> <p>Start and end with a letter or number.</p> </li> <li> <p>Contain less than 64 characters.</p> </li> </ul>
-- Required parameter: Name
-- Required parameter: IpFilter
function M.ReceiptFilter(_IpFilter, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReceiptFilter")
	local t = { 
		["IpFilter"] = _IpFilter,
		["Name"] = _Name,
	}
	asserts.AssertReceiptFilter(t)
	return t
end

keys.SetIdentityFeedbackForwardingEnabledResponse = { nil }

function asserts.AssertSetIdentityFeedbackForwardingEnabledResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetIdentityFeedbackForwardingEnabledResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.SetIdentityFeedbackForwardingEnabledResponse[k], "SetIdentityFeedbackForwardingEnabledResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetIdentityFeedbackForwardingEnabledResponse
-- <p>An empty element returned on a successful request.</p>
function M.SetIdentityFeedbackForwardingEnabledResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetIdentityFeedbackForwardingEnabledResponse")
	local t = { 
	}
	asserts.AssertSetIdentityFeedbackForwardingEnabledResponse(t)
	return t
end

keys.ConfigurationSetAlreadyExistsException = { ["ConfigurationSetName"] = true, nil }

function asserts.AssertConfigurationSetAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfigurationSetAlreadyExistsException to be of type 'table'")
	if struct["ConfigurationSetName"] then asserts.AssertConfigurationSetName(struct["ConfigurationSetName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConfigurationSetAlreadyExistsException[k], "ConfigurationSetAlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfigurationSetAlreadyExistsException
-- <p>Indicates that the configuration set could not be created because of a naming conflict.</p>
-- @param _ConfigurationSetName [ConfigurationSetName] 
function M.ConfigurationSetAlreadyExistsException(_ConfigurationSetName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConfigurationSetAlreadyExistsException")
	local t = { 
		["ConfigurationSetName"] = _ConfigurationSetName,
	}
	asserts.AssertConfigurationSetAlreadyExistsException(t)
	return t
end

keys.DescribeReceiptRuleSetResponse = { ["Rules"] = true, ["Metadata"] = true, nil }

function asserts.AssertDescribeReceiptRuleSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeReceiptRuleSetResponse to be of type 'table'")
	if struct["Rules"] then asserts.AssertReceiptRulesList(struct["Rules"]) end
	if struct["Metadata"] then asserts.AssertReceiptRuleSetMetadata(struct["Metadata"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeReceiptRuleSetResponse[k], "DescribeReceiptRuleSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeReceiptRuleSetResponse
-- <p>Represents the details of the specified receipt rule set.</p>
-- @param _Rules [ReceiptRulesList] <p>A list of the receipt rules that belong to the specified receipt rule set.</p>
-- @param _Metadata [ReceiptRuleSetMetadata] <p>The metadata for the receipt rule set, which consists of the rule set name and the timestamp of when the rule set was created.</p>
function M.DescribeReceiptRuleSetResponse(_Rules, _Metadata, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeReceiptRuleSetResponse")
	local t = { 
		["Rules"] = _Rules,
		["Metadata"] = _Metadata,
	}
	asserts.AssertDescribeReceiptRuleSetResponse(t)
	return t
end

keys.ListReceiptRuleSetsRequest = { ["NextToken"] = true, nil }

function asserts.AssertListReceiptRuleSetsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListReceiptRuleSetsRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListReceiptRuleSetsRequest[k], "ListReceiptRuleSetsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListReceiptRuleSetsRequest
-- <p>Represents a request to list the receipt rule sets that exist under your AWS account. You use receipt rule sets to receive email with Amazon SES. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>
-- @param _NextToken [NextToken] <p>A token returned from a previous call to <code>ListReceiptRuleSets</code> to indicate the position in the receipt rule set list.</p>
function M.ListReceiptRuleSetsRequest(_NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListReceiptRuleSetsRequest")
	local t = { 
		["NextToken"] = _NextToken,
	}
	asserts.AssertListReceiptRuleSetsRequest(t)
	return t
end

keys.VerifyEmailIdentityRequest = { ["EmailAddress"] = true, nil }

function asserts.AssertVerifyEmailIdentityRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VerifyEmailIdentityRequest to be of type 'table'")
	assert(struct["EmailAddress"], "Expected key EmailAddress to exist in table")
	if struct["EmailAddress"] then asserts.AssertAddress(struct["EmailAddress"]) end
	for k,_ in pairs(struct) do
		assert(keys.VerifyEmailIdentityRequest[k], "VerifyEmailIdentityRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VerifyEmailIdentityRequest
-- <p>Represents a request to begin email address verification with Amazon SES. For information about email address verification, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-email-addresses.html">Amazon SES Developer Guide</a>.</p>
-- @param _EmailAddress [Address] <p>The email address to be verified.</p>
-- Required parameter: EmailAddress
function M.VerifyEmailIdentityRequest(_EmailAddress, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VerifyEmailIdentityRequest")
	local t = { 
		["EmailAddress"] = _EmailAddress,
	}
	asserts.AssertVerifyEmailIdentityRequest(t)
	return t
end

keys.MessageTag = { ["Name"] = true, ["Value"] = true, nil }

function asserts.AssertMessageTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MessageTag to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Value"], "Expected key Value to exist in table")
	if struct["Name"] then asserts.AssertMessageTagName(struct["Name"]) end
	if struct["Value"] then asserts.AssertMessageTagValue(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(keys.MessageTag[k], "MessageTag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MessageTag
-- <p>Contains the name and value of a tag that you can provide to <code>SendEmail</code> or <code>SendRawEmail</code> to apply to an email.</p> <p>Message tags, which you use with configuration sets, enable you to publish email sending events. For information about using configuration sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>
-- @param _Name [MessageTagName] <p>The name of the tag. The name must:</p> <ul> <li> <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), underscores (_), or dashes (-).</p> </li> <li> <p>Contain less than 256 characters.</p> </li> </ul>
-- @param _Value [MessageTagValue] <p>The value of the tag. The value must:</p> <ul> <li> <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), underscores (_), or dashes (-).</p> </li> <li> <p>Contain less than 256 characters.</p> </li> </ul>
-- Required parameter: Name
-- Required parameter: Value
function M.MessageTag(_Name, _Value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MessageTag")
	local t = { 
		["Name"] = _Name,
		["Value"] = _Value,
	}
	asserts.AssertMessageTag(t)
	return t
end

keys.GetIdentityMailFromDomainAttributesResponse = { ["MailFromDomainAttributes"] = true, nil }

function asserts.AssertGetIdentityMailFromDomainAttributesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetIdentityMailFromDomainAttributesResponse to be of type 'table'")
	assert(struct["MailFromDomainAttributes"], "Expected key MailFromDomainAttributes to exist in table")
	if struct["MailFromDomainAttributes"] then asserts.AssertMailFromDomainAttributes(struct["MailFromDomainAttributes"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetIdentityMailFromDomainAttributesResponse[k], "GetIdentityMailFromDomainAttributesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetIdentityMailFromDomainAttributesResponse
-- <p>Represents the custom MAIL FROM attributes for a list of identities.</p>
-- @param _MailFromDomainAttributes [MailFromDomainAttributes] <p>A map of identities to custom MAIL FROM attributes.</p>
-- Required parameter: MailFromDomainAttributes
function M.GetIdentityMailFromDomainAttributesResponse(_MailFromDomainAttributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetIdentityMailFromDomainAttributesResponse")
	local t = { 
		["MailFromDomainAttributes"] = _MailFromDomainAttributes,
	}
	asserts.AssertGetIdentityMailFromDomainAttributesResponse(t)
	return t
end

keys.ListIdentitiesResponse = { ["NextToken"] = true, ["Identities"] = true, nil }

function asserts.AssertListIdentitiesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListIdentitiesResponse to be of type 'table'")
	assert(struct["Identities"], "Expected key Identities to exist in table")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Identities"] then asserts.AssertIdentityList(struct["Identities"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListIdentitiesResponse[k], "ListIdentitiesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListIdentitiesResponse
-- <p>A list of all identities that you have attempted to verify under your AWS account, regardless of verification status.</p>
-- @param _NextToken [NextToken] <p>The token used for pagination.</p>
-- @param _Identities [IdentityList] <p>A list of identities.</p>
-- Required parameter: Identities
function M.ListIdentitiesResponse(_NextToken, _Identities, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListIdentitiesResponse")
	local t = { 
		["NextToken"] = _NextToken,
		["Identities"] = _Identities,
	}
	asserts.AssertListIdentitiesResponse(t)
	return t
end

keys.Message = { ["Body"] = true, ["Subject"] = true, nil }

function asserts.AssertMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Message to be of type 'table'")
	assert(struct["Subject"], "Expected key Subject to exist in table")
	assert(struct["Body"], "Expected key Body to exist in table")
	if struct["Body"] then asserts.AssertBody(struct["Body"]) end
	if struct["Subject"] then asserts.AssertContent(struct["Subject"]) end
	for k,_ in pairs(struct) do
		assert(keys.Message[k], "Message contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Message
-- <p>Represents the message to be sent, composed of a subject and a body.</p>
-- @param _Body [Body] <p>The message body.</p>
-- @param _Subject [Content] <p>The subject of the message: A short summary of the content, which will appear in the recipient's inbox.</p>
-- Required parameter: Subject
-- Required parameter: Body
function M.Message(_Body, _Subject, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Message")
	local t = { 
		["Body"] = _Body,
		["Subject"] = _Subject,
	}
	asserts.AssertMessage(t)
	return t
end

keys.DescribeReceiptRuleSetRequest = { ["RuleSetName"] = true, nil }

function asserts.AssertDescribeReceiptRuleSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeReceiptRuleSetRequest to be of type 'table'")
	assert(struct["RuleSetName"], "Expected key RuleSetName to exist in table")
	if struct["RuleSetName"] then asserts.AssertReceiptRuleSetName(struct["RuleSetName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeReceiptRuleSetRequest[k], "DescribeReceiptRuleSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeReceiptRuleSetRequest
-- <p>Represents a request to return the details of a receipt rule set. You use receipt rule sets to receive email with Amazon SES. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>
-- @param _RuleSetName [ReceiptRuleSetName] <p>The name of the receipt rule set to describe.</p>
-- Required parameter: RuleSetName
function M.DescribeReceiptRuleSetRequest(_RuleSetName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeReceiptRuleSetRequest")
	local t = { 
		["RuleSetName"] = _RuleSetName,
	}
	asserts.AssertDescribeReceiptRuleSetRequest(t)
	return t
end

keys.SendBounceRequest = { ["OriginalMessageId"] = true, ["BounceSenderArn"] = true, ["Explanation"] = true, ["BouncedRecipientInfoList"] = true, ["BounceSender"] = true, ["MessageDsn"] = true, nil }

function asserts.AssertSendBounceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendBounceRequest to be of type 'table'")
	assert(struct["OriginalMessageId"], "Expected key OriginalMessageId to exist in table")
	assert(struct["BounceSender"], "Expected key BounceSender to exist in table")
	assert(struct["BouncedRecipientInfoList"], "Expected key BouncedRecipientInfoList to exist in table")
	if struct["OriginalMessageId"] then asserts.AssertMessageId(struct["OriginalMessageId"]) end
	if struct["BounceSenderArn"] then asserts.AssertAmazonResourceName(struct["BounceSenderArn"]) end
	if struct["Explanation"] then asserts.AssertExplanation(struct["Explanation"]) end
	if struct["BouncedRecipientInfoList"] then asserts.AssertBouncedRecipientInfoList(struct["BouncedRecipientInfoList"]) end
	if struct["BounceSender"] then asserts.AssertAddress(struct["BounceSender"]) end
	if struct["MessageDsn"] then asserts.AssertMessageDsn(struct["MessageDsn"]) end
	for k,_ in pairs(struct) do
		assert(keys.SendBounceRequest[k], "SendBounceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendBounceRequest
-- <p>Represents a request to send a bounce message to the sender of an email you received through Amazon SES.</p>
-- @param _OriginalMessageId [MessageId] <p>The message ID of the message to be bounced.</p>
-- @param _BounceSenderArn [AmazonResourceName] <p>This parameter is used only for sending authorization. It is the ARN of the identity that is associated with the sending authorization policy that permits you to use the address in the "From" header of the bounce. For more information about sending authorization, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer Guide</a>.</p>
-- @param _Explanation [Explanation] <p>Human-readable text for the bounce message to explain the failure. If not specified, the text will be auto-generated based on the bounced recipient information.</p>
-- @param _BouncedRecipientInfoList [BouncedRecipientInfoList] <p>A list of recipients of the bounced message, including the information required to create the Delivery Status Notifications (DSNs) for the recipients. You must specify at least one <code>BouncedRecipientInfo</code> in the list.</p>
-- @param _BounceSender [Address] <p>The address to use in the "From" header of the bounce message. This must be an identity that you have verified with Amazon SES.</p>
-- @param _MessageDsn [MessageDsn] <p>Message-related DSN fields. If not specified, Amazon SES will choose the values.</p>
-- Required parameter: OriginalMessageId
-- Required parameter: BounceSender
-- Required parameter: BouncedRecipientInfoList
function M.SendBounceRequest(_OriginalMessageId, _BounceSenderArn, _Explanation, _BouncedRecipientInfoList, _BounceSender, _MessageDsn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SendBounceRequest")
	local t = { 
		["OriginalMessageId"] = _OriginalMessageId,
		["BounceSenderArn"] = _BounceSenderArn,
		["Explanation"] = _Explanation,
		["BouncedRecipientInfoList"] = _BouncedRecipientInfoList,
		["BounceSender"] = _BounceSender,
		["MessageDsn"] = _MessageDsn,
	}
	asserts.AssertSendBounceRequest(t)
	return t
end

keys.CloudWatchDimensionConfiguration = { ["DimensionName"] = true, ["DimensionValueSource"] = true, ["DefaultDimensionValue"] = true, nil }

function asserts.AssertCloudWatchDimensionConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloudWatchDimensionConfiguration to be of type 'table'")
	assert(struct["DimensionName"], "Expected key DimensionName to exist in table")
	assert(struct["DimensionValueSource"], "Expected key DimensionValueSource to exist in table")
	assert(struct["DefaultDimensionValue"], "Expected key DefaultDimensionValue to exist in table")
	if struct["DimensionName"] then asserts.AssertDimensionName(struct["DimensionName"]) end
	if struct["DimensionValueSource"] then asserts.AssertDimensionValueSource(struct["DimensionValueSource"]) end
	if struct["DefaultDimensionValue"] then asserts.AssertDefaultDimensionValue(struct["DefaultDimensionValue"]) end
	for k,_ in pairs(struct) do
		assert(keys.CloudWatchDimensionConfiguration[k], "CloudWatchDimensionConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloudWatchDimensionConfiguration
-- <p>Contains the dimension configuration to use when you publish email sending events to Amazon CloudWatch.</p> <p>For information about publishing email sending events to Amazon CloudWatch, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>
-- @param _DimensionName [DimensionName] <p>The name of an Amazon CloudWatch dimension associated with an email sending metric. The name must:</p> <ul> <li> <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), underscores (_), or dashes (-).</p> </li> <li> <p>Contain less than 256 characters.</p> </li> </ul>
-- @param _DimensionValueSource [DimensionValueSource] <p>The place where Amazon SES finds the value of a dimension to publish to Amazon CloudWatch. If you want Amazon SES to use the message tags that you specify using an <code>X-SES-MESSAGE-TAGS</code> header or a parameter to the <code>SendEmail</code>/<code>SendRawEmail</code> API, choose <code>messageTag</code>. If you want Amazon SES to use your own email headers, choose <code>emailHeader</code>.</p>
-- @param _DefaultDimensionValue [DefaultDimensionValue] <p>The default value of the dimension that is published to Amazon CloudWatch if you do not provide the value of the dimension when you send an email. The default value must:</p> <ul> <li> <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), underscores (_), or dashes (-).</p> </li> <li> <p>Contain less than 256 characters.</p> </li> </ul>
-- Required parameter: DimensionName
-- Required parameter: DimensionValueSource
-- Required parameter: DefaultDimensionValue
function M.CloudWatchDimensionConfiguration(_DimensionName, _DimensionValueSource, _DefaultDimensionValue, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CloudWatchDimensionConfiguration")
	local t = { 
		["DimensionName"] = _DimensionName,
		["DimensionValueSource"] = _DimensionValueSource,
		["DefaultDimensionValue"] = _DefaultDimensionValue,
	}
	asserts.AssertCloudWatchDimensionConfiguration(t)
	return t
end

keys.ListIdentityPoliciesRequest = { ["Identity"] = true, nil }

function asserts.AssertListIdentityPoliciesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListIdentityPoliciesRequest to be of type 'table'")
	assert(struct["Identity"], "Expected key Identity to exist in table")
	if struct["Identity"] then asserts.AssertIdentity(struct["Identity"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListIdentityPoliciesRequest[k], "ListIdentityPoliciesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListIdentityPoliciesRequest
-- <p>Represents a request to return a list of sending authorization policies that are attached to an identity. Sending authorization is an Amazon SES feature that enables you to authorize other senders to use your identities. For information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer Guide</a>.</p>
-- @param _Identity [Identity] <p>The identity that is associated with the policy for which the policies will be listed. You can specify an identity by using its name or by using its Amazon Resource Name (ARN). Examples: <code>user@example.com</code>, <code>example.com</code>, <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>.</p> <p>To successfully call this API, you must own the identity.</p>
-- Required parameter: Identity
function M.ListIdentityPoliciesRequest(_Identity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListIdentityPoliciesRequest")
	local t = { 
		["Identity"] = _Identity,
	}
	asserts.AssertListIdentityPoliciesRequest(t)
	return t
end

keys.AlreadyExistsException = { ["Name"] = true, nil }

function asserts.AssertAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AlreadyExistsException to be of type 'table'")
	if struct["Name"] then asserts.AssertRuleOrRuleSetName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.AlreadyExistsException[k], "AlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AlreadyExistsException
-- <p>Indicates that a resource could not be created because of a naming conflict.</p>
-- @param _Name [RuleOrRuleSetName] 
function M.AlreadyExistsException(_Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AlreadyExistsException")
	local t = { 
		["Name"] = _Name,
	}
	asserts.AssertAlreadyExistsException(t)
	return t
end

keys.DescribeReceiptRuleResponse = { ["Rule"] = true, nil }

function asserts.AssertDescribeReceiptRuleResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeReceiptRuleResponse to be of type 'table'")
	if struct["Rule"] then asserts.AssertReceiptRule(struct["Rule"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeReceiptRuleResponse[k], "DescribeReceiptRuleResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeReceiptRuleResponse
-- <p>Represents the details of a receipt rule.</p>
-- @param _Rule [ReceiptRule] <p>A data structure that contains the specified receipt rule's name, actions, recipients, domains, enabled status, scan status, and Transport Layer Security (TLS) policy.</p>
function M.DescribeReceiptRuleResponse(_Rule, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeReceiptRuleResponse")
	local t = { 
		["Rule"] = _Rule,
	}
	asserts.AssertDescribeReceiptRuleResponse(t)
	return t
end

keys.GetIdentityDkimAttributesResponse = { ["DkimAttributes"] = true, nil }

function asserts.AssertGetIdentityDkimAttributesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetIdentityDkimAttributesResponse to be of type 'table'")
	assert(struct["DkimAttributes"], "Expected key DkimAttributes to exist in table")
	if struct["DkimAttributes"] then asserts.AssertDkimAttributes(struct["DkimAttributes"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetIdentityDkimAttributesResponse[k], "GetIdentityDkimAttributesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetIdentityDkimAttributesResponse
-- <p>Represents the status of Amazon SES Easy DKIM signing for an identity. For domain identities, this response also contains the DKIM tokens that are required for Easy DKIM signing, and whether Amazon SES successfully verified that these tokens were published.</p>
-- @param _DkimAttributes [DkimAttributes] <p>The DKIM attributes for an email address or a domain.</p>
-- Required parameter: DkimAttributes
function M.GetIdentityDkimAttributesResponse(_DkimAttributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetIdentityDkimAttributesResponse")
	local t = { 
		["DkimAttributes"] = _DkimAttributes,
	}
	asserts.AssertGetIdentityDkimAttributesResponse(t)
	return t
end

keys.CreateReceiptRuleRequest = { ["After"] = true, ["RuleSetName"] = true, ["Rule"] = true, nil }

function asserts.AssertCreateReceiptRuleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateReceiptRuleRequest to be of type 'table'")
	assert(struct["RuleSetName"], "Expected key RuleSetName to exist in table")
	assert(struct["Rule"], "Expected key Rule to exist in table")
	if struct["After"] then asserts.AssertReceiptRuleName(struct["After"]) end
	if struct["RuleSetName"] then asserts.AssertReceiptRuleSetName(struct["RuleSetName"]) end
	if struct["Rule"] then asserts.AssertReceiptRule(struct["Rule"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateReceiptRuleRequest[k], "CreateReceiptRuleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateReceiptRuleRequest
-- <p>Represents a request to create a receipt rule. You use receipt rules to receive email with Amazon SES. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>
-- @param _After [ReceiptRuleName] <p>The name of an existing rule after which the new rule will be placed. If this parameter is null, the new rule will be inserted at the beginning of the rule list.</p>
-- @param _RuleSetName [ReceiptRuleSetName] <p>The name of the rule set to which to add the rule.</p>
-- @param _Rule [ReceiptRule] <p>A data structure that contains the specified rule's name, actions, recipients, domains, enabled status, scan status, and TLS policy.</p>
-- Required parameter: RuleSetName
-- Required parameter: Rule
function M.CreateReceiptRuleRequest(_After, _RuleSetName, _Rule, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateReceiptRuleRequest")
	local t = { 
		["After"] = _After,
		["RuleSetName"] = _RuleSetName,
		["Rule"] = _Rule,
	}
	asserts.AssertCreateReceiptRuleRequest(t)
	return t
end

keys.DeleteReceiptRuleRequest = { ["RuleSetName"] = true, ["RuleName"] = true, nil }

function asserts.AssertDeleteReceiptRuleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteReceiptRuleRequest to be of type 'table'")
	assert(struct["RuleSetName"], "Expected key RuleSetName to exist in table")
	assert(struct["RuleName"], "Expected key RuleName to exist in table")
	if struct["RuleSetName"] then asserts.AssertReceiptRuleSetName(struct["RuleSetName"]) end
	if struct["RuleName"] then asserts.AssertReceiptRuleName(struct["RuleName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteReceiptRuleRequest[k], "DeleteReceiptRuleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteReceiptRuleRequest
-- <p>Represents a request to delete a receipt rule. You use receipt rules to receive email with Amazon SES. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>
-- @param _RuleSetName [ReceiptRuleSetName] <p>The name of the receipt rule set that contains the receipt rule to delete.</p>
-- @param _RuleName [ReceiptRuleName] <p>The name of the receipt rule to delete.</p>
-- Required parameter: RuleSetName
-- Required parameter: RuleName
function M.DeleteReceiptRuleRequest(_RuleSetName, _RuleName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteReceiptRuleRequest")
	local t = { 
		["RuleSetName"] = _RuleSetName,
		["RuleName"] = _RuleName,
	}
	asserts.AssertDeleteReceiptRuleRequest(t)
	return t
end

keys.SNSAction = { ["TopicArn"] = true, ["Encoding"] = true, nil }

function asserts.AssertSNSAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SNSAction to be of type 'table'")
	assert(struct["TopicArn"], "Expected key TopicArn to exist in table")
	if struct["TopicArn"] then asserts.AssertAmazonResourceName(struct["TopicArn"]) end
	if struct["Encoding"] then asserts.AssertSNSActionEncoding(struct["Encoding"]) end
	for k,_ in pairs(struct) do
		assert(keys.SNSAction[k], "SNSAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SNSAction
-- <p>When included in a receipt rule, this action publishes a notification to Amazon Simple Notification Service (Amazon SNS). This action includes a complete copy of the email content in the Amazon SNS notifications. Amazon SNS notifications for all other actions simply provide information about the email. They do not include the email content itself.</p> <p>If you own the Amazon SNS topic, you don't need to do anything to give Amazon SES permission to publish emails to it. However, if you don't own the Amazon SNS topic, you need to attach a policy to the topic to give Amazon SES permissions to access it. For information about giving permissions, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html">Amazon SES Developer Guide</a>.</p> <important> <p>You can only publish emails that are 150 KB or less (including the header) to Amazon SNS. Larger emails will bounce. If you anticipate emails larger than 150 KB, use the S3 action instead.</p> </important> <p>For information about using a receipt rule to publish an Amazon SNS notification, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-sns.html">Amazon SES Developer Guide</a>.</p>
-- @param _TopicArn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the Amazon SNS topic to notify. An example of an Amazon SNS topic ARN is <code>arn:aws:sns:us-west-2:123456789012:MyTopic</code>. For more information about Amazon SNS topics, see the <a href="http://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html">Amazon SNS Developer Guide</a>.</p>
-- @param _Encoding [SNSActionEncoding] <p>The encoding to use for the email within the Amazon SNS notification. UTF-8 is easier to use, but may not preserve all special characters when a message was encoded with a different encoding format. Base64 preserves all special characters. The default value is UTF-8.</p>
-- Required parameter: TopicArn
function M.SNSAction(_TopicArn, _Encoding, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SNSAction")
	local t = { 
		["TopicArn"] = _TopicArn,
		["Encoding"] = _Encoding,
	}
	asserts.AssertSNSAction(t)
	return t
end

keys.DeleteIdentityPolicyResponse = { nil }

function asserts.AssertDeleteIdentityPolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteIdentityPolicyResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteIdentityPolicyResponse[k], "DeleteIdentityPolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteIdentityPolicyResponse
-- <p>An empty element returned on a successful request.</p>
function M.DeleteIdentityPolicyResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteIdentityPolicyResponse")
	local t = { 
	}
	asserts.AssertDeleteIdentityPolicyResponse(t)
	return t
end

keys.MessageDsn = { ["ArrivalDate"] = true, ["ReportingMta"] = true, ["ExtensionFields"] = true, nil }

function asserts.AssertMessageDsn(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MessageDsn to be of type 'table'")
	assert(struct["ReportingMta"], "Expected key ReportingMta to exist in table")
	if struct["ArrivalDate"] then asserts.AssertArrivalDate(struct["ArrivalDate"]) end
	if struct["ReportingMta"] then asserts.AssertReportingMta(struct["ReportingMta"]) end
	if struct["ExtensionFields"] then asserts.AssertExtensionFieldList(struct["ExtensionFields"]) end
	for k,_ in pairs(struct) do
		assert(keys.MessageDsn[k], "MessageDsn contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MessageDsn
-- <p>Message-related information to include in the Delivery Status Notification (DSN) when an email that Amazon SES receives on your behalf bounces.</p> <p>For information about receiving email through Amazon SES, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email.html">Amazon SES Developer Guide</a>.</p>
-- @param _ArrivalDate [ArrivalDate] <p>When the message was received by the reporting mail transfer agent (MTA), in <a href="https://www.ietf.org/rfc/rfc0822.txt">RFC 822</a> date-time format.</p>
-- @param _ReportingMta [ReportingMta] <p>The reporting MTA that attempted to deliver the message, formatted as specified in <a href="https://tools.ietf.org/html/rfc3464">RFC 3464</a> (<code>mta-name-type; mta-name</code>). The default value is <code>dns; inbound-smtp.[region].amazonaws.com</code>.</p>
-- @param _ExtensionFields [ExtensionFieldList] <p>Additional X-headers to include in the DSN.</p>
-- Required parameter: ReportingMta
function M.MessageDsn(_ArrivalDate, _ReportingMta, _ExtensionFields, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MessageDsn")
	local t = { 
		["ArrivalDate"] = _ArrivalDate,
		["ReportingMta"] = _ReportingMta,
		["ExtensionFields"] = _ExtensionFields,
	}
	asserts.AssertMessageDsn(t)
	return t
end

keys.VerifyDomainDkimResponse = { ["DkimTokens"] = true, nil }

function asserts.AssertVerifyDomainDkimResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VerifyDomainDkimResponse to be of type 'table'")
	assert(struct["DkimTokens"], "Expected key DkimTokens to exist in table")
	if struct["DkimTokens"] then asserts.AssertVerificationTokenList(struct["DkimTokens"]) end
	for k,_ in pairs(struct) do
		assert(keys.VerifyDomainDkimResponse[k], "VerifyDomainDkimResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VerifyDomainDkimResponse
-- <p>Returns CNAME records that you must publish to the DNS server of your domain to set up Easy DKIM with Amazon SES.</p>
-- @param _DkimTokens [VerificationTokenList] <p>A set of character strings that represent the domain's identity. If the identity is an email address, the tokens represent the domain of that address.</p> <p>Using these tokens, you will need to create DNS CNAME records that point to DKIM public keys hosted by Amazon SES. Amazon Web Services will eventually detect that you have updated your DNS records; this detection process may take up to 72 hours. Upon successful detection, Amazon SES will be able to DKIM-sign emails originating from that domain.</p> <p>For more information about creating DNS records using DKIM tokens, go to the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim-dns-records.html">Amazon SES Developer Guide</a>.</p>
-- Required parameter: DkimTokens
function M.VerifyDomainDkimResponse(_DkimTokens, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VerifyDomainDkimResponse")
	local t = { 
		["DkimTokens"] = _DkimTokens,
	}
	asserts.AssertVerifyDomainDkimResponse(t)
	return t
end

keys.ListReceiptFiltersRequest = { nil }

function asserts.AssertListReceiptFiltersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListReceiptFiltersRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ListReceiptFiltersRequest[k], "ListReceiptFiltersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListReceiptFiltersRequest
-- <p>Represents a request to list the IP address filters that exist under your AWS account. You use IP address filters when you receive email with Amazon SES. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>
function M.ListReceiptFiltersRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListReceiptFiltersRequest")
	local t = { 
	}
	asserts.AssertListReceiptFiltersRequest(t)
	return t
end

keys.DescribeConfigurationSetRequest = { ["ConfigurationSetAttributeNames"] = true, ["ConfigurationSetName"] = true, nil }

function asserts.AssertDescribeConfigurationSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeConfigurationSetRequest to be of type 'table'")
	assert(struct["ConfigurationSetName"], "Expected key ConfigurationSetName to exist in table")
	if struct["ConfigurationSetAttributeNames"] then asserts.AssertConfigurationSetAttributeList(struct["ConfigurationSetAttributeNames"]) end
	if struct["ConfigurationSetName"] then asserts.AssertConfigurationSetName(struct["ConfigurationSetName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeConfigurationSetRequest[k], "DescribeConfigurationSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeConfigurationSetRequest
-- <p>Represents a request to return the details of a configuration set. Configuration sets enable you to publish email sending events. For information about using configuration sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>
-- @param _ConfigurationSetAttributeNames [ConfigurationSetAttributeList] <p>A list of configuration set attributes to return.</p>
-- @param _ConfigurationSetName [ConfigurationSetName] <p>The name of the configuration set to describe.</p>
-- Required parameter: ConfigurationSetName
function M.DescribeConfigurationSetRequest(_ConfigurationSetAttributeNames, _ConfigurationSetName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeConfigurationSetRequest")
	local t = { 
		["ConfigurationSetAttributeNames"] = _ConfigurationSetAttributeNames,
		["ConfigurationSetName"] = _ConfigurationSetName,
	}
	asserts.AssertDescribeConfigurationSetRequest(t)
	return t
end

keys.CreateConfigurationSetEventDestinationResponse = { nil }

function asserts.AssertCreateConfigurationSetEventDestinationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateConfigurationSetEventDestinationResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CreateConfigurationSetEventDestinationResponse[k], "CreateConfigurationSetEventDestinationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateConfigurationSetEventDestinationResponse
-- <p>An empty element returned on a successful request.</p>
function M.CreateConfigurationSetEventDestinationResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateConfigurationSetEventDestinationResponse")
	local t = { 
	}
	asserts.AssertCreateConfigurationSetEventDestinationResponse(t)
	return t
end

keys.SendRawEmailResponse = { ["MessageId"] = true, nil }

function asserts.AssertSendRawEmailResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendRawEmailResponse to be of type 'table'")
	assert(struct["MessageId"], "Expected key MessageId to exist in table")
	if struct["MessageId"] then asserts.AssertMessageId(struct["MessageId"]) end
	for k,_ in pairs(struct) do
		assert(keys.SendRawEmailResponse[k], "SendRawEmailResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendRawEmailResponse
-- <p>Represents a unique message ID.</p>
-- @param _MessageId [MessageId] <p>The unique message identifier returned from the <code>SendRawEmail</code> action. </p>
-- Required parameter: MessageId
function M.SendRawEmailResponse(_MessageId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SendRawEmailResponse")
	local t = { 
		["MessageId"] = _MessageId,
	}
	asserts.AssertSendRawEmailResponse(t)
	return t
end

keys.GetIdentityVerificationAttributesRequest = { ["Identities"] = true, nil }

function asserts.AssertGetIdentityVerificationAttributesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetIdentityVerificationAttributesRequest to be of type 'table'")
	assert(struct["Identities"], "Expected key Identities to exist in table")
	if struct["Identities"] then asserts.AssertIdentityList(struct["Identities"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetIdentityVerificationAttributesRequest[k], "GetIdentityVerificationAttributesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetIdentityVerificationAttributesRequest
-- <p>Represents a request to return the Amazon SES verification status of a list of identities. For domain identities, this request also returns the verification token. For information about verifying identities with Amazon SES, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html">Amazon SES Developer Guide</a>.</p>
-- @param _Identities [IdentityList] <p>A list of identities.</p>
-- Required parameter: Identities
function M.GetIdentityVerificationAttributesRequest(_Identities, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetIdentityVerificationAttributesRequest")
	local t = { 
		["Identities"] = _Identities,
	}
	asserts.AssertGetIdentityVerificationAttributesRequest(t)
	return t
end

keys.CreateReceiptFilterRequest = { ["Filter"] = true, nil }

function asserts.AssertCreateReceiptFilterRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateReceiptFilterRequest to be of type 'table'")
	assert(struct["Filter"], "Expected key Filter to exist in table")
	if struct["Filter"] then asserts.AssertReceiptFilter(struct["Filter"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateReceiptFilterRequest[k], "CreateReceiptFilterRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateReceiptFilterRequest
-- <p>Represents a request to create a new IP address filter. You use IP address filters when you receive email with Amazon SES. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>
-- @param _Filter [ReceiptFilter] <p>A data structure that describes the IP address filter to create, which consists of a name, an IP address range, and whether to allow or block mail from it.</p>
-- Required parameter: Filter
function M.CreateReceiptFilterRequest(_Filter, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateReceiptFilterRequest")
	local t = { 
		["Filter"] = _Filter,
	}
	asserts.AssertCreateReceiptFilterRequest(t)
	return t
end

keys.CannotDeleteException = { ["Name"] = true, nil }

function asserts.AssertCannotDeleteException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CannotDeleteException to be of type 'table'")
	if struct["Name"] then asserts.AssertRuleOrRuleSetName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CannotDeleteException[k], "CannotDeleteException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CannotDeleteException
-- <p>Indicates that the delete operation could not be completed.</p>
-- @param _Name [RuleOrRuleSetName] 
function M.CannotDeleteException(_Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CannotDeleteException")
	local t = { 
		["Name"] = _Name,
	}
	asserts.AssertCannotDeleteException(t)
	return t
end

keys.ListReceiptRuleSetsResponse = { ["NextToken"] = true, ["RuleSets"] = true, nil }

function asserts.AssertListReceiptRuleSetsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListReceiptRuleSetsResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["RuleSets"] then asserts.AssertReceiptRuleSetsLists(struct["RuleSets"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListReceiptRuleSetsResponse[k], "ListReceiptRuleSetsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListReceiptRuleSetsResponse
-- <p>A list of receipt rule sets that exist under your AWS account.</p>
-- @param _NextToken [NextToken] <p>A token indicating that there are additional receipt rule sets available to be listed. Pass this token to successive calls of <code>ListReceiptRuleSets</code> to retrieve up to 100 receipt rule sets at a time.</p>
-- @param _RuleSets [ReceiptRuleSetsLists] <p>The metadata for the currently active receipt rule set. The metadata consists of the rule set name and the timestamp of when the rule set was created.</p>
function M.ListReceiptRuleSetsResponse(_NextToken, _RuleSets, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListReceiptRuleSetsResponse")
	local t = { 
		["NextToken"] = _NextToken,
		["RuleSets"] = _RuleSets,
	}
	asserts.AssertListReceiptRuleSetsResponse(t)
	return t
end

keys.CloneReceiptRuleSetRequest = { ["RuleSetName"] = true, ["OriginalRuleSetName"] = true, nil }

function asserts.AssertCloneReceiptRuleSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloneReceiptRuleSetRequest to be of type 'table'")
	assert(struct["RuleSetName"], "Expected key RuleSetName to exist in table")
	assert(struct["OriginalRuleSetName"], "Expected key OriginalRuleSetName to exist in table")
	if struct["RuleSetName"] then asserts.AssertReceiptRuleSetName(struct["RuleSetName"]) end
	if struct["OriginalRuleSetName"] then asserts.AssertReceiptRuleSetName(struct["OriginalRuleSetName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CloneReceiptRuleSetRequest[k], "CloneReceiptRuleSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloneReceiptRuleSetRequest
-- <p>Represents a request to create a receipt rule set by cloning an existing one. You use receipt rule sets to receive email with Amazon SES. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>
-- @param _RuleSetName [ReceiptRuleSetName] <p>The name of the rule set to create. The name must:</p> <ul> <li> <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-).</p> </li> <li> <p>Start and end with a letter or number.</p> </li> <li> <p>Contain less than 64 characters.</p> </li> </ul>
-- @param _OriginalRuleSetName [ReceiptRuleSetName] <p>The name of the rule set to clone.</p>
-- Required parameter: RuleSetName
-- Required parameter: OriginalRuleSetName
function M.CloneReceiptRuleSetRequest(_RuleSetName, _OriginalRuleSetName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CloneReceiptRuleSetRequest")
	local t = { 
		["RuleSetName"] = _RuleSetName,
		["OriginalRuleSetName"] = _OriginalRuleSetName,
	}
	asserts.AssertCloneReceiptRuleSetRequest(t)
	return t
end

keys.DescribeConfigurationSetResponse = { ["EventDestinations"] = true, ["ConfigurationSet"] = true, nil }

function asserts.AssertDescribeConfigurationSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeConfigurationSetResponse to be of type 'table'")
	if struct["EventDestinations"] then asserts.AssertEventDestinations(struct["EventDestinations"]) end
	if struct["ConfigurationSet"] then asserts.AssertConfigurationSet(struct["ConfigurationSet"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeConfigurationSetResponse[k], "DescribeConfigurationSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeConfigurationSetResponse
-- <p>Represents the details of a configuration set. Configuration sets enable you to publish email sending events. For information about using configuration sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>
-- @param _EventDestinations [EventDestinations] <p>A list of event destinations associated with the configuration set. </p>
-- @param _ConfigurationSet [ConfigurationSet] <p>The configuration set object associated with the specified configuration set.</p>
function M.DescribeConfigurationSetResponse(_EventDestinations, _ConfigurationSet, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeConfigurationSetResponse")
	local t = { 
		["EventDestinations"] = _EventDestinations,
		["ConfigurationSet"] = _ConfigurationSet,
	}
	asserts.AssertDescribeConfigurationSetResponse(t)
	return t
end

keys.SetActiveReceiptRuleSetResponse = { nil }

function asserts.AssertSetActiveReceiptRuleSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetActiveReceiptRuleSetResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.SetActiveReceiptRuleSetResponse[k], "SetActiveReceiptRuleSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetActiveReceiptRuleSetResponse
-- <p>An empty element returned on a successful request.</p>
function M.SetActiveReceiptRuleSetResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetActiveReceiptRuleSetResponse")
	local t = { 
	}
	asserts.AssertSetActiveReceiptRuleSetResponse(t)
	return t
end

keys.CreateReceiptRuleSetRequest = { ["RuleSetName"] = true, nil }

function asserts.AssertCreateReceiptRuleSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateReceiptRuleSetRequest to be of type 'table'")
	assert(struct["RuleSetName"], "Expected key RuleSetName to exist in table")
	if struct["RuleSetName"] then asserts.AssertReceiptRuleSetName(struct["RuleSetName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateReceiptRuleSetRequest[k], "CreateReceiptRuleSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateReceiptRuleSetRequest
-- <p>Represents a request to create an empty receipt rule set. You use receipt rule sets to receive email with Amazon SES. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>
-- @param _RuleSetName [ReceiptRuleSetName] <p>The name of the rule set to create. The name must:</p> <ul> <li> <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-).</p> </li> <li> <p>Start and end with a letter or number.</p> </li> <li> <p>Contain less than 64 characters.</p> </li> </ul>
-- Required parameter: RuleSetName
function M.CreateReceiptRuleSetRequest(_RuleSetName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateReceiptRuleSetRequest")
	local t = { 
		["RuleSetName"] = _RuleSetName,
	}
	asserts.AssertCreateReceiptRuleSetRequest(t)
	return t
end

keys.PutIdentityPolicyResponse = { nil }

function asserts.AssertPutIdentityPolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutIdentityPolicyResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.PutIdentityPolicyResponse[k], "PutIdentityPolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutIdentityPolicyResponse
-- <p>An empty element returned on a successful request.</p>
function M.PutIdentityPolicyResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutIdentityPolicyResponse")
	local t = { 
	}
	asserts.AssertPutIdentityPolicyResponse(t)
	return t
end

keys.RawMessage = { ["Data"] = true, nil }

function asserts.AssertRawMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RawMessage to be of type 'table'")
	assert(struct["Data"], "Expected key Data to exist in table")
	if struct["Data"] then asserts.AssertRawMessageData(struct["Data"]) end
	for k,_ in pairs(struct) do
		assert(keys.RawMessage[k], "RawMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RawMessage
-- <p>Represents the raw data of the message.</p>
-- @param _Data [RawMessageData] <p>The raw data of the message. The client must ensure that the message format complies with Internet email standards regarding email header fields, MIME types, MIME encoding, and base64 encoding.</p> <p>The To:, CC:, and BCC: headers in the raw message can contain a group list.</p> <p>If you are using <code>SendRawEmail</code> with sending authorization, you can include X-headers in the raw message to specify the "Source," "From," and "Return-Path" addresses. For more information, see the documentation for <code>SendRawEmail</code>. </p> <important> <p>Do not include these X-headers in the DKIM signature, because they are removed by Amazon SES before sending the email.</p> </important> <p>For more information, go to the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-email-raw.html">Amazon SES Developer Guide</a>. </p>
-- Required parameter: Data
function M.RawMessage(_Data, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RawMessage")
	local t = { 
		["Data"] = _Data,
	}
	asserts.AssertRawMessage(t)
	return t
end

keys.SendEmailResponse = { ["MessageId"] = true, nil }

function asserts.AssertSendEmailResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendEmailResponse to be of type 'table'")
	assert(struct["MessageId"], "Expected key MessageId to exist in table")
	if struct["MessageId"] then asserts.AssertMessageId(struct["MessageId"]) end
	for k,_ in pairs(struct) do
		assert(keys.SendEmailResponse[k], "SendEmailResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendEmailResponse
-- <p>Represents a unique message ID.</p>
-- @param _MessageId [MessageId] <p>The unique message identifier returned from the <code>SendEmail</code> action. </p>
-- Required parameter: MessageId
function M.SendEmailResponse(_MessageId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SendEmailResponse")
	local t = { 
		["MessageId"] = _MessageId,
	}
	asserts.AssertSendEmailResponse(t)
	return t
end

keys.LambdaAction = { ["InvocationType"] = true, ["FunctionArn"] = true, ["TopicArn"] = true, nil }

function asserts.AssertLambdaAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LambdaAction to be of type 'table'")
	assert(struct["FunctionArn"], "Expected key FunctionArn to exist in table")
	if struct["InvocationType"] then asserts.AssertInvocationType(struct["InvocationType"]) end
	if struct["FunctionArn"] then asserts.AssertAmazonResourceName(struct["FunctionArn"]) end
	if struct["TopicArn"] then asserts.AssertAmazonResourceName(struct["TopicArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.LambdaAction[k], "LambdaAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LambdaAction
-- <p>When included in a receipt rule, this action calls an AWS Lambda function and, optionally, publishes a notification to Amazon Simple Notification Service (Amazon SNS).</p> <p>To enable Amazon SES to call your AWS Lambda function or to publish to an Amazon SNS topic of another account, Amazon SES must have permission to access those resources. For information about giving permissions, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html">Amazon SES Developer Guide</a>.</p> <p>For information about using AWS Lambda actions in receipt rules, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-lambda.html">Amazon SES Developer Guide</a>.</p>
-- @param _InvocationType [InvocationType] <p>The invocation type of the AWS Lambda function. An invocation type of <code>RequestResponse</code> means that the execution of the function will immediately result in a response, and a value of <code>Event</code> means that the function will be invoked asynchronously. The default value is <code>Event</code>. For information about AWS Lambda invocation types, see the <a href="http://docs.aws.amazon.com/lambda/latest/dg/API_Invoke.html">AWS Lambda Developer Guide</a>.</p> <important> <p>There is a 30-second timeout on <code>RequestResponse</code> invocations. You should use <code>Event</code> invocation in most cases. Use <code>RequestResponse</code> only when you want to make a mail flow decision, such as whether to stop the receipt rule or the receipt rule set.</p> </important>
-- @param _FunctionArn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the AWS Lambda function. An example of an AWS Lambda function ARN is <code>arn:aws:lambda:us-west-2:account-id:function:MyFunction</code>. For more information about AWS Lambda, see the <a href="http://docs.aws.amazon.com/lambda/latest/dg/welcome.html">AWS Lambda Developer Guide</a>.</p>
-- @param _TopicArn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the Amazon SNS topic to notify when the Lambda action is taken. An example of an Amazon SNS topic ARN is <code>arn:aws:sns:us-west-2:123456789012:MyTopic</code>. For more information about Amazon SNS topics, see the <a href="http://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html">Amazon SNS Developer Guide</a>.</p>
-- Required parameter: FunctionArn
function M.LambdaAction(_InvocationType, _FunctionArn, _TopicArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LambdaAction")
	local t = { 
		["InvocationType"] = _InvocationType,
		["FunctionArn"] = _FunctionArn,
		["TopicArn"] = _TopicArn,
	}
	asserts.AssertLambdaAction(t)
	return t
end

keys.RuleDoesNotExistException = { ["Name"] = true, nil }

function asserts.AssertRuleDoesNotExistException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RuleDoesNotExistException to be of type 'table'")
	if struct["Name"] then asserts.AssertRuleOrRuleSetName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.RuleDoesNotExistException[k], "RuleDoesNotExistException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RuleDoesNotExistException
-- <p>Indicates that the provided receipt rule does not exist.</p>
-- @param _Name [RuleOrRuleSetName] 
function M.RuleDoesNotExistException(_Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RuleDoesNotExistException")
	local t = { 
		["Name"] = _Name,
	}
	asserts.AssertRuleDoesNotExistException(t)
	return t
end

keys.ReceiptRuleSetMetadata = { ["CreatedTimestamp"] = true, ["Name"] = true, nil }

function asserts.AssertReceiptRuleSetMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReceiptRuleSetMetadata to be of type 'table'")
	if struct["CreatedTimestamp"] then asserts.AssertTimestamp(struct["CreatedTimestamp"]) end
	if struct["Name"] then asserts.AssertReceiptRuleSetName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReceiptRuleSetMetadata[k], "ReceiptRuleSetMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReceiptRuleSetMetadata
-- <p>Information about a receipt rule set.</p> <p>A receipt rule set is a collection of rules that specify what Amazon SES should do with mail it receives on behalf of your account's verified domains.</p> <p>For information about setting up receipt rule sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rule-set.html">Amazon SES Developer Guide</a>.</p>
-- @param _CreatedTimestamp [Timestamp] <p>The date and time the receipt rule set was created.</p>
-- @param _Name [ReceiptRuleSetName] <p>The name of the receipt rule set. The name must:</p> <ul> <li> <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-).</p> </li> <li> <p>Start and end with a letter or number.</p> </li> <li> <p>Contain less than 64 characters.</p> </li> </ul>
function M.ReceiptRuleSetMetadata(_CreatedTimestamp, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReceiptRuleSetMetadata")
	local t = { 
		["CreatedTimestamp"] = _CreatedTimestamp,
		["Name"] = _Name,
	}
	asserts.AssertReceiptRuleSetMetadata(t)
	return t
end

keys.MailFromDomainNotVerifiedException = { nil }

function asserts.AssertMailFromDomainNotVerifiedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MailFromDomainNotVerifiedException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.MailFromDomainNotVerifiedException[k], "MailFromDomainNotVerifiedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MailFromDomainNotVerifiedException
-- <p> Indicates that the message could not be sent because Amazon SES could not read the MX record required to use the specified MAIL FROM domain. For information about editing the custom MAIL FROM domain settings for an identity, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/mail-from-edit.html">Amazon SES Developer Guide</a>.</p>
function M.MailFromDomainNotVerifiedException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating MailFromDomainNotVerifiedException")
	local t = { 
	}
	asserts.AssertMailFromDomainNotVerifiedException(t)
	return t
end

keys.SetReceiptRulePositionRequest = { ["After"] = true, ["RuleSetName"] = true, ["RuleName"] = true, nil }

function asserts.AssertSetReceiptRulePositionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetReceiptRulePositionRequest to be of type 'table'")
	assert(struct["RuleSetName"], "Expected key RuleSetName to exist in table")
	assert(struct["RuleName"], "Expected key RuleName to exist in table")
	if struct["After"] then asserts.AssertReceiptRuleName(struct["After"]) end
	if struct["RuleSetName"] then asserts.AssertReceiptRuleSetName(struct["RuleSetName"]) end
	if struct["RuleName"] then asserts.AssertReceiptRuleName(struct["RuleName"]) end
	for k,_ in pairs(struct) do
		assert(keys.SetReceiptRulePositionRequest[k], "SetReceiptRulePositionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetReceiptRulePositionRequest
-- <p>Represents a request to set the position of a receipt rule in a receipt rule set. You use receipt rule sets to receive email with Amazon SES. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>
-- @param _After [ReceiptRuleName] <p>The name of the receipt rule after which to place the specified receipt rule.</p>
-- @param _RuleSetName [ReceiptRuleSetName] <p>The name of the receipt rule set that contains the receipt rule to reposition.</p>
-- @param _RuleName [ReceiptRuleName] <p>The name of the receipt rule to reposition.</p>
-- Required parameter: RuleSetName
-- Required parameter: RuleName
function M.SetReceiptRulePositionRequest(_After, _RuleSetName, _RuleName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetReceiptRulePositionRequest")
	local t = { 
		["After"] = _After,
		["RuleSetName"] = _RuleSetName,
		["RuleName"] = _RuleName,
	}
	asserts.AssertSetReceiptRulePositionRequest(t)
	return t
end

keys.SetIdentityMailFromDomainResponse = { nil }

function asserts.AssertSetIdentityMailFromDomainResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetIdentityMailFromDomainResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.SetIdentityMailFromDomainResponse[k], "SetIdentityMailFromDomainResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetIdentityMailFromDomainResponse
-- <p>An empty element returned on a successful request.</p>
function M.SetIdentityMailFromDomainResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetIdentityMailFromDomainResponse")
	local t = { 
	}
	asserts.AssertSetIdentityMailFromDomainResponse(t)
	return t
end

keys.ConfigurationSetDoesNotExistException = { ["ConfigurationSetName"] = true, nil }

function asserts.AssertConfigurationSetDoesNotExistException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfigurationSetDoesNotExistException to be of type 'table'")
	if struct["ConfigurationSetName"] then asserts.AssertConfigurationSetName(struct["ConfigurationSetName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConfigurationSetDoesNotExistException[k], "ConfigurationSetDoesNotExistException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfigurationSetDoesNotExistException
-- <p>Indicates that the configuration set does not exist.</p>
-- @param _ConfigurationSetName [ConfigurationSetName] 
function M.ConfigurationSetDoesNotExistException(_ConfigurationSetName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConfigurationSetDoesNotExistException")
	local t = { 
		["ConfigurationSetName"] = _ConfigurationSetName,
	}
	asserts.AssertConfigurationSetDoesNotExistException(t)
	return t
end

keys.GetIdentityPoliciesResponse = { ["Policies"] = true, nil }

function asserts.AssertGetIdentityPoliciesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetIdentityPoliciesResponse to be of type 'table'")
	assert(struct["Policies"], "Expected key Policies to exist in table")
	if struct["Policies"] then asserts.AssertPolicyMap(struct["Policies"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetIdentityPoliciesResponse[k], "GetIdentityPoliciesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetIdentityPoliciesResponse
-- <p>Represents the requested sending authorization policies.</p>
-- @param _Policies [PolicyMap] <p>A map of policy names to policies.</p>
-- Required parameter: Policies
function M.GetIdentityPoliciesResponse(_Policies, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetIdentityPoliciesResponse")
	local t = { 
		["Policies"] = _Policies,
	}
	asserts.AssertGetIdentityPoliciesResponse(t)
	return t
end

keys.RuleSetDoesNotExistException = { ["Name"] = true, nil }

function asserts.AssertRuleSetDoesNotExistException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RuleSetDoesNotExistException to be of type 'table'")
	if struct["Name"] then asserts.AssertRuleOrRuleSetName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.RuleSetDoesNotExistException[k], "RuleSetDoesNotExistException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RuleSetDoesNotExistException
-- <p>Indicates that the provided receipt rule set does not exist.</p>
-- @param _Name [RuleOrRuleSetName] 
function M.RuleSetDoesNotExistException(_Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RuleSetDoesNotExistException")
	local t = { 
		["Name"] = _Name,
	}
	asserts.AssertRuleSetDoesNotExistException(t)
	return t
end

keys.DeleteReceiptFilterRequest = { ["FilterName"] = true, nil }

function asserts.AssertDeleteReceiptFilterRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteReceiptFilterRequest to be of type 'table'")
	assert(struct["FilterName"], "Expected key FilterName to exist in table")
	if struct["FilterName"] then asserts.AssertReceiptFilterName(struct["FilterName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteReceiptFilterRequest[k], "DeleteReceiptFilterRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteReceiptFilterRequest
-- <p>Represents a request to delete an IP address filter. You use IP address filters when you receive email with Amazon SES. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>
-- @param _FilterName [ReceiptFilterName] <p>The name of the IP address filter to delete.</p>
-- Required parameter: FilterName
function M.DeleteReceiptFilterRequest(_FilterName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteReceiptFilterRequest")
	local t = { 
		["FilterName"] = _FilterName,
	}
	asserts.AssertDeleteReceiptFilterRequest(t)
	return t
end

keys.ListConfigurationSetsRequest = { ["NextToken"] = true, ["MaxItems"] = true, nil }

function asserts.AssertListConfigurationSetsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListConfigurationSetsRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxItems"] then asserts.AssertMaxItems(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListConfigurationSetsRequest[k], "ListConfigurationSetsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListConfigurationSetsRequest
-- <p>Represents a request to list the configuration sets associated with your AWS account. Configuration sets enable you to publish email sending events. For information about using configuration sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>
-- @param _NextToken [NextToken] <p>A token returned from a previous call to <code>ListConfigurationSets</code> to indicate the position of the configuration set in the configuration set list.</p>
-- @param _MaxItems [MaxItems] <p>The number of configuration sets to return.</p>
function M.ListConfigurationSetsRequest(_NextToken, _MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListConfigurationSetsRequest")
	local t = { 
		["NextToken"] = _NextToken,
		["MaxItems"] = _MaxItems,
	}
	asserts.AssertListConfigurationSetsRequest(t)
	return t
end

keys.InvalidLambdaFunctionException = { ["FunctionArn"] = true, nil }

function asserts.AssertInvalidLambdaFunctionException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidLambdaFunctionException to be of type 'table'")
	if struct["FunctionArn"] then asserts.AssertAmazonResourceName(struct["FunctionArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidLambdaFunctionException[k], "InvalidLambdaFunctionException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidLambdaFunctionException
-- <p>Indicates that the provided AWS Lambda function is invalid, or that Amazon SES could not execute the provided function, possibly due to permissions issues. For information about giving permissions, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html">Amazon SES Developer Guide</a>.</p>
-- @param _FunctionArn [AmazonResourceName] 
function M.InvalidLambdaFunctionException(_FunctionArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidLambdaFunctionException")
	local t = { 
		["FunctionArn"] = _FunctionArn,
	}
	asserts.AssertInvalidLambdaFunctionException(t)
	return t
end

keys.ReceiptIpFilter = { ["Policy"] = true, ["Cidr"] = true, nil }

function asserts.AssertReceiptIpFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReceiptIpFilter to be of type 'table'")
	assert(struct["Policy"], "Expected key Policy to exist in table")
	assert(struct["Cidr"], "Expected key Cidr to exist in table")
	if struct["Policy"] then asserts.AssertReceiptFilterPolicy(struct["Policy"]) end
	if struct["Cidr"] then asserts.AssertCidr(struct["Cidr"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReceiptIpFilter[k], "ReceiptIpFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReceiptIpFilter
-- <p>A receipt IP address filter enables you to specify whether to accept or reject mail originating from an IP address or range of IP addresses.</p> <p>For information about setting up IP address filters, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-ip-filters.html">Amazon SES Developer Guide</a>.</p>
-- @param _Policy [ReceiptFilterPolicy] <p>Indicates whether to block or allow incoming mail from the specified IP addresses.</p>
-- @param _Cidr [Cidr] <p>A single IP address or a range of IP addresses that you want to block or allow, specified in Classless Inter-Domain Routing (CIDR) notation. An example of a single email address is 10.0.0.1. An example of a range of IP addresses is 10.0.0.1/24. For more information about CIDR notation, see <a href="https://tools.ietf.org/html/rfc2317">RFC 2317</a>.</p>
-- Required parameter: Policy
-- Required parameter: Cidr
function M.ReceiptIpFilter(_Policy, _Cidr, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReceiptIpFilter")
	local t = { 
		["Policy"] = _Policy,
		["Cidr"] = _Cidr,
	}
	asserts.AssertReceiptIpFilter(t)
	return t
end

keys.IdentityDkimAttributes = { ["DkimTokens"] = true, ["DkimEnabled"] = true, ["DkimVerificationStatus"] = true, nil }

function asserts.AssertIdentityDkimAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IdentityDkimAttributes to be of type 'table'")
	assert(struct["DkimEnabled"], "Expected key DkimEnabled to exist in table")
	assert(struct["DkimVerificationStatus"], "Expected key DkimVerificationStatus to exist in table")
	if struct["DkimTokens"] then asserts.AssertVerificationTokenList(struct["DkimTokens"]) end
	if struct["DkimEnabled"] then asserts.AssertEnabled(struct["DkimEnabled"]) end
	if struct["DkimVerificationStatus"] then asserts.AssertVerificationStatus(struct["DkimVerificationStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.IdentityDkimAttributes[k], "IdentityDkimAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IdentityDkimAttributes
-- <p>Represents the DKIM attributes of a verified email address or a domain.</p>
-- @param _DkimTokens [VerificationTokenList] <p>A set of character strings that represent the domain's identity. Using these tokens, you will need to create DNS CNAME records that point to DKIM public keys hosted by Amazon SES. Amazon Web Services will eventually detect that you have updated your DNS records; this detection process may take up to 72 hours. Upon successful detection, Amazon SES will be able to DKIM-sign email originating from that domain. (This only applies to domain identities, not email address identities.)</p> <p>For more information about creating DNS records using DKIM tokens, go to the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim-dns-records.html">Amazon SES Developer Guide</a>.</p>
-- @param _DkimEnabled [Enabled] <p>True if DKIM signing is enabled for email sent from the identity; false otherwise. The default value is true.</p>
-- @param _DkimVerificationStatus [VerificationStatus] <p>Describes whether Amazon SES has successfully verified the DKIM DNS records (tokens) published in the domain name's DNS. (This only applies to domain identities, not email address identities.)</p>
-- Required parameter: DkimEnabled
-- Required parameter: DkimVerificationStatus
function M.IdentityDkimAttributes(_DkimTokens, _DkimEnabled, _DkimVerificationStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IdentityDkimAttributes")
	local t = { 
		["DkimTokens"] = _DkimTokens,
		["DkimEnabled"] = _DkimEnabled,
		["DkimVerificationStatus"] = _DkimVerificationStatus,
	}
	asserts.AssertIdentityDkimAttributes(t)
	return t
end

keys.AddHeaderAction = { ["HeaderName"] = true, ["HeaderValue"] = true, nil }

function asserts.AssertAddHeaderAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddHeaderAction to be of type 'table'")
	assert(struct["HeaderName"], "Expected key HeaderName to exist in table")
	assert(struct["HeaderValue"], "Expected key HeaderValue to exist in table")
	if struct["HeaderName"] then asserts.AssertHeaderName(struct["HeaderName"]) end
	if struct["HeaderValue"] then asserts.AssertHeaderValue(struct["HeaderValue"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddHeaderAction[k], "AddHeaderAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddHeaderAction
-- <p>When included in a receipt rule, this action adds a header to the received email.</p> <p>For information about adding a header using a receipt rule, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-add-header.html">Amazon SES Developer Guide</a>.</p>
-- @param _HeaderName [HeaderName] <p>The name of the header to add. Must be between 1 and 50 characters, inclusive, and consist of alphanumeric (a-z, A-Z, 0-9) characters and dashes only.</p>
-- @param _HeaderValue [HeaderValue] <p>Must be less than 2048 characters, and must not contain newline characters ("\r" or "\n").</p>
-- Required parameter: HeaderName
-- Required parameter: HeaderValue
function M.AddHeaderAction(_HeaderName, _HeaderValue, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddHeaderAction")
	local t = { 
		["HeaderName"] = _HeaderName,
		["HeaderValue"] = _HeaderValue,
	}
	asserts.AssertAddHeaderAction(t)
	return t
end

keys.Content = { ["Charset"] = true, ["Data"] = true, nil }

function asserts.AssertContent(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Content to be of type 'table'")
	assert(struct["Data"], "Expected key Data to exist in table")
	if struct["Charset"] then asserts.AssertCharset(struct["Charset"]) end
	if struct["Data"] then asserts.AssertMessageData(struct["Data"]) end
	for k,_ in pairs(struct) do
		assert(keys.Content[k], "Content contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Content
-- <p>Represents textual data, plus an optional character set specification.</p> <p>By default, the text must be 7-bit ASCII, due to the constraints of the SMTP protocol. If the text must contain any other characters, then you must also specify a character set. Examples include UTF-8, ISO-8859-1, and Shift_JIS.</p>
-- @param _Charset [Charset] <p>The character set of the content.</p>
-- @param _Data [MessageData] <p>The textual data of the content.</p>
-- Required parameter: Data
function M.Content(_Charset, _Data, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Content")
	local t = { 
		["Charset"] = _Charset,
		["Data"] = _Data,
	}
	asserts.AssertContent(t)
	return t
end

keys.KinesisFirehoseDestination = { ["DeliveryStreamARN"] = true, ["IAMRoleARN"] = true, nil }

function asserts.AssertKinesisFirehoseDestination(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KinesisFirehoseDestination to be of type 'table'")
	assert(struct["IAMRoleARN"], "Expected key IAMRoleARN to exist in table")
	assert(struct["DeliveryStreamARN"], "Expected key DeliveryStreamARN to exist in table")
	if struct["DeliveryStreamARN"] then asserts.AssertAmazonResourceName(struct["DeliveryStreamARN"]) end
	if struct["IAMRoleARN"] then asserts.AssertAmazonResourceName(struct["IAMRoleARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.KinesisFirehoseDestination[k], "KinesisFirehoseDestination contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KinesisFirehoseDestination
-- <p>Contains the delivery stream ARN and the IAM role ARN associated with an Amazon Kinesis Firehose event destination.</p> <p>Event destinations, such as Amazon Kinesis Firehose, are associated with configuration sets, which enable you to publish email sending events. For information about using configuration sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>
-- @param _DeliveryStreamARN [AmazonResourceName] <p>The ARN of the Amazon Kinesis Firehose stream to which to publish email sending events.</p>
-- @param _IAMRoleARN [AmazonResourceName] <p>The ARN of the IAM role under which Amazon SES publishes email sending events to the Amazon Kinesis Firehose stream.</p>
-- Required parameter: IAMRoleARN
-- Required parameter: DeliveryStreamARN
function M.KinesisFirehoseDestination(_DeliveryStreamARN, _IAMRoleARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating KinesisFirehoseDestination")
	local t = { 
		["DeliveryStreamARN"] = _DeliveryStreamARN,
		["IAMRoleARN"] = _IAMRoleARN,
	}
	asserts.AssertKinesisFirehoseDestination(t)
	return t
end

keys.UpdateReceiptRuleResponse = { nil }

function asserts.AssertUpdateReceiptRuleResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateReceiptRuleResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateReceiptRuleResponse[k], "UpdateReceiptRuleResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateReceiptRuleResponse
-- <p>An empty element returned on a successful request.</p>
function M.UpdateReceiptRuleResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateReceiptRuleResponse")
	local t = { 
	}
	asserts.AssertUpdateReceiptRuleResponse(t)
	return t
end

keys.DescribeReceiptRuleRequest = { ["RuleSetName"] = true, ["RuleName"] = true, nil }

function asserts.AssertDescribeReceiptRuleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeReceiptRuleRequest to be of type 'table'")
	assert(struct["RuleSetName"], "Expected key RuleSetName to exist in table")
	assert(struct["RuleName"], "Expected key RuleName to exist in table")
	if struct["RuleSetName"] then asserts.AssertReceiptRuleSetName(struct["RuleSetName"]) end
	if struct["RuleName"] then asserts.AssertReceiptRuleName(struct["RuleName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeReceiptRuleRequest[k], "DescribeReceiptRuleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeReceiptRuleRequest
-- <p>Represents a request to return the details of a receipt rule. You use receipt rules to receive email with Amazon SES. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>
-- @param _RuleSetName [ReceiptRuleSetName] <p>The name of the receipt rule set to which the receipt rule belongs.</p>
-- @param _RuleName [ReceiptRuleName] <p>The name of the receipt rule.</p>
-- Required parameter: RuleSetName
-- Required parameter: RuleName
function M.DescribeReceiptRuleRequest(_RuleSetName, _RuleName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeReceiptRuleRequest")
	local t = { 
		["RuleSetName"] = _RuleSetName,
		["RuleName"] = _RuleName,
	}
	asserts.AssertDescribeReceiptRuleRequest(t)
	return t
end

keys.DescribeActiveReceiptRuleSetResponse = { ["Rules"] = true, ["Metadata"] = true, nil }

function asserts.AssertDescribeActiveReceiptRuleSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeActiveReceiptRuleSetResponse to be of type 'table'")
	if struct["Rules"] then asserts.AssertReceiptRulesList(struct["Rules"]) end
	if struct["Metadata"] then asserts.AssertReceiptRuleSetMetadata(struct["Metadata"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeActiveReceiptRuleSetResponse[k], "DescribeActiveReceiptRuleSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeActiveReceiptRuleSetResponse
-- <p>Represents the metadata and receipt rules for the receipt rule set that is currently active.</p>
-- @param _Rules [ReceiptRulesList] <p>The receipt rules that belong to the active rule set.</p>
-- @param _Metadata [ReceiptRuleSetMetadata] <p>The metadata for the currently active receipt rule set. The metadata consists of the rule set name and a timestamp of when the rule set was created.</p>
function M.DescribeActiveReceiptRuleSetResponse(_Rules, _Metadata, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeActiveReceiptRuleSetResponse")
	local t = { 
		["Rules"] = _Rules,
		["Metadata"] = _Metadata,
	}
	asserts.AssertDescribeActiveReceiptRuleSetResponse(t)
	return t
end

keys.GetSendQuotaResponse = { ["Max24HourSend"] = true, ["SentLast24Hours"] = true, ["MaxSendRate"] = true, nil }

function asserts.AssertGetSendQuotaResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSendQuotaResponse to be of type 'table'")
	if struct["Max24HourSend"] then asserts.AssertMax24HourSend(struct["Max24HourSend"]) end
	if struct["SentLast24Hours"] then asserts.AssertSentLast24Hours(struct["SentLast24Hours"]) end
	if struct["MaxSendRate"] then asserts.AssertMaxSendRate(struct["MaxSendRate"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSendQuotaResponse[k], "GetSendQuotaResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSendQuotaResponse
-- <p>Represents your Amazon SES daily sending quota, maximum send rate, and the number of emails you have sent in the last 24 hours.</p>
-- @param _Max24HourSend [Max24HourSend] <p>The maximum number of emails the user is allowed to send in a 24-hour interval. A value of -1 signifies an unlimited quota.</p>
-- @param _SentLast24Hours [SentLast24Hours] <p>The number of emails sent during the previous 24 hours.</p>
-- @param _MaxSendRate [MaxSendRate] <p>The maximum number of emails that Amazon SES can accept from the user's account per second.</p> <note> <p>The rate at which Amazon SES accepts the user's messages might be less than the maximum send rate.</p> </note>
function M.GetSendQuotaResponse(_Max24HourSend, _SentLast24Hours, _MaxSendRate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSendQuotaResponse")
	local t = { 
		["Max24HourSend"] = _Max24HourSend,
		["SentLast24Hours"] = _SentLast24Hours,
		["MaxSendRate"] = _MaxSendRate,
	}
	asserts.AssertGetSendQuotaResponse(t)
	return t
end

keys.RecipientDsnFields = { ["Status"] = true, ["FinalRecipient"] = true, ["DiagnosticCode"] = true, ["LastAttemptDate"] = true, ["ExtensionFields"] = true, ["RemoteMta"] = true, ["Action"] = true, nil }

function asserts.AssertRecipientDsnFields(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RecipientDsnFields to be of type 'table'")
	assert(struct["Action"], "Expected key Action to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["Status"] then asserts.AssertDsnStatus(struct["Status"]) end
	if struct["FinalRecipient"] then asserts.AssertAddress(struct["FinalRecipient"]) end
	if struct["DiagnosticCode"] then asserts.AssertDiagnosticCode(struct["DiagnosticCode"]) end
	if struct["LastAttemptDate"] then asserts.AssertLastAttemptDate(struct["LastAttemptDate"]) end
	if struct["ExtensionFields"] then asserts.AssertExtensionFieldList(struct["ExtensionFields"]) end
	if struct["RemoteMta"] then asserts.AssertRemoteMta(struct["RemoteMta"]) end
	if struct["Action"] then asserts.AssertDsnAction(struct["Action"]) end
	for k,_ in pairs(struct) do
		assert(keys.RecipientDsnFields[k], "RecipientDsnFields contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RecipientDsnFields
-- <p>Recipient-related information to include in the Delivery Status Notification (DSN) when an email that Amazon SES receives on your behalf bounces.</p> <p>For information about receiving email through Amazon SES, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email.html">Amazon SES Developer Guide</a>.</p>
-- @param _Status [DsnStatus] <p>The status code that indicates what went wrong. This is required by <a href="https://tools.ietf.org/html/rfc3464">RFC 3464</a>.</p>
-- @param _FinalRecipient [Address] <p>The email address to which the message was ultimately delivered. This corresponds to the <code>Final-Recipient</code> in the DSN. If not specified, <code>FinalRecipient</code> will be set to the <code>Recipient</code> specified in the <code>BouncedRecipientInfo</code> structure. Either <code>FinalRecipient</code> or the recipient in <code>BouncedRecipientInfo</code> must be a recipient of the original bounced message.</p> <note> <p>Do not prepend the <code>FinalRecipient</code> email address with <code>rfc 822;</code>, as described in <a href="https://tools.ietf.org/html/rfc3798">RFC 3798</a>.</p> </note>
-- @param _DiagnosticCode [DiagnosticCode] <p>An extended explanation of what went wrong; this is usually an SMTP response. See <a href="https://tools.ietf.org/html/rfc3463">RFC 3463</a> for the correct formatting of this parameter.</p>
-- @param _LastAttemptDate [LastAttemptDate] <p>The time the final delivery attempt was made, in <a href="https://www.ietf.org/rfc/rfc0822.txt">RFC 822</a> date-time format.</p>
-- @param _ExtensionFields [ExtensionFieldList] <p>Additional X-headers to include in the DSN.</p>
-- @param _RemoteMta [RemoteMta] <p>The MTA to which the remote MTA attempted to deliver the message, formatted as specified in <a href="https://tools.ietf.org/html/rfc3464">RFC 3464</a> (<code>mta-name-type; mta-name</code>). This parameter typically applies only to propagating synchronous bounces.</p>
-- @param _Action [DsnAction] <p>The action performed by the reporting mail transfer agent (MTA) as a result of its attempt to deliver the message to the recipient address. This is required by <a href="https://tools.ietf.org/html/rfc3464">RFC 3464</a>.</p>
-- Required parameter: Action
-- Required parameter: Status
function M.RecipientDsnFields(_Status, _FinalRecipient, _DiagnosticCode, _LastAttemptDate, _ExtensionFields, _RemoteMta, _Action, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RecipientDsnFields")
	local t = { 
		["Status"] = _Status,
		["FinalRecipient"] = _FinalRecipient,
		["DiagnosticCode"] = _DiagnosticCode,
		["LastAttemptDate"] = _LastAttemptDate,
		["ExtensionFields"] = _ExtensionFields,
		["RemoteMta"] = _RemoteMta,
		["Action"] = _Action,
	}
	asserts.AssertRecipientDsnFields(t)
	return t
end

keys.SetActiveReceiptRuleSetRequest = { ["RuleSetName"] = true, nil }

function asserts.AssertSetActiveReceiptRuleSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetActiveReceiptRuleSetRequest to be of type 'table'")
	if struct["RuleSetName"] then asserts.AssertReceiptRuleSetName(struct["RuleSetName"]) end
	for k,_ in pairs(struct) do
		assert(keys.SetActiveReceiptRuleSetRequest[k], "SetActiveReceiptRuleSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetActiveReceiptRuleSetRequest
-- <p>Represents a request to set a receipt rule set as the active receipt rule set. You use receipt rule sets to receive email with Amazon SES. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html">Amazon SES Developer Guide</a>.</p>
-- @param _RuleSetName [ReceiptRuleSetName] <p>The name of the receipt rule set to make active. Setting this value to null disables all email receiving.</p>
function M.SetActiveReceiptRuleSetRequest(_RuleSetName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetActiveReceiptRuleSetRequest")
	local t = { 
		["RuleSetName"] = _RuleSetName,
	}
	asserts.AssertSetActiveReceiptRuleSetRequest(t)
	return t
end

keys.DeleteIdentityPolicyRequest = { ["PolicyName"] = true, ["Identity"] = true, nil }

function asserts.AssertDeleteIdentityPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteIdentityPolicyRequest to be of type 'table'")
	assert(struct["Identity"], "Expected key Identity to exist in table")
	assert(struct["PolicyName"], "Expected key PolicyName to exist in table")
	if struct["PolicyName"] then asserts.AssertPolicyName(struct["PolicyName"]) end
	if struct["Identity"] then asserts.AssertIdentity(struct["Identity"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteIdentityPolicyRequest[k], "DeleteIdentityPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteIdentityPolicyRequest
-- <p>Represents a request to delete a sending authorization policy for an identity. Sending authorization is an Amazon SES feature that enables you to authorize other senders to use your identities. For information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer Guide</a>.</p>
-- @param _PolicyName [PolicyName] <p>The name of the policy to be deleted.</p>
-- @param _Identity [Identity] <p>The identity that is associated with the policy that you want to delete. You can specify the identity by using its name or by using its Amazon Resource Name (ARN). Examples: <code>user@example.com</code>, <code>example.com</code>, <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>.</p> <p>To successfully call this API, you must own the identity.</p>
-- Required parameter: Identity
-- Required parameter: PolicyName
function M.DeleteIdentityPolicyRequest(_PolicyName, _Identity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteIdentityPolicyRequest")
	local t = { 
		["PolicyName"] = _PolicyName,
		["Identity"] = _Identity,
	}
	asserts.AssertDeleteIdentityPolicyRequest(t)
	return t
end

keys.CreateConfigurationSetResponse = { nil }

function asserts.AssertCreateConfigurationSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateConfigurationSetResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CreateConfigurationSetResponse[k], "CreateConfigurationSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateConfigurationSetResponse
-- <p>An empty element returned on a successful request.</p>
function M.CreateConfigurationSetResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateConfigurationSetResponse")
	local t = { 
	}
	asserts.AssertCreateConfigurationSetResponse(t)
	return t
end

keys.DeleteConfigurationSetEventDestinationRequest = { ["EventDestinationName"] = true, ["ConfigurationSetName"] = true, nil }

function asserts.AssertDeleteConfigurationSetEventDestinationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteConfigurationSetEventDestinationRequest to be of type 'table'")
	assert(struct["ConfigurationSetName"], "Expected key ConfigurationSetName to exist in table")
	assert(struct["EventDestinationName"], "Expected key EventDestinationName to exist in table")
	if struct["EventDestinationName"] then asserts.AssertEventDestinationName(struct["EventDestinationName"]) end
	if struct["ConfigurationSetName"] then asserts.AssertConfigurationSetName(struct["ConfigurationSetName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteConfigurationSetEventDestinationRequest[k], "DeleteConfigurationSetEventDestinationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteConfigurationSetEventDestinationRequest
-- <p>Represents a request to delete a configuration set event destination. Configuration set event destinations are associated with configuration sets, which enable you to publish email sending events. For information about using configuration sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>
-- @param _EventDestinationName [EventDestinationName] <p>The name of the event destination to delete.</p>
-- @param _ConfigurationSetName [ConfigurationSetName] <p>The name of the configuration set from which to delete the event destination.</p>
-- Required parameter: ConfigurationSetName
-- Required parameter: EventDestinationName
function M.DeleteConfigurationSetEventDestinationRequest(_EventDestinationName, _ConfigurationSetName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteConfigurationSetEventDestinationRequest")
	local t = { 
		["EventDestinationName"] = _EventDestinationName,
		["ConfigurationSetName"] = _ConfigurationSetName,
	}
	asserts.AssertDeleteConfigurationSetEventDestinationRequest(t)
	return t
end

keys.ListIdentitiesRequest = { ["IdentityType"] = true, ["NextToken"] = true, ["MaxItems"] = true, nil }

function asserts.AssertListIdentitiesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListIdentitiesRequest to be of type 'table'")
	if struct["IdentityType"] then asserts.AssertIdentityType(struct["IdentityType"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxItems"] then asserts.AssertMaxItems(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListIdentitiesRequest[k], "ListIdentitiesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListIdentitiesRequest
-- <p>Represents a request to return a list of all identities (email addresses and domains) that you have attempted to verify under your AWS account, regardless of verification status.</p>
-- @param _IdentityType [IdentityType] <p>The type of the identities to list. Possible values are "EmailAddress" and "Domain". If this parameter is omitted, then all identities will be listed.</p>
-- @param _NextToken [NextToken] <p>The token to use for pagination.</p>
-- @param _MaxItems [MaxItems] <p>The maximum number of identities per page. Possible values are 1-1000 inclusive.</p>
function M.ListIdentitiesRequest(_IdentityType, _NextToken, _MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListIdentitiesRequest")
	local t = { 
		["IdentityType"] = _IdentityType,
		["NextToken"] = _NextToken,
		["MaxItems"] = _MaxItems,
	}
	asserts.AssertListIdentitiesRequest(t)
	return t
end

keys.IdentityNotificationAttributes = { ["BounceTopic"] = true, ["HeadersInBounceNotificationsEnabled"] = true, ["DeliveryTopic"] = true, ["HeadersInDeliveryNotificationsEnabled"] = true, ["ComplaintTopic"] = true, ["HeadersInComplaintNotificationsEnabled"] = true, ["ForwardingEnabled"] = true, nil }

function asserts.AssertIdentityNotificationAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IdentityNotificationAttributes to be of type 'table'")
	assert(struct["BounceTopic"], "Expected key BounceTopic to exist in table")
	assert(struct["ComplaintTopic"], "Expected key ComplaintTopic to exist in table")
	assert(struct["DeliveryTopic"], "Expected key DeliveryTopic to exist in table")
	assert(struct["ForwardingEnabled"], "Expected key ForwardingEnabled to exist in table")
	if struct["BounceTopic"] then asserts.AssertNotificationTopic(struct["BounceTopic"]) end
	if struct["HeadersInBounceNotificationsEnabled"] then asserts.AssertEnabled(struct["HeadersInBounceNotificationsEnabled"]) end
	if struct["DeliveryTopic"] then asserts.AssertNotificationTopic(struct["DeliveryTopic"]) end
	if struct["HeadersInDeliveryNotificationsEnabled"] then asserts.AssertEnabled(struct["HeadersInDeliveryNotificationsEnabled"]) end
	if struct["ComplaintTopic"] then asserts.AssertNotificationTopic(struct["ComplaintTopic"]) end
	if struct["HeadersInComplaintNotificationsEnabled"] then asserts.AssertEnabled(struct["HeadersInComplaintNotificationsEnabled"]) end
	if struct["ForwardingEnabled"] then asserts.AssertEnabled(struct["ForwardingEnabled"]) end
	for k,_ in pairs(struct) do
		assert(keys.IdentityNotificationAttributes[k], "IdentityNotificationAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IdentityNotificationAttributes
-- <p>Represents the notification attributes of an identity, including whether an identity has Amazon Simple Notification Service (Amazon SNS) topics set for bounce, complaint, and/or delivery notifications, and whether feedback forwarding is enabled for bounce and complaint notifications.</p>
-- @param _BounceTopic [NotificationTopic] <p>The Amazon Resource Name (ARN) of the Amazon SNS topic where Amazon SES will publish bounce notifications.</p>
-- @param _HeadersInBounceNotificationsEnabled [Enabled] <p>Describes whether Amazon SES includes the original email headers in Amazon SNS notifications of type <code>Bounce</code>. A value of <code>true</code> specifies that Amazon SES will include headers in bounce notifications, and a value of <code>false</code> specifies that Amazon SES will not include headers in bounce notifications.</p>
-- @param _DeliveryTopic [NotificationTopic] <p>The Amazon Resource Name (ARN) of the Amazon SNS topic where Amazon SES will publish delivery notifications.</p>
-- @param _HeadersInDeliveryNotificationsEnabled [Enabled] <p>Describes whether Amazon SES includes the original email headers in Amazon SNS notifications of type <code>Delivery</code>. A value of <code>true</code> specifies that Amazon SES will include headers in delivery notifications, and a value of <code>false</code> specifies that Amazon SES will not include headers in delivery notifications.</p>
-- @param _ComplaintTopic [NotificationTopic] <p>The Amazon Resource Name (ARN) of the Amazon SNS topic where Amazon SES will publish complaint notifications.</p>
-- @param _HeadersInComplaintNotificationsEnabled [Enabled] <p>Describes whether Amazon SES includes the original email headers in Amazon SNS notifications of type <code>Complaint</code>. A value of <code>true</code> specifies that Amazon SES will include headers in complaint notifications, and a value of <code>false</code> specifies that Amazon SES will not include headers in complaint notifications.</p>
-- @param _ForwardingEnabled [Enabled] <p>Describes whether Amazon SES will forward bounce and complaint notifications as email. <code>true</code> indicates that Amazon SES will forward bounce and complaint notifications as email, while <code>false</code> indicates that bounce and complaint notifications will be published only to the specified bounce and complaint Amazon SNS topics.</p>
-- Required parameter: BounceTopic
-- Required parameter: ComplaintTopic
-- Required parameter: DeliveryTopic
-- Required parameter: ForwardingEnabled
function M.IdentityNotificationAttributes(_BounceTopic, _HeadersInBounceNotificationsEnabled, _DeliveryTopic, _HeadersInDeliveryNotificationsEnabled, _ComplaintTopic, _HeadersInComplaintNotificationsEnabled, _ForwardingEnabled, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IdentityNotificationAttributes")
	local t = { 
		["BounceTopic"] = _BounceTopic,
		["HeadersInBounceNotificationsEnabled"] = _HeadersInBounceNotificationsEnabled,
		["DeliveryTopic"] = _DeliveryTopic,
		["HeadersInDeliveryNotificationsEnabled"] = _HeadersInDeliveryNotificationsEnabled,
		["ComplaintTopic"] = _ComplaintTopic,
		["HeadersInComplaintNotificationsEnabled"] = _HeadersInComplaintNotificationsEnabled,
		["ForwardingEnabled"] = _ForwardingEnabled,
	}
	asserts.AssertIdentityNotificationAttributes(t)
	return t
end

keys.CreateReceiptRuleResponse = { nil }

function asserts.AssertCreateReceiptRuleResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateReceiptRuleResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CreateReceiptRuleResponse[k], "CreateReceiptRuleResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateReceiptRuleResponse
-- <p>An empty element returned on a successful request.</p>
function M.CreateReceiptRuleResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateReceiptRuleResponse")
	local t = { 
	}
	asserts.AssertCreateReceiptRuleResponse(t)
	return t
end

keys.MessageRejected = { nil }

function asserts.AssertMessageRejected(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MessageRejected to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.MessageRejected[k], "MessageRejected contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MessageRejected
-- <p>Indicates that the action failed, and the message could not be sent. Check the error stack for more information about what caused the error.</p>
function M.MessageRejected(...)
	assert(select("#", ...) == 0, "Too many arguments when creating MessageRejected")
	local t = { 
	}
	asserts.AssertMessageRejected(t)
	return t
end

keys.InvalidPolicyException = { nil }

function asserts.AssertInvalidPolicyException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidPolicyException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidPolicyException[k], "InvalidPolicyException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidPolicyException
-- <p>Indicates that the provided policy is invalid. Check the error stack for more information about what caused the error.</p>
function M.InvalidPolicyException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidPolicyException")
	local t = { 
	}
	asserts.AssertInvalidPolicyException(t)
	return t
end

keys.CloneReceiptRuleSetResponse = { nil }

function asserts.AssertCloneReceiptRuleSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloneReceiptRuleSetResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CloneReceiptRuleSetResponse[k], "CloneReceiptRuleSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloneReceiptRuleSetResponse
-- <p>An empty element returned on a successful request.</p>
function M.CloneReceiptRuleSetResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CloneReceiptRuleSetResponse")
	local t = { 
	}
	asserts.AssertCloneReceiptRuleSetResponse(t)
	return t
end

keys.ListIdentityPoliciesResponse = { ["PolicyNames"] = true, nil }

function asserts.AssertListIdentityPoliciesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListIdentityPoliciesResponse to be of type 'table'")
	assert(struct["PolicyNames"], "Expected key PolicyNames to exist in table")
	if struct["PolicyNames"] then asserts.AssertPolicyNameList(struct["PolicyNames"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListIdentityPoliciesResponse[k], "ListIdentityPoliciesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListIdentityPoliciesResponse
-- <p>A list of names of sending authorization policies that apply to an identity.</p>
-- @param _PolicyNames [PolicyNameList] <p>A list of names of policies that apply to the specified identity.</p>
-- Required parameter: PolicyNames
function M.ListIdentityPoliciesResponse(_PolicyNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListIdentityPoliciesResponse")
	local t = { 
		["PolicyNames"] = _PolicyNames,
	}
	asserts.AssertListIdentityPoliciesResponse(t)
	return t
end

keys.DeleteIdentityRequest = { ["Identity"] = true, nil }

function asserts.AssertDeleteIdentityRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteIdentityRequest to be of type 'table'")
	assert(struct["Identity"], "Expected key Identity to exist in table")
	if struct["Identity"] then asserts.AssertIdentity(struct["Identity"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteIdentityRequest[k], "DeleteIdentityRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteIdentityRequest
-- <p>Represents a request to delete one of your Amazon SES identities (an email address or domain).</p>
-- @param _Identity [Identity] <p>The identity to be removed from the list of identities for the AWS Account.</p>
-- Required parameter: Identity
function M.DeleteIdentityRequest(_Identity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteIdentityRequest")
	local t = { 
		["Identity"] = _Identity,
	}
	asserts.AssertDeleteIdentityRequest(t)
	return t
end

keys.UpdateConfigurationSetEventDestinationResponse = { nil }

function asserts.AssertUpdateConfigurationSetEventDestinationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateConfigurationSetEventDestinationResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateConfigurationSetEventDestinationResponse[k], "UpdateConfigurationSetEventDestinationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateConfigurationSetEventDestinationResponse
-- <p>An empty element returned on a successful request.</p>
function M.UpdateConfigurationSetEventDestinationResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateConfigurationSetEventDestinationResponse")
	local t = { 
	}
	asserts.AssertUpdateConfigurationSetEventDestinationResponse(t)
	return t
end

keys.BounceAction = { ["Message"] = true, ["Sender"] = true, ["SmtpReplyCode"] = true, ["TopicArn"] = true, ["StatusCode"] = true, nil }

function asserts.AssertBounceAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BounceAction to be of type 'table'")
	assert(struct["SmtpReplyCode"], "Expected key SmtpReplyCode to exist in table")
	assert(struct["Message"], "Expected key Message to exist in table")
	assert(struct["Sender"], "Expected key Sender to exist in table")
	if struct["Message"] then asserts.AssertBounceMessage(struct["Message"]) end
	if struct["Sender"] then asserts.AssertAddress(struct["Sender"]) end
	if struct["SmtpReplyCode"] then asserts.AssertBounceSmtpReplyCode(struct["SmtpReplyCode"]) end
	if struct["TopicArn"] then asserts.AssertAmazonResourceName(struct["TopicArn"]) end
	if struct["StatusCode"] then asserts.AssertBounceStatusCode(struct["StatusCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.BounceAction[k], "BounceAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BounceAction
-- <p>When included in a receipt rule, this action rejects the received email by returning a bounce response to the sender and, optionally, publishes a notification to Amazon Simple Notification Service (Amazon SNS).</p> <p>For information about sending a bounce message in response to a received email, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-bounce.html">Amazon SES Developer Guide</a>.</p>
-- @param _Message [BounceMessage] <p>Human-readable text to include in the bounce message.</p>
-- @param _Sender [Address] <p>The email address of the sender of the bounced email. This is the address from which the bounce message will be sent.</p>
-- @param _SmtpReplyCode [BounceSmtpReplyCode] <p>The SMTP reply code, as defined by <a href="https://tools.ietf.org/html/rfc5321">RFC 5321</a>.</p>
-- @param _TopicArn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the Amazon SNS topic to notify when the bounce action is taken. An example of an Amazon SNS topic ARN is <code>arn:aws:sns:us-west-2:123456789012:MyTopic</code>. For more information about Amazon SNS topics, see the <a href="http://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html">Amazon SNS Developer Guide</a>.</p>
-- @param _StatusCode [BounceStatusCode] <p>The SMTP enhanced status code, as defined by <a href="https://tools.ietf.org/html/rfc3463">RFC 3463</a>.</p>
-- Required parameter: SmtpReplyCode
-- Required parameter: Message
-- Required parameter: Sender
function M.BounceAction(_Message, _Sender, _SmtpReplyCode, _TopicArn, _StatusCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BounceAction")
	local t = { 
		["Message"] = _Message,
		["Sender"] = _Sender,
		["SmtpReplyCode"] = _SmtpReplyCode,
		["TopicArn"] = _TopicArn,
		["StatusCode"] = _StatusCode,
	}
	asserts.AssertBounceAction(t)
	return t
end

keys.ListConfigurationSetsResponse = { ["ConfigurationSets"] = true, ["NextToken"] = true, nil }

function asserts.AssertListConfigurationSetsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListConfigurationSetsResponse to be of type 'table'")
	if struct["ConfigurationSets"] then asserts.AssertConfigurationSets(struct["ConfigurationSets"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListConfigurationSetsResponse[k], "ListConfigurationSetsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListConfigurationSetsResponse
-- <p>A list of configuration sets associated with your AWS account. Configuration sets enable you to publish email sending events. For information about using configuration sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>
-- @param _ConfigurationSets [ConfigurationSets] <p>A list of configuration sets.</p>
-- @param _NextToken [NextToken] <p>A token indicating that there are additional configuration sets available to be listed. Pass this token to successive calls of <code>ListConfigurationSets</code>. </p>
function M.ListConfigurationSetsResponse(_ConfigurationSets, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListConfigurationSetsResponse")
	local t = { 
		["ConfigurationSets"] = _ConfigurationSets,
		["NextToken"] = _NextToken,
	}
	asserts.AssertListConfigurationSetsResponse(t)
	return t
end

keys.SendDataPoint = { ["Complaints"] = true, ["Timestamp"] = true, ["DeliveryAttempts"] = true, ["Bounces"] = true, ["Rejects"] = true, nil }

function asserts.AssertSendDataPoint(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendDataPoint to be of type 'table'")
	if struct["Complaints"] then asserts.AssertCounter(struct["Complaints"]) end
	if struct["Timestamp"] then asserts.AssertTimestamp(struct["Timestamp"]) end
	if struct["DeliveryAttempts"] then asserts.AssertCounter(struct["DeliveryAttempts"]) end
	if struct["Bounces"] then asserts.AssertCounter(struct["Bounces"]) end
	if struct["Rejects"] then asserts.AssertCounter(struct["Rejects"]) end
	for k,_ in pairs(struct) do
		assert(keys.SendDataPoint[k], "SendDataPoint contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendDataPoint
-- <p>Represents sending statistics data. Each <code>SendDataPoint</code> contains statistics for a 15-minute period of sending activity. </p>
-- @param _Complaints [Counter] <p>Number of unwanted emails that were rejected by recipients.</p>
-- @param _Timestamp [Timestamp] <p>Time of the data point.</p>
-- @param _DeliveryAttempts [Counter] <p>Number of emails that have been sent.</p>
-- @param _Bounces [Counter] <p>Number of emails that have bounced.</p>
-- @param _Rejects [Counter] <p>Number of emails rejected by Amazon SES.</p>
function M.SendDataPoint(_Complaints, _Timestamp, _DeliveryAttempts, _Bounces, _Rejects, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SendDataPoint")
	local t = { 
		["Complaints"] = _Complaints,
		["Timestamp"] = _Timestamp,
		["DeliveryAttempts"] = _DeliveryAttempts,
		["Bounces"] = _Bounces,
		["Rejects"] = _Rejects,
	}
	asserts.AssertSendDataPoint(t)
	return t
end

keys.ReorderReceiptRuleSetResponse = { nil }

function asserts.AssertReorderReceiptRuleSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReorderReceiptRuleSetResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ReorderReceiptRuleSetResponse[k], "ReorderReceiptRuleSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReorderReceiptRuleSetResponse
-- <p>An empty element returned on a successful request.</p>
function M.ReorderReceiptRuleSetResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReorderReceiptRuleSetResponse")
	local t = { 
	}
	asserts.AssertReorderReceiptRuleSetResponse(t)
	return t
end

keys.VerifyDomainIdentityRequest = { ["Domain"] = true, nil }

function asserts.AssertVerifyDomainIdentityRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VerifyDomainIdentityRequest to be of type 'table'")
	assert(struct["Domain"], "Expected key Domain to exist in table")
	if struct["Domain"] then asserts.AssertDomain(struct["Domain"]) end
	for k,_ in pairs(struct) do
		assert(keys.VerifyDomainIdentityRequest[k], "VerifyDomainIdentityRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VerifyDomainIdentityRequest
-- <p>Represents a request to begin Amazon SES domain verification and to generate the TXT records that you must publish to the DNS server of your domain to complete the verification. For information about domain verification, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-domains.html">Amazon SES Developer Guide</a>.</p>
-- @param _Domain [Domain] <p>The domain to be verified.</p>
-- Required parameter: Domain
function M.VerifyDomainIdentityRequest(_Domain, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VerifyDomainIdentityRequest")
	local t = { 
		["Domain"] = _Domain,
	}
	asserts.AssertVerifyDomainIdentityRequest(t)
	return t
end

keys.EventDestinationDoesNotExistException = { ["EventDestinationName"] = true, ["ConfigurationSetName"] = true, nil }

function asserts.AssertEventDestinationDoesNotExistException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventDestinationDoesNotExistException to be of type 'table'")
	if struct["EventDestinationName"] then asserts.AssertEventDestinationName(struct["EventDestinationName"]) end
	if struct["ConfigurationSetName"] then asserts.AssertConfigurationSetName(struct["ConfigurationSetName"]) end
	for k,_ in pairs(struct) do
		assert(keys.EventDestinationDoesNotExistException[k], "EventDestinationDoesNotExistException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventDestinationDoesNotExistException
-- <p>Indicates that the event destination does not exist.</p>
-- @param _EventDestinationName [EventDestinationName] 
-- @param _ConfigurationSetName [ConfigurationSetName] 
function M.EventDestinationDoesNotExistException(_EventDestinationName, _ConfigurationSetName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EventDestinationDoesNotExistException")
	local t = { 
		["EventDestinationName"] = _EventDestinationName,
		["ConfigurationSetName"] = _ConfigurationSetName,
	}
	asserts.AssertEventDestinationDoesNotExistException(t)
	return t
end

keys.GetIdentityNotificationAttributesResponse = { ["NotificationAttributes"] = true, nil }

function asserts.AssertGetIdentityNotificationAttributesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetIdentityNotificationAttributesResponse to be of type 'table'")
	assert(struct["NotificationAttributes"], "Expected key NotificationAttributes to exist in table")
	if struct["NotificationAttributes"] then asserts.AssertNotificationAttributes(struct["NotificationAttributes"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetIdentityNotificationAttributesResponse[k], "GetIdentityNotificationAttributesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetIdentityNotificationAttributesResponse
-- <p>Represents the notification attributes for a list of identities.</p>
-- @param _NotificationAttributes [NotificationAttributes] <p>A map of Identity to IdentityNotificationAttributes.</p>
-- Required parameter: NotificationAttributes
function M.GetIdentityNotificationAttributesResponse(_NotificationAttributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetIdentityNotificationAttributesResponse")
	local t = { 
		["NotificationAttributes"] = _NotificationAttributes,
	}
	asserts.AssertGetIdentityNotificationAttributesResponse(t)
	return t
end

keys.DeleteReceiptRuleResponse = { nil }

function asserts.AssertDeleteReceiptRuleResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteReceiptRuleResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteReceiptRuleResponse[k], "DeleteReceiptRuleResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteReceiptRuleResponse
-- <p>An empty element returned on a successful request.</p>
function M.DeleteReceiptRuleResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteReceiptRuleResponse")
	local t = { 
	}
	asserts.AssertDeleteReceiptRuleResponse(t)
	return t
end

keys.InvalidCloudWatchDestinationException = { ["EventDestinationName"] = true, ["ConfigurationSetName"] = true, nil }

function asserts.AssertInvalidCloudWatchDestinationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidCloudWatchDestinationException to be of type 'table'")
	if struct["EventDestinationName"] then asserts.AssertEventDestinationName(struct["EventDestinationName"]) end
	if struct["ConfigurationSetName"] then asserts.AssertConfigurationSetName(struct["ConfigurationSetName"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidCloudWatchDestinationException[k], "InvalidCloudWatchDestinationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidCloudWatchDestinationException
-- <p>Indicates that the Amazon CloudWatch destination is invalid. See the error message for details.</p>
-- @param _EventDestinationName [EventDestinationName] 
-- @param _ConfigurationSetName [ConfigurationSetName] 
function M.InvalidCloudWatchDestinationException(_EventDestinationName, _ConfigurationSetName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidCloudWatchDestinationException")
	local t = { 
		["EventDestinationName"] = _EventDestinationName,
		["ConfigurationSetName"] = _ConfigurationSetName,
	}
	asserts.AssertInvalidCloudWatchDestinationException(t)
	return t
end

keys.CreateConfigurationSetRequest = { ["ConfigurationSet"] = true, nil }

function asserts.AssertCreateConfigurationSetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateConfigurationSetRequest to be of type 'table'")
	assert(struct["ConfigurationSet"], "Expected key ConfigurationSet to exist in table")
	if struct["ConfigurationSet"] then asserts.AssertConfigurationSet(struct["ConfigurationSet"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateConfigurationSetRequest[k], "CreateConfigurationSetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateConfigurationSetRequest
-- <p>Represents a request to create a configuration set. Configuration sets enable you to publish email sending events. For information about using configuration sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>
-- @param _ConfigurationSet [ConfigurationSet] <p>A data structure that contains the name of the configuration set.</p>
-- Required parameter: ConfigurationSet
function M.CreateConfigurationSetRequest(_ConfigurationSet, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateConfigurationSetRequest")
	local t = { 
		["ConfigurationSet"] = _ConfigurationSet,
	}
	asserts.AssertCreateConfigurationSetRequest(t)
	return t
end

keys.ListReceiptFiltersResponse = { ["Filters"] = true, nil }

function asserts.AssertListReceiptFiltersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListReceiptFiltersResponse to be of type 'table'")
	if struct["Filters"] then asserts.AssertReceiptFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListReceiptFiltersResponse[k], "ListReceiptFiltersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListReceiptFiltersResponse
-- <p>A list of IP address filters that exist under your AWS account.</p>
-- @param _Filters [ReceiptFilterList] <p>A list of IP address filter data structures, which each consist of a name, an IP address range, and whether to allow or block mail from it.</p>
function M.ListReceiptFiltersResponse(_Filters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListReceiptFiltersResponse")
	local t = { 
		["Filters"] = _Filters,
	}
	asserts.AssertListReceiptFiltersResponse(t)
	return t
end

keys.PutIdentityPolicyRequest = { ["Policy"] = true, ["PolicyName"] = true, ["Identity"] = true, nil }

function asserts.AssertPutIdentityPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutIdentityPolicyRequest to be of type 'table'")
	assert(struct["Identity"], "Expected key Identity to exist in table")
	assert(struct["PolicyName"], "Expected key PolicyName to exist in table")
	assert(struct["Policy"], "Expected key Policy to exist in table")
	if struct["Policy"] then asserts.AssertPolicy(struct["Policy"]) end
	if struct["PolicyName"] then asserts.AssertPolicyName(struct["PolicyName"]) end
	if struct["Identity"] then asserts.AssertIdentity(struct["Identity"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutIdentityPolicyRequest[k], "PutIdentityPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutIdentityPolicyRequest
-- <p>Represents a request to add or update a sending authorization policy for an identity. Sending authorization is an Amazon SES feature that enables you to authorize other senders to use your identities. For information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer Guide</a>.</p>
-- @param _Policy [Policy] <p>The text of the policy in JSON format. The policy cannot exceed 4 KB.</p> <p>For information about the syntax of sending authorization policies, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization-policies.html">Amazon SES Developer Guide</a>. </p>
-- @param _PolicyName [PolicyName] <p>The name of the policy.</p> <p>The policy name cannot exceed 64 characters and can only include alphanumeric characters, dashes, and underscores.</p>
-- @param _Identity [Identity] <p>The identity to which the policy will apply. You can specify an identity by using its name or by using its Amazon Resource Name (ARN). Examples: <code>user@example.com</code>, <code>example.com</code>, <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>.</p> <p>To successfully call this API, you must own the identity.</p>
-- Required parameter: Identity
-- Required parameter: PolicyName
-- Required parameter: Policy
function M.PutIdentityPolicyRequest(_Policy, _PolicyName, _Identity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutIdentityPolicyRequest")
	local t = { 
		["Policy"] = _Policy,
		["PolicyName"] = _PolicyName,
		["Identity"] = _Identity,
	}
	asserts.AssertPutIdentityPolicyRequest(t)
	return t
end

function asserts.AssertNotificationType(str)
	assert(str)
	assert(type(str) == "string", "Expected NotificationType to be of type 'string'")
end

--  
function M.NotificationType(str)
	asserts.AssertNotificationType(str)
	return str
end

function asserts.AssertMessageTagValue(str)
	assert(str)
	assert(type(str) == "string", "Expected MessageTagValue to be of type 'string'")
end

--  
function M.MessageTagValue(str)
	asserts.AssertMessageTagValue(str)
	return str
end

function asserts.AssertVerificationStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected VerificationStatus to be of type 'string'")
end

--  
function M.VerificationStatus(str)
	asserts.AssertVerificationStatus(str)
	return str
end

function asserts.AssertAmazonResourceName(str)
	assert(str)
	assert(type(str) == "string", "Expected AmazonResourceName to be of type 'string'")
end

--  
function M.AmazonResourceName(str)
	asserts.AssertAmazonResourceName(str)
	return str
end

function asserts.AssertReceiptRuleSetName(str)
	assert(str)
	assert(type(str) == "string", "Expected ReceiptRuleSetName to be of type 'string'")
end

--  
function M.ReceiptRuleSetName(str)
	asserts.AssertReceiptRuleSetName(str)
	return str
end

function asserts.AssertRemoteMta(str)
	assert(str)
	assert(type(str) == "string", "Expected RemoteMta to be of type 'string'")
end

--  
function M.RemoteMta(str)
	asserts.AssertRemoteMta(str)
	return str
end

function asserts.AssertTlsPolicy(str)
	assert(str)
	assert(type(str) == "string", "Expected TlsPolicy to be of type 'string'")
end

--  
function M.TlsPolicy(str)
	asserts.AssertTlsPolicy(str)
	return str
end

function asserts.AssertMessageData(str)
	assert(str)
	assert(type(str) == "string", "Expected MessageData to be of type 'string'")
end

--  
function M.MessageData(str)
	asserts.AssertMessageData(str)
	return str
end

function asserts.AssertExtensionFieldValue(str)
	assert(str)
	assert(type(str) == "string", "Expected ExtensionFieldValue to be of type 'string'")
end

--  
function M.ExtensionFieldValue(str)
	asserts.AssertExtensionFieldValue(str)
	return str
end

function asserts.AssertNotificationTopic(str)
	assert(str)
	assert(type(str) == "string", "Expected NotificationTopic to be of type 'string'")
end

--  
function M.NotificationTopic(str)
	asserts.AssertNotificationTopic(str)
	return str
end

function asserts.AssertDefaultDimensionValue(str)
	assert(str)
	assert(type(str) == "string", "Expected DefaultDimensionValue to be of type 'string'")
end

--  
function M.DefaultDimensionValue(str)
	asserts.AssertDefaultDimensionValue(str)
	return str
end

function asserts.AssertSNSActionEncoding(str)
	assert(str)
	assert(type(str) == "string", "Expected SNSActionEncoding to be of type 'string'")
end

--  
function M.SNSActionEncoding(str)
	asserts.AssertSNSActionEncoding(str)
	return str
end

function asserts.AssertEventDestinationName(str)
	assert(str)
	assert(type(str) == "string", "Expected EventDestinationName to be of type 'string'")
end

--  
function M.EventDestinationName(str)
	asserts.AssertEventDestinationName(str)
	return str
end

function asserts.AssertMessageId(str)
	assert(str)
	assert(type(str) == "string", "Expected MessageId to be of type 'string'")
end

--  
function M.MessageId(str)
	asserts.AssertMessageId(str)
	return str
end

function asserts.AssertDsnStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected DsnStatus to be of type 'string'")
end

--  
function M.DsnStatus(str)
	asserts.AssertDsnStatus(str)
	return str
end

function asserts.AssertS3KeyPrefix(str)
	assert(str)
	assert(type(str) == "string", "Expected S3KeyPrefix to be of type 'string'")
end

--  
function M.S3KeyPrefix(str)
	asserts.AssertS3KeyPrefix(str)
	return str
end

function asserts.AssertReportingMta(str)
	assert(str)
	assert(type(str) == "string", "Expected ReportingMta to be of type 'string'")
end

--  
function M.ReportingMta(str)
	asserts.AssertReportingMta(str)
	return str
end

function asserts.AssertBounceType(str)
	assert(str)
	assert(type(str) == "string", "Expected BounceType to be of type 'string'")
end

--  
function M.BounceType(str)
	asserts.AssertBounceType(str)
	return str
end

function asserts.AssertS3BucketName(str)
	assert(str)
	assert(type(str) == "string", "Expected S3BucketName to be of type 'string'")
end

--  
function M.S3BucketName(str)
	asserts.AssertS3BucketName(str)
	return str
end

function asserts.AssertExtensionFieldName(str)
	assert(str)
	assert(type(str) == "string", "Expected ExtensionFieldName to be of type 'string'")
end

--  
function M.ExtensionFieldName(str)
	asserts.AssertExtensionFieldName(str)
	return str
end

function asserts.AssertDimensionValueSource(str)
	assert(str)
	assert(type(str) == "string", "Expected DimensionValueSource to be of type 'string'")
end

--  
function M.DimensionValueSource(str)
	asserts.AssertDimensionValueSource(str)
	return str
end

function asserts.AssertDomain(str)
	assert(str)
	assert(type(str) == "string", "Expected Domain to be of type 'string'")
end

--  
function M.Domain(str)
	asserts.AssertDomain(str)
	return str
end

function asserts.AssertReceiptFilterPolicy(str)
	assert(str)
	assert(type(str) == "string", "Expected ReceiptFilterPolicy to be of type 'string'")
end

--  
function M.ReceiptFilterPolicy(str)
	asserts.AssertReceiptFilterPolicy(str)
	return str
end

function asserts.AssertMailFromDomainName(str)
	assert(str)
	assert(type(str) == "string", "Expected MailFromDomainName to be of type 'string'")
end

--  
function M.MailFromDomainName(str)
	asserts.AssertMailFromDomainName(str)
	return str
end

function asserts.AssertStopScope(str)
	assert(str)
	assert(type(str) == "string", "Expected StopScope to be of type 'string'")
end

--  
function M.StopScope(str)
	asserts.AssertStopScope(str)
	return str
end

function asserts.AssertCustomMailFromStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected CustomMailFromStatus to be of type 'string'")
end

--  
function M.CustomMailFromStatus(str)
	asserts.AssertCustomMailFromStatus(str)
	return str
end

function asserts.AssertEventType(str)
	assert(str)
	assert(type(str) == "string", "Expected EventType to be of type 'string'")
end

--  
function M.EventType(str)
	asserts.AssertEventType(str)
	return str
end

function asserts.AssertExplanation(str)
	assert(str)
	assert(type(str) == "string", "Expected Explanation to be of type 'string'")
end

--  
function M.Explanation(str)
	asserts.AssertExplanation(str)
	return str
end

function asserts.AssertRecipient(str)
	assert(str)
	assert(type(str) == "string", "Expected Recipient to be of type 'string'")
end

--  
function M.Recipient(str)
	asserts.AssertRecipient(str)
	return str
end

function asserts.AssertDiagnosticCode(str)
	assert(str)
	assert(type(str) == "string", "Expected DiagnosticCode to be of type 'string'")
end

--  
function M.DiagnosticCode(str)
	asserts.AssertDiagnosticCode(str)
	return str
end

function asserts.AssertHeaderName(str)
	assert(str)
	assert(type(str) == "string", "Expected HeaderName to be of type 'string'")
end

--  
function M.HeaderName(str)
	asserts.AssertHeaderName(str)
	return str
end

function asserts.AssertVerificationToken(str)
	assert(str)
	assert(type(str) == "string", "Expected VerificationToken to be of type 'string'")
end

--  
function M.VerificationToken(str)
	asserts.AssertVerificationToken(str)
	return str
end

function asserts.AssertBounceSmtpReplyCode(str)
	assert(str)
	assert(type(str) == "string", "Expected BounceSmtpReplyCode to be of type 'string'")
end

--  
function M.BounceSmtpReplyCode(str)
	asserts.AssertBounceSmtpReplyCode(str)
	return str
end

function asserts.AssertBounceStatusCode(str)
	assert(str)
	assert(type(str) == "string", "Expected BounceStatusCode to be of type 'string'")
end

--  
function M.BounceStatusCode(str)
	asserts.AssertBounceStatusCode(str)
	return str
end

function asserts.AssertDsnAction(str)
	assert(str)
	assert(type(str) == "string", "Expected DsnAction to be of type 'string'")
end

--  
function M.DsnAction(str)
	asserts.AssertDsnAction(str)
	return str
end

function asserts.AssertIdentity(str)
	assert(str)
	assert(type(str) == "string", "Expected Identity to be of type 'string'")
end

--  
function M.Identity(str)
	asserts.AssertIdentity(str)
	return str
end

function asserts.AssertConfigurationSetAttribute(str)
	assert(str)
	assert(type(str) == "string", "Expected ConfigurationSetAttribute to be of type 'string'")
end

--  
function M.ConfigurationSetAttribute(str)
	asserts.AssertConfigurationSetAttribute(str)
	return str
end

function asserts.AssertPolicyName(str)
	assert(str)
	assert(type(str) == "string", "Expected PolicyName to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PolicyName(str)
	asserts.AssertPolicyName(str)
	return str
end

function asserts.AssertIdentityType(str)
	assert(str)
	assert(type(str) == "string", "Expected IdentityType to be of type 'string'")
end

--  
function M.IdentityType(str)
	asserts.AssertIdentityType(str)
	return str
end

function asserts.AssertCharset(str)
	assert(str)
	assert(type(str) == "string", "Expected Charset to be of type 'string'")
end

--  
function M.Charset(str)
	asserts.AssertCharset(str)
	return str
end

function asserts.AssertReceiptFilterName(str)
	assert(str)
	assert(type(str) == "string", "Expected ReceiptFilterName to be of type 'string'")
end

--  
function M.ReceiptFilterName(str)
	asserts.AssertReceiptFilterName(str)
	return str
end

function asserts.AssertPolicy(str)
	assert(str)
	assert(type(str) == "string", "Expected Policy to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Policy(str)
	asserts.AssertPolicy(str)
	return str
end

function asserts.AssertMessageTagName(str)
	assert(str)
	assert(type(str) == "string", "Expected MessageTagName to be of type 'string'")
end

--  
function M.MessageTagName(str)
	asserts.AssertMessageTagName(str)
	return str
end

function asserts.AssertBounceMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected BounceMessage to be of type 'string'")
end

--  
function M.BounceMessage(str)
	asserts.AssertBounceMessage(str)
	return str
end

function asserts.AssertInvocationType(str)
	assert(str)
	assert(type(str) == "string", "Expected InvocationType to be of type 'string'")
end

--  
function M.InvocationType(str)
	asserts.AssertInvocationType(str)
	return str
end

function asserts.AssertDimensionName(str)
	assert(str)
	assert(type(str) == "string", "Expected DimensionName to be of type 'string'")
end

--  
function M.DimensionName(str)
	asserts.AssertDimensionName(str)
	return str
end

function asserts.AssertAddress(str)
	assert(str)
	assert(type(str) == "string", "Expected Address to be of type 'string'")
end

--  
function M.Address(str)
	asserts.AssertAddress(str)
	return str
end

function asserts.AssertCidr(str)
	assert(str)
	assert(type(str) == "string", "Expected Cidr to be of type 'string'")
end

--  
function M.Cidr(str)
	asserts.AssertCidr(str)
	return str
end

function asserts.AssertRuleOrRuleSetName(str)
	assert(str)
	assert(type(str) == "string", "Expected RuleOrRuleSetName to be of type 'string'")
end

--  
function M.RuleOrRuleSetName(str)
	asserts.AssertRuleOrRuleSetName(str)
	return str
end

function asserts.AssertNextToken(str)
	assert(str)
	assert(type(str) == "string", "Expected NextToken to be of type 'string'")
end

--  
function M.NextToken(str)
	asserts.AssertNextToken(str)
	return str
end

function asserts.AssertHeaderValue(str)
	assert(str)
	assert(type(str) == "string", "Expected HeaderValue to be of type 'string'")
end

--  
function M.HeaderValue(str)
	asserts.AssertHeaderValue(str)
	return str
end

function asserts.AssertBehaviorOnMXFailure(str)
	assert(str)
	assert(type(str) == "string", "Expected BehaviorOnMXFailure to be of type 'string'")
end

--  
function M.BehaviorOnMXFailure(str)
	asserts.AssertBehaviorOnMXFailure(str)
	return str
end

function asserts.AssertConfigurationSetName(str)
	assert(str)
	assert(type(str) == "string", "Expected ConfigurationSetName to be of type 'string'")
end

--  
function M.ConfigurationSetName(str)
	asserts.AssertConfigurationSetName(str)
	return str
end

function asserts.AssertReceiptRuleName(str)
	assert(str)
	assert(type(str) == "string", "Expected ReceiptRuleName to be of type 'string'")
end

--  
function M.ReceiptRuleName(str)
	asserts.AssertReceiptRuleName(str)
	return str
end

function asserts.AssertMaxSendRate(double)
	assert(double)
	assert(type(double) == "number", "Expected MaxSendRate to be of type 'number'")
end

function M.MaxSendRate(double)
	asserts.AssertMaxSendRate(double)
	return double
end

function asserts.AssertMax24HourSend(double)
	assert(double)
	assert(type(double) == "number", "Expected Max24HourSend to be of type 'number'")
end

function M.Max24HourSend(double)
	asserts.AssertMax24HourSend(double)
	return double
end

function asserts.AssertSentLast24Hours(double)
	assert(double)
	assert(type(double) == "number", "Expected SentLast24Hours to be of type 'number'")
end

function M.SentLast24Hours(double)
	asserts.AssertSentLast24Hours(double)
	return double
end

function asserts.AssertCounter(long)
	assert(long)
	assert(type(long) == "number", "Expected Counter to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.Counter(long)
	asserts.AssertCounter(long)
	return long
end

function asserts.AssertMaxItems(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxItems to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.MaxItems(integer)
	asserts.AssertMaxItems(integer)
	return integer
end

function asserts.AssertEnabled(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Enabled to be of type 'boolean'")
end

function M.Enabled(boolean)
	asserts.AssertEnabled(boolean)
	return boolean
end

function asserts.AssertDkimAttributes(map)
	assert(map)
	assert(type(map) == "table", "Expected DkimAttributes to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertIdentity(k)
		asserts.AssertIdentityDkimAttributes(v)
	end
end

function M.DkimAttributes(map)
	asserts.AssertDkimAttributes(map)
	return map
end

function asserts.AssertPolicyMap(map)
	assert(map)
	assert(type(map) == "table", "Expected PolicyMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertPolicyName(k)
		asserts.AssertPolicy(v)
	end
end

function M.PolicyMap(map)
	asserts.AssertPolicyMap(map)
	return map
end

function asserts.AssertMailFromDomainAttributes(map)
	assert(map)
	assert(type(map) == "table", "Expected MailFromDomainAttributes to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertIdentity(k)
		asserts.AssertIdentityMailFromDomainAttributes(v)
	end
end

function M.MailFromDomainAttributes(map)
	asserts.AssertMailFromDomainAttributes(map)
	return map
end

function asserts.AssertVerificationAttributes(map)
	assert(map)
	assert(type(map) == "table", "Expected VerificationAttributes to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertIdentity(k)
		asserts.AssertIdentityVerificationAttributes(v)
	end
end

function M.VerificationAttributes(map)
	asserts.AssertVerificationAttributes(map)
	return map
end

function asserts.AssertNotificationAttributes(map)
	assert(map)
	assert(type(map) == "table", "Expected NotificationAttributes to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertIdentity(k)
		asserts.AssertIdentityNotificationAttributes(v)
	end
end

function M.NotificationAttributes(map)
	asserts.AssertNotificationAttributes(map)
	return map
end

function asserts.AssertArrivalDate(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected ArrivalDate to be of type 'string'")
end

function M.ArrivalDate(timestamp)
	asserts.AssertArrivalDate(timestamp)
	return timestamp
end

function asserts.AssertLastAttemptDate(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected LastAttemptDate to be of type 'string'")
end

function M.LastAttemptDate(timestamp)
	asserts.AssertLastAttemptDate(timestamp)
	return timestamp
end

function asserts.AssertTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Timestamp to be of type 'string'")
end

function M.Timestamp(timestamp)
	asserts.AssertTimestamp(timestamp)
	return timestamp
end

function asserts.AssertRawMessageData(blob)
	assert(blob)
	assert(type(string) == "string", "Expected RawMessageData to be of type 'string'")
end

function M.RawMessageData(blob)
	asserts.AssertRawMessageData(blob)
	return blob
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

function asserts.AssertEventDestinations(list)
	assert(list)
	assert(type(list) == "table", "Expected EventDestinations to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEventDestination(v)
	end
end

--  
-- List of EventDestination objects
function M.EventDestinations(list)
	asserts.AssertEventDestinations(list)
	return list
end

function asserts.AssertPolicyNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected PolicyNameList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPolicyName(v)
	end
end

--  
-- List of PolicyName objects
function M.PolicyNameList(list)
	asserts.AssertPolicyNameList(list)
	return list
end

function asserts.AssertBouncedRecipientInfoList(list)
	assert(list)
	assert(type(list) == "table", "Expected BouncedRecipientInfoList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertBouncedRecipientInfo(v)
	end
end

--  
-- List of BouncedRecipientInfo objects
function M.BouncedRecipientInfoList(list)
	asserts.AssertBouncedRecipientInfoList(list)
	return list
end

function asserts.AssertIdentityList(list)
	assert(list)
	assert(type(list) == "table", "Expected IdentityList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertIdentity(v)
	end
end

--  
-- List of Identity objects
function M.IdentityList(list)
	asserts.AssertIdentityList(list)
	return list
end

function asserts.AssertReceiptRulesList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReceiptRulesList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertReceiptRule(v)
	end
end

--  
-- List of ReceiptRule objects
function M.ReceiptRulesList(list)
	asserts.AssertReceiptRulesList(list)
	return list
end

function asserts.AssertCloudWatchDimensionConfigurations(list)
	assert(list)
	assert(type(list) == "table", "Expected CloudWatchDimensionConfigurations to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCloudWatchDimensionConfiguration(v)
	end
end

--  
-- List of CloudWatchDimensionConfiguration objects
function M.CloudWatchDimensionConfigurations(list)
	asserts.AssertCloudWatchDimensionConfigurations(list)
	return list
end

function asserts.AssertReceiptFilterList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReceiptFilterList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertReceiptFilter(v)
	end
end

--  
-- List of ReceiptFilter objects
function M.ReceiptFilterList(list)
	asserts.AssertReceiptFilterList(list)
	return list
end

function asserts.AssertExtensionFieldList(list)
	assert(list)
	assert(type(list) == "table", "Expected ExtensionFieldList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertExtensionField(v)
	end
end

--  
-- List of ExtensionField objects
function M.ExtensionFieldList(list)
	asserts.AssertExtensionFieldList(list)
	return list
end

function asserts.AssertConfigurationSetAttributeList(list)
	assert(list)
	assert(type(list) == "table", "Expected ConfigurationSetAttributeList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertConfigurationSetAttribute(v)
	end
end

--  
-- List of ConfigurationSetAttribute objects
function M.ConfigurationSetAttributeList(list)
	asserts.AssertConfigurationSetAttributeList(list)
	return list
end

function asserts.AssertEventTypes(list)
	assert(list)
	assert(type(list) == "table", "Expected EventTypes to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEventType(v)
	end
end

--  
-- List of EventType objects
function M.EventTypes(list)
	asserts.AssertEventTypes(list)
	return list
end

function asserts.AssertRecipientsList(list)
	assert(list)
	assert(type(list) == "table", "Expected RecipientsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRecipient(v)
	end
end

--  
-- List of Recipient objects
function M.RecipientsList(list)
	asserts.AssertRecipientsList(list)
	return list
end

function asserts.AssertConfigurationSets(list)
	assert(list)
	assert(type(list) == "table", "Expected ConfigurationSets to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertConfigurationSet(v)
	end
end

--  
-- List of ConfigurationSet objects
function M.ConfigurationSets(list)
	asserts.AssertConfigurationSets(list)
	return list
end

function asserts.AssertVerificationTokenList(list)
	assert(list)
	assert(type(list) == "table", "Expected VerificationTokenList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertVerificationToken(v)
	end
end

--  
-- List of VerificationToken objects
function M.VerificationTokenList(list)
	asserts.AssertVerificationTokenList(list)
	return list
end

function asserts.AssertReceiptRuleNamesList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReceiptRuleNamesList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertReceiptRuleName(v)
	end
end

--  
-- List of ReceiptRuleName objects
function M.ReceiptRuleNamesList(list)
	asserts.AssertReceiptRuleNamesList(list)
	return list
end

function asserts.AssertSendDataPointList(list)
	assert(list)
	assert(type(list) == "table", "Expected SendDataPointList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSendDataPoint(v)
	end
end

--  
-- List of SendDataPoint objects
function M.SendDataPointList(list)
	asserts.AssertSendDataPointList(list)
	return list
end

function asserts.AssertReceiptRuleSetsLists(list)
	assert(list)
	assert(type(list) == "table", "Expected ReceiptRuleSetsLists to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertReceiptRuleSetMetadata(v)
	end
end

--  
-- List of ReceiptRuleSetMetadata objects
function M.ReceiptRuleSetsLists(list)
	asserts.AssertReceiptRuleSetsLists(list)
	return list
end

function asserts.AssertMessageTagList(list)
	assert(list)
	assert(type(list) == "table", "Expected MessageTagList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertMessageTag(v)
	end
end

--  
-- List of MessageTag objects
function M.MessageTagList(list)
	asserts.AssertMessageTagList(list)
	return list
end

function asserts.AssertReceiptActionsList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReceiptActionsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertReceiptAction(v)
	end
end

--  
-- List of ReceiptAction objects
function M.ReceiptActionsList(list)
	asserts.AssertReceiptActionsList(list)
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
--- Call CreateReceiptRule asynchronously, invoking a callback when done
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

--- Call CreateReceiptRule synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateReceiptRuleRequest
-- @return response
-- @return error_message
function M.CreateReceiptRuleSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateReceiptRuleAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetSendStatistics asynchronously, invoking a callback when done
-- @param cb Callback function accepting two args: response, error_message
function M.GetSendStatisticsAsync(cb)
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetSendStatistics",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", {}, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call GetSendStatistics synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @return response
-- @return error_message
function M.GetSendStatisticsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetSendStatisticsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ReorderReceiptRuleSet asynchronously, invoking a callback when done
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

--- Call ReorderReceiptRuleSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ReorderReceiptRuleSetRequest
-- @return response
-- @return error_message
function M.ReorderReceiptRuleSetSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ReorderReceiptRuleSetAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetIdentityPolicies asynchronously, invoking a callback when done
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

--- Call GetIdentityPolicies synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetIdentityPoliciesRequest
-- @return response
-- @return error_message
function M.GetIdentityPoliciesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetIdentityPoliciesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call VerifyEmailAddress asynchronously, invoking a callback when done
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

--- Call VerifyEmailAddress synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param VerifyEmailAddressRequest
-- @return response
-- @return error_message
function M.VerifyEmailAddressSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.VerifyEmailAddressAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call SetIdentityMailFromDomain asynchronously, invoking a callback when done
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

--- Call SetIdentityMailFromDomain synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SetIdentityMailFromDomainRequest
-- @return response
-- @return error_message
function M.SetIdentityMailFromDomainSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetIdentityMailFromDomainAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListReceiptFilters asynchronously, invoking a callback when done
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

--- Call ListReceiptFilters synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListReceiptFiltersRequest
-- @return response
-- @return error_message
function M.ListReceiptFiltersSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListReceiptFiltersAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeReceiptRuleSet asynchronously, invoking a callback when done
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

--- Call DescribeReceiptRuleSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeReceiptRuleSetRequest
-- @return response
-- @return error_message
function M.DescribeReceiptRuleSetSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeReceiptRuleSetAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteReceiptFilter asynchronously, invoking a callback when done
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

--- Call DeleteReceiptFilter synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteReceiptFilterRequest
-- @return response
-- @return error_message
function M.DeleteReceiptFilterSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteReceiptFilterAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateConfigurationSetEventDestination asynchronously, invoking a callback when done
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

--- Call UpdateConfigurationSetEventDestination synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateConfigurationSetEventDestinationRequest
-- @return response
-- @return error_message
function M.UpdateConfigurationSetEventDestinationSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateConfigurationSetEventDestinationAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call SetIdentityFeedbackForwardingEnabled asynchronously, invoking a callback when done
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

--- Call SetIdentityFeedbackForwardingEnabled synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SetIdentityFeedbackForwardingEnabledRequest
-- @return response
-- @return error_message
function M.SetIdentityFeedbackForwardingEnabledSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetIdentityFeedbackForwardingEnabledAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateReceiptRule asynchronously, invoking a callback when done
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

--- Call UpdateReceiptRule synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateReceiptRuleRequest
-- @return response
-- @return error_message
function M.UpdateReceiptRuleSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateReceiptRuleAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call SendBounce asynchronously, invoking a callback when done
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

--- Call SendBounce synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SendBounceRequest
-- @return response
-- @return error_message
function M.SendBounceSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SendBounceAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateConfigurationSetEventDestination asynchronously, invoking a callback when done
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

--- Call CreateConfigurationSetEventDestination synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateConfigurationSetEventDestinationRequest
-- @return response
-- @return error_message
function M.CreateConfigurationSetEventDestinationSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateConfigurationSetEventDestinationAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetIdentityDkimAttributes asynchronously, invoking a callback when done
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

--- Call GetIdentityDkimAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetIdentityDkimAttributesRequest
-- @return response
-- @return error_message
function M.GetIdentityDkimAttributesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetIdentityDkimAttributesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call SetReceiptRulePosition asynchronously, invoking a callback when done
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

--- Call SetReceiptRulePosition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SetReceiptRulePositionRequest
-- @return response
-- @return error_message
function M.SetReceiptRulePositionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetReceiptRulePositionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteReceiptRule asynchronously, invoking a callback when done
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

--- Call DeleteReceiptRule synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteReceiptRuleRequest
-- @return response
-- @return error_message
function M.DeleteReceiptRuleSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteReceiptRuleAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeConfigurationSet asynchronously, invoking a callback when done
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

--- Call DescribeConfigurationSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeConfigurationSetRequest
-- @return response
-- @return error_message
function M.DescribeConfigurationSetSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeConfigurationSetAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListVerifiedEmailAddresses asynchronously, invoking a callback when done
-- @param cb Callback function accepting two args: response, error_message
function M.ListVerifiedEmailAddressesAsync(cb)
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListVerifiedEmailAddresses",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", {}, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call ListVerifiedEmailAddresses synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @return response
-- @return error_message
function M.ListVerifiedEmailAddressesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListVerifiedEmailAddressesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteConfigurationSet asynchronously, invoking a callback when done
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

--- Call DeleteConfigurationSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteConfigurationSetRequest
-- @return response
-- @return error_message
function M.DeleteConfigurationSetSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteConfigurationSetAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CloneReceiptRuleSet asynchronously, invoking a callback when done
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

--- Call CloneReceiptRuleSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CloneReceiptRuleSetRequest
-- @return response
-- @return error_message
function M.CloneReceiptRuleSetSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CloneReceiptRuleSetAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call VerifyDomainIdentity asynchronously, invoking a callback when done
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

--- Call VerifyDomainIdentity synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param VerifyDomainIdentityRequest
-- @return response
-- @return error_message
function M.VerifyDomainIdentitySync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.VerifyDomainIdentityAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeActiveReceiptRuleSet asynchronously, invoking a callback when done
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

--- Call DescribeActiveReceiptRuleSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeActiveReceiptRuleSetRequest
-- @return response
-- @return error_message
function M.DescribeActiveReceiptRuleSetSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeActiveReceiptRuleSetAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteIdentityPolicy asynchronously, invoking a callback when done
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

--- Call DeleteIdentityPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteIdentityPolicyRequest
-- @return response
-- @return error_message
function M.DeleteIdentityPolicySync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteIdentityPolicyAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call SetActiveReceiptRuleSet asynchronously, invoking a callback when done
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

--- Call SetActiveReceiptRuleSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SetActiveReceiptRuleSetRequest
-- @return response
-- @return error_message
function M.SetActiveReceiptRuleSetSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetActiveReceiptRuleSetAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteReceiptRuleSet asynchronously, invoking a callback when done
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

--- Call DeleteReceiptRuleSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteReceiptRuleSetRequest
-- @return response
-- @return error_message
function M.DeleteReceiptRuleSetSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteReceiptRuleSetAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call SetIdentityDkimEnabled asynchronously, invoking a callback when done
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

--- Call SetIdentityDkimEnabled synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SetIdentityDkimEnabledRequest
-- @return response
-- @return error_message
function M.SetIdentityDkimEnabledSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetIdentityDkimEnabledAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetSendQuota asynchronously, invoking a callback when done
-- @param cb Callback function accepting two args: response, error_message
function M.GetSendQuotaAsync(cb)
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetSendQuota",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", {}, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call GetSendQuota synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @return response
-- @return error_message
function M.GetSendQuotaSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetSendQuotaAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call SetIdentityNotificationTopic asynchronously, invoking a callback when done
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

--- Call SetIdentityNotificationTopic synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SetIdentityNotificationTopicRequest
-- @return response
-- @return error_message
function M.SetIdentityNotificationTopicSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetIdentityNotificationTopicAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateConfigurationSet asynchronously, invoking a callback when done
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

--- Call CreateConfigurationSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateConfigurationSetRequest
-- @return response
-- @return error_message
function M.CreateConfigurationSetSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateConfigurationSetAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteVerifiedEmailAddress asynchronously, invoking a callback when done
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

--- Call DeleteVerifiedEmailAddress synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteVerifiedEmailAddressRequest
-- @return response
-- @return error_message
function M.DeleteVerifiedEmailAddressSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteVerifiedEmailAddressAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListConfigurationSets asynchronously, invoking a callback when done
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

--- Call ListConfigurationSets synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListConfigurationSetsRequest
-- @return response
-- @return error_message
function M.ListConfigurationSetsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListConfigurationSetsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateReceiptFilter asynchronously, invoking a callback when done
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

--- Call CreateReceiptFilter synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateReceiptFilterRequest
-- @return response
-- @return error_message
function M.CreateReceiptFilterSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateReceiptFilterAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeReceiptRule asynchronously, invoking a callback when done
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

--- Call DescribeReceiptRule synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeReceiptRuleRequest
-- @return response
-- @return error_message
function M.DescribeReceiptRuleSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeReceiptRuleAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListReceiptRuleSets asynchronously, invoking a callback when done
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

--- Call ListReceiptRuleSets synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListReceiptRuleSetsRequest
-- @return response
-- @return error_message
function M.ListReceiptRuleSetsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListReceiptRuleSetsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetIdentityNotificationAttributes asynchronously, invoking a callback when done
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

--- Call GetIdentityNotificationAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetIdentityNotificationAttributesRequest
-- @return response
-- @return error_message
function M.GetIdentityNotificationAttributesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetIdentityNotificationAttributesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call SetIdentityHeadersInNotificationsEnabled asynchronously, invoking a callback when done
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

--- Call SetIdentityHeadersInNotificationsEnabled synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SetIdentityHeadersInNotificationsEnabledRequest
-- @return response
-- @return error_message
function M.SetIdentityHeadersInNotificationsEnabledSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetIdentityHeadersInNotificationsEnabledAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call SendEmail asynchronously, invoking a callback when done
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

--- Call SendEmail synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SendEmailRequest
-- @return response
-- @return error_message
function M.SendEmailSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SendEmailAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteIdentity asynchronously, invoking a callback when done
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

--- Call DeleteIdentity synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteIdentityRequest
-- @return response
-- @return error_message
function M.DeleteIdentitySync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteIdentityAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call VerifyDomainDkim asynchronously, invoking a callback when done
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

--- Call VerifyDomainDkim synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param VerifyDomainDkimRequest
-- @return response
-- @return error_message
function M.VerifyDomainDkimSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.VerifyDomainDkimAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetIdentityMailFromDomainAttributes asynchronously, invoking a callback when done
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

--- Call GetIdentityMailFromDomainAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetIdentityMailFromDomainAttributesRequest
-- @return response
-- @return error_message
function M.GetIdentityMailFromDomainAttributesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetIdentityMailFromDomainAttributesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListIdentityPolicies asynchronously, invoking a callback when done
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

--- Call ListIdentityPolicies synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListIdentityPoliciesRequest
-- @return response
-- @return error_message
function M.ListIdentityPoliciesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListIdentityPoliciesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteConfigurationSetEventDestination asynchronously, invoking a callback when done
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

--- Call DeleteConfigurationSetEventDestination synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteConfigurationSetEventDestinationRequest
-- @return response
-- @return error_message
function M.DeleteConfigurationSetEventDestinationSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteConfigurationSetEventDestinationAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListIdentities asynchronously, invoking a callback when done
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

--- Call ListIdentities synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListIdentitiesRequest
-- @return response
-- @return error_message
function M.ListIdentitiesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListIdentitiesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetIdentityVerificationAttributes asynchronously, invoking a callback when done
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

--- Call GetIdentityVerificationAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetIdentityVerificationAttributesRequest
-- @return response
-- @return error_message
function M.GetIdentityVerificationAttributesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetIdentityVerificationAttributesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call VerifyEmailIdentity asynchronously, invoking a callback when done
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

--- Call VerifyEmailIdentity synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param VerifyEmailIdentityRequest
-- @return response
-- @return error_message
function M.VerifyEmailIdentitySync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.VerifyEmailIdentityAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PutIdentityPolicy asynchronously, invoking a callback when done
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

--- Call PutIdentityPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutIdentityPolicyRequest
-- @return response
-- @return error_message
function M.PutIdentityPolicySync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutIdentityPolicyAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call SendRawEmail asynchronously, invoking a callback when done
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

--- Call SendRawEmail synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SendRawEmailRequest
-- @return response
-- @return error_message
function M.SendRawEmailSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SendRawEmailAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateReceiptRuleSet asynchronously, invoking a callback when done
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

--- Call CreateReceiptRuleSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateReceiptRuleSetRequest
-- @return response
-- @return error_message
function M.CreateReceiptRuleSetSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateReceiptRuleSetAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end


return M
