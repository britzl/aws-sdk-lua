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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NotificationType [NotificationType] <p>The type of notifications that will be published to the specified Amazon SNS topic.</p>
-- * Identity [Identity] <p>The identity (email address or domain) that you want to set the Amazon SNS topic for.</p> <important> <p>You can only specify a verified identity for this parameter.</p> </important> <p>You can specify an identity by using its name or by using its Amazon Resource Name (ARN). The following examples are all valid identities: <code>sender@example.com</code>, <code>example.com</code>, <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>.</p>
-- * SnsTopic [NotificationTopic] <p>The Amazon Resource Name (ARN) of the Amazon SNS topic. If the parameter is omitted from the request or a null value is passed, <code>SnsTopic</code> is cleared and publishing is disabled.</p>
-- Required key: Identity
-- Required key: NotificationType
-- @return SetIdentityNotificationTopicRequest structure as a key-value pair table
function M.SetIdentityNotificationTopicRequest(args)
	assert(args, "You must provide an argument table when creating SetIdentityNotificationTopicRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NotificationType"] = args["NotificationType"],
		["Identity"] = args["Identity"],
		["SnsTopic"] = args["SnsTopic"],
	}
	asserts.AssertSetIdentityNotificationTopicRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return VerifyEmailIdentityResponse structure as a key-value pair table
function M.VerifyEmailIdentityResponse(args)
	assert(args, "You must provide an argument table when creating VerifyEmailIdentityResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertVerifyEmailIdentityResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateTemplateRequest = { ["Template"] = true, nil }

function asserts.AssertUpdateTemplateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateTemplateRequest to be of type 'table'")
	assert(struct["Template"], "Expected key Template to exist in table")
	if struct["Template"] then asserts.AssertTemplate(struct["Template"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateTemplateRequest[k], "UpdateTemplateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateTemplateRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Template [Template] 
-- Required key: Template
-- @return UpdateTemplateRequest structure as a key-value pair table
function M.UpdateTemplateRequest(args)
	assert(args, "You must provide an argument table when creating UpdateTemplateRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Template"] = args["Template"],
	}
	asserts.AssertUpdateTemplateRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RuleSetName [ReceiptRuleSetName] <p>The name of the receipt rule set to reorder.</p>
-- * RuleNames [ReceiptRuleNamesList] <p>A list of the specified receipt rule set's receipt rules in the order that you want to put them.</p>
-- Required key: RuleSetName
-- Required key: RuleNames
-- @return ReorderReceiptRuleSetRequest structure as a key-value pair table
function M.ReorderReceiptRuleSetRequest(args)
	assert(args, "You must provide an argument table when creating ReorderReceiptRuleSetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RuleSetName"] = args["RuleSetName"],
		["RuleNames"] = args["RuleNames"],
	}
	asserts.AssertReorderReceiptRuleSetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DescribeActiveReceiptRuleSetRequest structure as a key-value pair table
function M.DescribeActiveReceiptRuleSetRequest(args)
	assert(args, "You must provide an argument table when creating DescribeActiveReceiptRuleSetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDescribeActiveReceiptRuleSetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Represents the destination of the message, consisting of To:, CC:, and BCC: fields.</p> <note> <p>Amazon SES does not support the SMTPUTF8 extension, as described in <a href="https://tools.ietf.org/html/rfc6531">RFC6531</a>. For this reason, the <i>local part</i> of a destination email address (the part of the email address that precedes the @ sign) may only contain <a href="https://en.wikipedia.org/wiki/Email_address#Local-part">7-bit ASCII characters</a>. If the <i>domain part</i> of an address (the part after the @ sign) contains non-ASCII characters, they must be encoded using Punycode, as described in <a href="https://tools.ietf.org/html/rfc3492.html">RFC3492</a>.</p> </note>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CcAddresses [AddressList] <p>The CC: field(s) of the message.</p>
-- * BccAddresses [AddressList] <p>The BCC: field(s) of the message.</p>
-- * ToAddresses [AddressList] <p>The To: field(s) of the message.</p>
-- @return Destination structure as a key-value pair table
function M.Destination(args)
	assert(args, "You must provide an argument table when creating Destination")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CcAddresses"] = args["CcAddresses"],
		["BccAddresses"] = args["BccAddresses"],
		["ToAddresses"] = args["ToAddresses"],
	}
	asserts.AssertDestination(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Domain [Domain] <p>The name of the domain to be verified for Easy DKIM signing.</p>
-- Required key: Domain
-- @return VerifyDomainDkimRequest structure as a key-value pair table
function M.VerifyDomainDkimRequest(args)
	assert(args, "You must provide an argument table when creating VerifyDomainDkimRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Domain"] = args["Domain"],
	}
	asserts.AssertVerifyDomainDkimRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteTemplateResponse = { nil }

function asserts.AssertDeleteTemplateResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTemplateResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteTemplateResponse[k], "DeleteTemplateResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTemplateResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteTemplateResponse structure as a key-value pair table
function M.DeleteTemplateResponse(args)
	assert(args, "You must provide an argument table when creating DeleteTemplateResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteTemplateResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateAccountSendingEnabledRequest = { ["Enabled"] = true, nil }

function asserts.AssertUpdateAccountSendingEnabledRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateAccountSendingEnabledRequest to be of type 'table'")
	if struct["Enabled"] then asserts.AssertEnabled(struct["Enabled"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateAccountSendingEnabledRequest[k], "UpdateAccountSendingEnabledRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateAccountSendingEnabledRequest
-- <p>Represents a request to enable or disable the email sending capabilities for your entire Amazon SES account.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Enabled [Enabled] <p>Describes whether email sending is enabled or disabled for your Amazon SES account in the current AWS Region.</p>
-- @return UpdateAccountSendingEnabledRequest structure as a key-value pair table
function M.UpdateAccountSendingEnabledRequest(args)
	assert(args, "You must provide an argument table when creating UpdateAccountSendingEnabledRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Enabled"] = args["Enabled"],
	}
	asserts.AssertUpdateAccountSendingEnabledRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * KmsKeyArn [AmazonResourceName] <p>The customer master key that Amazon SES should use to encrypt your emails before saving them to the Amazon S3 bucket. You can use the default master key or a custom master key you created in AWS KMS as follows:</p> <ul> <li> <p>To use the default master key, provide an ARN in the form of <code>arn:aws:kms:REGION:ACCOUNT-ID-WITHOUT-HYPHENS:alias/aws/ses</code>. For example, if your AWS account ID is 123456789012 and you want to use the default master key in the US West (Oregon) region, the ARN of the default master key would be <code>arn:aws:kms:us-west-2:123456789012:alias/aws/ses</code>. If you use the default master key, you don't need to perform any extra steps to give Amazon SES permission to use the key.</p> </li> <li> <p>To use a custom master key you created in AWS KMS, provide the ARN of the master key and ensure that you add a statement to your key's policy to give Amazon SES permission to use it. For more information about giving permissions, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html">Amazon SES Developer Guide</a>.</p> </li> </ul> <p>For more information about key policies, see the <a href="http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html">AWS KMS Developer Guide</a>. If you do not specify a master key, Amazon SES will not encrypt your emails.</p> <important> <p>Your mail is encrypted by Amazon SES using the Amazon S3 encryption client before the mail is submitted to Amazon S3 for storage. It is not encrypted using Amazon S3 server-side encryption. This means that you must use the Amazon S3 encryption client to decrypt the email after retrieving it from Amazon S3, as the service has no access to use your AWS KMS keys for decryption. This encryption client is currently available with the <a href="http://aws.amazon.com/sdk-for-java/">AWS SDK for Java</a> and <a href="http://aws.amazon.com/sdk-for-ruby/">AWS SDK for Ruby</a> only. For more information about client-side encryption using AWS KMS master keys, see the <a href="http://docs.aws.amazon.com/AmazonS3/latest/dev/UsingClientSideEncryption.html">Amazon S3 Developer Guide</a>.</p> </important>
-- * ObjectKeyPrefix [S3KeyPrefix] <p>The key prefix of the Amazon S3 bucket. The key prefix is similar to a directory name that enables you to store similar data under the same directory in a bucket.</p>
-- * BucketName [S3BucketName] <p>The name of the Amazon S3 bucket that incoming email will be saved to.</p>
-- * TopicArn [AmazonResourceName] <p>The ARN of the Amazon SNS topic to notify when the message is saved to the Amazon S3 bucket. An example of an Amazon SNS topic ARN is <code>arn:aws:sns:us-west-2:123456789012:MyTopic</code>. For more information about Amazon SNS topics, see the <a href="http://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html">Amazon SNS Developer Guide</a>.</p>
-- Required key: BucketName
-- @return S3Action structure as a key-value pair table
function M.S3Action(args)
	assert(args, "You must provide an argument table when creating S3Action")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["KmsKeyArn"] = args["KmsKeyArn"],
		["ObjectKeyPrefix"] = args["ObjectKeyPrefix"],
		["BucketName"] = args["BucketName"],
		["TopicArn"] = args["TopicArn"],
	}
	asserts.AssertS3Action(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Template = { ["HtmlPart"] = true, ["SubjectPart"] = true, ["TextPart"] = true, ["TemplateName"] = true, nil }

function asserts.AssertTemplate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Template to be of type 'table'")
	assert(struct["TemplateName"], "Expected key TemplateName to exist in table")
	if struct["HtmlPart"] then asserts.AssertHtmlPart(struct["HtmlPart"]) end
	if struct["SubjectPart"] then asserts.AssertSubjectPart(struct["SubjectPart"]) end
	if struct["TextPart"] then asserts.AssertTextPart(struct["TextPart"]) end
	if struct["TemplateName"] then asserts.AssertTemplateName(struct["TemplateName"]) end
	for k,_ in pairs(struct) do
		assert(keys.Template[k], "Template contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Template
-- <p>The content of the email, composed of a subject line, an HTML part, and a text-only part.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HtmlPart [HtmlPart] <p>The HTML body of the email.</p>
-- * SubjectPart [SubjectPart] <p>The subject line of the email.</p>
-- * TextPart [TextPart] <p>The email body that will be visible to recipients whose email clients do not display HTML.</p>
-- * TemplateName [TemplateName] <p>The name of the template. You will refer to this name when you send email using the <code>SendTemplatedEmail</code> or <code>SendBulkTemplatedEmail</code> operations.</p>
-- Required key: TemplateName
-- @return Template structure as a key-value pair table
function M.Template(args)
	assert(args, "You must provide an argument table when creating Template")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HtmlPart"] = args["HtmlPart"],
		["SubjectPart"] = args["SubjectPart"],
		["TextPart"] = args["TextPart"],
		["TemplateName"] = args["TemplateName"],
	}
	asserts.AssertTemplate(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return SetIdentityNotificationTopicResponse structure as a key-value pair table
function M.SetIdentityNotificationTopicResponse(args)
	assert(args, "You must provide an argument table when creating SetIdentityNotificationTopicResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertSetIdentityNotificationTopicResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BulkEmailDestination = { ["ReplacementTags"] = true, ["Destination"] = true, ["ReplacementTemplateData"] = true, nil }

function asserts.AssertBulkEmailDestination(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BulkEmailDestination to be of type 'table'")
	assert(struct["Destination"], "Expected key Destination to exist in table")
	if struct["ReplacementTags"] then asserts.AssertMessageTagList(struct["ReplacementTags"]) end
	if struct["Destination"] then asserts.AssertDestination(struct["Destination"]) end
	if struct["ReplacementTemplateData"] then asserts.AssertTemplateData(struct["ReplacementTemplateData"]) end
	for k,_ in pairs(struct) do
		assert(keys.BulkEmailDestination[k], "BulkEmailDestination contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BulkEmailDestination
-- <p>An array that contains one or more Destinations, as well as the tags and replacement data associated with each of those Destinations.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReplacementTags [MessageTagList] <p>A list of tags, in the form of name/value pairs, to apply to an email that you send using <code>SendBulkTemplatedEmail</code>. Tags correspond to characteristics of the email that you define, so that you can publish email sending events.</p>
-- * Destination [Destination] 
-- * ReplacementTemplateData [TemplateData] <p>A list of replacement values to apply to the template. This parameter is a JSON object, typically consisting of key-value pairs in which the keys correspond to replacement tags in the email template.</p>
-- Required key: Destination
-- @return BulkEmailDestination structure as a key-value pair table
function M.BulkEmailDestination(args)
	assert(args, "You must provide an argument table when creating BulkEmailDestination")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReplacementTags"] = args["ReplacementTags"],
		["Destination"] = args["Destination"],
		["ReplacementTemplateData"] = args["ReplacementTemplateData"],
	}
	asserts.AssertBulkEmailDestination(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [ExtensionFieldName] <p>The name of the header to add. Must be between 1 and 50 characters, inclusive, and consist of alphanumeric (a-z, A-Z, 0-9) characters and dashes only.</p>
-- * Value [ExtensionFieldValue] <p>The value of the header to add. Must be less than 2048 characters, and must not contain newline characters ("\r" or "\n").</p>
-- Required key: Name
-- Required key: Value
-- @return ExtensionField structure as a key-value pair table
function M.ExtensionField(args)
	assert(args, "You must provide an argument table when creating ExtensionField")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
		["Value"] = args["Value"],
	}
	asserts.AssertExtensionField(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EventDestination [EventDestination] <p>The event destination object that you want to apply to the specified configuration set.</p>
-- * ConfigurationSetName [ConfigurationSetName] <p>The name of the configuration set that contains the event destination that you want to update.</p>
-- Required key: ConfigurationSetName
-- Required key: EventDestination
-- @return UpdateConfigurationSetEventDestinationRequest structure as a key-value pair table
function M.UpdateConfigurationSetEventDestinationRequest(args)
	assert(args, "You must provide an argument table when creating UpdateConfigurationSetEventDestinationRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EventDestination"] = args["EventDestination"],
		["ConfigurationSetName"] = args["ConfigurationSetName"],
	}
	asserts.AssertUpdateConfigurationSetEventDestinationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Text [Content] <p>The content of the message, in text format. Use this for text-based email clients, or clients on high-latency networks (such as mobile devices).</p>
-- * Html [Content] <p>The content of the message, in HTML format. Use this for email clients that can process HTML. You can include clickable links, formatted text, and much more in an HTML message.</p>
-- @return Body structure as a key-value pair table
function M.Body(args)
	assert(args, "You must provide an argument table when creating Body")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Text"] = args["Text"],
		["Html"] = args["Html"],
	}
	asserts.AssertBody(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EmailAddress [Address] <p>The email address to be verified.</p>
-- Required key: EmailAddress
-- @return VerifyEmailIdentityRequest structure as a key-value pair table
function M.VerifyEmailIdentityRequest(args)
	assert(args, "You must provide an argument table when creating VerifyEmailIdentityRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EmailAddress"] = args["EmailAddress"],
	}
	asserts.AssertVerifyEmailIdentityRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SendBulkTemplatedEmailRequest = { ["ReturnPathArn"] = true, ["ReplyToAddresses"] = true, ["DefaultTemplateData"] = true, ["TemplateArn"] = true, ["Source"] = true, ["DefaultTags"] = true, ["ReturnPath"] = true, ["Template"] = true, ["ConfigurationSetName"] = true, ["SourceArn"] = true, ["Destinations"] = true, nil }

function asserts.AssertSendBulkTemplatedEmailRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendBulkTemplatedEmailRequest to be of type 'table'")
	assert(struct["Source"], "Expected key Source to exist in table")
	assert(struct["Template"], "Expected key Template to exist in table")
	assert(struct["Destinations"], "Expected key Destinations to exist in table")
	if struct["ReturnPathArn"] then asserts.AssertAmazonResourceName(struct["ReturnPathArn"]) end
	if struct["ReplyToAddresses"] then asserts.AssertAddressList(struct["ReplyToAddresses"]) end
	if struct["DefaultTemplateData"] then asserts.AssertTemplateData(struct["DefaultTemplateData"]) end
	if struct["TemplateArn"] then asserts.AssertAmazonResourceName(struct["TemplateArn"]) end
	if struct["Source"] then asserts.AssertAddress(struct["Source"]) end
	if struct["DefaultTags"] then asserts.AssertMessageTagList(struct["DefaultTags"]) end
	if struct["ReturnPath"] then asserts.AssertAddress(struct["ReturnPath"]) end
	if struct["Template"] then asserts.AssertTemplateName(struct["Template"]) end
	if struct["ConfigurationSetName"] then asserts.AssertConfigurationSetName(struct["ConfigurationSetName"]) end
	if struct["SourceArn"] then asserts.AssertAmazonResourceName(struct["SourceArn"]) end
	if struct["Destinations"] then asserts.AssertBulkEmailDestinationList(struct["Destinations"]) end
	for k,_ in pairs(struct) do
		assert(keys.SendBulkTemplatedEmailRequest[k], "SendBulkTemplatedEmailRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendBulkTemplatedEmailRequest
-- <p>Represents a request to send a templated email to multiple destinations using Amazon SES. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html">Amazon SES Developer Guide</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReturnPathArn [AmazonResourceName] <p>This parameter is used only for sending authorization. It is the ARN of the identity that is associated with the sending authorization policy that permits you to use the email address specified in the <code>ReturnPath</code> parameter.</p> <p>For example, if the owner of <code>example.com</code> (which has ARN <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>) attaches a policy to it that authorizes you to use <code>feedback@example.com</code>, then you would specify the <code>ReturnPathArn</code> to be <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>, and the <code>ReturnPath</code> to be <code>feedback@example.com</code>.</p> <p>For more information about sending authorization, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer Guide</a>.</p>
-- * ReplyToAddresses [AddressList] <p>The reply-to email address(es) for the message. If the recipient replies to the message, each reply-to address will receive the reply.</p>
-- * DefaultTemplateData [TemplateData] <p>A list of replacement values to apply to the template when replacement data is not specified in a Destination object. These values act as a default or fallback option when no other data is available.</p> <p>The template data is a JSON object, typically consisting of key-value pairs in which the keys correspond to replacement tags in the email template.</p>
-- * TemplateArn [AmazonResourceName] <p>The ARN of the template to use when sending this email.</p>
-- * Source [Address] <p>The email address that is sending the email. This email address must be either individually verified with Amazon SES, or from a domain that has been verified with Amazon SES. For information about verifying identities, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html">Amazon SES Developer Guide</a>.</p> <p>If you are sending on behalf of another user and have been permitted to do so by a sending authorization policy, then you must also specify the <code>SourceArn</code> parameter. For more information about sending authorization, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer Guide</a>.</p> <note> <p>Amazon SES does not support the SMTPUTF8 extension, as described in <a href="https://tools.ietf.org/html/rfc6531">RFC6531</a>. For this reason, the <i>local part</i> of a source email address (the part of the email address that precedes the @ sign) may only contain <a href="https://en.wikipedia.org/wiki/Email_address#Local-part">7-bit ASCII characters</a>. If the <i>domain part</i> of an address (the part after the @ sign) contains non-ASCII characters, they must be encoded using Punycode, as described in <a href="https://tools.ietf.org/html/rfc3492.html">RFC3492</a>. The sender name (also known as the <i>friendly name</i>) may contain non-ASCII characters. These characters must be encoded using MIME encoded-word syntax, as described in <a href="https://tools.ietf.org/html/rfc2047">RFC 2047</a>. MIME encoded-word syntax uses the following form: <code>=?charset?encoding?encoded-text?=</code>.</p> </note>
-- * DefaultTags [MessageTagList] <p>A list of tags, in the form of name/value pairs, to apply to an email that you send to a destination using <code>SendBulkTemplatedEmail</code>.</p>
-- * ReturnPath [Address] <p>The email address that bounces and complaints will be forwarded to when feedback forwarding is enabled. If the message cannot be delivered to the recipient, then an error message will be returned from the recipient's ISP; this message will then be forwarded to the email address specified by the <code>ReturnPath</code> parameter. The <code>ReturnPath</code> parameter is never overwritten. This email address must be either individually verified with Amazon SES, or from a domain that has been verified with Amazon SES. </p>
-- * Template [TemplateName] <p>The template to use when sending this email.</p>
-- * ConfigurationSetName [ConfigurationSetName] <p>The name of the configuration set to use when you send an email using <code>SendBulkTemplatedEmail</code>.</p>
-- * SourceArn [AmazonResourceName] <p>This parameter is used only for sending authorization. It is the ARN of the identity that is associated with the sending authorization policy that permits you to send for the email address specified in the <code>Source</code> parameter.</p> <p>For example, if the owner of <code>example.com</code> (which has ARN <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>) attaches a policy to it that authorizes you to send from <code>user@example.com</code>, then you would specify the <code>SourceArn</code> to be <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>, and the <code>Source</code> to be <code>user@example.com</code>.</p> <p>For more information about sending authorization, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer Guide</a>.</p>
-- * Destinations [BulkEmailDestinationList] <p>One or more <code>Destination</code> objects. All of the recipients in a <code>Destination</code> will receive the same version of the email. You can specify up to 50 <code>Destination</code> objects within a <code>Destinations</code> array.</p>
-- Required key: Source
-- Required key: Template
-- Required key: Destinations
-- @return SendBulkTemplatedEmailRequest structure as a key-value pair table
function M.SendBulkTemplatedEmailRequest(args)
	assert(args, "You must provide an argument table when creating SendBulkTemplatedEmailRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReturnPathArn"] = args["ReturnPathArn"],
		["ReplyToAddresses"] = args["ReplyToAddresses"],
		["DefaultTemplateData"] = args["DefaultTemplateData"],
		["TemplateArn"] = args["TemplateArn"],
		["Source"] = args["Source"],
		["DefaultTags"] = args["DefaultTags"],
		["ReturnPath"] = args["ReturnPath"],
		["Template"] = args["Template"],
		["ConfigurationSetName"] = args["ConfigurationSetName"],
		["SourceArn"] = args["SourceArn"],
		["Destinations"] = args["Destinations"],
	}
	asserts.AssertSendBulkTemplatedEmailRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteConfigurationSetTrackingOptionsRequest = { ["ConfigurationSetName"] = true, nil }

function asserts.AssertDeleteConfigurationSetTrackingOptionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteConfigurationSetTrackingOptionsRequest to be of type 'table'")
	assert(struct["ConfigurationSetName"], "Expected key ConfigurationSetName to exist in table")
	if struct["ConfigurationSetName"] then asserts.AssertConfigurationSetName(struct["ConfigurationSetName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteConfigurationSetTrackingOptionsRequest[k], "DeleteConfigurationSetTrackingOptionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteConfigurationSetTrackingOptionsRequest
-- <p>Represents a request to delete open and click tracking options in a configuration set. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConfigurationSetName [ConfigurationSetName] <p>The name of the configuration set from which you want to delete the tracking options.</p>
-- Required key: ConfigurationSetName
-- @return DeleteConfigurationSetTrackingOptionsRequest structure as a key-value pair table
function M.DeleteConfigurationSetTrackingOptionsRequest(args)
	assert(args, "You must provide an argument table when creating DeleteConfigurationSetTrackingOptionsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ConfigurationSetName"] = args["ConfigurationSetName"],
	}
	asserts.AssertDeleteConfigurationSetTrackingOptionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RecipientArn [AmazonResourceName] <p>This parameter is used only for sending authorization. It is the ARN of the identity that is associated with the sending authorization policy that permits you to receive email for the recipient of the bounced email. For more information about sending authorization, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer Guide</a>.</p>
-- * Recipient [Address] <p>The email address of the recipient of the bounced email.</p>
-- * BounceType [BounceType] <p>The reason for the bounce. You must provide either this parameter or <code>RecipientDsnFields</code>.</p>
-- * RecipientDsnFields [RecipientDsnFields] <p>Recipient-related DSN fields, most of which would normally be filled in automatically when provided with a <code>BounceType</code>. You must provide either this parameter or <code>BounceType</code>.</p>
-- Required key: Recipient
-- @return BouncedRecipientInfo structure as a key-value pair table
function M.BouncedRecipientInfo(args)
	assert(args, "You must provide an argument table when creating BouncedRecipientInfo")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RecipientArn"] = args["RecipientArn"],
		["Recipient"] = args["Recipient"],
		["BounceType"] = args["BounceType"],
		["RecipientDsnFields"] = args["RecipientDsnFields"],
	}
	asserts.AssertBouncedRecipientInfo(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>A token returned from a previous call to <code>ListConfigurationSets</code> to indicate the position of the configuration set in the configuration set list.</p>
-- * MaxItems [MaxItems] <p>The number of configuration sets to return.</p>
-- @return ListConfigurationSetsRequest structure as a key-value pair table
function M.ListConfigurationSetsRequest(args)
	assert(args, "You must provide an argument table when creating ListConfigurationSetsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["MaxItems"] = args["MaxItems"],
	}
	asserts.AssertListConfigurationSetsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Receipt rules enable you to specify which actions Amazon SES should take when it receives mail on behalf of one or more email addresses or domains that you own.</p> <p>Each receipt rule defines a set of email addresses or domains that it applies to. If the email addresses or domains match at least one recipient address of the message, Amazon SES executes all of the receipt rule's actions on the message.</p> <p>For information about setting up receipt rules, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rules.html">Amazon SES Developer Guide</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [ReceiptRuleName] <p>The name of the receipt rule. The name must:</p> <ul> <li> <p>This value can only contain ASCII letters (a-z, A-Z), numbers (0-9), underscores (_), or dashes (-).</p> </li> <li> <p>Start and end with a letter or number.</p> </li> <li> <p>Contain less than 64 characters.</p> </li> </ul>
-- * Recipients [RecipientsList] <p>The recipient domains and email addresses that the receipt rule applies to. If this field is not specified, this rule will match all recipients under all verified domains.</p>
-- * Enabled [Enabled] <p>If <code>true</code>, the receipt rule is active. The default value is <code>false</code>.</p>
-- * ScanEnabled [Enabled] <p>If <code>true</code>, then messages that this receipt rule applies to are scanned for spam and viruses. The default value is <code>false</code>.</p>
-- * Actions [ReceiptActionsList] <p>An ordered list of actions to perform on messages that match at least one of the recipient email addresses or domains specified in the receipt rule.</p>
-- * TlsPolicy [TlsPolicy] <p>Specifies whether Amazon SES should require that incoming email is delivered over a connection encrypted with Transport Layer Security (TLS). If this parameter is set to <code>Require</code>, Amazon SES will bounce emails that are not received over TLS. The default is <code>Optional</code>.</p>
-- Required key: Name
-- @return ReceiptRule structure as a key-value pair table
function M.ReceiptRule(args)
	assert(args, "You must provide an argument table when creating ReceiptRule")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
		["Recipients"] = args["Recipients"],
		["Enabled"] = args["Enabled"],
		["ScanEnabled"] = args["ScanEnabled"],
		["Actions"] = args["Actions"],
		["TlsPolicy"] = args["TlsPolicy"],
	}
	asserts.AssertReceiptRule(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DimensionConfigurations [CloudWatchDimensionConfigurations] <p>A list of dimensions upon which to categorize your emails when you publish email sending events to Amazon CloudWatch.</p>
-- Required key: DimensionConfigurations
-- @return CloudWatchDestination structure as a key-value pair table
function M.CloudWatchDestination(args)
	assert(args, "You must provide an argument table when creating CloudWatchDestination")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DimensionConfigurations"] = args["DimensionConfigurations"],
	}
	asserts.AssertCloudWatchDestination(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VerificationToken [VerificationToken] <p>The verification token for a domain identity. Null for email address identities.</p>
-- * VerificationStatus [VerificationStatus] <p>The verification status of the identity: "Pending", "Success", "Failed", or "TemporaryFailure".</p>
-- Required key: VerificationStatus
-- @return IdentityVerificationAttributes structure as a key-value pair table
function M.IdentityVerificationAttributes(args)
	assert(args, "You must provide an argument table when creating IdentityVerificationAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["VerificationToken"] = args["VerificationToken"],
		["VerificationStatus"] = args["VerificationStatus"],
	}
	asserts.AssertIdentityVerificationAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VerifiedEmailAddresses [AddressList] <p>A list of email addresses that have been verified.</p>
-- @return ListVerifiedEmailAddressesResponse structure as a key-value pair table
function M.ListVerifiedEmailAddressesResponse(args)
	assert(args, "You must provide an argument table when creating ListVerifiedEmailAddressesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["VerifiedEmailAddresses"] = args["VerifiedEmailAddresses"],
	}
	asserts.AssertListVerifiedEmailAddressesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return CreateReceiptRuleResponse structure as a key-value pair table
function M.CreateReceiptRuleResponse(args)
	assert(args, "You must provide an argument table when creating CreateReceiptRuleResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertCreateReceiptRuleResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteIdentityResponse structure as a key-value pair table
function M.DeleteIdentityResponse(args)
	assert(args, "You must provide an argument table when creating DeleteIdentityResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteIdentityResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetTemplateResponse = { ["Template"] = true, nil }

function asserts.AssertGetTemplateResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTemplateResponse to be of type 'table'")
	if struct["Template"] then asserts.AssertTemplate(struct["Template"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetTemplateResponse[k], "GetTemplateResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTemplateResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Template [Template] 
-- @return GetTemplateResponse structure as a key-value pair table
function M.GetTemplateResponse(args)
	assert(args, "You must provide an argument table when creating GetTemplateResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Template"] = args["Template"],
	}
	asserts.AssertGetTemplateResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DkimEnabled [Enabled] <p>Sets whether DKIM signing is enabled for an identity. Set to <code>true</code> to enable DKIM signing for this identity; <code>false</code> to disable it. </p>
-- * Identity [Identity] <p>The identity for which DKIM signing should be enabled or disabled.</p>
-- Required key: Identity
-- Required key: DkimEnabled
-- @return SetIdentityDkimEnabledRequest structure as a key-value pair table
function M.SetIdentityDkimEnabledRequest(args)
	assert(args, "You must provide an argument table when creating SetIdentityDkimEnabledRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DkimEnabled"] = args["DkimEnabled"],
		["Identity"] = args["Identity"],
	}
	asserts.AssertSetIdentityDkimEnabledRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateConfigurationSetTrackingOptionsRequest = { ["TrackingOptions"] = true, ["ConfigurationSetName"] = true, nil }

function asserts.AssertUpdateConfigurationSetTrackingOptionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateConfigurationSetTrackingOptionsRequest to be of type 'table'")
	assert(struct["ConfigurationSetName"], "Expected key ConfigurationSetName to exist in table")
	assert(struct["TrackingOptions"], "Expected key TrackingOptions to exist in table")
	if struct["TrackingOptions"] then asserts.AssertTrackingOptions(struct["TrackingOptions"]) end
	if struct["ConfigurationSetName"] then asserts.AssertConfigurationSetName(struct["ConfigurationSetName"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateConfigurationSetTrackingOptionsRequest[k], "UpdateConfigurationSetTrackingOptionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateConfigurationSetTrackingOptionsRequest
-- <p>Represents a request to update the tracking options for a configuration set. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TrackingOptions [TrackingOptions] 
-- * ConfigurationSetName [ConfigurationSetName] <p>The name of the configuration set for which you want to update the custom tracking domain.</p>
-- Required key: ConfigurationSetName
-- Required key: TrackingOptions
-- @return UpdateConfigurationSetTrackingOptionsRequest structure as a key-value pair table
function M.UpdateConfigurationSetTrackingOptionsRequest(args)
	assert(args, "You must provide an argument table when creating UpdateConfigurationSetTrackingOptionsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TrackingOptions"] = args["TrackingOptions"],
		["ConfigurationSetName"] = args["ConfigurationSetName"],
	}
	asserts.AssertUpdateConfigurationSetTrackingOptionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VerificationToken [VerificationToken] <p>A TXT record that you must place in the DNS settings of the domain to complete domain verification with Amazon SES.</p> <p>As Amazon SES searches for the TXT record, the domain's verification status is "Pending". When Amazon SES detects the record, the domain's verification status changes to "Success". If Amazon SES is unable to detect the record within 72 hours, the domain's verification status changes to "Failed." In that case, if you still want to verify the domain, you must restart the verification process from the beginning.</p>
-- Required key: VerificationToken
-- @return VerifyDomainIdentityResponse structure as a key-value pair table
function M.VerifyDomainIdentityResponse(args)
	assert(args, "You must provide an argument table when creating VerifyDomainIdentityResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["VerificationToken"] = args["VerificationToken"],
	}
	asserts.AssertVerifyDomainIdentityResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteConfigurationSetResponse structure as a key-value pair table
function M.DeleteConfigurationSetResponse(args)
	assert(args, "You must provide an argument table when creating DeleteConfigurationSetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteConfigurationSetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateConfigurationSetReputationMetricsEnabledRequest = { ["Enabled"] = true, ["ConfigurationSetName"] = true, nil }

function asserts.AssertUpdateConfigurationSetReputationMetricsEnabledRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateConfigurationSetReputationMetricsEnabledRequest to be of type 'table'")
	assert(struct["ConfigurationSetName"], "Expected key ConfigurationSetName to exist in table")
	assert(struct["Enabled"], "Expected key Enabled to exist in table")
	if struct["Enabled"] then asserts.AssertEnabled(struct["Enabled"]) end
	if struct["ConfigurationSetName"] then asserts.AssertConfigurationSetName(struct["ConfigurationSetName"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateConfigurationSetReputationMetricsEnabledRequest[k], "UpdateConfigurationSetReputationMetricsEnabledRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateConfigurationSetReputationMetricsEnabledRequest
-- <p>Represents a request to modify the reputation metric publishing settings for a configuration set.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Enabled [Enabled] <p>Describes whether or not Amazon SES will publish reputation metrics for the configuration set, such as bounce and complaint rates, to Amazon CloudWatch.</p>
-- * ConfigurationSetName [ConfigurationSetName] <p>The name of the configuration set that you want to update.</p>
-- Required key: ConfigurationSetName
-- Required key: Enabled
-- @return UpdateConfigurationSetReputationMetricsEnabledRequest structure as a key-value pair table
function M.UpdateConfigurationSetReputationMetricsEnabledRequest(args)
	assert(args, "You must provide an argument table when creating UpdateConfigurationSetReputationMetricsEnabledRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Enabled"] = args["Enabled"],
		["ConfigurationSetName"] = args["ConfigurationSetName"],
	}
	asserts.AssertUpdateConfigurationSetReputationMetricsEnabledRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return CreateReceiptFilterResponse structure as a key-value pair table
function M.CreateReceiptFilterResponse(args)
	assert(args, "You must provide an argument table when creating CreateReceiptFilterResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertCreateReceiptFilterResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteConfigurationSetTrackingOptionsResponse = { nil }

function asserts.AssertDeleteConfigurationSetTrackingOptionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteConfigurationSetTrackingOptionsResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteConfigurationSetTrackingOptionsResponse[k], "DeleteConfigurationSetTrackingOptionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteConfigurationSetTrackingOptionsResponse
-- <p>An empty element returned on a successful request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteConfigurationSetTrackingOptionsResponse structure as a key-value pair table
function M.DeleteConfigurationSetTrackingOptionsResponse(args)
	assert(args, "You must provide an argument table when creating DeleteConfigurationSetTrackingOptionsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteConfigurationSetTrackingOptionsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReturnPathArn [AmazonResourceName] <p>This parameter is used only for sending authorization. It is the ARN of the identity that is associated with the sending authorization policy that permits you to use the email address specified in the <code>ReturnPath</code> parameter.</p> <p>For example, if the owner of <code>example.com</code> (which has ARN <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>) attaches a policy to it that authorizes you to use <code>feedback@example.com</code>, then you would specify the <code>ReturnPathArn</code> to be <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>, and the <code>ReturnPath</code> to be <code>feedback@example.com</code>.</p> <p>Instead of using this parameter, you can use the X-header <code>X-SES-RETURN-PATH-ARN</code> in the raw message of the email. If you use both the <code>ReturnPathArn</code> parameter and the corresponding X-header, Amazon SES uses the value of the <code>ReturnPathArn</code> parameter.</p> <note> <p>For information about when to use this parameter, see the description of <code>SendRawEmail</code> in this guide, or see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization-delegate-sender-tasks-email.html">Amazon SES Developer Guide</a>.</p> </note>
-- * Tags [MessageTagList] <p>A list of tags, in the form of name/value pairs, to apply to an email that you send using <code>SendRawEmail</code>. Tags correspond to characteristics of the email that you define, so that you can publish email sending events.</p>
-- * RawMessage [RawMessage] <p>The raw email message itself. The message has to meet the following criteria:</p> <ul> <li> <p>The message has to contain a header and a body, separated by a blank line.</p> </li> <li> <p>All of the required header fields must be present in the message.</p> </li> <li> <p>Each part of a multipart MIME message must be formatted properly.</p> </li> <li> <p>Attachments must be of a content type that Amazon SES supports. For a list on unsupported content types, see <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/mime-types.html">Unsupported Attachment Types</a> in the <i>Amazon SES Developer Guide</i>.</p> </li> <li> <p>The entire message must be base64-encoded.</p> </li> <li> <p>If any of the MIME parts in your message contain content that is outside of the 7-bit ASCII character range, we highly recommend that you encode that content. For more information, see <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-email-raw.html">Sending Raw Email</a> in the <i>Amazon SES Developer Guide</i>.</p> </li> <li> <p>Per <a href="https://tools.ietf.org/html/rfc5321#section-4.5.3.1.6">RFC 5321</a>, the maximum length of each line of text, including the &lt;CRLF&gt;, must not exceed 1,000 characters.</p> </li> </ul>
-- * Source [Address] <p>The identity's email address. If you do not provide a value for this parameter, you must specify a "From" address in the raw text of the message. (You can also specify both.)</p> <note> <p>Amazon SES does not support the SMTPUTF8 extension, as described in<a href="https://tools.ietf.org/html/rfc6531">RFC6531</a>. For this reason, the <i>local part</i> of a source email address (the part of the email address that precedes the @ sign) may only contain <a href="https://en.wikipedia.org/wiki/Email_address#Local-part">7-bit ASCII characters</a>. If the <i>domain part</i> of an address (the part after the @ sign) contains non-ASCII characters, they must be encoded using Punycode, as described in <a href="https://tools.ietf.org/html/rfc3492.html">RFC3492</a>. The sender name (also known as the <i>friendly name</i>) may contain non-ASCII characters. These characters must be encoded using MIME encoded-word syntax, as described in <a href="https://tools.ietf.org/html/rfc2047">RFC 2047</a>. MIME encoded-word syntax uses the following form: <code>=?charset?encoding?encoded-text?=</code>.</p> </note> <p>If you specify the <code>Source</code> parameter and have feedback forwarding enabled, then bounces and complaints will be sent to this email address. This takes precedence over any Return-Path header that you might include in the raw text of the message.</p>
-- * ConfigurationSetName [ConfigurationSetName] <p>The name of the configuration set to use when you send an email using <code>SendRawEmail</code>.</p>
-- * FromArn [AmazonResourceName] <p>This parameter is used only for sending authorization. It is the ARN of the identity that is associated with the sending authorization policy that permits you to specify a particular "From" address in the header of the raw email.</p> <p>Instead of using this parameter, you can use the X-header <code>X-SES-FROM-ARN</code> in the raw message of the email. If you use both the <code>FromArn</code> parameter and the corresponding X-header, Amazon SES uses the value of the <code>FromArn</code> parameter.</p> <note> <p>For information about when to use this parameter, see the description of <code>SendRawEmail</code> in this guide, or see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization-delegate-sender-tasks-email.html">Amazon SES Developer Guide</a>.</p> </note>
-- * SourceArn [AmazonResourceName] <p>This parameter is used only for sending authorization. It is the ARN of the identity that is associated with the sending authorization policy that permits you to send for the email address specified in the <code>Source</code> parameter.</p> <p>For example, if the owner of <code>example.com</code> (which has ARN <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>) attaches a policy to it that authorizes you to send from <code>user@example.com</code>, then you would specify the <code>SourceArn</code> to be <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>, and the <code>Source</code> to be <code>user@example.com</code>.</p> <p>Instead of using this parameter, you can use the X-header <code>X-SES-SOURCE-ARN</code> in the raw message of the email. If you use both the <code>SourceArn</code> parameter and the corresponding X-header, Amazon SES uses the value of the <code>SourceArn</code> parameter.</p> <note> <p>For information about when to use this parameter, see the description of <code>SendRawEmail</code> in this guide, or see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization-delegate-sender-tasks-email.html">Amazon SES Developer Guide</a>.</p> </note>
-- * Destinations [AddressList] <p>A list of destinations for the message, consisting of To:, CC:, and BCC: addresses.</p>
-- Required key: RawMessage
-- @return SendRawEmailRequest structure as a key-value pair table
function M.SendRawEmailRequest(args)
	assert(args, "You must provide an argument table when creating SendRawEmailRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReturnPathArn"] = args["ReturnPathArn"],
		["Tags"] = args["Tags"],
		["RawMessage"] = args["RawMessage"],
		["Source"] = args["Source"],
		["ConfigurationSetName"] = args["ConfigurationSetName"],
		["FromArn"] = args["FromArn"],
		["SourceArn"] = args["SourceArn"],
		["Destinations"] = args["Destinations"],
	}
	asserts.AssertSendRawEmailRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VerificationAttributes [VerificationAttributes] <p>A map of Identities to IdentityVerificationAttributes objects.</p>
-- Required key: VerificationAttributes
-- @return GetIdentityVerificationAttributesResponse structure as a key-value pair table
function M.GetIdentityVerificationAttributesResponse(args)
	assert(args, "You must provide an argument table when creating GetIdentityVerificationAttributesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["VerificationAttributes"] = args["VerificationAttributes"],
	}
	asserts.AssertGetIdentityVerificationAttributesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteReceiptFilterResponse structure as a key-value pair table
function M.DeleteReceiptFilterResponse(args)
	assert(args, "You must provide an argument table when creating DeleteReceiptFilterResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteReceiptFilterResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListCustomVerificationEmailTemplatesResponse = { ["NextToken"] = true, ["CustomVerificationEmailTemplates"] = true, nil }

function asserts.AssertListCustomVerificationEmailTemplatesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListCustomVerificationEmailTemplatesResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["CustomVerificationEmailTemplates"] then asserts.AssertCustomVerificationEmailTemplates(struct["CustomVerificationEmailTemplates"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListCustomVerificationEmailTemplatesResponse[k], "ListCustomVerificationEmailTemplatesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListCustomVerificationEmailTemplatesResponse
-- <p>A paginated list of custom verification email templates.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>A token indicating that there are additional custom verification email templates available to be listed. Pass this token to a subsequent call to <code>ListTemplates</code> to retrieve the next 50 custom verification email templates.</p>
-- * CustomVerificationEmailTemplates [CustomVerificationEmailTemplates] <p>A list of the custom verification email templates that exist in your account.</p>
-- @return ListCustomVerificationEmailTemplatesResponse structure as a key-value pair table
function M.ListCustomVerificationEmailTemplatesResponse(args)
	assert(args, "You must provide an argument table when creating ListCustomVerificationEmailTemplatesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["CustomVerificationEmailTemplates"] = args["CustomVerificationEmailTemplates"],
	}
	asserts.AssertListCustomVerificationEmailTemplatesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ForwardingEnabled [Enabled] <p>Sets whether Amazon SES will forward bounce and complaint notifications as email. <code>true</code> specifies that Amazon SES will forward bounce and complaint notifications as email, in addition to any Amazon SNS topic publishing otherwise specified. <code>false</code> specifies that Amazon SES will publish bounce and complaint notifications only through Amazon SNS. This value can only be set to <code>false</code> when Amazon SNS topics are set for both <code>Bounce</code> and <code>Complaint</code> notification types.</p>
-- * Identity [Identity] <p>The identity for which to set bounce and complaint notification forwarding. Examples: <code>user@example.com</code>, <code>example.com</code>.</p>
-- Required key: Identity
-- Required key: ForwardingEnabled
-- @return SetIdentityFeedbackForwardingEnabledRequest structure as a key-value pair table
function M.SetIdentityFeedbackForwardingEnabledRequest(args)
	assert(args, "You must provide an argument table when creating SetIdentityFeedbackForwardingEnabledRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ForwardingEnabled"] = args["ForwardingEnabled"],
		["Identity"] = args["Identity"],
	}
	asserts.AssertSetIdentityFeedbackForwardingEnabledRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListCustomVerificationEmailTemplatesRequest = { ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListCustomVerificationEmailTemplatesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListCustomVerificationEmailTemplatesRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListCustomVerificationEmailTemplatesRequest[k], "ListCustomVerificationEmailTemplatesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListCustomVerificationEmailTemplatesRequest
-- <p>Represents a request to list the existing custom verification email templates for your account.</p> <p>For more information about custom verification email templates, see <a href="ses/latest/DeveloperGuide/custom-verification-emails.html">Using Custom Verification Email Templates</a> in the <i>Amazon SES Developer Guide</i>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>An array the contains the name and creation time stamp for each template in your Amazon SES account.</p>
-- * MaxResults [MaxResults] <p>The maximum number of custom verification email templates to return. This value must be at least 1 and less than or equal to 50. If you do not specify a value, or if you specify a value less than 1 or greater than 50, the operation will return up to 50 results.</p>
-- @return ListCustomVerificationEmailTemplatesRequest structure as a key-value pair table
function M.ListCustomVerificationEmailTemplatesRequest(args)
	assert(args, "You must provide an argument table when creating ListCustomVerificationEmailTemplatesRequest")
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
	asserts.AssertListCustomVerificationEmailTemplatesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [DsnStatus] <p>The status code that indicates what went wrong. This is required by <a href="https://tools.ietf.org/html/rfc3464">RFC 3464</a>.</p>
-- * FinalRecipient [Address] <p>The email address that the message was ultimately delivered to. This corresponds to the <code>Final-Recipient</code> in the DSN. If not specified, <code>FinalRecipient</code> will be set to the <code>Recipient</code> specified in the <code>BouncedRecipientInfo</code> structure. Either <code>FinalRecipient</code> or the recipient in <code>BouncedRecipientInfo</code> must be a recipient of the original bounced message.</p> <note> <p>Do not prepend the <code>FinalRecipient</code> email address with <code>rfc 822;</code>, as described in <a href="https://tools.ietf.org/html/rfc3798">RFC 3798</a>.</p> </note>
-- * DiagnosticCode [DiagnosticCode] <p>An extended explanation of what went wrong; this is usually an SMTP response. See <a href="https://tools.ietf.org/html/rfc3463">RFC 3463</a> for the correct formatting of this parameter.</p>
-- * LastAttemptDate [LastAttemptDate] <p>The time the final delivery attempt was made, in <a href="https://www.ietf.org/rfc/rfc0822.txt">RFC 822</a> date-time format.</p>
-- * ExtensionFields [ExtensionFieldList] <p>Additional X-headers to include in the DSN.</p>
-- * RemoteMta [RemoteMta] <p>The MTA to which the remote MTA attempted to deliver the message, formatted as specified in <a href="https://tools.ietf.org/html/rfc3464">RFC 3464</a> (<code>mta-name-type; mta-name</code>). This parameter typically applies only to propagating synchronous bounces.</p>
-- * Action [DsnAction] <p>The action performed by the reporting mail transfer agent (MTA) as a result of its attempt to deliver the message to the recipient address. This is required by <a href="https://tools.ietf.org/html/rfc3464">RFC 3464</a>.</p>
-- Required key: Action
-- Required key: Status
-- @return RecipientDsnFields structure as a key-value pair table
function M.RecipientDsnFields(args)
	assert(args, "You must provide an argument table when creating RecipientDsnFields")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["FinalRecipient"] = args["FinalRecipient"],
		["DiagnosticCode"] = args["DiagnosticCode"],
		["LastAttemptDate"] = args["LastAttemptDate"],
		["ExtensionFields"] = args["ExtensionFields"],
		["RemoteMta"] = args["RemoteMta"],
		["Action"] = args["Action"],
	}
	asserts.AssertRecipientDsnFields(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EmailAddress [Address] <p>The email address to be verified.</p>
-- Required key: EmailAddress
-- @return VerifyEmailAddressRequest structure as a key-value pair table
function M.VerifyEmailAddressRequest(args)
	assert(args, "You must provide an argument table when creating VerifyEmailAddressRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EmailAddress"] = args["EmailAddress"],
	}
	asserts.AssertVerifyEmailAddressRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Enabled [Enabled] <p>Sets whether Amazon SES includes the original email headers in Amazon SNS notifications of the specified notification type. A value of <code>true</code> specifies that Amazon SES will include headers in notifications, and a value of <code>false</code> specifies that Amazon SES will not include headers in notifications.</p> <p>This value can only be set when <code>NotificationType</code> is already set to use a particular Amazon SNS topic.</p>
-- * NotificationType [NotificationType] <p>The notification type for which to enable or disable headers in notifications. </p>
-- * Identity [Identity] <p>The identity for which to enable or disable headers in notifications. Examples: <code>user@example.com</code>, <code>example.com</code>.</p>
-- Required key: Identity
-- Required key: NotificationType
-- Required key: Enabled
-- @return SetIdentityHeadersInNotificationsEnabledRequest structure as a key-value pair table
function M.SetIdentityHeadersInNotificationsEnabledRequest(args)
	assert(args, "You must provide an argument table when creating SetIdentityHeadersInNotificationsEnabledRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Enabled"] = args["Enabled"],
		["NotificationType"] = args["NotificationType"],
		["Identity"] = args["Identity"],
	}
	asserts.AssertSetIdentityHeadersInNotificationsEnabledRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>The name of the configuration set.</p> <p>Configuration sets let you create groups of rules that you can apply to the emails you send using Amazon SES. For more information about using configuration sets, see <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/using-configuration-sets.html">Using Amazon SES Configuration Sets</a> in the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/">Amazon SES Developer Guide</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [ConfigurationSetName] <p>The name of the configuration set. The name must meet the following requirements:</p> <ul> <li> <p>Contain only letters (a-z, A-Z), numbers (0-9), underscores (_), or dashes (-).</p> </li> <li> <p>Contain 64 characters or fewer.</p> </li> </ul>
-- Required key: Name
-- @return ConfigurationSet structure as a key-value pair table
function M.ConfigurationSet(args)
	assert(args, "You must provide an argument table when creating ConfigurationSet")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
	}
	asserts.AssertConfigurationSet(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TestRenderTemplateRequest = { ["TemplateData"] = true, ["TemplateName"] = true, nil }

function asserts.AssertTestRenderTemplateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TestRenderTemplateRequest to be of type 'table'")
	assert(struct["TemplateName"], "Expected key TemplateName to exist in table")
	assert(struct["TemplateData"], "Expected key TemplateData to exist in table")
	if struct["TemplateData"] then asserts.AssertTemplateData(struct["TemplateData"]) end
	if struct["TemplateName"] then asserts.AssertTemplateName(struct["TemplateName"]) end
	for k,_ in pairs(struct) do
		assert(keys.TestRenderTemplateRequest[k], "TestRenderTemplateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TestRenderTemplateRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TemplateData [TemplateData] <p>A list of replacement values to apply to the template. This parameter is a JSON object, typically consisting of key-value pairs in which the keys correspond to replacement tags in the email template.</p>
-- * TemplateName [TemplateName] <p>The name of the template that you want to render.</p>
-- Required key: TemplateName
-- Required key: TemplateData
-- @return TestRenderTemplateRequest structure as a key-value pair table
function M.TestRenderTemplateRequest(args)
	assert(args, "You must provide an argument table when creating TestRenderTemplateRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TemplateData"] = args["TemplateData"],
		["TemplateName"] = args["TemplateName"],
	}
	asserts.AssertTestRenderTemplateRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Identities [IdentityList] <p>A list of one or more identities.</p>
-- Required key: Identities
-- @return GetIdentityMailFromDomainAttributesRequest structure as a key-value pair table
function M.GetIdentityMailFromDomainAttributesRequest(args)
	assert(args, "You must provide an argument table when creating GetIdentityMailFromDomainAttributesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Identities"] = args["Identities"],
	}
	asserts.AssertGetIdentityMailFromDomainAttributesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicyNames [PolicyNameList] <p>A list of the names of policies to be retrieved. You can retrieve a maximum of 20 policies at a time. If you do not know the names of the policies that are attached to the identity, you can use <code>ListIdentityPolicies</code>.</p>
-- * Identity [Identity] <p>The identity for which the policies will be retrieved. You can specify an identity by using its name or by using its Amazon Resource Name (ARN). Examples: <code>user@example.com</code>, <code>example.com</code>, <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>.</p> <p>To successfully call this API, you must own the identity.</p>
-- Required key: Identity
-- Required key: PolicyNames
-- @return GetIdentityPoliciesRequest structure as a key-value pair table
function M.GetIdentityPoliciesRequest(args)
	assert(args, "You must provide an argument table when creating GetIdentityPoliciesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PolicyNames"] = args["PolicyNames"],
		["Identity"] = args["Identity"],
	}
	asserts.AssertGetIdentityPoliciesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTemplatesRequest = { ["NextToken"] = true, ["MaxItems"] = true, nil }

function asserts.AssertListTemplatesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTemplatesRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxItems"] then asserts.AssertMaxItems(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTemplatesRequest[k], "ListTemplatesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTemplatesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>A token returned from a previous call to <code>ListTemplates</code> to indicate the position in the list of email templates.</p>
-- * MaxItems [MaxItems] <p>The maximum number of templates to return. This value must be at least 1 and less than or equal to 10. If you do not specify a value, or if you specify a value less than 1 or greater than 10, the operation will return up to 10 results.</p>
-- @return ListTemplatesRequest structure as a key-value pair table
function M.ListTemplatesRequest(args)
	assert(args, "You must provide an argument table when creating ListTemplatesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["MaxItems"] = args["MaxItems"],
	}
	asserts.AssertListTemplatesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return SetIdentityDkimEnabledResponse structure as a key-value pair table
function M.SetIdentityDkimEnabledResponse(args)
	assert(args, "You must provide an argument table when creating SetIdentityDkimEnabledResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertSetIdentityDkimEnabledResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EventDestination [EventDestination] <p>An object that describes the AWS service that email sending event information will be published to.</p>
-- * ConfigurationSetName [ConfigurationSetName] <p>The name of the configuration set that the event destination should be associated with.</p>
-- Required key: ConfigurationSetName
-- Required key: EventDestination
-- @return CreateConfigurationSetEventDestinationRequest structure as a key-value pair table
function M.CreateConfigurationSetEventDestinationRequest(args)
	assert(args, "You must provide an argument table when creating CreateConfigurationSetEventDestinationRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EventDestination"] = args["EventDestination"],
		["ConfigurationSetName"] = args["ConfigurationSetName"],
	}
	asserts.AssertCreateConfigurationSetEventDestinationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return SetReceiptRulePositionResponse structure as a key-value pair table
function M.SetReceiptRulePositionResponse(args)
	assert(args, "You must provide an argument table when creating SetReceiptRulePositionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertSetReceiptRulePositionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateTemplateResponse = { nil }

function asserts.AssertUpdateTemplateResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateTemplateResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateTemplateResponse[k], "UpdateTemplateResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateTemplateResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateTemplateResponse structure as a key-value pair table
function M.UpdateTemplateResponse(args)
	assert(args, "You must provide an argument table when creating UpdateTemplateResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateTemplateResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Identities [IdentityList] <p>A list of one or more verified identities - email addresses, domains, or both.</p>
-- Required key: Identities
-- @return GetIdentityDkimAttributesRequest structure as a key-value pair table
function M.GetIdentityDkimAttributesRequest(args)
	assert(args, "You must provide an argument table when creating GetIdentityDkimAttributesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Identities"] = args["Identities"],
	}
	asserts.AssertGetIdentityDkimAttributesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Scope [StopScope] <p>The name of the RuleSet that is being stopped.</p>
-- * TopicArn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the Amazon SNS topic to notify when the stop action is taken. An example of an Amazon SNS topic ARN is <code>arn:aws:sns:us-west-2:123456789012:MyTopic</code>. For more information about Amazon SNS topics, see the <a href="http://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html">Amazon SNS Developer Guide</a>.</p>
-- Required key: Scope
-- @return StopAction structure as a key-value pair table
function M.StopAction(args)
	assert(args, "You must provide an argument table when creating StopAction")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Scope"] = args["Scope"],
		["TopicArn"] = args["TopicArn"],
	}
	asserts.AssertStopAction(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Tags [MessageTagList] <p>A list of tags, in the form of name/value pairs, to apply to an email that you send using <code>SendEmail</code>. Tags correspond to characteristics of the email that you define, so that you can publish email sending events.</p>
-- * ReturnPathArn [AmazonResourceName] <p>This parameter is used only for sending authorization. It is the ARN of the identity that is associated with the sending authorization policy that permits you to use the email address specified in the <code>ReturnPath</code> parameter.</p> <p>For example, if the owner of <code>example.com</code> (which has ARN <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>) attaches a policy to it that authorizes you to use <code>feedback@example.com</code>, then you would specify the <code>ReturnPathArn</code> to be <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>, and the <code>ReturnPath</code> to be <code>feedback@example.com</code>.</p> <p>For more information about sending authorization, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer Guide</a>.</p>
-- * ReplyToAddresses [AddressList] <p>The reply-to email address(es) for the message. If the recipient replies to the message, each reply-to address will receive the reply.</p>
-- * Destination [Destination] <p>The destination for this email, composed of To:, CC:, and BCC: fields.</p>
-- * Source [Address] <p>The email address that is sending the email. This email address must be either individually verified with Amazon SES, or from a domain that has been verified with Amazon SES. For information about verifying identities, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html">Amazon SES Developer Guide</a>.</p> <p>If you are sending on behalf of another user and have been permitted to do so by a sending authorization policy, then you must also specify the <code>SourceArn</code> parameter. For more information about sending authorization, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer Guide</a>.</p> <note> <p>Amazon SES does not support the SMTPUTF8 extension, as described in <a href="https://tools.ietf.org/html/rfc6531">RFC6531</a>. For this reason, the <i>local part</i> of a source email address (the part of the email address that precedes the @ sign) may only contain <a href="https://en.wikipedia.org/wiki/Email_address#Local-part">7-bit ASCII characters</a>. If the <i>domain part</i> of an address (the part after the @ sign) contains non-ASCII characters, they must be encoded using Punycode, as described in <a href="https://tools.ietf.org/html/rfc3492.html">RFC3492</a>. The sender name (also known as the <i>friendly name</i>) may contain non-ASCII characters. These characters must be encoded using MIME encoded-word syntax, as described in <a href="https://tools.ietf.org/html/rfc2047">RFC 2047</a>. MIME encoded-word syntax uses the following form: <code>=?charset?encoding?encoded-text?=</code>.</p> </note>
-- * ReturnPath [Address] <p>The email address that bounces and complaints will be forwarded to when feedback forwarding is enabled. If the message cannot be delivered to the recipient, then an error message will be returned from the recipient's ISP; this message will then be forwarded to the email address specified by the <code>ReturnPath</code> parameter. The <code>ReturnPath</code> parameter is never overwritten. This email address must be either individually verified with Amazon SES, or from a domain that has been verified with Amazon SES. </p>
-- * ConfigurationSetName [ConfigurationSetName] <p>The name of the configuration set to use when you send an email using <code>SendEmail</code>.</p>
-- * Message [Message] <p>The message to be sent.</p>
-- * SourceArn [AmazonResourceName] <p>This parameter is used only for sending authorization. It is the ARN of the identity that is associated with the sending authorization policy that permits you to send for the email address specified in the <code>Source</code> parameter.</p> <p>For example, if the owner of <code>example.com</code> (which has ARN <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>) attaches a policy to it that authorizes you to send from <code>user@example.com</code>, then you would specify the <code>SourceArn</code> to be <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>, and the <code>Source</code> to be <code>user@example.com</code>.</p> <p>For more information about sending authorization, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer Guide</a>.</p>
-- Required key: Source
-- Required key: Destination
-- Required key: Message
-- @return SendEmailRequest structure as a key-value pair table
function M.SendEmailRequest(args)
	assert(args, "You must provide an argument table when creating SendEmailRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Tags"] = args["Tags"],
		["ReturnPathArn"] = args["ReturnPathArn"],
		["ReplyToAddresses"] = args["ReplyToAddresses"],
		["Destination"] = args["Destination"],
		["Source"] = args["Source"],
		["ReturnPath"] = args["ReturnPath"],
		["ConfigurationSetName"] = args["ConfigurationSetName"],
		["Message"] = args["Message"],
		["SourceArn"] = args["SourceArn"],
	}
	asserts.AssertSendEmailRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateConfigurationSetTrackingOptionsResponse = { nil }

function asserts.AssertUpdateConfigurationSetTrackingOptionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateConfigurationSetTrackingOptionsResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateConfigurationSetTrackingOptionsResponse[k], "UpdateConfigurationSetTrackingOptionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateConfigurationSetTrackingOptionsResponse
-- <p>An empty element returned on a successful request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateConfigurationSetTrackingOptionsResponse structure as a key-value pair table
function M.UpdateConfigurationSetTrackingOptionsResponse(args)
	assert(args, "You must provide an argument table when creating UpdateConfigurationSetTrackingOptionsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateConfigurationSetTrackingOptionsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SendTemplatedEmailResponse = { ["MessageId"] = true, nil }

function asserts.AssertSendTemplatedEmailResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendTemplatedEmailResponse to be of type 'table'")
	assert(struct["MessageId"], "Expected key MessageId to exist in table")
	if struct["MessageId"] then asserts.AssertMessageId(struct["MessageId"]) end
	for k,_ in pairs(struct) do
		assert(keys.SendTemplatedEmailResponse[k], "SendTemplatedEmailResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendTemplatedEmailResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MessageId [MessageId] <p>The unique message identifier returned from the <code>SendTemplatedEmail</code> action. </p>
-- Required key: MessageId
-- @return SendTemplatedEmailResponse structure as a key-value pair table
function M.SendTemplatedEmailResponse(args)
	assert(args, "You must provide an argument table when creating SendTemplatedEmailResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MessageId"] = args["MessageId"],
	}
	asserts.AssertSendTemplatedEmailResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EmailAddress [Address] <p>An email address to be removed from the list of verified addresses.</p>
-- Required key: EmailAddress
-- @return DeleteVerifiedEmailAddressRequest structure as a key-value pair table
function M.DeleteVerifiedEmailAddressRequest(args)
	assert(args, "You must provide an argument table when creating DeleteVerifiedEmailAddressRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EmailAddress"] = args["EmailAddress"],
	}
	asserts.AssertDeleteVerifiedEmailAddressRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EventDestination = { ["CloudWatchDestination"] = true, ["MatchingEventTypes"] = true, ["Name"] = true, ["Enabled"] = true, ["SNSDestination"] = true, ["KinesisFirehoseDestination"] = true, nil }

function asserts.AssertEventDestination(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventDestination to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["MatchingEventTypes"], "Expected key MatchingEventTypes to exist in table")
	if struct["CloudWatchDestination"] then asserts.AssertCloudWatchDestination(struct["CloudWatchDestination"]) end
	if struct["MatchingEventTypes"] then asserts.AssertEventTypes(struct["MatchingEventTypes"]) end
	if struct["Name"] then asserts.AssertEventDestinationName(struct["Name"]) end
	if struct["Enabled"] then asserts.AssertEnabled(struct["Enabled"]) end
	if struct["SNSDestination"] then asserts.AssertSNSDestination(struct["SNSDestination"]) end
	if struct["KinesisFirehoseDestination"] then asserts.AssertKinesisFirehoseDestination(struct["KinesisFirehoseDestination"]) end
	for k,_ in pairs(struct) do
		assert(keys.EventDestination[k], "EventDestination contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventDestination
-- <p>Contains information about the event destination that the specified email sending events will be published to.</p> <note> <p>When you create or update an event destination, you must provide one, and only one, destination. The destination can be Amazon CloudWatch, Amazon Kinesis Firehose or Amazon Simple Notification Service (Amazon SNS).</p> </note> <p>Event destinations are associated with configuration sets, which enable you to publish email sending events to Amazon CloudWatch, Amazon Kinesis Firehose, or Amazon Simple Notification Service (Amazon SNS). For information about using configuration sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CloudWatchDestination [CloudWatchDestination] <p>An object that contains the names, default values, and sources of the dimensions associated with an Amazon CloudWatch event destination.</p>
-- * MatchingEventTypes [EventTypes] <p>The type of email sending events to publish to the event destination.</p>
-- * Name [EventDestinationName] <p>The name of the event destination. The name must:</p> <ul> <li> <p>This value can only contain ASCII letters (a-z, A-Z), numbers (0-9), underscores (_), or dashes (-).</p> </li> <li> <p>Contain less than 64 characters.</p> </li> </ul>
-- * Enabled [Enabled] <p>Sets whether Amazon SES publishes events to this destination when you send an email with the associated configuration set. Set to <code>true</code> to enable publishing to this destination; set to <code>false</code> to prevent publishing to this destination. The default value is <code>false</code>.</p>
-- * SNSDestination [SNSDestination] <p>An object that contains the topic ARN associated with an Amazon Simple Notification Service (Amazon SNS) event destination.</p>
-- * KinesisFirehoseDestination [KinesisFirehoseDestination] <p>An object that contains the delivery stream ARN and the IAM role ARN associated with an Amazon Kinesis Firehose event destination.</p>
-- Required key: Name
-- Required key: MatchingEventTypes
-- @return EventDestination structure as a key-value pair table
function M.EventDestination(args)
	assert(args, "You must provide an argument table when creating EventDestination")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CloudWatchDestination"] = args["CloudWatchDestination"],
		["MatchingEventTypes"] = args["MatchingEventTypes"],
		["Name"] = args["Name"],
		["Enabled"] = args["Enabled"],
		["SNSDestination"] = args["SNSDestination"],
		["KinesisFirehoseDestination"] = args["KinesisFirehoseDestination"],
	}
	asserts.AssertEventDestination(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteReceiptRuleSetResponse structure as a key-value pair table
function M.DeleteReceiptRuleSetResponse(args)
	assert(args, "You must provide an argument table when creating DeleteReceiptRuleSetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteReceiptRuleSetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MailFromDomain [MailFromDomainName] <p>The custom MAIL FROM domain that the identity is configured to use.</p>
-- * BehaviorOnMXFailure [BehaviorOnMXFailure] <p>The action that Amazon SES takes if it cannot successfully read the required MX record when you send an email. A value of <code>UseDefaultValue</code> indicates that if Amazon SES cannot read the required MX record, it uses amazonses.com (or a subdomain of that) as the MAIL FROM domain. A value of <code>RejectMessage</code> indicates that if Amazon SES cannot read the required MX record, Amazon SES returns a <code>MailFromDomainNotVerified</code> error and does not send the email.</p> <p>The custom MAIL FROM setup states that result in this behavior are <code>Pending</code>, <code>Failed</code>, and <code>TemporaryFailure</code>.</p>
-- * MailFromDomainStatus [CustomMailFromStatus] <p>The state that indicates whether Amazon SES has successfully read the MX record required for custom MAIL FROM domain setup. If the state is <code>Success</code>, Amazon SES uses the specified custom MAIL FROM domain when the verified identity sends an email. All other states indicate that Amazon SES takes the action described by <code>BehaviorOnMXFailure</code>.</p>
-- Required key: MailFromDomain
-- Required key: MailFromDomainStatus
-- Required key: BehaviorOnMXFailure
-- @return IdentityMailFromDomainAttributes structure as a key-value pair table
function M.IdentityMailFromDomainAttributes(args)
	assert(args, "You must provide an argument table when creating IdentityMailFromDomainAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MailFromDomain"] = args["MailFromDomain"],
		["BehaviorOnMXFailure"] = args["BehaviorOnMXFailure"],
		["MailFromDomainStatus"] = args["MailFromDomainStatus"],
	}
	asserts.AssertIdentityMailFromDomainAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SendDataPoints [SendDataPointList] <p>A list of data points, each of which represents 15 minutes of activity.</p>
-- @return GetSendStatisticsResponse structure as a key-value pair table
function M.GetSendStatisticsResponse(args)
	assert(args, "You must provide an argument table when creating GetSendStatisticsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SendDataPoints"] = args["SendDataPoints"],
	}
	asserts.AssertGetSendStatisticsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SendBulkTemplatedEmailResponse = { ["Status"] = true, nil }

function asserts.AssertSendBulkTemplatedEmailResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendBulkTemplatedEmailResponse to be of type 'table'")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["Status"] then asserts.AssertBulkEmailDestinationStatusList(struct["Status"]) end
	for k,_ in pairs(struct) do
		assert(keys.SendBulkTemplatedEmailResponse[k], "SendBulkTemplatedEmailResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendBulkTemplatedEmailResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [BulkEmailDestinationStatusList] <p>The unique message identifier returned from the <code>SendBulkTemplatedEmail</code> action.</p>
-- Required key: Status
-- @return SendBulkTemplatedEmailResponse structure as a key-value pair table
function M.SendBulkTemplatedEmailResponse(args)
	assert(args, "You must provide an argument table when creating SendBulkTemplatedEmailResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
	}
	asserts.AssertSendBulkTemplatedEmailResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return CreateReceiptRuleSetResponse structure as a key-value pair table
function M.CreateReceiptRuleSetResponse(args)
	assert(args, "You must provide an argument table when creating CreateReceiptRuleSetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertCreateReceiptRuleSetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SendCustomVerificationEmailResponse = { ["MessageId"] = true, nil }

function asserts.AssertSendCustomVerificationEmailResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendCustomVerificationEmailResponse to be of type 'table'")
	if struct["MessageId"] then asserts.AssertMessageId(struct["MessageId"]) end
	for k,_ in pairs(struct) do
		assert(keys.SendCustomVerificationEmailResponse[k], "SendCustomVerificationEmailResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendCustomVerificationEmailResponse
-- <p>The response received when attempting to send the custom verification email.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MessageId [MessageId] <p>The unique message identifier returned from the <code>SendCustomVerificationEmail</code> operation.</p>
-- @return SendCustomVerificationEmailResponse structure as a key-value pair table
function M.SendCustomVerificationEmailResponse(args)
	assert(args, "You must provide an argument table when creating SendCustomVerificationEmailResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MessageId"] = args["MessageId"],
	}
	asserts.AssertSendCustomVerificationEmailResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateTemplateResponse = { nil }

function asserts.AssertCreateTemplateResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTemplateResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CreateTemplateResponse[k], "CreateTemplateResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTemplateResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return CreateTemplateResponse structure as a key-value pair table
function M.CreateTemplateResponse(args)
	assert(args, "You must provide an argument table when creating CreateTemplateResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertCreateTemplateResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AddHeaderAction [AddHeaderAction] <p>Adds a header to the received email.</p>
-- * S3Action [S3Action] <p>Saves the received message to an Amazon Simple Storage Service (Amazon S3) bucket and, optionally, publishes a notification to Amazon SNS.</p>
-- * SNSAction [SNSAction] <p>Publishes the email content within a notification to Amazon SNS.</p>
-- * BounceAction [BounceAction] <p>Rejects the received email by returning a bounce response to the sender and, optionally, publishes a notification to Amazon Simple Notification Service (Amazon SNS).</p>
-- * LambdaAction [LambdaAction] <p>Calls an AWS Lambda function, and optionally, publishes a notification to Amazon SNS.</p>
-- * StopAction [StopAction] <p>Terminates the evaluation of the receipt rule set and optionally publishes a notification to Amazon SNS.</p>
-- * WorkmailAction [WorkmailAction] <p>Calls Amazon WorkMail and, optionally, publishes a notification to Amazon Amazon SNS.</p>
-- @return ReceiptAction structure as a key-value pair table
function M.ReceiptAction(args)
	assert(args, "You must provide an argument table when creating ReceiptAction")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AddHeaderAction"] = args["AddHeaderAction"],
		["S3Action"] = args["S3Action"],
		["SNSAction"] = args["SNSAction"],
		["BounceAction"] = args["BounceAction"],
		["LambdaAction"] = args["LambdaAction"],
		["StopAction"] = args["StopAction"],
		["WorkmailAction"] = args["WorkmailAction"],
	}
	asserts.AssertReceiptAction(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RuleSetName [ReceiptRuleSetName] <p>The name of the receipt rule set to delete.</p>
-- Required key: RuleSetName
-- @return DeleteReceiptRuleSetRequest structure as a key-value pair table
function M.DeleteReceiptRuleSetRequest(args)
	assert(args, "You must provide an argument table when creating DeleteReceiptRuleSetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RuleSetName"] = args["RuleSetName"],
	}
	asserts.AssertDeleteReceiptRuleSetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTemplatesResponse = { ["TemplatesMetadata"] = true, ["NextToken"] = true, nil }

function asserts.AssertListTemplatesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTemplatesResponse to be of type 'table'")
	if struct["TemplatesMetadata"] then asserts.AssertTemplateMetadataList(struct["TemplatesMetadata"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTemplatesResponse[k], "ListTemplatesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTemplatesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TemplatesMetadata [TemplateMetadataList] <p>An array the contains the name and creation time stamp for each template in your Amazon SES account.</p>
-- * NextToken [NextToken] <p>A token indicating that there are additional email templates available to be listed. Pass this token to a subsequent call to <code>ListTemplates</code> to retrieve the next 50 email templates.</p>
-- @return ListTemplatesResponse structure as a key-value pair table
function M.ListTemplatesResponse(args)
	assert(args, "You must provide an argument table when creating ListTemplatesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TemplatesMetadata"] = args["TemplatesMetadata"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListTemplatesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Identities [IdentityList] <p>A list of one or more identities. You can specify an identity by using its name or by using its Amazon Resource Name (ARN). Examples: <code>user@example.com</code>, <code>example.com</code>, <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>.</p>
-- Required key: Identities
-- @return GetIdentityNotificationAttributesRequest structure as a key-value pair table
function M.GetIdentityNotificationAttributesRequest(args)
	assert(args, "You must provide an argument table when creating GetIdentityNotificationAttributesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Identities"] = args["Identities"],
	}
	asserts.AssertGetIdentityNotificationAttributesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteConfigurationSetEventDestinationResponse structure as a key-value pair table
function M.DeleteConfigurationSetEventDestinationResponse(args)
	assert(args, "You must provide an argument table when creating DeleteConfigurationSetEventDestinationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteConfigurationSetEventDestinationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RuleSetName [ReceiptRuleSetName] <p>The name of the receipt rule set that the receipt rule belongs to.</p>
-- * Rule [ReceiptRule] <p>A data structure that contains the updated receipt rule information.</p>
-- Required key: RuleSetName
-- Required key: Rule
-- @return UpdateReceiptRuleRequest structure as a key-value pair table
function M.UpdateReceiptRuleRequest(args)
	assert(args, "You must provide an argument table when creating UpdateReceiptRuleRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RuleSetName"] = args["RuleSetName"],
		["Rule"] = args["Rule"],
	}
	asserts.AssertUpdateReceiptRuleRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return SetIdentityHeadersInNotificationsEnabledResponse structure as a key-value pair table
function M.SetIdentityHeadersInNotificationsEnabledResponse(args)
	assert(args, "You must provide an argument table when creating SetIdentityHeadersInNotificationsEnabledResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertSetIdentityHeadersInNotificationsEnabledResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OrganizationArn [AmazonResourceName] <p>The ARN of the Amazon WorkMail organization. An example of an Amazon WorkMail organization ARN is <code>arn:aws:workmail:us-west-2:123456789012:organization/m-68755160c4cb4e29a2b2f8fb58f359d7</code>. For information about Amazon WorkMail organizations, see the <a href="http://docs.aws.amazon.com/workmail/latest/adminguide/organizations_overview.html">Amazon WorkMail Administrator Guide</a>.</p>
-- * TopicArn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the Amazon SNS topic to notify when the WorkMail action is called. An example of an Amazon SNS topic ARN is <code>arn:aws:sns:us-west-2:123456789012:MyTopic</code>. For more information about Amazon SNS topics, see the <a href="http://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html">Amazon SNS Developer Guide</a>.</p>
-- Required key: OrganizationArn
-- @return WorkmailAction structure as a key-value pair table
function M.WorkmailAction(args)
	assert(args, "You must provide an argument table when creating WorkmailAction")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OrganizationArn"] = args["OrganizationArn"],
		["TopicArn"] = args["TopicArn"],
	}
	asserts.AssertWorkmailAction(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IpFilter [ReceiptIpFilter] <p>A structure that provides the IP addresses to block or allow, and whether to block or allow incoming mail from them.</p>
-- * Name [ReceiptFilterName] <p>The name of the IP address filter. The name must:</p> <ul> <li> <p>This value can only contain ASCII letters (a-z, A-Z), numbers (0-9), underscores (_), or dashes (-).</p> </li> <li> <p>Start and end with a letter or number.</p> </li> <li> <p>Contain less than 64 characters.</p> </li> </ul>
-- Required key: Name
-- Required key: IpFilter
-- @return ReceiptFilter structure as a key-value pair table
function M.ReceiptFilter(args)
	assert(args, "You must provide an argument table when creating ReceiptFilter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IpFilter"] = args["IpFilter"],
		["Name"] = args["Name"],
	}
	asserts.AssertReceiptFilter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return SetIdentityFeedbackForwardingEnabledResponse structure as a key-value pair table
function M.SetIdentityFeedbackForwardingEnabledResponse(args)
	assert(args, "You must provide an argument table when creating SetIdentityFeedbackForwardingEnabledResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertSetIdentityFeedbackForwardingEnabledResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Rules [ReceiptRulesList] <p>A list of the receipt rules that belong to the specified receipt rule set.</p>
-- * Metadata [ReceiptRuleSetMetadata] <p>The metadata for the receipt rule set, which consists of the rule set name and the timestamp of when the rule set was created.</p>
-- @return DescribeReceiptRuleSetResponse structure as a key-value pair table
function M.DescribeReceiptRuleSetResponse(args)
	assert(args, "You must provide an argument table when creating DescribeReceiptRuleSetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Rules"] = args["Rules"],
		["Metadata"] = args["Metadata"],
	}
	asserts.AssertDescribeReceiptRuleSetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetTemplateRequest = { ["TemplateName"] = true, nil }

function asserts.AssertGetTemplateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTemplateRequest to be of type 'table'")
	assert(struct["TemplateName"], "Expected key TemplateName to exist in table")
	if struct["TemplateName"] then asserts.AssertTemplateName(struct["TemplateName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetTemplateRequest[k], "GetTemplateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTemplateRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TemplateName [TemplateName] <p>The name of the template you want to retrieve.</p>
-- Required key: TemplateName
-- @return GetTemplateRequest structure as a key-value pair table
function M.GetTemplateRequest(args)
	assert(args, "You must provide an argument table when creating GetTemplateRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TemplateName"] = args["TemplateName"],
	}
	asserts.AssertGetTemplateRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>A token returned from a previous call to <code>ListReceiptRuleSets</code> to indicate the position in the receipt rule set list.</p>
-- @return ListReceiptRuleSetsRequest structure as a key-value pair table
function M.ListReceiptRuleSetsRequest(args)
	assert(args, "You must provide an argument table when creating ListReceiptRuleSetsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListReceiptRuleSetsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TestRenderTemplateResponse = { ["RenderedTemplate"] = true, nil }

function asserts.AssertTestRenderTemplateResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TestRenderTemplateResponse to be of type 'table'")
	if struct["RenderedTemplate"] then asserts.AssertRenderedTemplate(struct["RenderedTemplate"]) end
	for k,_ in pairs(struct) do
		assert(keys.TestRenderTemplateResponse[k], "TestRenderTemplateResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TestRenderTemplateResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RenderedTemplate [RenderedTemplate] <p>The complete MIME message rendered by applying the data in the TemplateData parameter to the template specified in the TemplateName parameter.</p>
-- @return TestRenderTemplateResponse structure as a key-value pair table
function M.TestRenderTemplateResponse(args)
	assert(args, "You must provide an argument table when creating TestRenderTemplateResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RenderedTemplate"] = args["RenderedTemplate"],
	}
	asserts.AssertTestRenderTemplateResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [MessageTagName] <p>The name of the tag. The name must:</p> <ul> <li> <p>This value can only contain ASCII letters (a-z, A-Z), numbers (0-9), underscores (_), or dashes (-).</p> </li> <li> <p>Contain less than 256 characters.</p> </li> </ul>
-- * Value [MessageTagValue] <p>The value of the tag. The value must:</p> <ul> <li> <p>This value can only contain ASCII letters (a-z, A-Z), numbers (0-9), underscores (_), or dashes (-).</p> </li> <li> <p>Contain less than 256 characters.</p> </li> </ul>
-- Required key: Name
-- Required key: Value
-- @return MessageTag structure as a key-value pair table
function M.MessageTag(args)
	assert(args, "You must provide an argument table when creating MessageTag")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
		["Value"] = args["Value"],
	}
	asserts.AssertMessageTag(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MailFromDomainAttributes [MailFromDomainAttributes] <p>A map of identities to custom MAIL FROM attributes.</p>
-- Required key: MailFromDomainAttributes
-- @return GetIdentityMailFromDomainAttributesResponse structure as a key-value pair table
function M.GetIdentityMailFromDomainAttributesResponse(args)
	assert(args, "You must provide an argument table when creating GetIdentityMailFromDomainAttributesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MailFromDomainAttributes"] = args["MailFromDomainAttributes"],
	}
	asserts.AssertGetIdentityMailFromDomainAttributesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The token used for pagination.</p>
-- * Identities [IdentityList] <p>A list of identities.</p>
-- Required key: Identities
-- @return ListIdentitiesResponse structure as a key-value pair table
function M.ListIdentitiesResponse(args)
	assert(args, "You must provide an argument table when creating ListIdentitiesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Identities"] = args["Identities"],
	}
	asserts.AssertListIdentitiesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Body [Body] <p>The message body.</p>
-- * Subject [Content] <p>The subject of the message: A short summary of the content, which will appear in the recipient's inbox.</p>
-- Required key: Subject
-- Required key: Body
-- @return Message structure as a key-value pair table
function M.Message(args)
	assert(args, "You must provide an argument table when creating Message")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Body"] = args["Body"],
		["Subject"] = args["Subject"],
	}
	asserts.AssertMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RuleSetName [ReceiptRuleSetName] <p>The name of the receipt rule set to describe.</p>
-- Required key: RuleSetName
-- @return DescribeReceiptRuleSetRequest structure as a key-value pair table
function M.DescribeReceiptRuleSetRequest(args)
	assert(args, "You must provide an argument table when creating DescribeReceiptRuleSetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RuleSetName"] = args["RuleSetName"],
	}
	asserts.AssertDescribeReceiptRuleSetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OriginalMessageId [MessageId] <p>The message ID of the message to be bounced.</p>
-- * BounceSenderArn [AmazonResourceName] <p>This parameter is used only for sending authorization. It is the ARN of the identity that is associated with the sending authorization policy that permits you to use the address in the "From" header of the bounce. For more information about sending authorization, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer Guide</a>.</p>
-- * Explanation [Explanation] <p>Human-readable text for the bounce message to explain the failure. If not specified, the text will be auto-generated based on the bounced recipient information.</p>
-- * BouncedRecipientInfoList [BouncedRecipientInfoList] <p>A list of recipients of the bounced message, including the information required to create the Delivery Status Notifications (DSNs) for the recipients. You must specify at least one <code>BouncedRecipientInfo</code> in the list.</p>
-- * BounceSender [Address] <p>The address to use in the "From" header of the bounce message. This must be an identity that you have verified with Amazon SES.</p>
-- * MessageDsn [MessageDsn] <p>Message-related DSN fields. If not specified, Amazon SES will choose the values.</p>
-- Required key: OriginalMessageId
-- Required key: BounceSender
-- Required key: BouncedRecipientInfoList
-- @return SendBounceRequest structure as a key-value pair table
function M.SendBounceRequest(args)
	assert(args, "You must provide an argument table when creating SendBounceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OriginalMessageId"] = args["OriginalMessageId"],
		["BounceSenderArn"] = args["BounceSenderArn"],
		["Explanation"] = args["Explanation"],
		["BouncedRecipientInfoList"] = args["BouncedRecipientInfoList"],
		["BounceSender"] = args["BounceSender"],
		["MessageDsn"] = args["MessageDsn"],
	}
	asserts.AssertSendBounceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateReceiptRuleResponse structure as a key-value pair table
function M.UpdateReceiptRuleResponse(args)
	assert(args, "You must provide an argument table when creating UpdateReceiptRuleResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateReceiptRuleResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MailFromDomain [MailFromDomainName] <p>The custom MAIL FROM domain that you want the verified identity to use. The MAIL FROM domain must 1) be a subdomain of the verified identity, 2) not be used in a "From" address if the MAIL FROM domain is the destination of email feedback forwarding (for more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/mail-from.html">Amazon SES Developer Guide</a>), and 3) not be used to receive emails. A value of <code>null</code> disables the custom MAIL FROM setting for the identity.</p>
-- * Identity [Identity] <p>The verified identity for which you want to enable or disable the specified custom MAIL FROM domain.</p>
-- * BehaviorOnMXFailure [BehaviorOnMXFailure] <p>The action that you want Amazon SES to take if it cannot successfully read the required MX record when you send an email. If you choose <code>UseDefaultValue</code>, Amazon SES will use amazonses.com (or a subdomain of that) as the MAIL FROM domain. If you choose <code>RejectMessage</code>, Amazon SES will return a <code>MailFromDomainNotVerified</code> error and not send the email.</p> <p>The action specified in <code>BehaviorOnMXFailure</code> is taken when the custom MAIL FROM domain setup is in the <code>Pending</code>, <code>Failed</code>, and <code>TemporaryFailure</code> states.</p>
-- Required key: Identity
-- @return SetIdentityMailFromDomainRequest structure as a key-value pair table
function M.SetIdentityMailFromDomainRequest(args)
	assert(args, "You must provide an argument table when creating SetIdentityMailFromDomainRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MailFromDomain"] = args["MailFromDomain"],
		["Identity"] = args["Identity"],
		["BehaviorOnMXFailure"] = args["BehaviorOnMXFailure"],
	}
	asserts.AssertSetIdentityMailFromDomainRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DimensionName [DimensionName] <p>The name of an Amazon CloudWatch dimension associated with an email sending metric. The name must:</p> <ul> <li> <p>This value can only contain ASCII letters (a-z, A-Z), numbers (0-9), underscores (_), or dashes (-).</p> </li> <li> <p>Contain less than 256 characters.</p> </li> </ul>
-- * DimensionValueSource [DimensionValueSource] <p>The place where Amazon SES finds the value of a dimension to publish to Amazon CloudWatch. If you want Amazon SES to use the message tags that you specify using an <code>X-SES-MESSAGE-TAGS</code> header or a parameter to the <code>SendEmail</code>/<code>SendRawEmail</code> API, choose <code>messageTag</code>. If you want Amazon SES to use your own email headers, choose <code>emailHeader</code>.</p>
-- * DefaultDimensionValue [DefaultDimensionValue] <p>The default value of the dimension that is published to Amazon CloudWatch if you do not provide the value of the dimension when you send an email. The default value must:</p> <ul> <li> <p>This value can only contain ASCII letters (a-z, A-Z), numbers (0-9), underscores (_), or dashes (-).</p> </li> <li> <p>Contain less than 256 characters.</p> </li> </ul>
-- Required key: DimensionName
-- Required key: DimensionValueSource
-- Required key: DefaultDimensionValue
-- @return CloudWatchDimensionConfiguration structure as a key-value pair table
function M.CloudWatchDimensionConfiguration(args)
	assert(args, "You must provide an argument table when creating CloudWatchDimensionConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DimensionName"] = args["DimensionName"],
		["DimensionValueSource"] = args["DimensionValueSource"],
		["DefaultDimensionValue"] = args["DefaultDimensionValue"],
	}
	asserts.AssertCloudWatchDimensionConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Identity [Identity] <p>The identity that is associated with the policy for which the policies will be listed. You can specify an identity by using its name or by using its Amazon Resource Name (ARN). Examples: <code>user@example.com</code>, <code>example.com</code>, <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>.</p> <p>To successfully call this API, you must own the identity.</p>
-- Required key: Identity
-- @return ListIdentityPoliciesRequest structure as a key-value pair table
function M.ListIdentityPoliciesRequest(args)
	assert(args, "You must provide an argument table when creating ListIdentityPoliciesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Identity"] = args["Identity"],
	}
	asserts.AssertListIdentityPoliciesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Rule [ReceiptRule] <p>A data structure that contains the specified receipt rule's name, actions, recipients, domains, enabled status, scan status, and Transport Layer Security (TLS) policy.</p>
-- @return DescribeReceiptRuleResponse structure as a key-value pair table
function M.DescribeReceiptRuleResponse(args)
	assert(args, "You must provide an argument table when creating DescribeReceiptRuleResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Rule"] = args["Rule"],
	}
	asserts.AssertDescribeReceiptRuleResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TemplateMetadata = { ["CreatedTimestamp"] = true, ["Name"] = true, nil }

function asserts.AssertTemplateMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TemplateMetadata to be of type 'table'")
	if struct["CreatedTimestamp"] then asserts.AssertTimestamp(struct["CreatedTimestamp"]) end
	if struct["Name"] then asserts.AssertTemplateName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.TemplateMetadata[k], "TemplateMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TemplateMetadata
-- <p>Contains information about an email template.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CreatedTimestamp [Timestamp] <p>The time and date the template was created.</p>
-- * Name [TemplateName] <p>The name of the template.</p>
-- @return TemplateMetadata structure as a key-value pair table
function M.TemplateMetadata(args)
	assert(args, "You must provide an argument table when creating TemplateMetadata")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CreatedTimestamp"] = args["CreatedTimestamp"],
		["Name"] = args["Name"],
	}
	asserts.AssertTemplateMetadata(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DkimAttributes [DkimAttributes] <p>The DKIM attributes for an email address or a domain.</p>
-- Required key: DkimAttributes
-- @return GetIdentityDkimAttributesResponse structure as a key-value pair table
function M.GetIdentityDkimAttributesResponse(args)
	assert(args, "You must provide an argument table when creating GetIdentityDkimAttributesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DkimAttributes"] = args["DkimAttributes"],
	}
	asserts.AssertGetIdentityDkimAttributesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * After [ReceiptRuleName] <p>The name of an existing rule after which the new rule will be placed. If this parameter is null, the new rule will be inserted at the beginning of the rule list.</p>
-- * RuleSetName [ReceiptRuleSetName] <p>The name of the rule set that the receipt rule will be added to.</p>
-- * Rule [ReceiptRule] <p>A data structure that contains the specified rule's name, actions, recipients, domains, enabled status, scan status, and TLS policy.</p>
-- Required key: RuleSetName
-- Required key: Rule
-- @return CreateReceiptRuleRequest structure as a key-value pair table
function M.CreateReceiptRuleRequest(args)
	assert(args, "You must provide an argument table when creating CreateReceiptRuleRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["After"] = args["After"],
		["RuleSetName"] = args["RuleSetName"],
		["Rule"] = args["Rule"],
	}
	asserts.AssertCreateReceiptRuleRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RuleSetName [ReceiptRuleSetName] <p>The name of the receipt rule set that contains the receipt rule to delete.</p>
-- * RuleName [ReceiptRuleName] <p>The name of the receipt rule to delete.</p>
-- Required key: RuleSetName
-- Required key: RuleName
-- @return DeleteReceiptRuleRequest structure as a key-value pair table
function M.DeleteReceiptRuleRequest(args)
	assert(args, "You must provide an argument table when creating DeleteReceiptRuleRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RuleSetName"] = args["RuleSetName"],
		["RuleName"] = args["RuleName"],
	}
	asserts.AssertDeleteReceiptRuleRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TopicArn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the Amazon SNS topic to notify. An example of an Amazon SNS topic ARN is <code>arn:aws:sns:us-west-2:123456789012:MyTopic</code>. For more information about Amazon SNS topics, see the <a href="http://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html">Amazon SNS Developer Guide</a>.</p>
-- * Encoding [SNSActionEncoding] <p>The encoding to use for the email within the Amazon SNS notification. UTF-8 is easier to use, but may not preserve all special characters when a message was encoded with a different encoding format. Base64 preserves all special characters. The default value is UTF-8.</p>
-- Required key: TopicArn
-- @return SNSAction structure as a key-value pair table
function M.SNSAction(args)
	assert(args, "You must provide an argument table when creating SNSAction")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TopicArn"] = args["TopicArn"],
		["Encoding"] = args["Encoding"],
	}
	asserts.AssertSNSAction(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteIdentityPolicyResponse structure as a key-value pair table
function M.DeleteIdentityPolicyResponse(args)
	assert(args, "You must provide an argument table when creating DeleteIdentityPolicyResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteIdentityPolicyResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConfigurationSetName [ConfigurationSetName] <p>The name of the configuration set to delete.</p>
-- Required key: ConfigurationSetName
-- @return DeleteConfigurationSetRequest structure as a key-value pair table
function M.DeleteConfigurationSetRequest(args)
	assert(args, "You must provide an argument table when creating DeleteConfigurationSetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ConfigurationSetName"] = args["ConfigurationSetName"],
	}
	asserts.AssertDeleteConfigurationSetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ArrivalDate [ArrivalDate] <p>When the message was received by the reporting mail transfer agent (MTA), in <a href="https://www.ietf.org/rfc/rfc0822.txt">RFC 822</a> date-time format.</p>
-- * ReportingMta [ReportingMta] <p>The reporting MTA that attempted to deliver the message, formatted as specified in <a href="https://tools.ietf.org/html/rfc3464">RFC 3464</a> (<code>mta-name-type; mta-name</code>). The default value is <code>dns; inbound-smtp.[region].amazonaws.com</code>.</p>
-- * ExtensionFields [ExtensionFieldList] <p>Additional X-headers to include in the DSN.</p>
-- Required key: ReportingMta
-- @return MessageDsn structure as a key-value pair table
function M.MessageDsn(args)
	assert(args, "You must provide an argument table when creating MessageDsn")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ArrivalDate"] = args["ArrivalDate"],
		["ReportingMta"] = args["ReportingMta"],
		["ExtensionFields"] = args["ExtensionFields"],
	}
	asserts.AssertMessageDsn(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DkimTokens [VerificationTokenList] <p>A set of character strings that represent the domain's identity. If the identity is an email address, the tokens represent the domain of that address.</p> <p>Using these tokens, you will need to create DNS CNAME records that point to DKIM public keys hosted by Amazon SES. Amazon Web Services will eventually detect that you have updated your DNS records; this detection process may take up to 72 hours. Upon successful detection, Amazon SES will be able to DKIM-sign emails originating from that domain.</p> <p>For more information about creating DNS records using DKIM tokens, go to the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim-dns-records.html">Amazon SES Developer Guide</a>.</p>
-- Required key: DkimTokens
-- @return VerifyDomainDkimResponse structure as a key-value pair table
function M.VerifyDomainDkimResponse(args)
	assert(args, "You must provide an argument table when creating VerifyDomainDkimResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DkimTokens"] = args["DkimTokens"],
	}
	asserts.AssertVerifyDomainDkimResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ListReceiptFiltersRequest structure as a key-value pair table
function M.ListReceiptFiltersRequest(args)
	assert(args, "You must provide an argument table when creating ListReceiptFiltersRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertListReceiptFiltersRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConfigurationSetAttributeNames [ConfigurationSetAttributeList] <p>A list of configuration set attributes to return.</p>
-- * ConfigurationSetName [ConfigurationSetName] <p>The name of the configuration set to describe.</p>
-- Required key: ConfigurationSetName
-- @return DescribeConfigurationSetRequest structure as a key-value pair table
function M.DescribeConfigurationSetRequest(args)
	assert(args, "You must provide an argument table when creating DescribeConfigurationSetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ConfigurationSetAttributeNames"] = args["ConfigurationSetAttributeNames"],
		["ConfigurationSetName"] = args["ConfigurationSetName"],
	}
	asserts.AssertDescribeConfigurationSetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetCustomVerificationEmailTemplateRequest = { ["TemplateName"] = true, nil }

function asserts.AssertGetCustomVerificationEmailTemplateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCustomVerificationEmailTemplateRequest to be of type 'table'")
	assert(struct["TemplateName"], "Expected key TemplateName to exist in table")
	if struct["TemplateName"] then asserts.AssertTemplateName(struct["TemplateName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCustomVerificationEmailTemplateRequest[k], "GetCustomVerificationEmailTemplateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCustomVerificationEmailTemplateRequest
-- <p>Represents a request to retrieve an existing custom verification email template.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TemplateName [TemplateName] <p>The name of the custom verification email template that you want to retrieve.</p>
-- Required key: TemplateName
-- @return GetCustomVerificationEmailTemplateRequest structure as a key-value pair table
function M.GetCustomVerificationEmailTemplateRequest(args)
	assert(args, "You must provide an argument table when creating GetCustomVerificationEmailTemplateRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TemplateName"] = args["TemplateName"],
	}
	asserts.AssertGetCustomVerificationEmailTemplateRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return CreateConfigurationSetEventDestinationResponse structure as a key-value pair table
function M.CreateConfigurationSetEventDestinationResponse(args)
	assert(args, "You must provide an argument table when creating CreateConfigurationSetEventDestinationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertCreateConfigurationSetEventDestinationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MessageId [MessageId] <p>The unique message identifier returned from the <code>SendRawEmail</code> action. </p>
-- Required key: MessageId
-- @return SendRawEmailResponse structure as a key-value pair table
function M.SendRawEmailResponse(args)
	assert(args, "You must provide an argument table when creating SendRawEmailResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MessageId"] = args["MessageId"],
	}
	asserts.AssertSendRawEmailResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Identities [IdentityList] <p>A list of identities.</p>
-- Required key: Identities
-- @return GetIdentityVerificationAttributesRequest structure as a key-value pair table
function M.GetIdentityVerificationAttributesRequest(args)
	assert(args, "You must provide an argument table when creating GetIdentityVerificationAttributesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Identities"] = args["Identities"],
	}
	asserts.AssertGetIdentityVerificationAttributesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Filter [ReceiptFilter] <p>A data structure that describes the IP address filter to create, which consists of a name, an IP address range, and whether to allow or block mail from it.</p>
-- Required key: Filter
-- @return CreateReceiptFilterRequest structure as a key-value pair table
function M.CreateReceiptFilterRequest(args)
	assert(args, "You must provide an argument table when creating CreateReceiptFilterRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Filter"] = args["Filter"],
	}
	asserts.AssertCreateReceiptFilterRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>A token indicating that there are additional receipt rule sets available to be listed. Pass this token to successive calls of <code>ListReceiptRuleSets</code> to retrieve up to 100 receipt rule sets at a time.</p>
-- * RuleSets [ReceiptRuleSetsLists] <p>The metadata for the currently active receipt rule set. The metadata consists of the rule set name and the timestamp of when the rule set was created.</p>
-- @return ListReceiptRuleSetsResponse structure as a key-value pair table
function M.ListReceiptRuleSetsResponse(args)
	assert(args, "You must provide an argument table when creating ListReceiptRuleSetsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["RuleSets"] = args["RuleSets"],
	}
	asserts.AssertListReceiptRuleSetsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RuleSetName [ReceiptRuleSetName] <p>The name of the rule set to create. The name must:</p> <ul> <li> <p>This value can only contain ASCII letters (a-z, A-Z), numbers (0-9), underscores (_), or dashes (-).</p> </li> <li> <p>Start and end with a letter or number.</p> </li> <li> <p>Contain less than 64 characters.</p> </li> </ul>
-- * OriginalRuleSetName [ReceiptRuleSetName] <p>The name of the rule set to clone.</p>
-- Required key: RuleSetName
-- Required key: OriginalRuleSetName
-- @return CloneReceiptRuleSetRequest structure as a key-value pair table
function M.CloneReceiptRuleSetRequest(args)
	assert(args, "You must provide an argument table when creating CloneReceiptRuleSetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RuleSetName"] = args["RuleSetName"],
		["OriginalRuleSetName"] = args["OriginalRuleSetName"],
	}
	asserts.AssertCloneReceiptRuleSetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeConfigurationSetResponse = { ["ReputationOptions"] = true, ["EventDestinations"] = true, ["TrackingOptions"] = true, ["ConfigurationSet"] = true, nil }

function asserts.AssertDescribeConfigurationSetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeConfigurationSetResponse to be of type 'table'")
	if struct["ReputationOptions"] then asserts.AssertReputationOptions(struct["ReputationOptions"]) end
	if struct["EventDestinations"] then asserts.AssertEventDestinations(struct["EventDestinations"]) end
	if struct["TrackingOptions"] then asserts.AssertTrackingOptions(struct["TrackingOptions"]) end
	if struct["ConfigurationSet"] then asserts.AssertConfigurationSet(struct["ConfigurationSet"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeConfigurationSetResponse[k], "DescribeConfigurationSetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeConfigurationSetResponse
-- <p>Represents the details of a configuration set. Configuration sets enable you to publish email sending events. For information about using configuration sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReputationOptions [ReputationOptions] <p>An object that represents the reputation settings for the configuration set. </p>
-- * EventDestinations [EventDestinations] <p>A list of event destinations associated with the configuration set. </p>
-- * TrackingOptions [TrackingOptions] <p>The name of the custom open and click tracking domain associated with the configuration set.</p>
-- * ConfigurationSet [ConfigurationSet] <p>The configuration set object associated with the specified configuration set.</p>
-- @return DescribeConfigurationSetResponse structure as a key-value pair table
function M.DescribeConfigurationSetResponse(args)
	assert(args, "You must provide an argument table when creating DescribeConfigurationSetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReputationOptions"] = args["ReputationOptions"],
		["EventDestinations"] = args["EventDestinations"],
		["TrackingOptions"] = args["TrackingOptions"],
		["ConfigurationSet"] = args["ConfigurationSet"],
	}
	asserts.AssertDescribeConfigurationSetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateTemplateRequest = { ["Template"] = true, nil }

function asserts.AssertCreateTemplateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTemplateRequest to be of type 'table'")
	assert(struct["Template"], "Expected key Template to exist in table")
	if struct["Template"] then asserts.AssertTemplate(struct["Template"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateTemplateRequest[k], "CreateTemplateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTemplateRequest
-- <p>Represents a request to create an email template. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html">Amazon SES Developer Guide</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Template [Template] <p>The content of the email, composed of a subject line, an HTML part, and a text-only part.</p>
-- Required key: Template
-- @return CreateTemplateRequest structure as a key-value pair table
function M.CreateTemplateRequest(args)
	assert(args, "You must provide an argument table when creating CreateTemplateRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Template"] = args["Template"],
	}
	asserts.AssertCreateTemplateRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return SetActiveReceiptRuleSetResponse structure as a key-value pair table
function M.SetActiveReceiptRuleSetResponse(args)
	assert(args, "You must provide an argument table when creating SetActiveReceiptRuleSetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertSetActiveReceiptRuleSetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RuleSetName [ReceiptRuleSetName] <p>The name of the rule set to create. The name must:</p> <ul> <li> <p>This value can only contain ASCII letters (a-z, A-Z), numbers (0-9), underscores (_), or dashes (-).</p> </li> <li> <p>Start and end with a letter or number.</p> </li> <li> <p>Contain less than 64 characters.</p> </li> </ul>
-- Required key: RuleSetName
-- @return CreateReceiptRuleSetRequest structure as a key-value pair table
function M.CreateReceiptRuleSetRequest(args)
	assert(args, "You must provide an argument table when creating CreateReceiptRuleSetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RuleSetName"] = args["RuleSetName"],
	}
	asserts.AssertCreateReceiptRuleSetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return PutIdentityPolicyResponse structure as a key-value pair table
function M.PutIdentityPolicyResponse(args)
	assert(args, "You must provide an argument table when creating PutIdentityPolicyResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertPutIdentityPolicyResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Data [RawMessageData] <p>The raw data of the message. This data needs to base64-encoded if you are accessing Amazon SES directly through the HTTPS interface. If you are accessing Amazon SES using an AWS SDK, the SDK takes care of the base 64-encoding for you. In all cases, the client must ensure that the message format complies with Internet email standards regarding email header fields, MIME types, and MIME encoding.</p> <p>The To:, CC:, and BCC: headers in the raw message can contain a group list.</p> <p>If you are using <code>SendRawEmail</code> with sending authorization, you can include X-headers in the raw message to specify the "Source," "From," and "Return-Path" addresses. For more information, see the documentation for <code>SendRawEmail</code>. </p> <important> <p>Do not include these X-headers in the DKIM signature, because they are removed by Amazon SES before sending the email.</p> </important> <p>For more information, go to the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-email-raw.html">Amazon SES Developer Guide</a>.</p>
-- Required key: Data
-- @return RawMessage structure as a key-value pair table
function M.RawMessage(args)
	assert(args, "You must provide an argument table when creating RawMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Data"] = args["Data"],
	}
	asserts.AssertRawMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MessageId [MessageId] <p>The unique message identifier returned from the <code>SendEmail</code> action. </p>
-- Required key: MessageId
-- @return SendEmailResponse structure as a key-value pair table
function M.SendEmailResponse(args)
	assert(args, "You must provide an argument table when creating SendEmailResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MessageId"] = args["MessageId"],
	}
	asserts.AssertSendEmailResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InvocationType [InvocationType] <p>The invocation type of the AWS Lambda function. An invocation type of <code>RequestResponse</code> means that the execution of the function will immediately result in a response, and a value of <code>Event</code> means that the function will be invoked asynchronously. The default value is <code>Event</code>. For information about AWS Lambda invocation types, see the <a href="http://docs.aws.amazon.com/lambda/latest/dg/API_Invoke.html">AWS Lambda Developer Guide</a>.</p> <important> <p>There is a 30-second timeout on <code>RequestResponse</code> invocations. You should use <code>Event</code> invocation in most cases. Use <code>RequestResponse</code> only when you want to make a mail flow decision, such as whether to stop the receipt rule or the receipt rule set.</p> </important>
-- * FunctionArn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the AWS Lambda function. An example of an AWS Lambda function ARN is <code>arn:aws:lambda:us-west-2:account-id:function:MyFunction</code>. For more information about AWS Lambda, see the <a href="http://docs.aws.amazon.com/lambda/latest/dg/welcome.html">AWS Lambda Developer Guide</a>.</p>
-- * TopicArn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the Amazon SNS topic to notify when the Lambda action is taken. An example of an Amazon SNS topic ARN is <code>arn:aws:sns:us-west-2:123456789012:MyTopic</code>. For more information about Amazon SNS topics, see the <a href="http://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html">Amazon SNS Developer Guide</a>.</p>
-- Required key: FunctionArn
-- @return LambdaAction structure as a key-value pair table
function M.LambdaAction(args)
	assert(args, "You must provide an argument table when creating LambdaAction")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InvocationType"] = args["InvocationType"],
		["FunctionArn"] = args["FunctionArn"],
		["TopicArn"] = args["TopicArn"],
	}
	asserts.AssertLambdaAction(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CreatedTimestamp [Timestamp] <p>The date and time the receipt rule set was created.</p>
-- * Name [ReceiptRuleSetName] <p>The name of the receipt rule set. The name must:</p> <ul> <li> <p>This value can only contain ASCII letters (a-z, A-Z), numbers (0-9), underscores (_), or dashes (-).</p> </li> <li> <p>Start and end with a letter or number.</p> </li> <li> <p>Contain less than 64 characters.</p> </li> </ul>
-- @return ReceiptRuleSetMetadata structure as a key-value pair table
function M.ReceiptRuleSetMetadata(args)
	assert(args, "You must provide an argument table when creating ReceiptRuleSetMetadata")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CreatedTimestamp"] = args["CreatedTimestamp"],
		["Name"] = args["Name"],
	}
	asserts.AssertReceiptRuleSetMetadata(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return SetIdentityMailFromDomainResponse structure as a key-value pair table
function M.SetIdentityMailFromDomainResponse(args)
	assert(args, "You must provide an argument table when creating SetIdentityMailFromDomainResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertSetIdentityMailFromDomainResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * After [ReceiptRuleName] <p>The name of the receipt rule after which to place the specified receipt rule.</p>
-- * RuleSetName [ReceiptRuleSetName] <p>The name of the receipt rule set that contains the receipt rule to reposition.</p>
-- * RuleName [ReceiptRuleName] <p>The name of the receipt rule to reposition.</p>
-- Required key: RuleSetName
-- Required key: RuleName
-- @return SetReceiptRulePositionRequest structure as a key-value pair table
function M.SetReceiptRulePositionRequest(args)
	assert(args, "You must provide an argument table when creating SetReceiptRulePositionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["After"] = args["After"],
		["RuleSetName"] = args["RuleSetName"],
		["RuleName"] = args["RuleName"],
	}
	asserts.AssertSetReceiptRulePositionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SNSDestination = { ["TopicARN"] = true, nil }

function asserts.AssertSNSDestination(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SNSDestination to be of type 'table'")
	assert(struct["TopicARN"], "Expected key TopicARN to exist in table")
	if struct["TopicARN"] then asserts.AssertAmazonResourceName(struct["TopicARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.SNSDestination[k], "SNSDestination contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SNSDestination
-- <p>Contains the topic ARN associated with an Amazon Simple Notification Service (Amazon SNS) event destination.</p> <p>Event destinations, such as Amazon SNS, are associated with configuration sets, which enable you to publish email sending events. For information about using configuration sets, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html">Amazon SES Developer Guide</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TopicARN [AmazonResourceName] <p>The ARN of the Amazon SNS topic that email sending events will be published to. An example of an Amazon SNS topic ARN is <code>arn:aws:sns:us-west-2:123456789012:MyTopic</code>. For more information about Amazon SNS topics, see the <a href="http://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html">Amazon SNS Developer Guide</a>.</p>
-- Required key: TopicARN
-- @return SNSDestination structure as a key-value pair table
function M.SNSDestination(args)
	assert(args, "You must provide an argument table when creating SNSDestination")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TopicARN"] = args["TopicARN"],
	}
	asserts.AssertSNSDestination(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CustomVerificationEmailTemplate = { ["FromEmailAddress"] = true, ["FailureRedirectionURL"] = true, ["TemplateSubject"] = true, ["SuccessRedirectionURL"] = true, ["TemplateName"] = true, nil }

function asserts.AssertCustomVerificationEmailTemplate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CustomVerificationEmailTemplate to be of type 'table'")
	if struct["FromEmailAddress"] then asserts.AssertFromAddress(struct["FromEmailAddress"]) end
	if struct["FailureRedirectionURL"] then asserts.AssertFailureRedirectionURL(struct["FailureRedirectionURL"]) end
	if struct["TemplateSubject"] then asserts.AssertSubject(struct["TemplateSubject"]) end
	if struct["SuccessRedirectionURL"] then asserts.AssertSuccessRedirectionURL(struct["SuccessRedirectionURL"]) end
	if struct["TemplateName"] then asserts.AssertTemplateName(struct["TemplateName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CustomVerificationEmailTemplate[k], "CustomVerificationEmailTemplate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CustomVerificationEmailTemplate
-- <p>Contains information about a custom verification email template.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FromEmailAddress [FromAddress] <p>The email address that the custom verification email is sent from.</p>
-- * FailureRedirectionURL [FailureRedirectionURL] <p>The URL that the recipient of the verification email is sent to if his or her address is not successfully verified.</p>
-- * TemplateSubject [Subject] <p>The subject line of the custom verification email.</p>
-- * SuccessRedirectionURL [SuccessRedirectionURL] <p>The URL that the recipient of the verification email is sent to if his or her address is successfully verified.</p>
-- * TemplateName [TemplateName] <p>The name of the custom verification email template.</p>
-- @return CustomVerificationEmailTemplate structure as a key-value pair table
function M.CustomVerificationEmailTemplate(args)
	assert(args, "You must provide an argument table when creating CustomVerificationEmailTemplate")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FromEmailAddress"] = args["FromEmailAddress"],
		["FailureRedirectionURL"] = args["FailureRedirectionURL"],
		["TemplateSubject"] = args["TemplateSubject"],
		["SuccessRedirectionURL"] = args["SuccessRedirectionURL"],
		["TemplateName"] = args["TemplateName"],
	}
	asserts.AssertCustomVerificationEmailTemplate(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Policies [PolicyMap] <p>A map of policy names to policies.</p>
-- Required key: Policies
-- @return GetIdentityPoliciesResponse structure as a key-value pair table
function M.GetIdentityPoliciesResponse(args)
	assert(args, "You must provide an argument table when creating GetIdentityPoliciesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Policies"] = args["Policies"],
	}
	asserts.AssertGetIdentityPoliciesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FilterName [ReceiptFilterName] <p>The name of the IP address filter to delete.</p>
-- Required key: FilterName
-- @return DeleteReceiptFilterRequest structure as a key-value pair table
function M.DeleteReceiptFilterRequest(args)
	assert(args, "You must provide an argument table when creating DeleteReceiptFilterRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FilterName"] = args["FilterName"],
	}
	asserts.AssertDeleteReceiptFilterRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateCustomVerificationEmailTemplateRequest = { ["SuccessRedirectionURL"] = true, ["TemplateName"] = true, ["FromEmailAddress"] = true, ["TemplateSubject"] = true, ["FailureRedirectionURL"] = true, ["TemplateContent"] = true, nil }

function asserts.AssertCreateCustomVerificationEmailTemplateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCustomVerificationEmailTemplateRequest to be of type 'table'")
	assert(struct["TemplateName"], "Expected key TemplateName to exist in table")
	assert(struct["FromEmailAddress"], "Expected key FromEmailAddress to exist in table")
	assert(struct["TemplateSubject"], "Expected key TemplateSubject to exist in table")
	assert(struct["TemplateContent"], "Expected key TemplateContent to exist in table")
	assert(struct["SuccessRedirectionURL"], "Expected key SuccessRedirectionURL to exist in table")
	assert(struct["FailureRedirectionURL"], "Expected key FailureRedirectionURL to exist in table")
	if struct["SuccessRedirectionURL"] then asserts.AssertSuccessRedirectionURL(struct["SuccessRedirectionURL"]) end
	if struct["TemplateName"] then asserts.AssertTemplateName(struct["TemplateName"]) end
	if struct["FromEmailAddress"] then asserts.AssertFromAddress(struct["FromEmailAddress"]) end
	if struct["TemplateSubject"] then asserts.AssertSubject(struct["TemplateSubject"]) end
	if struct["FailureRedirectionURL"] then asserts.AssertFailureRedirectionURL(struct["FailureRedirectionURL"]) end
	if struct["TemplateContent"] then asserts.AssertTemplateContent(struct["TemplateContent"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateCustomVerificationEmailTemplateRequest[k], "CreateCustomVerificationEmailTemplateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCustomVerificationEmailTemplateRequest
-- <p>Represents a request to create a custom verification email template.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SuccessRedirectionURL [SuccessRedirectionURL] <p>The URL that the recipient of the verification email is sent to if his or her address is successfully verified.</p>
-- * TemplateName [TemplateName] <p>The name of the custom verification email template.</p>
-- * FromEmailAddress [FromAddress] <p>The email address that the custom verification email is sent from.</p>
-- * TemplateSubject [Subject] <p>The subject line of the custom verification email.</p>
-- * FailureRedirectionURL [FailureRedirectionURL] <p>The URL that the recipient of the verification email is sent to if his or her address is not successfully verified.</p>
-- * TemplateContent [TemplateContent] <p>The content of the custom verification email. The total size of the email must be less than 10 MB. The message body may contain HTML, with some limitations. For more information, see <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/custom-verification-emails.html#custom-verification-emails-faq">Custom Verification Email Frequently Asked Questions</a> in the <i>Amazon SES Developer Guide</i>.</p>
-- Required key: TemplateName
-- Required key: FromEmailAddress
-- Required key: TemplateSubject
-- Required key: TemplateContent
-- Required key: SuccessRedirectionURL
-- Required key: FailureRedirectionURL
-- @return CreateCustomVerificationEmailTemplateRequest structure as a key-value pair table
function M.CreateCustomVerificationEmailTemplateRequest(args)
	assert(args, "You must provide an argument table when creating CreateCustomVerificationEmailTemplateRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SuccessRedirectionURL"] = args["SuccessRedirectionURL"],
		["TemplateName"] = args["TemplateName"],
		["FromEmailAddress"] = args["FromEmailAddress"],
		["TemplateSubject"] = args["TemplateSubject"],
		["FailureRedirectionURL"] = args["FailureRedirectionURL"],
		["TemplateContent"] = args["TemplateContent"],
	}
	asserts.AssertCreateCustomVerificationEmailTemplateRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateCustomVerificationEmailTemplateRequest = { ["SuccessRedirectionURL"] = true, ["TemplateName"] = true, ["FromEmailAddress"] = true, ["TemplateSubject"] = true, ["FailureRedirectionURL"] = true, ["TemplateContent"] = true, nil }

function asserts.AssertUpdateCustomVerificationEmailTemplateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateCustomVerificationEmailTemplateRequest to be of type 'table'")
	assert(struct["TemplateName"], "Expected key TemplateName to exist in table")
	if struct["SuccessRedirectionURL"] then asserts.AssertSuccessRedirectionURL(struct["SuccessRedirectionURL"]) end
	if struct["TemplateName"] then asserts.AssertTemplateName(struct["TemplateName"]) end
	if struct["FromEmailAddress"] then asserts.AssertFromAddress(struct["FromEmailAddress"]) end
	if struct["TemplateSubject"] then asserts.AssertSubject(struct["TemplateSubject"]) end
	if struct["FailureRedirectionURL"] then asserts.AssertFailureRedirectionURL(struct["FailureRedirectionURL"]) end
	if struct["TemplateContent"] then asserts.AssertTemplateContent(struct["TemplateContent"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateCustomVerificationEmailTemplateRequest[k], "UpdateCustomVerificationEmailTemplateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateCustomVerificationEmailTemplateRequest
-- <p>Represents a request to update an existing custom verification email template.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SuccessRedirectionURL [SuccessRedirectionURL] <p>The URL that the recipient of the verification email is sent to if his or her address is successfully verified.</p>
-- * TemplateName [TemplateName] <p>The name of the custom verification email template that you want to update.</p>
-- * FromEmailAddress [FromAddress] <p>The email address that the custom verification email is sent from.</p>
-- * TemplateSubject [Subject] <p>The subject line of the custom verification email.</p>
-- * FailureRedirectionURL [FailureRedirectionURL] <p>The URL that the recipient of the verification email is sent to if his or her address is not successfully verified.</p>
-- * TemplateContent [TemplateContent] <p>The content of the custom verification email. The total size of the email must be less than 10 MB. The message body may contain HTML, with some limitations. For more information, see <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/custom-verification-emails.html#custom-verification-emails-faq">Custom Verification Email Frequently Asked Questions</a> in the <i>Amazon SES Developer Guide</i>.</p>
-- Required key: TemplateName
-- @return UpdateCustomVerificationEmailTemplateRequest structure as a key-value pair table
function M.UpdateCustomVerificationEmailTemplateRequest(args)
	assert(args, "You must provide an argument table when creating UpdateCustomVerificationEmailTemplateRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SuccessRedirectionURL"] = args["SuccessRedirectionURL"],
		["TemplateName"] = args["TemplateName"],
		["FromEmailAddress"] = args["FromEmailAddress"],
		["TemplateSubject"] = args["TemplateSubject"],
		["FailureRedirectionURL"] = args["FailureRedirectionURL"],
		["TemplateContent"] = args["TemplateContent"],
	}
	asserts.AssertUpdateCustomVerificationEmailTemplateRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReputationOptions = { ["SendingEnabled"] = true, ["LastFreshStart"] = true, ["ReputationMetricsEnabled"] = true, nil }

function asserts.AssertReputationOptions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReputationOptions to be of type 'table'")
	if struct["SendingEnabled"] then asserts.AssertEnabled(struct["SendingEnabled"]) end
	if struct["LastFreshStart"] then asserts.AssertLastFreshStart(struct["LastFreshStart"]) end
	if struct["ReputationMetricsEnabled"] then asserts.AssertEnabled(struct["ReputationMetricsEnabled"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReputationOptions[k], "ReputationOptions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReputationOptions
-- <p>Contains information about the reputation settings for a configuration set.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SendingEnabled [Enabled] <p>Describes whether email sending is enabled or disabled for the configuration set. If the value is <code>true</code>, then Amazon SES will send emails that use the configuration set. If the value is <code>false</code>, Amazon SES will not send emails that use the configuration set. The default value is <code>true</code>. You can change this setting using <a>UpdateConfigurationSetSendingEnabled</a>.</p>
-- * LastFreshStart [LastFreshStart] <p>The date and time at which the reputation metrics for the configuration set were last reset. Resetting these metrics is known as a <i>fresh start</i>.</p> <p>When you disable email sending for a configuration set using <a>UpdateConfigurationSetSendingEnabled</a> and later re-enable it, the reputation metrics for the configuration set (but not for the entire Amazon SES account) are reset.</p> <p>If email sending for the configuration set has never been disabled and later re-enabled, the value of this attribute is <code>null</code>.</p>
-- * ReputationMetricsEnabled [Enabled] <p>Describes whether or not Amazon SES publishes reputation metrics for the configuration set, such as bounce and complaint rates, to Amazon CloudWatch.</p> <p>If the value is <code>true</code>, reputation metrics are published. If the value is <code>false</code>, reputation metrics are not published. The default value is <code>false</code>.</p>
-- @return ReputationOptions structure as a key-value pair table
function M.ReputationOptions(args)
	assert(args, "You must provide an argument table when creating ReputationOptions")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SendingEnabled"] = args["SendingEnabled"],
		["LastFreshStart"] = args["LastFreshStart"],
		["ReputationMetricsEnabled"] = args["ReputationMetricsEnabled"],
	}
	asserts.AssertReputationOptions(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateConfigurationSetTrackingOptionsRequest = { ["TrackingOptions"] = true, ["ConfigurationSetName"] = true, nil }

function asserts.AssertCreateConfigurationSetTrackingOptionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateConfigurationSetTrackingOptionsRequest to be of type 'table'")
	assert(struct["ConfigurationSetName"], "Expected key ConfigurationSetName to exist in table")
	assert(struct["TrackingOptions"], "Expected key TrackingOptions to exist in table")
	if struct["TrackingOptions"] then asserts.AssertTrackingOptions(struct["TrackingOptions"]) end
	if struct["ConfigurationSetName"] then asserts.AssertConfigurationSetName(struct["ConfigurationSetName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateConfigurationSetTrackingOptionsRequest[k], "CreateConfigurationSetTrackingOptionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateConfigurationSetTrackingOptionsRequest
-- <p>Represents a request to create an open and click tracking option object in a configuration set. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TrackingOptions [TrackingOptions] 
-- * ConfigurationSetName [ConfigurationSetName] <p>The name of the configuration set that the tracking options should be associated with.</p>
-- Required key: ConfigurationSetName
-- Required key: TrackingOptions
-- @return CreateConfigurationSetTrackingOptionsRequest structure as a key-value pair table
function M.CreateConfigurationSetTrackingOptionsRequest(args)
	assert(args, "You must provide an argument table when creating CreateConfigurationSetTrackingOptionsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TrackingOptions"] = args["TrackingOptions"],
		["ConfigurationSetName"] = args["ConfigurationSetName"],
	}
	asserts.AssertCreateConfigurationSetTrackingOptionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Policy [ReceiptFilterPolicy] <p>Indicates whether to block or allow incoming mail from the specified IP addresses.</p>
-- * Cidr [Cidr] <p>A single IP address or a range of IP addresses that you want to block or allow, specified in Classless Inter-Domain Routing (CIDR) notation. An example of a single email address is 10.0.0.1. An example of a range of IP addresses is 10.0.0.1/24. For more information about CIDR notation, see <a href="https://tools.ietf.org/html/rfc2317">RFC 2317</a>.</p>
-- Required key: Policy
-- Required key: Cidr
-- @return ReceiptIpFilter structure as a key-value pair table
function M.ReceiptIpFilter(args)
	assert(args, "You must provide an argument table when creating ReceiptIpFilter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Policy"] = args["Policy"],
		["Cidr"] = args["Cidr"],
	}
	asserts.AssertReceiptIpFilter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DkimTokens [VerificationTokenList] <p>A set of character strings that represent the domain's identity. Using these tokens, you will need to create DNS CNAME records that point to DKIM public keys hosted by Amazon SES. Amazon Web Services will eventually detect that you have updated your DNS records; this detection process may take up to 72 hours. Upon successful detection, Amazon SES will be able to DKIM-sign email originating from that domain. (This only applies to domain identities, not email address identities.)</p> <p>For more information about creating DNS records using DKIM tokens, go to the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim-dns-records.html">Amazon SES Developer Guide</a>.</p>
-- * DkimEnabled [Enabled] <p>True if DKIM signing is enabled for email sent from the identity; false otherwise. The default value is true.</p>
-- * DkimVerificationStatus [VerificationStatus] <p>Describes whether Amazon SES has successfully verified the DKIM DNS records (tokens) published in the domain name's DNS. (This only applies to domain identities, not email address identities.)</p>
-- Required key: DkimEnabled
-- Required key: DkimVerificationStatus
-- @return IdentityDkimAttributes structure as a key-value pair table
function M.IdentityDkimAttributes(args)
	assert(args, "You must provide an argument table when creating IdentityDkimAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DkimTokens"] = args["DkimTokens"],
		["DkimEnabled"] = args["DkimEnabled"],
		["DkimVerificationStatus"] = args["DkimVerificationStatus"],
	}
	asserts.AssertIdentityDkimAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HeaderName [HeaderName] <p>The name of the header to add. Must be between 1 and 50 characters, inclusive, and consist of alphanumeric (a-z, A-Z, 0-9) characters and dashes only.</p>
-- * HeaderValue [HeaderValue] <p>Must be less than 2048 characters, and must not contain newline characters ("\r" or "\n").</p>
-- Required key: HeaderName
-- Required key: HeaderValue
-- @return AddHeaderAction structure as a key-value pair table
function M.AddHeaderAction(args)
	assert(args, "You must provide an argument table when creating AddHeaderAction")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HeaderName"] = args["HeaderName"],
		["HeaderValue"] = args["HeaderValue"],
	}
	asserts.AssertAddHeaderAction(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Charset [Charset] <p>The character set of the content.</p>
-- * Data [MessageData] <p>The textual data of the content.</p>
-- Required key: Data
-- @return Content structure as a key-value pair table
function M.Content(args)
	assert(args, "You must provide an argument table when creating Content")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Charset"] = args["Charset"],
		["Data"] = args["Data"],
	}
	asserts.AssertContent(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeliveryStreamARN [AmazonResourceName] <p>The ARN of the Amazon Kinesis Firehose stream that email sending events should be published to.</p>
-- * IAMRoleARN [AmazonResourceName] <p>The ARN of the IAM role under which Amazon SES publishes email sending events to the Amazon Kinesis Firehose stream.</p>
-- Required key: IAMRoleARN
-- Required key: DeliveryStreamARN
-- @return KinesisFirehoseDestination structure as a key-value pair table
function M.KinesisFirehoseDestination(args)
	assert(args, "You must provide an argument table when creating KinesisFirehoseDestination")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DeliveryStreamARN"] = args["DeliveryStreamARN"],
		["IAMRoleARN"] = args["IAMRoleARN"],
	}
	asserts.AssertKinesisFirehoseDestination(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateConfigurationSetTrackingOptionsResponse = { nil }

function asserts.AssertCreateConfigurationSetTrackingOptionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateConfigurationSetTrackingOptionsResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CreateConfigurationSetTrackingOptionsResponse[k], "CreateConfigurationSetTrackingOptionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateConfigurationSetTrackingOptionsResponse
-- <p>An empty element returned on a successful request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return CreateConfigurationSetTrackingOptionsResponse structure as a key-value pair table
function M.CreateConfigurationSetTrackingOptionsResponse(args)
	assert(args, "You must provide an argument table when creating CreateConfigurationSetTrackingOptionsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertCreateConfigurationSetTrackingOptionsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RuleSetName [ReceiptRuleSetName] <p>The name of the receipt rule set that the receipt rule belongs to.</p>
-- * RuleName [ReceiptRuleName] <p>The name of the receipt rule.</p>
-- Required key: RuleSetName
-- Required key: RuleName
-- @return DescribeReceiptRuleRequest structure as a key-value pair table
function M.DescribeReceiptRuleRequest(args)
	assert(args, "You must provide an argument table when creating DescribeReceiptRuleRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RuleSetName"] = args["RuleSetName"],
		["RuleName"] = args["RuleName"],
	}
	asserts.AssertDescribeReceiptRuleRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NotificationAttributes [NotificationAttributes] <p>A map of Identity to IdentityNotificationAttributes.</p>
-- Required key: NotificationAttributes
-- @return GetIdentityNotificationAttributesResponse structure as a key-value pair table
function M.GetIdentityNotificationAttributesResponse(args)
	assert(args, "You must provide an argument table when creating GetIdentityNotificationAttributesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NotificationAttributes"] = args["NotificationAttributes"],
	}
	asserts.AssertGetIdentityNotificationAttributesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Rules [ReceiptRulesList] <p>The receipt rules that belong to the active rule set.</p>
-- * Metadata [ReceiptRuleSetMetadata] <p>The metadata for the currently active receipt rule set. The metadata consists of the rule set name and a timestamp of when the rule set was created.</p>
-- @return DescribeActiveReceiptRuleSetResponse structure as a key-value pair table
function M.DescribeActiveReceiptRuleSetResponse(args)
	assert(args, "You must provide an argument table when creating DescribeActiveReceiptRuleSetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Rules"] = args["Rules"],
		["Metadata"] = args["Metadata"],
	}
	asserts.AssertDescribeActiveReceiptRuleSetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Max24HourSend [Max24HourSend] <p>The maximum number of emails the user is allowed to send in a 24-hour interval. A value of -1 signifies an unlimited quota.</p>
-- * SentLast24Hours [SentLast24Hours] <p>The number of emails sent during the previous 24 hours.</p>
-- * MaxSendRate [MaxSendRate] <p>The maximum number of emails that Amazon SES can accept from the user's account per second.</p> <note> <p>The rate at which Amazon SES accepts the user's messages might be less than the maximum send rate.</p> </note>
-- @return GetSendQuotaResponse structure as a key-value pair table
function M.GetSendQuotaResponse(args)
	assert(args, "You must provide an argument table when creating GetSendQuotaResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Max24HourSend"] = args["Max24HourSend"],
		["SentLast24Hours"] = args["SentLast24Hours"],
		["MaxSendRate"] = args["MaxSendRate"],
	}
	asserts.AssertGetSendQuotaResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetAccountSendingEnabledResponse = { ["Enabled"] = true, nil }

function asserts.AssertGetAccountSendingEnabledResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAccountSendingEnabledResponse to be of type 'table'")
	if struct["Enabled"] then asserts.AssertEnabled(struct["Enabled"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetAccountSendingEnabledResponse[k], "GetAccountSendingEnabledResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAccountSendingEnabledResponse
-- <p>Represents a request to return the email sending status for your Amazon SES account in the current AWS Region.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Enabled [Enabled] <p>Describes whether email sending is enabled or disabled for your Amazon SES account in the current AWS Region.</p>
-- @return GetAccountSendingEnabledResponse structure as a key-value pair table
function M.GetAccountSendingEnabledResponse(args)
	assert(args, "You must provide an argument table when creating GetAccountSendingEnabledResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Enabled"] = args["Enabled"],
	}
	asserts.AssertGetAccountSendingEnabledResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RuleSetName [ReceiptRuleSetName] <p>The name of the receipt rule set to make active. Setting this value to null disables all email receiving.</p>
-- @return SetActiveReceiptRuleSetRequest structure as a key-value pair table
function M.SetActiveReceiptRuleSetRequest(args)
	assert(args, "You must provide an argument table when creating SetActiveReceiptRuleSetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RuleSetName"] = args["RuleSetName"],
	}
	asserts.AssertSetActiveReceiptRuleSetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicyName [PolicyName] <p>The name of the policy to be deleted.</p>
-- * Identity [Identity] <p>The identity that is associated with the policy that you want to delete. You can specify the identity by using its name or by using its Amazon Resource Name (ARN). Examples: <code>user@example.com</code>, <code>example.com</code>, <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>.</p> <p>To successfully call this API, you must own the identity.</p>
-- Required key: Identity
-- Required key: PolicyName
-- @return DeleteIdentityPolicyRequest structure as a key-value pair table
function M.DeleteIdentityPolicyRequest(args)
	assert(args, "You must provide an argument table when creating DeleteIdentityPolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PolicyName"] = args["PolicyName"],
		["Identity"] = args["Identity"],
	}
	asserts.AssertDeleteIdentityPolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return CreateConfigurationSetResponse structure as a key-value pair table
function M.CreateConfigurationSetResponse(args)
	assert(args, "You must provide an argument table when creating CreateConfigurationSetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertCreateConfigurationSetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EventDestinationName [EventDestinationName] <p>The name of the event destination to delete.</p>
-- * ConfigurationSetName [ConfigurationSetName] <p>The name of the configuration set from which to delete the event destination.</p>
-- Required key: ConfigurationSetName
-- Required key: EventDestinationName
-- @return DeleteConfigurationSetEventDestinationRequest structure as a key-value pair table
function M.DeleteConfigurationSetEventDestinationRequest(args)
	assert(args, "You must provide an argument table when creating DeleteConfigurationSetEventDestinationRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EventDestinationName"] = args["EventDestinationName"],
		["ConfigurationSetName"] = args["ConfigurationSetName"],
	}
	asserts.AssertDeleteConfigurationSetEventDestinationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IdentityType [IdentityType] <p>The type of the identities to list. Possible values are "EmailAddress" and "Domain". If this parameter is omitted, then all identities will be listed.</p>
-- * NextToken [NextToken] <p>The token to use for pagination.</p>
-- * MaxItems [MaxItems] <p>The maximum number of identities per page. Possible values are 1-1000 inclusive.</p>
-- @return ListIdentitiesRequest structure as a key-value pair table
function M.ListIdentitiesRequest(args)
	assert(args, "You must provide an argument table when creating ListIdentitiesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IdentityType"] = args["IdentityType"],
		["NextToken"] = args["NextToken"],
		["MaxItems"] = args["MaxItems"],
	}
	asserts.AssertListIdentitiesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BounceTopic [NotificationTopic] <p>The Amazon Resource Name (ARN) of the Amazon SNS topic where Amazon SES will publish bounce notifications.</p>
-- * HeadersInBounceNotificationsEnabled [Enabled] <p>Describes whether Amazon SES includes the original email headers in Amazon SNS notifications of type <code>Bounce</code>. A value of <code>true</code> specifies that Amazon SES will include headers in bounce notifications, and a value of <code>false</code> specifies that Amazon SES will not include headers in bounce notifications.</p>
-- * DeliveryTopic [NotificationTopic] <p>The Amazon Resource Name (ARN) of the Amazon SNS topic where Amazon SES will publish delivery notifications.</p>
-- * HeadersInDeliveryNotificationsEnabled [Enabled] <p>Describes whether Amazon SES includes the original email headers in Amazon SNS notifications of type <code>Delivery</code>. A value of <code>true</code> specifies that Amazon SES will include headers in delivery notifications, and a value of <code>false</code> specifies that Amazon SES will not include headers in delivery notifications.</p>
-- * ComplaintTopic [NotificationTopic] <p>The Amazon Resource Name (ARN) of the Amazon SNS topic where Amazon SES will publish complaint notifications.</p>
-- * HeadersInComplaintNotificationsEnabled [Enabled] <p>Describes whether Amazon SES includes the original email headers in Amazon SNS notifications of type <code>Complaint</code>. A value of <code>true</code> specifies that Amazon SES will include headers in complaint notifications, and a value of <code>false</code> specifies that Amazon SES will not include headers in complaint notifications.</p>
-- * ForwardingEnabled [Enabled] <p>Describes whether Amazon SES will forward bounce and complaint notifications as email. <code>true</code> indicates that Amazon SES will forward bounce and complaint notifications as email, while <code>false</code> indicates that bounce and complaint notifications will be published only to the specified bounce and complaint Amazon SNS topics.</p>
-- Required key: BounceTopic
-- Required key: ComplaintTopic
-- Required key: DeliveryTopic
-- Required key: ForwardingEnabled
-- @return IdentityNotificationAttributes structure as a key-value pair table
function M.IdentityNotificationAttributes(args)
	assert(args, "You must provide an argument table when creating IdentityNotificationAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["BounceTopic"] = args["BounceTopic"],
		["HeadersInBounceNotificationsEnabled"] = args["HeadersInBounceNotificationsEnabled"],
		["DeliveryTopic"] = args["DeliveryTopic"],
		["HeadersInDeliveryNotificationsEnabled"] = args["HeadersInDeliveryNotificationsEnabled"],
		["ComplaintTopic"] = args["ComplaintTopic"],
		["HeadersInComplaintNotificationsEnabled"] = args["HeadersInComplaintNotificationsEnabled"],
		["ForwardingEnabled"] = args["ForwardingEnabled"],
	}
	asserts.AssertIdentityNotificationAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteTemplateRequest = { ["TemplateName"] = true, nil }

function asserts.AssertDeleteTemplateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTemplateRequest to be of type 'table'")
	assert(struct["TemplateName"], "Expected key TemplateName to exist in table")
	if struct["TemplateName"] then asserts.AssertTemplateName(struct["TemplateName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteTemplateRequest[k], "DeleteTemplateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTemplateRequest
-- <p>Represents a request to delete an email template. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html">Amazon SES Developer Guide</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TemplateName [TemplateName] <p>The name of the template to be deleted.</p>
-- Required key: TemplateName
-- @return DeleteTemplateRequest structure as a key-value pair table
function M.DeleteTemplateRequest(args)
	assert(args, "You must provide an argument table when creating DeleteTemplateRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TemplateName"] = args["TemplateName"],
	}
	asserts.AssertDeleteTemplateRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TrackingOptions = { ["CustomRedirectDomain"] = true, nil }

function asserts.AssertTrackingOptions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TrackingOptions to be of type 'table'")
	if struct["CustomRedirectDomain"] then asserts.AssertCustomRedirectDomain(struct["CustomRedirectDomain"]) end
	for k,_ in pairs(struct) do
		assert(keys.TrackingOptions[k], "TrackingOptions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TrackingOptions
-- <p>A domain that is used to redirect email recipients to an Amazon SES-operated domain. This domain captures open and click events generated by Amazon SES emails.</p> <p>For more information, see <a href="ses/latest/DeveloperGuide/configure-custom-open-click-domains.html">Configuring Custom Domains to Handle Open and Click Tracking</a> in the <i>Amazon SES Developer Guide</i>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CustomRedirectDomain [CustomRedirectDomain] <p>The custom subdomain that will be used to redirect email recipients to the Amazon SES event tracking domain.</p>
-- @return TrackingOptions structure as a key-value pair table
function M.TrackingOptions(args)
	assert(args, "You must provide an argument table when creating TrackingOptions")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CustomRedirectDomain"] = args["CustomRedirectDomain"],
	}
	asserts.AssertTrackingOptions(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteCustomVerificationEmailTemplateRequest = { ["TemplateName"] = true, nil }

function asserts.AssertDeleteCustomVerificationEmailTemplateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteCustomVerificationEmailTemplateRequest to be of type 'table'")
	assert(struct["TemplateName"], "Expected key TemplateName to exist in table")
	if struct["TemplateName"] then asserts.AssertTemplateName(struct["TemplateName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteCustomVerificationEmailTemplateRequest[k], "DeleteCustomVerificationEmailTemplateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteCustomVerificationEmailTemplateRequest
-- <p>Represents a request to delete an existing custom verification email template.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TemplateName [TemplateName] <p>The name of the custom verification email template that you want to delete.</p>
-- Required key: TemplateName
-- @return DeleteCustomVerificationEmailTemplateRequest structure as a key-value pair table
function M.DeleteCustomVerificationEmailTemplateRequest(args)
	assert(args, "You must provide an argument table when creating DeleteCustomVerificationEmailTemplateRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TemplateName"] = args["TemplateName"],
	}
	asserts.AssertDeleteCustomVerificationEmailTemplateRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SendTemplatedEmailRequest = { ["Tags"] = true, ["TemplateData"] = true, ["ReturnPathArn"] = true, ["ReplyToAddresses"] = true, ["Destination"] = true, ["TemplateArn"] = true, ["Source"] = true, ["ReturnPath"] = true, ["Template"] = true, ["ConfigurationSetName"] = true, ["SourceArn"] = true, nil }

function asserts.AssertSendTemplatedEmailRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendTemplatedEmailRequest to be of type 'table'")
	assert(struct["Source"], "Expected key Source to exist in table")
	assert(struct["Destination"], "Expected key Destination to exist in table")
	assert(struct["Template"], "Expected key Template to exist in table")
	assert(struct["TemplateData"], "Expected key TemplateData to exist in table")
	if struct["Tags"] then asserts.AssertMessageTagList(struct["Tags"]) end
	if struct["TemplateData"] then asserts.AssertTemplateData(struct["TemplateData"]) end
	if struct["ReturnPathArn"] then asserts.AssertAmazonResourceName(struct["ReturnPathArn"]) end
	if struct["ReplyToAddresses"] then asserts.AssertAddressList(struct["ReplyToAddresses"]) end
	if struct["Destination"] then asserts.AssertDestination(struct["Destination"]) end
	if struct["TemplateArn"] then asserts.AssertAmazonResourceName(struct["TemplateArn"]) end
	if struct["Source"] then asserts.AssertAddress(struct["Source"]) end
	if struct["ReturnPath"] then asserts.AssertAddress(struct["ReturnPath"]) end
	if struct["Template"] then asserts.AssertTemplateName(struct["Template"]) end
	if struct["ConfigurationSetName"] then asserts.AssertConfigurationSetName(struct["ConfigurationSetName"]) end
	if struct["SourceArn"] then asserts.AssertAmazonResourceName(struct["SourceArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.SendTemplatedEmailRequest[k], "SendTemplatedEmailRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendTemplatedEmailRequest
-- <p>Represents a request to send a templated email using Amazon SES. For more information, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html">Amazon SES Developer Guide</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Tags [MessageTagList] <p>A list of tags, in the form of name/value pairs, to apply to an email that you send using <code>SendTemplatedEmail</code>. Tags correspond to characteristics of the email that you define, so that you can publish email sending events.</p>
-- * TemplateData [TemplateData] <p>A list of replacement values to apply to the template. This parameter is a JSON object, typically consisting of key-value pairs in which the keys correspond to replacement tags in the email template.</p>
-- * ReturnPathArn [AmazonResourceName] <p>This parameter is used only for sending authorization. It is the ARN of the identity that is associated with the sending authorization policy that permits you to use the email address specified in the <code>ReturnPath</code> parameter.</p> <p>For example, if the owner of <code>example.com</code> (which has ARN <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>) attaches a policy to it that authorizes you to use <code>feedback@example.com</code>, then you would specify the <code>ReturnPathArn</code> to be <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>, and the <code>ReturnPath</code> to be <code>feedback@example.com</code>.</p> <p>For more information about sending authorization, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer Guide</a>.</p>
-- * ReplyToAddresses [AddressList] <p>The reply-to email address(es) for the message. If the recipient replies to the message, each reply-to address will receive the reply.</p>
-- * Destination [Destination] <p>The destination for this email, composed of To:, CC:, and BCC: fields. A Destination can include up to 50 recipients across these three fields.</p>
-- * TemplateArn [AmazonResourceName] <p>The ARN of the template to use when sending this email.</p>
-- * Source [Address] <p>The email address that is sending the email. This email address must be either individually verified with Amazon SES, or from a domain that has been verified with Amazon SES. For information about verifying identities, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-addresses-and-domains.html">Amazon SES Developer Guide</a>.</p> <p>If you are sending on behalf of another user and have been permitted to do so by a sending authorization policy, then you must also specify the <code>SourceArn</code> parameter. For more information about sending authorization, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer Guide</a>.</p> <note> <p>Amazon SES does not support the SMTPUTF8 extension, as described in <a href="https://tools.ietf.org/html/rfc6531">RFC6531</a>. For this reason, the <i>local part</i> of a source email address (the part of the email address that precedes the @ sign) may only contain <a href="https://en.wikipedia.org/wiki/Email_address#Local-part">7-bit ASCII characters</a>. If the <i>domain part</i> of an address (the part after the @ sign) contains non-ASCII characters, they must be encoded using Punycode, as described in <a href="https://tools.ietf.org/html/rfc3492.html">RFC3492</a>. The sender name (also known as the <i>friendly name</i>) may contain non-ASCII characters. These characters must be encoded using MIME encoded-word syntax, as described in<a href="https://tools.ietf.org/html/rfc2047">RFC 2047</a>. MIME encoded-word syntax uses the following form: <code>=?charset?encoding?encoded-text?=</code>.</p> </note>
-- * ReturnPath [Address] <p>The email address that bounces and complaints will be forwarded to when feedback forwarding is enabled. If the message cannot be delivered to the recipient, then an error message will be returned from the recipient's ISP; this message will then be forwarded to the email address specified by the <code>ReturnPath</code> parameter. The <code>ReturnPath</code> parameter is never overwritten. This email address must be either individually verified with Amazon SES, or from a domain that has been verified with Amazon SES. </p>
-- * Template [TemplateName] <p>The template to use when sending this email.</p>
-- * ConfigurationSetName [ConfigurationSetName] <p>The name of the configuration set to use when you send an email using <code>SendTemplatedEmail</code>.</p>
-- * SourceArn [AmazonResourceName] <p>This parameter is used only for sending authorization. It is the ARN of the identity that is associated with the sending authorization policy that permits you to send for the email address specified in the <code>Source</code> parameter.</p> <p>For example, if the owner of <code>example.com</code> (which has ARN <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>) attaches a policy to it that authorizes you to send from <code>user@example.com</code>, then you would specify the <code>SourceArn</code> to be <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>, and the <code>Source</code> to be <code>user@example.com</code>.</p> <p>For more information about sending authorization, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html">Amazon SES Developer Guide</a>.</p>
-- Required key: Source
-- Required key: Destination
-- Required key: Template
-- Required key: TemplateData
-- @return SendTemplatedEmailRequest structure as a key-value pair table
function M.SendTemplatedEmailRequest(args)
	assert(args, "You must provide an argument table when creating SendTemplatedEmailRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Tags"] = args["Tags"],
		["TemplateData"] = args["TemplateData"],
		["ReturnPathArn"] = args["ReturnPathArn"],
		["ReplyToAddresses"] = args["ReplyToAddresses"],
		["Destination"] = args["Destination"],
		["TemplateArn"] = args["TemplateArn"],
		["Source"] = args["Source"],
		["ReturnPath"] = args["ReturnPath"],
		["Template"] = args["Template"],
		["ConfigurationSetName"] = args["ConfigurationSetName"],
		["SourceArn"] = args["SourceArn"],
	}
	asserts.AssertSendTemplatedEmailRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return CloneReceiptRuleSetResponse structure as a key-value pair table
function M.CloneReceiptRuleSetResponse(args)
	assert(args, "You must provide an argument table when creating CloneReceiptRuleSetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertCloneReceiptRuleSetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetCustomVerificationEmailTemplateResponse = { ["SuccessRedirectionURL"] = true, ["TemplateName"] = true, ["FromEmailAddress"] = true, ["TemplateSubject"] = true, ["FailureRedirectionURL"] = true, ["TemplateContent"] = true, nil }

function asserts.AssertGetCustomVerificationEmailTemplateResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCustomVerificationEmailTemplateResponse to be of type 'table'")
	if struct["SuccessRedirectionURL"] then asserts.AssertSuccessRedirectionURL(struct["SuccessRedirectionURL"]) end
	if struct["TemplateName"] then asserts.AssertTemplateName(struct["TemplateName"]) end
	if struct["FromEmailAddress"] then asserts.AssertFromAddress(struct["FromEmailAddress"]) end
	if struct["TemplateSubject"] then asserts.AssertSubject(struct["TemplateSubject"]) end
	if struct["FailureRedirectionURL"] then asserts.AssertFailureRedirectionURL(struct["FailureRedirectionURL"]) end
	if struct["TemplateContent"] then asserts.AssertTemplateContent(struct["TemplateContent"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCustomVerificationEmailTemplateResponse[k], "GetCustomVerificationEmailTemplateResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCustomVerificationEmailTemplateResponse
-- <p>The content of the custom verification email template.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SuccessRedirectionURL [SuccessRedirectionURL] <p>The URL that the recipient of the verification email is sent to if his or her address is successfully verified.</p>
-- * TemplateName [TemplateName] <p>The name of the custom verification email template.</p>
-- * FromEmailAddress [FromAddress] <p>The email address that the custom verification email is sent from.</p>
-- * TemplateSubject [Subject] <p>The subject line of the custom verification email.</p>
-- * FailureRedirectionURL [FailureRedirectionURL] <p>The URL that the recipient of the verification email is sent to if his or her address is not successfully verified.</p>
-- * TemplateContent [TemplateContent] <p>The content of the custom verification email.</p>
-- @return GetCustomVerificationEmailTemplateResponse structure as a key-value pair table
function M.GetCustomVerificationEmailTemplateResponse(args)
	assert(args, "You must provide an argument table when creating GetCustomVerificationEmailTemplateResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SuccessRedirectionURL"] = args["SuccessRedirectionURL"],
		["TemplateName"] = args["TemplateName"],
		["FromEmailAddress"] = args["FromEmailAddress"],
		["TemplateSubject"] = args["TemplateSubject"],
		["FailureRedirectionURL"] = args["FailureRedirectionURL"],
		["TemplateContent"] = args["TemplateContent"],
	}
	asserts.AssertGetCustomVerificationEmailTemplateResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateConfigurationSetSendingEnabledRequest = { ["Enabled"] = true, ["ConfigurationSetName"] = true, nil }

function asserts.AssertUpdateConfigurationSetSendingEnabledRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateConfigurationSetSendingEnabledRequest to be of type 'table'")
	assert(struct["ConfigurationSetName"], "Expected key ConfigurationSetName to exist in table")
	assert(struct["Enabled"], "Expected key Enabled to exist in table")
	if struct["Enabled"] then asserts.AssertEnabled(struct["Enabled"]) end
	if struct["ConfigurationSetName"] then asserts.AssertConfigurationSetName(struct["ConfigurationSetName"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateConfigurationSetSendingEnabledRequest[k], "UpdateConfigurationSetSendingEnabledRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateConfigurationSetSendingEnabledRequest
-- <p>Represents a request to enable or disable the email sending capabilities for a specific configuration set.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Enabled [Enabled] <p>Describes whether email sending is enabled or disabled for the configuration set. </p>
-- * ConfigurationSetName [ConfigurationSetName] <p>The name of the configuration set that you want to update.</p>
-- Required key: ConfigurationSetName
-- Required key: Enabled
-- @return UpdateConfigurationSetSendingEnabledRequest structure as a key-value pair table
function M.UpdateConfigurationSetSendingEnabledRequest(args)
	assert(args, "You must provide an argument table when creating UpdateConfigurationSetSendingEnabledRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Enabled"] = args["Enabled"],
		["ConfigurationSetName"] = args["ConfigurationSetName"],
	}
	asserts.AssertUpdateConfigurationSetSendingEnabledRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicyNames [PolicyNameList] <p>A list of names of policies that apply to the specified identity.</p>
-- Required key: PolicyNames
-- @return ListIdentityPoliciesResponse structure as a key-value pair table
function M.ListIdentityPoliciesResponse(args)
	assert(args, "You must provide an argument table when creating ListIdentityPoliciesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PolicyNames"] = args["PolicyNames"],
	}
	asserts.AssertListIdentityPoliciesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Identity [Identity] <p>The identity to be removed from the list of identities for the AWS Account.</p>
-- Required key: Identity
-- @return DeleteIdentityRequest structure as a key-value pair table
function M.DeleteIdentityRequest(args)
	assert(args, "You must provide an argument table when creating DeleteIdentityRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Identity"] = args["Identity"],
	}
	asserts.AssertDeleteIdentityRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateConfigurationSetEventDestinationResponse structure as a key-value pair table
function M.UpdateConfigurationSetEventDestinationResponse(args)
	assert(args, "You must provide an argument table when creating UpdateConfigurationSetEventDestinationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateConfigurationSetEventDestinationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [BounceMessage] <p>Human-readable text to include in the bounce message.</p>
-- * Sender [Address] <p>The email address of the sender of the bounced email. This is the address from which the bounce message will be sent.</p>
-- * SmtpReplyCode [BounceSmtpReplyCode] <p>The SMTP reply code, as defined by <a href="https://tools.ietf.org/html/rfc5321">RFC 5321</a>.</p>
-- * TopicArn [AmazonResourceName] <p>The Amazon Resource Name (ARN) of the Amazon SNS topic to notify when the bounce action is taken. An example of an Amazon SNS topic ARN is <code>arn:aws:sns:us-west-2:123456789012:MyTopic</code>. For more information about Amazon SNS topics, see the <a href="http://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html">Amazon SNS Developer Guide</a>.</p>
-- * StatusCode [BounceStatusCode] <p>The SMTP enhanced status code, as defined by <a href="https://tools.ietf.org/html/rfc3463">RFC 3463</a>.</p>
-- Required key: SmtpReplyCode
-- Required key: Message
-- Required key: Sender
-- @return BounceAction structure as a key-value pair table
function M.BounceAction(args)
	assert(args, "You must provide an argument table when creating BounceAction")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
		["Sender"] = args["Sender"],
		["SmtpReplyCode"] = args["SmtpReplyCode"],
		["TopicArn"] = args["TopicArn"],
		["StatusCode"] = args["StatusCode"],
	}
	asserts.AssertBounceAction(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConfigurationSets [ConfigurationSets] <p>A list of configuration sets.</p>
-- * NextToken [NextToken] <p>A token indicating that there are additional configuration sets available to be listed. Pass this token to successive calls of <code>ListConfigurationSets</code>. </p>
-- @return ListConfigurationSetsResponse structure as a key-value pair table
function M.ListConfigurationSetsResponse(args)
	assert(args, "You must provide an argument table when creating ListConfigurationSetsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ConfigurationSets"] = args["ConfigurationSets"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListConfigurationSetsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Complaints [Counter] <p>Number of unwanted emails that were rejected by recipients.</p>
-- * Timestamp [Timestamp] <p>Time of the data point.</p>
-- * DeliveryAttempts [Counter] <p>Number of emails that have been sent.</p>
-- * Bounces [Counter] <p>Number of emails that have bounced.</p>
-- * Rejects [Counter] <p>Number of emails rejected by Amazon SES.</p>
-- @return SendDataPoint structure as a key-value pair table
function M.SendDataPoint(args)
	assert(args, "You must provide an argument table when creating SendDataPoint")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Complaints"] = args["Complaints"],
		["Timestamp"] = args["Timestamp"],
		["DeliveryAttempts"] = args["DeliveryAttempts"],
		["Bounces"] = args["Bounces"],
		["Rejects"] = args["Rejects"],
	}
	asserts.AssertSendDataPoint(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ReorderReceiptRuleSetResponse structure as a key-value pair table
function M.ReorderReceiptRuleSetResponse(args)
	assert(args, "You must provide an argument table when creating ReorderReceiptRuleSetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertReorderReceiptRuleSetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Domain [Domain] <p>The domain to be verified.</p>
-- Required key: Domain
-- @return VerifyDomainIdentityRequest structure as a key-value pair table
function M.VerifyDomainIdentityRequest(args)
	assert(args, "You must provide an argument table when creating VerifyDomainIdentityRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Domain"] = args["Domain"],
	}
	asserts.AssertVerifyDomainIdentityRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SendCustomVerificationEmailRequest = { ["ConfigurationSetName"] = true, ["EmailAddress"] = true, ["TemplateName"] = true, nil }

function asserts.AssertSendCustomVerificationEmailRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendCustomVerificationEmailRequest to be of type 'table'")
	assert(struct["EmailAddress"], "Expected key EmailAddress to exist in table")
	assert(struct["TemplateName"], "Expected key TemplateName to exist in table")
	if struct["ConfigurationSetName"] then asserts.AssertConfigurationSetName(struct["ConfigurationSetName"]) end
	if struct["EmailAddress"] then asserts.AssertAddress(struct["EmailAddress"]) end
	if struct["TemplateName"] then asserts.AssertTemplateName(struct["TemplateName"]) end
	for k,_ in pairs(struct) do
		assert(keys.SendCustomVerificationEmailRequest[k], "SendCustomVerificationEmailRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendCustomVerificationEmailRequest
-- <p>Represents a request to send a custom verification email to a specified recipient.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConfigurationSetName [ConfigurationSetName] <p>Name of a configuration set to use when sending the verification email.</p>
-- * EmailAddress [Address] <p>The email address to verify.</p>
-- * TemplateName [TemplateName] <p>The name of the custom verification email template to use when sending the verification email.</p>
-- Required key: EmailAddress
-- Required key: TemplateName
-- @return SendCustomVerificationEmailRequest structure as a key-value pair table
function M.SendCustomVerificationEmailRequest(args)
	assert(args, "You must provide an argument table when creating SendCustomVerificationEmailRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ConfigurationSetName"] = args["ConfigurationSetName"],
		["EmailAddress"] = args["EmailAddress"],
		["TemplateName"] = args["TemplateName"],
	}
	asserts.AssertSendCustomVerificationEmailRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BulkEmailDestinationStatus = { ["Status"] = true, ["MessageId"] = true, ["Error"] = true, nil }

function asserts.AssertBulkEmailDestinationStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BulkEmailDestinationStatus to be of type 'table'")
	if struct["Status"] then asserts.AssertBulkEmailStatus(struct["Status"]) end
	if struct["MessageId"] then asserts.AssertMessageId(struct["MessageId"]) end
	if struct["Error"] then asserts.AssertError(struct["Error"]) end
	for k,_ in pairs(struct) do
		assert(keys.BulkEmailDestinationStatus[k], "BulkEmailDestinationStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BulkEmailDestinationStatus
-- <p>An object that contains the response from the <code>SendBulkTemplatedEmail</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [BulkEmailStatus] <p>The status of a message sent using the <code>SendBulkTemplatedEmail</code> operation.</p> <p>Possible values for this parameter include:</p> <ul> <li> <p> <code>Success</code>: Amazon SES accepted the message, and will attempt to deliver it to the recipients.</p> </li> <li> <p> <code>MessageRejected</code>: The message was rejected because it contained a virus.</p> </li> <li> <p> <code>MailFromDomainNotVerified</code>: The sender's email address or domain was not verified.</p> </li> <li> <p> <code>ConfigurationSetDoesNotExist</code>: The configuration set you specified does not exist.</p> </li> <li> <p> <code>TemplateDoesNotExist</code>: The template you specified does not exist.</p> </li> <li> <p> <code>AccountSuspended</code>: Your account has been shut down because of issues related to your email sending practices.</p> </li> <li> <p> <code>AccountThrottled</code>: The number of emails you can send has been reduced because your account has exceeded its allocated sending limit.</p> </li> <li> <p> <code>AccountDailyQuotaExceeded</code>: You have reached or exceeded the maximum number of emails you can send from your account in a 24-hour period.</p> </li> <li> <p> <code>InvalidSendingPoolName</code>: The configuration set you specified refers to an IP pool that does not exist.</p> </li> <li> <p> <code>AccountSendingPaused</code>: Email sending for the Amazon SES account was disabled using the <a>UpdateAccountSendingEnabled</a> operation.</p> </li> <li> <p> <code>ConfigurationSetSendingPaused</code>: Email sending for this configuration set was disabled using the <a>UpdateConfigurationSetSendingEnabled</a> operation.</p> </li> <li> <p> <code>InvalidParameterValue</code>: One or more of the parameters you specified when calling this operation was invalid. See the error message for additional information.</p> </li> <li> <p> <code>TransientFailure</code>: Amazon SES was unable to process your request because of a temporary issue.</p> </li> <li> <p> <code>Failed</code>: Amazon SES was unable to process your request. See the error message for additional information.</p> </li> </ul>
-- * MessageId [MessageId] <p>The unique message identifier returned from the <code>SendBulkTemplatedEmail</code> operation.</p>
-- * Error [Error] <p>A description of an error that prevented a message being sent using the <code>SendBulkTemplatedEmail</code> operation.</p>
-- @return BulkEmailDestinationStatus structure as a key-value pair table
function M.BulkEmailDestinationStatus(args)
	assert(args, "You must provide an argument table when creating BulkEmailDestinationStatus")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["MessageId"] = args["MessageId"],
		["Error"] = args["Error"],
	}
	asserts.AssertBulkEmailDestinationStatus(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteReceiptRuleResponse structure as a key-value pair table
function M.DeleteReceiptRuleResponse(args)
	assert(args, "You must provide an argument table when creating DeleteReceiptRuleResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteReceiptRuleResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConfigurationSet [ConfigurationSet] <p>A data structure that contains the name of the configuration set.</p>
-- Required key: ConfigurationSet
-- @return CreateConfigurationSetRequest structure as a key-value pair table
function M.CreateConfigurationSetRequest(args)
	assert(args, "You must provide an argument table when creating CreateConfigurationSetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ConfigurationSet"] = args["ConfigurationSet"],
	}
	asserts.AssertCreateConfigurationSetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Filters [ReceiptFilterList] <p>A list of IP address filter data structures, which each consist of a name, an IP address range, and whether to allow or block mail from it.</p>
-- @return ListReceiptFiltersResponse structure as a key-value pair table
function M.ListReceiptFiltersResponse(args)
	assert(args, "You must provide an argument table when creating ListReceiptFiltersResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Filters"] = args["Filters"],
	}
	asserts.AssertListReceiptFiltersResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MessageId [MessageId] <p>The message ID of the bounce message.</p>
-- @return SendBounceResponse structure as a key-value pair table
function M.SendBounceResponse(args)
	assert(args, "You must provide an argument table when creating SendBounceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MessageId"] = args["MessageId"],
	}
	asserts.AssertSendBounceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Policy [Policy] <p>The text of the policy in JSON format. The policy cannot exceed 4 KB.</p> <p>For information about the syntax of sending authorization policies, see the <a href="http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization-policies.html">Amazon SES Developer Guide</a>. </p>
-- * PolicyName [PolicyName] <p>The name of the policy.</p> <p>The policy name cannot exceed 64 characters and can only include alphanumeric characters, dashes, and underscores.</p>
-- * Identity [Identity] <p>The identity that the policy will apply to. You can specify an identity by using its name or by using its Amazon Resource Name (ARN). Examples: <code>user@example.com</code>, <code>example.com</code>, <code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>.</p> <p>To successfully call this API, you must own the identity.</p>
-- Required key: Identity
-- Required key: PolicyName
-- Required key: Policy
-- @return PutIdentityPolicyRequest structure as a key-value pair table
function M.PutIdentityPolicyRequest(args)
	assert(args, "You must provide an argument table when creating PutIdentityPolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Policy"] = args["Policy"],
		["PolicyName"] = args["PolicyName"],
		["Identity"] = args["Identity"],
	}
	asserts.AssertPutIdentityPolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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

function asserts.AssertTemplateData(str)
	assert(str)
	assert(type(str) == "string", "Expected TemplateData to be of type 'string'")
	assert(#str <= 262144, "Expected string to be max 262144 characters")
end

--  
function M.TemplateData(str)
	asserts.AssertTemplateData(str)
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

function asserts.AssertTemplateContent(str)
	assert(str)
	assert(type(str) == "string", "Expected TemplateContent to be of type 'string'")
end

--  
function M.TemplateContent(str)
	asserts.AssertTemplateContent(str)
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

function asserts.AssertSubject(str)
	assert(str)
	assert(type(str) == "string", "Expected Subject to be of type 'string'")
end

--  
function M.Subject(str)
	asserts.AssertSubject(str)
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

function asserts.AssertReportingMta(str)
	assert(str)
	assert(type(str) == "string", "Expected ReportingMta to be of type 'string'")
end

--  
function M.ReportingMta(str)
	asserts.AssertReportingMta(str)
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

function asserts.AssertDiagnosticCode(str)
	assert(str)
	assert(type(str) == "string", "Expected DiagnosticCode to be of type 'string'")
end

--  
function M.DiagnosticCode(str)
	asserts.AssertDiagnosticCode(str)
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

function asserts.AssertHtmlPart(str)
	assert(str)
	assert(type(str) == "string", "Expected HtmlPart to be of type 'string'")
end

--  
function M.HtmlPart(str)
	asserts.AssertHtmlPart(str)
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

function asserts.AssertTemplateName(str)
	assert(str)
	assert(type(str) == "string", "Expected TemplateName to be of type 'string'")
end

--  
function M.TemplateName(str)
	asserts.AssertTemplateName(str)
	return str
end

function asserts.AssertBulkEmailStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected BulkEmailStatus to be of type 'string'")
end

--  
function M.BulkEmailStatus(str)
	asserts.AssertBulkEmailStatus(str)
	return str
end

function asserts.AssertFailureRedirectionURL(str)
	assert(str)
	assert(type(str) == "string", "Expected FailureRedirectionURL to be of type 'string'")
end

--  
function M.FailureRedirectionURL(str)
	asserts.AssertFailureRedirectionURL(str)
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

function asserts.AssertCustomRedirectDomain(str)
	assert(str)
	assert(type(str) == "string", "Expected CustomRedirectDomain to be of type 'string'")
end

--  
function M.CustomRedirectDomain(str)
	asserts.AssertCustomRedirectDomain(str)
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

function asserts.AssertSuccessRedirectionURL(str)
	assert(str)
	assert(type(str) == "string", "Expected SuccessRedirectionURL to be of type 'string'")
end

--  
function M.SuccessRedirectionURL(str)
	asserts.AssertSuccessRedirectionURL(str)
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

function asserts.AssertError(str)
	assert(str)
	assert(type(str) == "string", "Expected Error to be of type 'string'")
end

--  
function M.Error(str)
	asserts.AssertError(str)
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

function asserts.AssertSubjectPart(str)
	assert(str)
	assert(type(str) == "string", "Expected SubjectPart to be of type 'string'")
end

--  
function M.SubjectPart(str)
	asserts.AssertSubjectPart(str)
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

function asserts.AssertReceiptFilterPolicy(str)
	assert(str)
	assert(type(str) == "string", "Expected ReceiptFilterPolicy to be of type 'string'")
end

--  
function M.ReceiptFilterPolicy(str)
	asserts.AssertReceiptFilterPolicy(str)
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

function asserts.AssertFromAddress(str)
	assert(str)
	assert(type(str) == "string", "Expected FromAddress to be of type 'string'")
end

--  
function M.FromAddress(str)
	asserts.AssertFromAddress(str)
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

function asserts.AssertS3KeyPrefix(str)
	assert(str)
	assert(type(str) == "string", "Expected S3KeyPrefix to be of type 'string'")
end

--  
function M.S3KeyPrefix(str)
	asserts.AssertS3KeyPrefix(str)
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

function asserts.AssertRenderedTemplate(str)
	assert(str)
	assert(type(str) == "string", "Expected RenderedTemplate to be of type 'string'")
end

--  
function M.RenderedTemplate(str)
	asserts.AssertRenderedTemplate(str)
	return str
end

function asserts.AssertTextPart(str)
	assert(str)
	assert(type(str) == "string", "Expected TextPart to be of type 'string'")
end

--  
function M.TextPart(str)
	asserts.AssertTextPart(str)
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

function asserts.AssertMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 50, "Expected integer to be max 50")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaxResults(integer)
	asserts.AssertMaxResults(integer)
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

function asserts.AssertLastFreshStart(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected LastFreshStart to be of type 'string'")
end

function M.LastFreshStart(timestamp)
	asserts.AssertLastFreshStart(timestamp)
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
	assert(type(blob) == "string", "Expected RawMessageData to be of type 'string'")
end

function M.RawMessageData(blob)
	asserts.AssertRawMessageData(blob)
	return blob
end

function asserts.AssertBulkEmailDestinationStatusList(list)
	assert(list)
	assert(type(list) == "table", "Expected BulkEmailDestinationStatusList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertBulkEmailDestinationStatus(v)
	end
end

--  
-- List of BulkEmailDestinationStatus objects
function M.BulkEmailDestinationStatusList(list)
	asserts.AssertBulkEmailDestinationStatusList(list)
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

function asserts.AssertTemplateMetadataList(list)
	assert(list)
	assert(type(list) == "table", "Expected TemplateMetadataList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTemplateMetadata(v)
	end
end

--  
-- List of TemplateMetadata objects
function M.TemplateMetadataList(list)
	asserts.AssertTemplateMetadataList(list)
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

function asserts.AssertCustomVerificationEmailTemplates(list)
	assert(list)
	assert(type(list) == "table", "Expected CustomVerificationEmailTemplates to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCustomVerificationEmailTemplate(v)
	end
end

--  
-- List of CustomVerificationEmailTemplate objects
function M.CustomVerificationEmailTemplates(list)
	asserts.AssertCustomVerificationEmailTemplates(list)
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

function asserts.AssertBulkEmailDestinationList(list)
	assert(list)
	assert(type(list) == "table", "Expected BulkEmailDestinationList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertBulkEmailDestination(v)
	end
end

--  
-- List of BulkEmailDestination objects
function M.BulkEmailDestinationList(list)
	asserts.AssertBulkEmailDestinationList(list)
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


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


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
--- Call UpdateConfigurationSetTrackingOptions asynchronously, invoking a callback when done
-- @param UpdateConfigurationSetTrackingOptionsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateConfigurationSetTrackingOptionsAsync(UpdateConfigurationSetTrackingOptionsRequest, cb)
	assert(UpdateConfigurationSetTrackingOptionsRequest, "You must provide a UpdateConfigurationSetTrackingOptionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateConfigurationSetTrackingOptions",
	}
	for header,value in pairs(UpdateConfigurationSetTrackingOptionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateConfigurationSetTrackingOptionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateConfigurationSetTrackingOptions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateConfigurationSetTrackingOptionsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateConfigurationSetTrackingOptionsSync(UpdateConfigurationSetTrackingOptionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateConfigurationSetTrackingOptionsAsync(UpdateConfigurationSetTrackingOptionsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateReceiptRule asynchronously, invoking a callback when done
-- @param CreateReceiptRuleRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateReceiptRuleAsync(CreateReceiptRuleRequest, cb)
	assert(CreateReceiptRuleRequest, "You must provide a CreateReceiptRuleRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateReceiptRule",
	}
	for header,value in pairs(CreateReceiptRuleRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateReceiptRuleRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateReceiptRule synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateReceiptRuleRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateReceiptRuleSync(CreateReceiptRuleRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateReceiptRuleAsync(CreateReceiptRuleRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetSendStatistics asynchronously, invoking a callback when done
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetSendStatisticsAsync(cb)
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetSendStatistics",
	}


	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", {}, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetSendStatistics synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @return response
-- @return error_type
-- @return error_message
function M.GetSendStatisticsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetSendStatisticsAsync(function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ReorderReceiptRuleSet asynchronously, invoking a callback when done
-- @param ReorderReceiptRuleSetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ReorderReceiptRuleSetAsync(ReorderReceiptRuleSetRequest, cb)
	assert(ReorderReceiptRuleSetRequest, "You must provide a ReorderReceiptRuleSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ReorderReceiptRuleSet",
	}
	for header,value in pairs(ReorderReceiptRuleSetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ReorderReceiptRuleSetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ReorderReceiptRuleSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ReorderReceiptRuleSetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ReorderReceiptRuleSetSync(ReorderReceiptRuleSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ReorderReceiptRuleSetAsync(ReorderReceiptRuleSetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetIdentityPolicies asynchronously, invoking a callback when done
-- @param GetIdentityPoliciesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetIdentityPoliciesAsync(GetIdentityPoliciesRequest, cb)
	assert(GetIdentityPoliciesRequest, "You must provide a GetIdentityPoliciesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetIdentityPolicies",
	}
	for header,value in pairs(GetIdentityPoliciesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetIdentityPoliciesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetIdentityPolicies synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetIdentityPoliciesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetIdentityPoliciesSync(GetIdentityPoliciesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetIdentityPoliciesAsync(GetIdentityPoliciesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetAccountSendingEnabled asynchronously, invoking a callback when done
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetAccountSendingEnabledAsync(cb)
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetAccountSendingEnabled",
	}


	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", {}, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetAccountSendingEnabled synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @return response
-- @return error_type
-- @return error_message
function M.GetAccountSendingEnabledSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetAccountSendingEnabledAsync(function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateConfigurationSetSendingEnabled asynchronously, invoking a callback when done
-- @param UpdateConfigurationSetSendingEnabledRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateConfigurationSetSendingEnabledAsync(UpdateConfigurationSetSendingEnabledRequest, cb)
	assert(UpdateConfigurationSetSendingEnabledRequest, "You must provide a UpdateConfigurationSetSendingEnabledRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateConfigurationSetSendingEnabled",
	}
	for header,value in pairs(UpdateConfigurationSetSendingEnabledRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateConfigurationSetSendingEnabledRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateConfigurationSetSendingEnabled synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateConfigurationSetSendingEnabledRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateConfigurationSetSendingEnabledSync(UpdateConfigurationSetSendingEnabledRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateConfigurationSetSendingEnabledAsync(UpdateConfigurationSetSendingEnabledRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call VerifyEmailAddress asynchronously, invoking a callback when done
-- @param VerifyEmailAddressRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.VerifyEmailAddressAsync(VerifyEmailAddressRequest, cb)
	assert(VerifyEmailAddressRequest, "You must provide a VerifyEmailAddressRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".VerifyEmailAddress",
	}
	for header,value in pairs(VerifyEmailAddressRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", VerifyEmailAddressRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call VerifyEmailAddress synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param VerifyEmailAddressRequest
-- @return response
-- @return error_type
-- @return error_message
function M.VerifyEmailAddressSync(VerifyEmailAddressRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.VerifyEmailAddressAsync(VerifyEmailAddressRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SetIdentityMailFromDomain asynchronously, invoking a callback when done
-- @param SetIdentityMailFromDomainRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SetIdentityMailFromDomainAsync(SetIdentityMailFromDomainRequest, cb)
	assert(SetIdentityMailFromDomainRequest, "You must provide a SetIdentityMailFromDomainRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".SetIdentityMailFromDomain",
	}
	for header,value in pairs(SetIdentityMailFromDomainRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", SetIdentityMailFromDomainRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SetIdentityMailFromDomain synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SetIdentityMailFromDomainRequest
-- @return response
-- @return error_type
-- @return error_message
function M.SetIdentityMailFromDomainSync(SetIdentityMailFromDomainRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetIdentityMailFromDomainAsync(SetIdentityMailFromDomainRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteConfigurationSet asynchronously, invoking a callback when done
-- @param DeleteConfigurationSetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteConfigurationSetAsync(DeleteConfigurationSetRequest, cb)
	assert(DeleteConfigurationSetRequest, "You must provide a DeleteConfigurationSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteConfigurationSet",
	}
	for header,value in pairs(DeleteConfigurationSetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteConfigurationSetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteConfigurationSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteConfigurationSetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteConfigurationSetSync(DeleteConfigurationSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteConfigurationSetAsync(DeleteConfigurationSetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListReceiptFilters asynchronously, invoking a callback when done
-- @param ListReceiptFiltersRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListReceiptFiltersAsync(ListReceiptFiltersRequest, cb)
	assert(ListReceiptFiltersRequest, "You must provide a ListReceiptFiltersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListReceiptFilters",
	}
	for header,value in pairs(ListReceiptFiltersRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListReceiptFiltersRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListReceiptFilters synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListReceiptFiltersRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListReceiptFiltersSync(ListReceiptFiltersRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListReceiptFiltersAsync(ListReceiptFiltersRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeReceiptRuleSet asynchronously, invoking a callback when done
-- @param DescribeReceiptRuleSetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeReceiptRuleSetAsync(DescribeReceiptRuleSetRequest, cb)
	assert(DescribeReceiptRuleSetRequest, "You must provide a DescribeReceiptRuleSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeReceiptRuleSet",
	}
	for header,value in pairs(DescribeReceiptRuleSetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeReceiptRuleSetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeReceiptRuleSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeReceiptRuleSetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeReceiptRuleSetSync(DescribeReceiptRuleSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeReceiptRuleSetAsync(DescribeReceiptRuleSetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteReceiptFilter asynchronously, invoking a callback when done
-- @param DeleteReceiptFilterRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteReceiptFilterAsync(DeleteReceiptFilterRequest, cb)
	assert(DeleteReceiptFilterRequest, "You must provide a DeleteReceiptFilterRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteReceiptFilter",
	}
	for header,value in pairs(DeleteReceiptFilterRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteReceiptFilterRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteReceiptFilter synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteReceiptFilterRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteReceiptFilterSync(DeleteReceiptFilterRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteReceiptFilterAsync(DeleteReceiptFilterRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateConfigurationSetEventDestination asynchronously, invoking a callback when done
-- @param UpdateConfigurationSetEventDestinationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateConfigurationSetEventDestinationAsync(UpdateConfigurationSetEventDestinationRequest, cb)
	assert(UpdateConfigurationSetEventDestinationRequest, "You must provide a UpdateConfigurationSetEventDestinationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateConfigurationSetEventDestination",
	}
	for header,value in pairs(UpdateConfigurationSetEventDestinationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateConfigurationSetEventDestinationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateConfigurationSetEventDestination synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateConfigurationSetEventDestinationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateConfigurationSetEventDestinationSync(UpdateConfigurationSetEventDestinationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateConfigurationSetEventDestinationAsync(UpdateConfigurationSetEventDestinationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SetIdentityFeedbackForwardingEnabled asynchronously, invoking a callback when done
-- @param SetIdentityFeedbackForwardingEnabledRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SetIdentityFeedbackForwardingEnabledAsync(SetIdentityFeedbackForwardingEnabledRequest, cb)
	assert(SetIdentityFeedbackForwardingEnabledRequest, "You must provide a SetIdentityFeedbackForwardingEnabledRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".SetIdentityFeedbackForwardingEnabled",
	}
	for header,value in pairs(SetIdentityFeedbackForwardingEnabledRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", SetIdentityFeedbackForwardingEnabledRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SetIdentityFeedbackForwardingEnabled synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SetIdentityFeedbackForwardingEnabledRequest
-- @return response
-- @return error_type
-- @return error_message
function M.SetIdentityFeedbackForwardingEnabledSync(SetIdentityFeedbackForwardingEnabledRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetIdentityFeedbackForwardingEnabledAsync(SetIdentityFeedbackForwardingEnabledRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateReceiptRule asynchronously, invoking a callback when done
-- @param UpdateReceiptRuleRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateReceiptRuleAsync(UpdateReceiptRuleRequest, cb)
	assert(UpdateReceiptRuleRequest, "You must provide a UpdateReceiptRuleRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateReceiptRule",
	}
	for header,value in pairs(UpdateReceiptRuleRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateReceiptRuleRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateReceiptRule synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateReceiptRuleRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateReceiptRuleSync(UpdateReceiptRuleRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateReceiptRuleAsync(UpdateReceiptRuleRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SendBounce asynchronously, invoking a callback when done
-- @param SendBounceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SendBounceAsync(SendBounceRequest, cb)
	assert(SendBounceRequest, "You must provide a SendBounceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".SendBounce",
	}
	for header,value in pairs(SendBounceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", SendBounceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SendBounce synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SendBounceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.SendBounceSync(SendBounceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SendBounceAsync(SendBounceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateConfigurationSetEventDestination asynchronously, invoking a callback when done
-- @param CreateConfigurationSetEventDestinationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateConfigurationSetEventDestinationAsync(CreateConfigurationSetEventDestinationRequest, cb)
	assert(CreateConfigurationSetEventDestinationRequest, "You must provide a CreateConfigurationSetEventDestinationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateConfigurationSetEventDestination",
	}
	for header,value in pairs(CreateConfigurationSetEventDestinationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateConfigurationSetEventDestinationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateConfigurationSetEventDestination synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateConfigurationSetEventDestinationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateConfigurationSetEventDestinationSync(CreateConfigurationSetEventDestinationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateConfigurationSetEventDestinationAsync(CreateConfigurationSetEventDestinationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetIdentityDkimAttributes asynchronously, invoking a callback when done
-- @param GetIdentityDkimAttributesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetIdentityDkimAttributesAsync(GetIdentityDkimAttributesRequest, cb)
	assert(GetIdentityDkimAttributesRequest, "You must provide a GetIdentityDkimAttributesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetIdentityDkimAttributes",
	}
	for header,value in pairs(GetIdentityDkimAttributesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetIdentityDkimAttributesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetIdentityDkimAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetIdentityDkimAttributesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetIdentityDkimAttributesSync(GetIdentityDkimAttributesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetIdentityDkimAttributesAsync(GetIdentityDkimAttributesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetIdentityMailFromDomainAttributes asynchronously, invoking a callback when done
-- @param GetIdentityMailFromDomainAttributesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetIdentityMailFromDomainAttributesAsync(GetIdentityMailFromDomainAttributesRequest, cb)
	assert(GetIdentityMailFromDomainAttributesRequest, "You must provide a GetIdentityMailFromDomainAttributesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetIdentityMailFromDomainAttributes",
	}
	for header,value in pairs(GetIdentityMailFromDomainAttributesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetIdentityMailFromDomainAttributesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetIdentityMailFromDomainAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetIdentityMailFromDomainAttributesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetIdentityMailFromDomainAttributesSync(GetIdentityMailFromDomainAttributesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetIdentityMailFromDomainAttributesAsync(GetIdentityMailFromDomainAttributesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteReceiptRule asynchronously, invoking a callback when done
-- @param DeleteReceiptRuleRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteReceiptRuleAsync(DeleteReceiptRuleRequest, cb)
	assert(DeleteReceiptRuleRequest, "You must provide a DeleteReceiptRuleRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteReceiptRule",
	}
	for header,value in pairs(DeleteReceiptRuleRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteReceiptRuleRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteReceiptRule synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteReceiptRuleRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteReceiptRuleSync(DeleteReceiptRuleRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteReceiptRuleAsync(DeleteReceiptRuleRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeConfigurationSet asynchronously, invoking a callback when done
-- @param DescribeConfigurationSetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeConfigurationSetAsync(DescribeConfigurationSetRequest, cb)
	assert(DescribeConfigurationSetRequest, "You must provide a DescribeConfigurationSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeConfigurationSet",
	}
	for header,value in pairs(DescribeConfigurationSetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeConfigurationSetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeConfigurationSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeConfigurationSetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeConfigurationSetSync(DescribeConfigurationSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeConfigurationSetAsync(DescribeConfigurationSetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListVerifiedEmailAddresses asynchronously, invoking a callback when done
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListVerifiedEmailAddressesAsync(cb)
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListVerifiedEmailAddresses",
	}


	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", {}, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListVerifiedEmailAddresses synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @return response
-- @return error_type
-- @return error_message
function M.ListVerifiedEmailAddressesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListVerifiedEmailAddressesAsync(function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteTemplate asynchronously, invoking a callback when done
-- @param DeleteTemplateRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteTemplateAsync(DeleteTemplateRequest, cb)
	assert(DeleteTemplateRequest, "You must provide a DeleteTemplateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteTemplate",
	}
	for header,value in pairs(DeleteTemplateRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteTemplateRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteTemplate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteTemplateRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteTemplateSync(DeleteTemplateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteTemplateAsync(DeleteTemplateRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CloneReceiptRuleSet asynchronously, invoking a callback when done
-- @param CloneReceiptRuleSetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CloneReceiptRuleSetAsync(CloneReceiptRuleSetRequest, cb)
	assert(CloneReceiptRuleSetRequest, "You must provide a CloneReceiptRuleSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CloneReceiptRuleSet",
	}
	for header,value in pairs(CloneReceiptRuleSetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CloneReceiptRuleSetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CloneReceiptRuleSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CloneReceiptRuleSetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CloneReceiptRuleSetSync(CloneReceiptRuleSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CloneReceiptRuleSetAsync(CloneReceiptRuleSetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SendCustomVerificationEmail asynchronously, invoking a callback when done
-- @param SendCustomVerificationEmailRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SendCustomVerificationEmailAsync(SendCustomVerificationEmailRequest, cb)
	assert(SendCustomVerificationEmailRequest, "You must provide a SendCustomVerificationEmailRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".SendCustomVerificationEmail",
	}
	for header,value in pairs(SendCustomVerificationEmailRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", SendCustomVerificationEmailRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SendCustomVerificationEmail synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SendCustomVerificationEmailRequest
-- @return response
-- @return error_type
-- @return error_message
function M.SendCustomVerificationEmailSync(SendCustomVerificationEmailRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SendCustomVerificationEmailAsync(SendCustomVerificationEmailRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call TestRenderTemplate asynchronously, invoking a callback when done
-- @param TestRenderTemplateRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.TestRenderTemplateAsync(TestRenderTemplateRequest, cb)
	assert(TestRenderTemplateRequest, "You must provide a TestRenderTemplateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".TestRenderTemplate",
	}
	for header,value in pairs(TestRenderTemplateRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", TestRenderTemplateRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call TestRenderTemplate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param TestRenderTemplateRequest
-- @return response
-- @return error_type
-- @return error_message
function M.TestRenderTemplateSync(TestRenderTemplateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.TestRenderTemplateAsync(TestRenderTemplateRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call VerifyDomainIdentity asynchronously, invoking a callback when done
-- @param VerifyDomainIdentityRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.VerifyDomainIdentityAsync(VerifyDomainIdentityRequest, cb)
	assert(VerifyDomainIdentityRequest, "You must provide a VerifyDomainIdentityRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".VerifyDomainIdentity",
	}
	for header,value in pairs(VerifyDomainIdentityRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", VerifyDomainIdentityRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call VerifyDomainIdentity synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param VerifyDomainIdentityRequest
-- @return response
-- @return error_type
-- @return error_message
function M.VerifyDomainIdentitySync(VerifyDomainIdentityRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.VerifyDomainIdentityAsync(VerifyDomainIdentityRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateCustomVerificationEmailTemplate asynchronously, invoking a callback when done
-- @param UpdateCustomVerificationEmailTemplateRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateCustomVerificationEmailTemplateAsync(UpdateCustomVerificationEmailTemplateRequest, cb)
	assert(UpdateCustomVerificationEmailTemplateRequest, "You must provide a UpdateCustomVerificationEmailTemplateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateCustomVerificationEmailTemplate",
	}
	for header,value in pairs(UpdateCustomVerificationEmailTemplateRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateCustomVerificationEmailTemplateRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateCustomVerificationEmailTemplate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateCustomVerificationEmailTemplateRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateCustomVerificationEmailTemplateSync(UpdateCustomVerificationEmailTemplateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateCustomVerificationEmailTemplateAsync(UpdateCustomVerificationEmailTemplateRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call VerifyEmailIdentity asynchronously, invoking a callback when done
-- @param VerifyEmailIdentityRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.VerifyEmailIdentityAsync(VerifyEmailIdentityRequest, cb)
	assert(VerifyEmailIdentityRequest, "You must provide a VerifyEmailIdentityRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".VerifyEmailIdentity",
	}
	for header,value in pairs(VerifyEmailIdentityRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", VerifyEmailIdentityRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call VerifyEmailIdentity synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param VerifyEmailIdentityRequest
-- @return response
-- @return error_type
-- @return error_message
function M.VerifyEmailIdentitySync(VerifyEmailIdentityRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.VerifyEmailIdentityAsync(VerifyEmailIdentityRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeActiveReceiptRuleSet asynchronously, invoking a callback when done
-- @param DescribeActiveReceiptRuleSetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeActiveReceiptRuleSetAsync(DescribeActiveReceiptRuleSetRequest, cb)
	assert(DescribeActiveReceiptRuleSetRequest, "You must provide a DescribeActiveReceiptRuleSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeActiveReceiptRuleSet",
	}
	for header,value in pairs(DescribeActiveReceiptRuleSetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeActiveReceiptRuleSetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeActiveReceiptRuleSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeActiveReceiptRuleSetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeActiveReceiptRuleSetSync(DescribeActiveReceiptRuleSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeActiveReceiptRuleSetAsync(DescribeActiveReceiptRuleSetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteIdentityPolicy asynchronously, invoking a callback when done
-- @param DeleteIdentityPolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteIdentityPolicyAsync(DeleteIdentityPolicyRequest, cb)
	assert(DeleteIdentityPolicyRequest, "You must provide a DeleteIdentityPolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteIdentityPolicy",
	}
	for header,value in pairs(DeleteIdentityPolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteIdentityPolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteIdentityPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteIdentityPolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteIdentityPolicySync(DeleteIdentityPolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteIdentityPolicyAsync(DeleteIdentityPolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SetActiveReceiptRuleSet asynchronously, invoking a callback when done
-- @param SetActiveReceiptRuleSetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SetActiveReceiptRuleSetAsync(SetActiveReceiptRuleSetRequest, cb)
	assert(SetActiveReceiptRuleSetRequest, "You must provide a SetActiveReceiptRuleSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".SetActiveReceiptRuleSet",
	}
	for header,value in pairs(SetActiveReceiptRuleSetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", SetActiveReceiptRuleSetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SetActiveReceiptRuleSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SetActiveReceiptRuleSetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.SetActiveReceiptRuleSetSync(SetActiveReceiptRuleSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetActiveReceiptRuleSetAsync(SetActiveReceiptRuleSetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteReceiptRuleSet asynchronously, invoking a callback when done
-- @param DeleteReceiptRuleSetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteReceiptRuleSetAsync(DeleteReceiptRuleSetRequest, cb)
	assert(DeleteReceiptRuleSetRequest, "You must provide a DeleteReceiptRuleSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteReceiptRuleSet",
	}
	for header,value in pairs(DeleteReceiptRuleSetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteReceiptRuleSetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteReceiptRuleSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteReceiptRuleSetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteReceiptRuleSetSync(DeleteReceiptRuleSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteReceiptRuleSetAsync(DeleteReceiptRuleSetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SetIdentityDkimEnabled asynchronously, invoking a callback when done
-- @param SetIdentityDkimEnabledRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SetIdentityDkimEnabledAsync(SetIdentityDkimEnabledRequest, cb)
	assert(SetIdentityDkimEnabledRequest, "You must provide a SetIdentityDkimEnabledRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".SetIdentityDkimEnabled",
	}
	for header,value in pairs(SetIdentityDkimEnabledRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", SetIdentityDkimEnabledRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SetIdentityDkimEnabled synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SetIdentityDkimEnabledRequest
-- @return response
-- @return error_type
-- @return error_message
function M.SetIdentityDkimEnabledSync(SetIdentityDkimEnabledRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetIdentityDkimEnabledAsync(SetIdentityDkimEnabledRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetTemplate asynchronously, invoking a callback when done
-- @param GetTemplateRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetTemplateAsync(GetTemplateRequest, cb)
	assert(GetTemplateRequest, "You must provide a GetTemplateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetTemplate",
	}
	for header,value in pairs(GetTemplateRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetTemplateRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetTemplate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetTemplateRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetTemplateSync(GetTemplateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetTemplateAsync(GetTemplateRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListTemplates asynchronously, invoking a callback when done
-- @param ListTemplatesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListTemplatesAsync(ListTemplatesRequest, cb)
	assert(ListTemplatesRequest, "You must provide a ListTemplatesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListTemplates",
	}
	for header,value in pairs(ListTemplatesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListTemplatesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListTemplates synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListTemplatesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListTemplatesSync(ListTemplatesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTemplatesAsync(ListTemplatesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeReceiptRule asynchronously, invoking a callback when done
-- @param DescribeReceiptRuleRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeReceiptRuleAsync(DescribeReceiptRuleRequest, cb)
	assert(DescribeReceiptRuleRequest, "You must provide a DescribeReceiptRuleRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeReceiptRule",
	}
	for header,value in pairs(DescribeReceiptRuleRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeReceiptRuleRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeReceiptRule synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeReceiptRuleRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeReceiptRuleSync(DescribeReceiptRuleRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeReceiptRuleAsync(DescribeReceiptRuleRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SendBulkTemplatedEmail asynchronously, invoking a callback when done
-- @param SendBulkTemplatedEmailRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SendBulkTemplatedEmailAsync(SendBulkTemplatedEmailRequest, cb)
	assert(SendBulkTemplatedEmailRequest, "You must provide a SendBulkTemplatedEmailRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".SendBulkTemplatedEmail",
	}
	for header,value in pairs(SendBulkTemplatedEmailRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", SendBulkTemplatedEmailRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SendBulkTemplatedEmail synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SendBulkTemplatedEmailRequest
-- @return response
-- @return error_type
-- @return error_message
function M.SendBulkTemplatedEmailSync(SendBulkTemplatedEmailRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SendBulkTemplatedEmailAsync(SendBulkTemplatedEmailRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateConfigurationSetReputationMetricsEnabled asynchronously, invoking a callback when done
-- @param UpdateConfigurationSetReputationMetricsEnabledRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateConfigurationSetReputationMetricsEnabledAsync(UpdateConfigurationSetReputationMetricsEnabledRequest, cb)
	assert(UpdateConfigurationSetReputationMetricsEnabledRequest, "You must provide a UpdateConfigurationSetReputationMetricsEnabledRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateConfigurationSetReputationMetricsEnabled",
	}
	for header,value in pairs(UpdateConfigurationSetReputationMetricsEnabledRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateConfigurationSetReputationMetricsEnabledRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateConfigurationSetReputationMetricsEnabled synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateConfigurationSetReputationMetricsEnabledRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateConfigurationSetReputationMetricsEnabledSync(UpdateConfigurationSetReputationMetricsEnabledRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateConfigurationSetReputationMetricsEnabledAsync(UpdateConfigurationSetReputationMetricsEnabledRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetSendQuota asynchronously, invoking a callback when done
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetSendQuotaAsync(cb)
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetSendQuota",
	}


	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", {}, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetSendQuota synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @return response
-- @return error_type
-- @return error_message
function M.GetSendQuotaSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetSendQuotaAsync(function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetCustomVerificationEmailTemplate asynchronously, invoking a callback when done
-- @param GetCustomVerificationEmailTemplateRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetCustomVerificationEmailTemplateAsync(GetCustomVerificationEmailTemplateRequest, cb)
	assert(GetCustomVerificationEmailTemplateRequest, "You must provide a GetCustomVerificationEmailTemplateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetCustomVerificationEmailTemplate",
	}
	for header,value in pairs(GetCustomVerificationEmailTemplateRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetCustomVerificationEmailTemplateRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetCustomVerificationEmailTemplate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetCustomVerificationEmailTemplateRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetCustomVerificationEmailTemplateSync(GetCustomVerificationEmailTemplateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetCustomVerificationEmailTemplateAsync(GetCustomVerificationEmailTemplateRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateAccountSendingEnabled asynchronously, invoking a callback when done
-- @param UpdateAccountSendingEnabledRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateAccountSendingEnabledAsync(UpdateAccountSendingEnabledRequest, cb)
	assert(UpdateAccountSendingEnabledRequest, "You must provide a UpdateAccountSendingEnabledRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateAccountSendingEnabled",
	}
	for header,value in pairs(UpdateAccountSendingEnabledRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateAccountSendingEnabledRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateAccountSendingEnabled synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateAccountSendingEnabledRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateAccountSendingEnabledSync(UpdateAccountSendingEnabledRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateAccountSendingEnabledAsync(UpdateAccountSendingEnabledRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SetReceiptRulePosition asynchronously, invoking a callback when done
-- @param SetReceiptRulePositionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SetReceiptRulePositionAsync(SetReceiptRulePositionRequest, cb)
	assert(SetReceiptRulePositionRequest, "You must provide a SetReceiptRulePositionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".SetReceiptRulePosition",
	}
	for header,value in pairs(SetReceiptRulePositionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", SetReceiptRulePositionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SetReceiptRulePosition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SetReceiptRulePositionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.SetReceiptRulePositionSync(SetReceiptRulePositionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetReceiptRulePositionAsync(SetReceiptRulePositionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateConfigurationSet asynchronously, invoking a callback when done
-- @param CreateConfigurationSetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateConfigurationSetAsync(CreateConfigurationSetRequest, cb)
	assert(CreateConfigurationSetRequest, "You must provide a CreateConfigurationSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateConfigurationSet",
	}
	for header,value in pairs(CreateConfigurationSetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateConfigurationSetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateConfigurationSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateConfigurationSetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateConfigurationSetSync(CreateConfigurationSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateConfigurationSetAsync(CreateConfigurationSetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteVerifiedEmailAddress asynchronously, invoking a callback when done
-- @param DeleteVerifiedEmailAddressRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteVerifiedEmailAddressAsync(DeleteVerifiedEmailAddressRequest, cb)
	assert(DeleteVerifiedEmailAddressRequest, "You must provide a DeleteVerifiedEmailAddressRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteVerifiedEmailAddress",
	}
	for header,value in pairs(DeleteVerifiedEmailAddressRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteVerifiedEmailAddressRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteVerifiedEmailAddress synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteVerifiedEmailAddressRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteVerifiedEmailAddressSync(DeleteVerifiedEmailAddressRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteVerifiedEmailAddressAsync(DeleteVerifiedEmailAddressRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListConfigurationSets asynchronously, invoking a callback when done
-- @param ListConfigurationSetsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListConfigurationSetsAsync(ListConfigurationSetsRequest, cb)
	assert(ListConfigurationSetsRequest, "You must provide a ListConfigurationSetsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListConfigurationSets",
	}
	for header,value in pairs(ListConfigurationSetsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListConfigurationSetsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListConfigurationSets synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListConfigurationSetsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListConfigurationSetsSync(ListConfigurationSetsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListConfigurationSetsAsync(ListConfigurationSetsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateReceiptFilter asynchronously, invoking a callback when done
-- @param CreateReceiptFilterRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateReceiptFilterAsync(CreateReceiptFilterRequest, cb)
	assert(CreateReceiptFilterRequest, "You must provide a CreateReceiptFilterRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateReceiptFilter",
	}
	for header,value in pairs(CreateReceiptFilterRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateReceiptFilterRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateReceiptFilter synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateReceiptFilterRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateReceiptFilterSync(CreateReceiptFilterRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateReceiptFilterAsync(CreateReceiptFilterRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SendTemplatedEmail asynchronously, invoking a callback when done
-- @param SendTemplatedEmailRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SendTemplatedEmailAsync(SendTemplatedEmailRequest, cb)
	assert(SendTemplatedEmailRequest, "You must provide a SendTemplatedEmailRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".SendTemplatedEmail",
	}
	for header,value in pairs(SendTemplatedEmailRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", SendTemplatedEmailRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SendTemplatedEmail synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SendTemplatedEmailRequest
-- @return response
-- @return error_type
-- @return error_message
function M.SendTemplatedEmailSync(SendTemplatedEmailRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SendTemplatedEmailAsync(SendTemplatedEmailRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateConfigurationSetTrackingOptions asynchronously, invoking a callback when done
-- @param CreateConfigurationSetTrackingOptionsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateConfigurationSetTrackingOptionsAsync(CreateConfigurationSetTrackingOptionsRequest, cb)
	assert(CreateConfigurationSetTrackingOptionsRequest, "You must provide a CreateConfigurationSetTrackingOptionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateConfigurationSetTrackingOptions",
	}
	for header,value in pairs(CreateConfigurationSetTrackingOptionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateConfigurationSetTrackingOptionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateConfigurationSetTrackingOptions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateConfigurationSetTrackingOptionsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateConfigurationSetTrackingOptionsSync(CreateConfigurationSetTrackingOptionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateConfigurationSetTrackingOptionsAsync(CreateConfigurationSetTrackingOptionsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListReceiptRuleSets asynchronously, invoking a callback when done
-- @param ListReceiptRuleSetsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListReceiptRuleSetsAsync(ListReceiptRuleSetsRequest, cb)
	assert(ListReceiptRuleSetsRequest, "You must provide a ListReceiptRuleSetsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListReceiptRuleSets",
	}
	for header,value in pairs(ListReceiptRuleSetsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListReceiptRuleSetsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListReceiptRuleSets synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListReceiptRuleSetsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListReceiptRuleSetsSync(ListReceiptRuleSetsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListReceiptRuleSetsAsync(ListReceiptRuleSetsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateTemplate asynchronously, invoking a callback when done
-- @param CreateTemplateRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateTemplateAsync(CreateTemplateRequest, cb)
	assert(CreateTemplateRequest, "You must provide a CreateTemplateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateTemplate",
	}
	for header,value in pairs(CreateTemplateRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateTemplateRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateTemplate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateTemplateRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateTemplateSync(CreateTemplateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateTemplateAsync(CreateTemplateRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetIdentityNotificationAttributes asynchronously, invoking a callback when done
-- @param GetIdentityNotificationAttributesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetIdentityNotificationAttributesAsync(GetIdentityNotificationAttributesRequest, cb)
	assert(GetIdentityNotificationAttributesRequest, "You must provide a GetIdentityNotificationAttributesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetIdentityNotificationAttributes",
	}
	for header,value in pairs(GetIdentityNotificationAttributesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetIdentityNotificationAttributesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetIdentityNotificationAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetIdentityNotificationAttributesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetIdentityNotificationAttributesSync(GetIdentityNotificationAttributesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetIdentityNotificationAttributesAsync(GetIdentityNotificationAttributesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SetIdentityHeadersInNotificationsEnabled asynchronously, invoking a callback when done
-- @param SetIdentityHeadersInNotificationsEnabledRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SetIdentityHeadersInNotificationsEnabledAsync(SetIdentityHeadersInNotificationsEnabledRequest, cb)
	assert(SetIdentityHeadersInNotificationsEnabledRequest, "You must provide a SetIdentityHeadersInNotificationsEnabledRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".SetIdentityHeadersInNotificationsEnabled",
	}
	for header,value in pairs(SetIdentityHeadersInNotificationsEnabledRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", SetIdentityHeadersInNotificationsEnabledRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SetIdentityHeadersInNotificationsEnabled synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SetIdentityHeadersInNotificationsEnabledRequest
-- @return response
-- @return error_type
-- @return error_message
function M.SetIdentityHeadersInNotificationsEnabledSync(SetIdentityHeadersInNotificationsEnabledRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetIdentityHeadersInNotificationsEnabledAsync(SetIdentityHeadersInNotificationsEnabledRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SendEmail asynchronously, invoking a callback when done
-- @param SendEmailRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SendEmailAsync(SendEmailRequest, cb)
	assert(SendEmailRequest, "You must provide a SendEmailRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".SendEmail",
	}
	for header,value in pairs(SendEmailRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", SendEmailRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SendEmail synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SendEmailRequest
-- @return response
-- @return error_type
-- @return error_message
function M.SendEmailSync(SendEmailRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SendEmailAsync(SendEmailRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteIdentity asynchronously, invoking a callback when done
-- @param DeleteIdentityRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteIdentityAsync(DeleteIdentityRequest, cb)
	assert(DeleteIdentityRequest, "You must provide a DeleteIdentityRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteIdentity",
	}
	for header,value in pairs(DeleteIdentityRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteIdentityRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteIdentity synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteIdentityRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteIdentitySync(DeleteIdentityRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteIdentityAsync(DeleteIdentityRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call VerifyDomainDkim asynchronously, invoking a callback when done
-- @param VerifyDomainDkimRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.VerifyDomainDkimAsync(VerifyDomainDkimRequest, cb)
	assert(VerifyDomainDkimRequest, "You must provide a VerifyDomainDkimRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".VerifyDomainDkim",
	}
	for header,value in pairs(VerifyDomainDkimRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", VerifyDomainDkimRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call VerifyDomainDkim synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param VerifyDomainDkimRequest
-- @return response
-- @return error_type
-- @return error_message
function M.VerifyDomainDkimSync(VerifyDomainDkimRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.VerifyDomainDkimAsync(VerifyDomainDkimRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateCustomVerificationEmailTemplate asynchronously, invoking a callback when done
-- @param CreateCustomVerificationEmailTemplateRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateCustomVerificationEmailTemplateAsync(CreateCustomVerificationEmailTemplateRequest, cb)
	assert(CreateCustomVerificationEmailTemplateRequest, "You must provide a CreateCustomVerificationEmailTemplateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateCustomVerificationEmailTemplate",
	}
	for header,value in pairs(CreateCustomVerificationEmailTemplateRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateCustomVerificationEmailTemplateRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateCustomVerificationEmailTemplate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateCustomVerificationEmailTemplateRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateCustomVerificationEmailTemplateSync(CreateCustomVerificationEmailTemplateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateCustomVerificationEmailTemplateAsync(CreateCustomVerificationEmailTemplateRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListIdentityPolicies asynchronously, invoking a callback when done
-- @param ListIdentityPoliciesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListIdentityPoliciesAsync(ListIdentityPoliciesRequest, cb)
	assert(ListIdentityPoliciesRequest, "You must provide a ListIdentityPoliciesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListIdentityPolicies",
	}
	for header,value in pairs(ListIdentityPoliciesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListIdentityPoliciesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListIdentityPolicies synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListIdentityPoliciesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListIdentityPoliciesSync(ListIdentityPoliciesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListIdentityPoliciesAsync(ListIdentityPoliciesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteConfigurationSetEventDestination asynchronously, invoking a callback when done
-- @param DeleteConfigurationSetEventDestinationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteConfigurationSetEventDestinationAsync(DeleteConfigurationSetEventDestinationRequest, cb)
	assert(DeleteConfigurationSetEventDestinationRequest, "You must provide a DeleteConfigurationSetEventDestinationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteConfigurationSetEventDestination",
	}
	for header,value in pairs(DeleteConfigurationSetEventDestinationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteConfigurationSetEventDestinationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteConfigurationSetEventDestination synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteConfigurationSetEventDestinationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteConfigurationSetEventDestinationSync(DeleteConfigurationSetEventDestinationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteConfigurationSetEventDestinationAsync(DeleteConfigurationSetEventDestinationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteConfigurationSetTrackingOptions asynchronously, invoking a callback when done
-- @param DeleteConfigurationSetTrackingOptionsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteConfigurationSetTrackingOptionsAsync(DeleteConfigurationSetTrackingOptionsRequest, cb)
	assert(DeleteConfigurationSetTrackingOptionsRequest, "You must provide a DeleteConfigurationSetTrackingOptionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteConfigurationSetTrackingOptions",
	}
	for header,value in pairs(DeleteConfigurationSetTrackingOptionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteConfigurationSetTrackingOptionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteConfigurationSetTrackingOptions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteConfigurationSetTrackingOptionsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteConfigurationSetTrackingOptionsSync(DeleteConfigurationSetTrackingOptionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteConfigurationSetTrackingOptionsAsync(DeleteConfigurationSetTrackingOptionsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListIdentities asynchronously, invoking a callback when done
-- @param ListIdentitiesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListIdentitiesAsync(ListIdentitiesRequest, cb)
	assert(ListIdentitiesRequest, "You must provide a ListIdentitiesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListIdentities",
	}
	for header,value in pairs(ListIdentitiesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListIdentitiesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListIdentities synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListIdentitiesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListIdentitiesSync(ListIdentitiesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListIdentitiesAsync(ListIdentitiesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetIdentityVerificationAttributes asynchronously, invoking a callback when done
-- @param GetIdentityVerificationAttributesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetIdentityVerificationAttributesAsync(GetIdentityVerificationAttributesRequest, cb)
	assert(GetIdentityVerificationAttributesRequest, "You must provide a GetIdentityVerificationAttributesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetIdentityVerificationAttributes",
	}
	for header,value in pairs(GetIdentityVerificationAttributesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetIdentityVerificationAttributesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetIdentityVerificationAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetIdentityVerificationAttributesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetIdentityVerificationAttributesSync(GetIdentityVerificationAttributesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetIdentityVerificationAttributesAsync(GetIdentityVerificationAttributesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateTemplate asynchronously, invoking a callback when done
-- @param UpdateTemplateRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateTemplateAsync(UpdateTemplateRequest, cb)
	assert(UpdateTemplateRequest, "You must provide a UpdateTemplateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateTemplate",
	}
	for header,value in pairs(UpdateTemplateRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateTemplateRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateTemplate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateTemplateRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateTemplateSync(UpdateTemplateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateTemplateAsync(UpdateTemplateRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListCustomVerificationEmailTemplates asynchronously, invoking a callback when done
-- @param ListCustomVerificationEmailTemplatesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListCustomVerificationEmailTemplatesAsync(ListCustomVerificationEmailTemplatesRequest, cb)
	assert(ListCustomVerificationEmailTemplatesRequest, "You must provide a ListCustomVerificationEmailTemplatesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListCustomVerificationEmailTemplates",
	}
	for header,value in pairs(ListCustomVerificationEmailTemplatesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListCustomVerificationEmailTemplatesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListCustomVerificationEmailTemplates synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListCustomVerificationEmailTemplatesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListCustomVerificationEmailTemplatesSync(ListCustomVerificationEmailTemplatesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListCustomVerificationEmailTemplatesAsync(ListCustomVerificationEmailTemplatesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteCustomVerificationEmailTemplate asynchronously, invoking a callback when done
-- @param DeleteCustomVerificationEmailTemplateRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteCustomVerificationEmailTemplateAsync(DeleteCustomVerificationEmailTemplateRequest, cb)
	assert(DeleteCustomVerificationEmailTemplateRequest, "You must provide a DeleteCustomVerificationEmailTemplateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteCustomVerificationEmailTemplate",
	}
	for header,value in pairs(DeleteCustomVerificationEmailTemplateRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteCustomVerificationEmailTemplateRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteCustomVerificationEmailTemplate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteCustomVerificationEmailTemplateRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteCustomVerificationEmailTemplateSync(DeleteCustomVerificationEmailTemplateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteCustomVerificationEmailTemplateAsync(DeleteCustomVerificationEmailTemplateRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SetIdentityNotificationTopic asynchronously, invoking a callback when done
-- @param SetIdentityNotificationTopicRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SetIdentityNotificationTopicAsync(SetIdentityNotificationTopicRequest, cb)
	assert(SetIdentityNotificationTopicRequest, "You must provide a SetIdentityNotificationTopicRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".SetIdentityNotificationTopic",
	}
	for header,value in pairs(SetIdentityNotificationTopicRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", SetIdentityNotificationTopicRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SetIdentityNotificationTopic synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SetIdentityNotificationTopicRequest
-- @return response
-- @return error_type
-- @return error_message
function M.SetIdentityNotificationTopicSync(SetIdentityNotificationTopicRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetIdentityNotificationTopicAsync(SetIdentityNotificationTopicRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutIdentityPolicy asynchronously, invoking a callback when done
-- @param PutIdentityPolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutIdentityPolicyAsync(PutIdentityPolicyRequest, cb)
	assert(PutIdentityPolicyRequest, "You must provide a PutIdentityPolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutIdentityPolicy",
	}
	for header,value in pairs(PutIdentityPolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutIdentityPolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutIdentityPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutIdentityPolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutIdentityPolicySync(PutIdentityPolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutIdentityPolicyAsync(PutIdentityPolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SendRawEmail asynchronously, invoking a callback when done
-- @param SendRawEmailRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SendRawEmailAsync(SendRawEmailRequest, cb)
	assert(SendRawEmailRequest, "You must provide a SendRawEmailRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".SendRawEmail",
	}
	for header,value in pairs(SendRawEmailRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", SendRawEmailRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SendRawEmail synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SendRawEmailRequest
-- @return response
-- @return error_type
-- @return error_message
function M.SendRawEmailSync(SendRawEmailRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SendRawEmailAsync(SendRawEmailRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateReceiptRuleSet asynchronously, invoking a callback when done
-- @param CreateReceiptRuleSetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateReceiptRuleSetAsync(CreateReceiptRuleSetRequest, cb)
	assert(CreateReceiptRuleSetRequest, "You must provide a CreateReceiptRuleSetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateReceiptRuleSet",
	}
	for header,value in pairs(CreateReceiptRuleSetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateReceiptRuleSetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateReceiptRuleSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateReceiptRuleSetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateReceiptRuleSetSync(CreateReceiptRuleSetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateReceiptRuleSetAsync(CreateReceiptRuleSetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
