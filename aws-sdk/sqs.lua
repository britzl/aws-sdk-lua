--- GENERATED CODE - DO NOT MODIFY
-- Amazon Simple Queue Service (sqs-2012-11-05)

local M = {}

M.metadata = {
	api_version = "2012-11-05",
	json_version = "",
	protocol = "query",
	checksum_format = "",
	endpoint_prefix = "sqs",
	service_abbreviation = "Amazon SQS",
	service_full_name = "Amazon Simple Queue Service",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "sqs-2012-11-05",
}

local UnsupportedOperation_keys = { nil }

function M.AssertUnsupportedOperation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnsupportedOperation to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(UnsupportedOperation_keys[k], "UnsupportedOperation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnsupportedOperation
-- &lt;p&gt;Error code 400. Unsupported operation.&lt;/p&gt;
function M.UnsupportedOperation(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnsupportedOperation")
	local t = { 
	}
	M.AssertUnsupportedOperation(t)
	return t
end

local PurgeQueueInProgress_keys = { nil }

function M.AssertPurgeQueueInProgress(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PurgeQueueInProgress to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(PurgeQueueInProgress_keys[k], "PurgeQueueInProgress contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PurgeQueueInProgress
-- &lt;p&gt;Indicates that the specified queue previously received a &lt;code&gt;PurgeQueue&lt;/code&gt; request within the last 60 seconds (the time it can take to delete the messages in the queue).&lt;/p&gt;
function M.PurgeQueueInProgress(...)
	assert(select("#", ...) == 0, "Too many arguments when creating PurgeQueueInProgress")
	local t = { 
	}
	M.AssertPurgeQueueInProgress(t)
	return t
end

local MessageAttributeValue_keys = { "BinaryListValues" = true, "StringValue" = true, "DataType" = true, "BinaryValue" = true, "StringListValues" = true, nil }

function M.AssertMessageAttributeValue(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MessageAttributeValue to be of type 'table'")
	assert(struct["DataType"], "Expected key DataType to exist in table")
	if struct["BinaryListValues"] then M.AssertBinaryList(struct["BinaryListValues"]) end
	if struct["StringValue"] then M.AssertString(struct["StringValue"]) end
	if struct["DataType"] then M.AssertString(struct["DataType"]) end
	if struct["BinaryValue"] then M.AssertBinary(struct["BinaryValue"]) end
	if struct["StringListValues"] then M.AssertStringList(struct["StringListValues"]) end
	for k,_ in pairs(struct) do
		assert(MessageAttributeValue_keys[k], "MessageAttributeValue contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MessageAttributeValue
-- &lt;p&gt;The user-specified message attribute value. For string data types, the &lt;code&gt;Value&lt;/code&gt; attribute has the same restrictions on the content as the message body. For more information, see &lt;code&gt; &lt;a&gt;SendMessage&lt;/a&gt;.&lt;/code&gt; &lt;/p&gt; &lt;p&gt; &lt;code&gt;Name&lt;/code&gt;, &lt;code&gt;type&lt;/code&gt;, &lt;code&gt;value&lt;/code&gt; and the message body must not be empty or null. All parts of the message attribute, including &lt;code&gt;Name&lt;/code&gt;, &lt;code&gt;Type&lt;/code&gt;, and &lt;code&gt;Value&lt;/code&gt;, are part of the message size restriction (256 KB or 262,144 bytes).&lt;/p&gt;
-- @param BinaryListValues [BinaryList] &lt;p&gt;Not implemented. Reserved for future use.&lt;/p&gt;
-- @param StringValue [String] &lt;p&gt;Strings are Unicode with UTF-8 binary encoding. For a list of code values, see &lt;a href=&quot;http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters&quot;&gt;ASCII Printable Characters&lt;/a&gt;.&lt;/p&gt;
-- @param DataType [String] &lt;p&gt;Amazon SQS supports the following logical data types: &lt;code&gt;String&lt;/code&gt;, &lt;code&gt;Number&lt;/code&gt;, and &lt;code&gt;Binary&lt;/code&gt;. For the &lt;code&gt;Number&lt;/code&gt; data type, you must use &lt;code&gt;StringValue&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;You can also append custom labels. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-message-attributes.html#message-attributes-data-types-validation&quot;&gt;Message Attribute Data Types and Validation&lt;/a&gt; in the &lt;i&gt;Amazon SQS Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param BinaryValue [Binary] &lt;p&gt;Binary type attributes can store any binary data, such as compressed data, encrypted data, or images.&lt;/p&gt;
-- @param StringListValues [StringList] &lt;p&gt;Not implemented. Reserved for future use.&lt;/p&gt;
-- Required parameter: DataType
function M.MessageAttributeValue(BinaryListValues, StringValue, DataType, BinaryValue, StringListValues, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MessageAttributeValue")
	local t = { 
		["BinaryListValues"] = BinaryListValues,
		["StringValue"] = StringValue,
		["DataType"] = DataType,
		["BinaryValue"] = BinaryValue,
		["StringListValues"] = StringListValues,
	}
	M.AssertMessageAttributeValue(t)
	return t
end

local SetQueueAttributesRequest_keys = { "QueueUrl" = true, "Attributes" = true, nil }

function M.AssertSetQueueAttributesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetQueueAttributesRequest to be of type 'table'")
	assert(struct["QueueUrl"], "Expected key QueueUrl to exist in table")
	assert(struct["Attributes"], "Expected key Attributes to exist in table")
	if struct["QueueUrl"] then M.AssertString(struct["QueueUrl"]) end
	if struct["Attributes"] then M.AssertQueueAttributeMap(struct["Attributes"]) end
	for k,_ in pairs(struct) do
		assert(SetQueueAttributesRequest_keys[k], "SetQueueAttributesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetQueueAttributesRequest
-- &lt;p/&gt;
-- @param QueueUrl [String] &lt;p&gt;The URL of the Amazon SQS queue whose attributes are set.&lt;/p&gt; &lt;p&gt;Queue URLs are case-sensitive.&lt;/p&gt;
-- @param Attributes [QueueAttributeMap] &lt;p&gt;A map of attributes to set.&lt;/p&gt; &lt;p&gt;The following lists the names, descriptions, and values of the special request parameters that the &lt;code&gt;SetQueueAttributes&lt;/code&gt; action uses:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;DelaySeconds&lt;/code&gt; - The length of time, in seconds, for which the delivery of all messages in the queue is delayed. Valid values: An integer from 0 to 900 (15 minutes). The default is 0 (zero). &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;MaximumMessageSize&lt;/code&gt; - The limit of how many bytes a message can contain before Amazon SQS rejects it. Valid values: An integer from 1,024 bytes (1 KiB) up to 262,144 bytes (256 KiB). The default is 262,144 (256 KiB). &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;MessageRetentionPeriod&lt;/code&gt; - The length of time, in seconds, for which Amazon SQS retains a message. Valid values: An integer representing seconds, from 60 (1 minute) to 1,209,600 (14 days). The default is 345,600 (4 days). &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Policy&lt;/code&gt; - The queue's policy. A valid AWS policy. For more information about policy structure, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/PoliciesOverview.html&quot;&gt;Overview of AWS IAM Policies&lt;/a&gt; in the &lt;i&gt;Amazon IAM User Guide&lt;/i&gt;. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;ReceiveMessageWaitTimeSeconds&lt;/code&gt; - The length of time, in seconds, for which a &lt;code&gt; &lt;a&gt;ReceiveMessage&lt;/a&gt; &lt;/code&gt; action waits for a message to arrive. Valid values: an integer from 0 to 20 (seconds). The default is 0. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;RedrivePolicy&lt;/code&gt; - The parameters for the dead letter queue functionality of the source queue. For more information about the redrive policy and dead letter queues, see &lt;a href=&quot;http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html&quot;&gt;Using Amazon SQS Dead Letter Queues&lt;/a&gt; in the &lt;i&gt;Amazon SQS Developer Guide&lt;/i&gt;. &lt;/p&gt; &lt;note&gt; &lt;p&gt;The dead letter queue of a FIFO queue must also be a FIFO queue. Similarly, the dead letter queue of a standard queue must also be a standard queue.&lt;/p&gt; &lt;/note&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;VisibilityTimeout&lt;/code&gt; - The visibility timeout for the queue. Valid values: an integer from 0 to 43,200 (12 hours). The default is 30. For more information about the visibility timeout, see &lt;a href=&quot;http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html&quot;&gt;Visibility Timeout&lt;/a&gt; in the &lt;i&gt;Amazon SQS Developer Guide&lt;/i&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;The following attributes apply only to &lt;a href=&quot;http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html&quot;&gt;server-side-encryption&lt;/a&gt;:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;KmsMasterKeyId&lt;/code&gt; - The ID of an AWS-managed customer master key (CMK) for Amazon SQS or a custom CMK. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-sse-key-terms&quot;&gt;Key Terms&lt;/a&gt;. While the alias of the AWS-managed CMK for Amazon SQS is always &lt;code&gt;alias/aws/sqs&lt;/code&gt;, the alias of a custom CMK can, for example, be &lt;code&gt;alias/aws/sqs&lt;/code&gt;. For more examples, see &lt;a href=&quot;http://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html#API_DescribeKey_RequestParameters&quot;&gt;KeyId&lt;/a&gt; in the &lt;i&gt;AWS Key Management Service API Reference&lt;/i&gt;. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;KmsDataKeyReusePeriodSeconds&lt;/code&gt; - The length of time, in seconds, for which Amazon SQS can reuse a &lt;a href=&quot;http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#data-keys&quot;&gt;data key&lt;/a&gt; to encrypt or decrypt messages before calling AWS KMS again. An integer representing seconds, between 60 seconds (1 minute) and 86,400 seconds (24 hours). The default is 300 (5 minutes). A shorter time period provides better security but results in more calls to KMS which incur charges after Free Tier. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-how-does-the-data-key-reuse-period-work&quot;&gt;How Does the Data Key Reuse Period Work?&lt;/a&gt;. &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;The following attribute applies only to &lt;a href=&quot;http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html&quot;&gt;FIFO (first-in-first-out) queues&lt;/a&gt;:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;ContentBasedDeduplication&lt;/code&gt; - Enables content-based deduplication. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-exactly-once-processing&quot;&gt;Exactly-Once Processing&lt;/a&gt; in the &lt;i&gt;Amazon SQS Developer Guide&lt;/i&gt;. &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Every message must have a unique &lt;code&gt;MessageDeduplicationId&lt;/code&gt;,&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;You may provide a &lt;code&gt;MessageDeduplicationId&lt;/code&gt; explicitly.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;If you aren't able to provide a &lt;code&gt;MessageDeduplicationId&lt;/code&gt; and you enable &lt;code&gt;ContentBasedDeduplication&lt;/code&gt; for your queue, Amazon SQS uses a SHA-256 hash to generate the &lt;code&gt;MessageDeduplicationId&lt;/code&gt; using the body of the message (but not the attributes of the message). &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;If you don't provide a &lt;code&gt;MessageDeduplicationId&lt;/code&gt; and the queue doesn't have &lt;code&gt;ContentBasedDeduplication&lt;/code&gt; set, the action fails with an error.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;If the queue has &lt;code&gt;ContentBasedDeduplication&lt;/code&gt; set, your &lt;code&gt;MessageDeduplicationId&lt;/code&gt; overrides the generated one.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;When &lt;code&gt;ContentBasedDeduplication&lt;/code&gt; is in effect, messages with identical content sent within the deduplication interval are treated as duplicates and only one copy of the message is delivered.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;If you send one message with &lt;code&gt;ContentBasedDeduplication&lt;/code&gt; enabled and then another message with a &lt;code&gt;MessageDeduplicationId&lt;/code&gt; that is the same as the one generated for the first &lt;code&gt;MessageDeduplicationId&lt;/code&gt;, the two messages are treated as duplicates and only one copy of the message is delivered. &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;Any other valid special request parameters (such as the following) are ignored:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;ApproximateNumberOfMessages&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;ApproximateNumberOfMessagesDelayed&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;ApproximateNumberOfMessagesNotVisible&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;CreatedTimestamp&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;LastModifiedTimestamp&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;QueueArn&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- Required parameter: QueueUrl
-- Required parameter: Attributes
function M.SetQueueAttributesRequest(QueueUrl, Attributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetQueueAttributesRequest")
	local t = { 
		["QueueUrl"] = QueueUrl,
		["Attributes"] = Attributes,
	}
	M.AssertSetQueueAttributesRequest(t)
	return t
end

local GetQueueAttributesRequest_keys = { "QueueUrl" = true, "AttributeNames" = true, nil }

function M.AssertGetQueueAttributesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetQueueAttributesRequest to be of type 'table'")
	assert(struct["QueueUrl"], "Expected key QueueUrl to exist in table")
	if struct["QueueUrl"] then M.AssertString(struct["QueueUrl"]) end
	if struct["AttributeNames"] then M.AssertAttributeNameList(struct["AttributeNames"]) end
	for k,_ in pairs(struct) do
		assert(GetQueueAttributesRequest_keys[k], "GetQueueAttributesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetQueueAttributesRequest
-- &lt;p/&gt;
-- @param QueueUrl [String] &lt;p&gt;The URL of the Amazon SQS queue whose attribute information is retrieved.&lt;/p&gt; &lt;p&gt;Queue URLs are case-sensitive.&lt;/p&gt;
-- @param AttributeNames [AttributeNameList] &lt;p&gt;A list of attributes for which to retrieve information.&lt;/p&gt; &lt;note&gt; &lt;p&gt;In the future, new attributes might be added. If you write code that calls this action, we recommend that you structure your code so that it can handle new attributes gracefully.&lt;/p&gt; &lt;/note&gt; &lt;p&gt;The following attributes are supported:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;All&lt;/code&gt; - Returns all values. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;ApproximateNumberOfMessages&lt;/code&gt; - Returns the approximate number of visible messages in a queue. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-resources-required-process-messages.html&quot;&gt;Resources Required to Process Messages&lt;/a&gt; in the &lt;i&gt;Amazon SQS Developer Guide&lt;/i&gt;. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;ApproximateNumberOfMessagesDelayed&lt;/code&gt; - Returns the approximate number of messages that are waiting to be added to the queue. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;ApproximateNumberOfMessagesNotVisible&lt;/code&gt; - Returns the approximate number of messages that have not timed-out and aren't deleted. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-resources-required-process-messages.html&quot;&gt;Resources Required to Process Messages&lt;/a&gt; in the &lt;i&gt;Amazon SQS Developer Guide&lt;/i&gt;. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;CreatedTimestamp&lt;/code&gt; - Returns the time when the queue was created in seconds (&lt;a href=&quot;http://en.wikipedia.org/wiki/Unix_time&quot;&gt;epoch time&lt;/a&gt;).&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;DelaySeconds&lt;/code&gt; - Returns the default delay on the queue in seconds.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;LastModifiedTimestamp&lt;/code&gt; - Returns the time when the queue was last changed in seconds (&lt;a href=&quot;http://en.wikipedia.org/wiki/Unix_time&quot;&gt;epoch time&lt;/a&gt;).&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;MaximumMessageSize&lt;/code&gt; - Returns the limit of how many bytes a message can contain before Amazon SQS rejects it.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;MessageRetentionPeriod&lt;/code&gt; - Returns the length of time, in seconds, for which Amazon SQS retains a message.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Policy&lt;/code&gt; - Returns the policy of the queue.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;QueueArn&lt;/code&gt; - Returns the Amazon resource name (ARN) of the queue.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;ReceiveMessageWaitTimeSeconds&lt;/code&gt; - Returns the length of time, in seconds, for which the &lt;code&gt;ReceiveMessage&lt;/code&gt; action waits for a message to arrive. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;RedrivePolicy&lt;/code&gt; - Returns the parameters for dead letter queue functionality of the source queue. For more information about the redrive policy and dead letter queues, see &lt;a href=&quot;http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html&quot;&gt;Using Amazon SQS Dead Letter Queues&lt;/a&gt; in the &lt;i&gt;Amazon SQS Developer Guide&lt;/i&gt;. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;VisibilityTimeout&lt;/code&gt; - Returns the visibility timeout for the queue. For more information about the visibility timeout, see &lt;a href=&quot;http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html&quot;&gt;Visibility Timeout&lt;/a&gt; in the &lt;i&gt;Amazon SQS Developer Guide&lt;/i&gt;. &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;The following attributes apply only to &lt;a href=&quot;http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html&quot;&gt;server-side-encryption&lt;/a&gt;:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;KmsMasterKeyId&lt;/code&gt; - Returns the ID of an AWS-managed customer master key (CMK) for Amazon SQS or a custom CMK. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-sse-key-terms&quot;&gt;Key Terms&lt;/a&gt;. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;KmsDataKeyReusePeriodSeconds&lt;/code&gt; - Returns the length of time, in seconds, for which Amazon SQS can reuse a data key to encrypt or decrypt messages before calling AWS KMS again. &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;The following attributes apply only to &lt;a href=&quot;http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html&quot;&gt;FIFO (first-in-first-out) queues&lt;/a&gt;:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;FifoQueue&lt;/code&gt; - Returns whether the queue is FIFO. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-understanding-logic&quot;&gt;FIFO Queue Logic&lt;/a&gt; in the &lt;i&gt;Amazon SQS Developer Guide&lt;/i&gt;.&lt;/p&gt; &lt;note&gt; &lt;p&gt;To determine whether a queue is &lt;a href=&quot;http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html&quot;&gt;FIFO&lt;/a&gt;, you can check whether &lt;code&gt;QueueName&lt;/code&gt; ends with the &lt;code&gt;.fifo&lt;/code&gt; suffix.&lt;/p&gt; &lt;/note&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;ContentBasedDeduplication&lt;/code&gt; - Returns whether content-based deduplication is enabled for the queue. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-exactly-once-processing&quot;&gt;Exactly-Once Processing&lt;/a&gt; in the &lt;i&gt;Amazon SQS Developer Guide&lt;/i&gt;. &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- Required parameter: QueueUrl
function M.GetQueueAttributesRequest(QueueUrl, AttributeNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetQueueAttributesRequest")
	local t = { 
		["QueueUrl"] = QueueUrl,
		["AttributeNames"] = AttributeNames,
	}
	M.AssertGetQueueAttributesRequest(t)
	return t
end

local SendMessageBatchResult_keys = { "Successful" = true, "Failed" = true, nil }

function M.AssertSendMessageBatchResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendMessageBatchResult to be of type 'table'")
	assert(struct["Successful"], "Expected key Successful to exist in table")
	assert(struct["Failed"], "Expected key Failed to exist in table")
	if struct["Successful"] then M.AssertSendMessageBatchResultEntryList(struct["Successful"]) end
	if struct["Failed"] then M.AssertBatchResultErrorEntryList(struct["Failed"]) end
	for k,_ in pairs(struct) do
		assert(SendMessageBatchResult_keys[k], "SendMessageBatchResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendMessageBatchResult
-- &lt;p&gt;For each message in the batch, the response contains a &lt;code&gt; &lt;a&gt;SendMessageBatchResultEntry&lt;/a&gt; &lt;/code&gt; tag if the message succeeds or a &lt;code&gt; &lt;a&gt;BatchResultErrorEntry&lt;/a&gt; &lt;/code&gt; tag if the message fails.&lt;/p&gt;
-- @param Successful [SendMessageBatchResultEntryList] &lt;p&gt;A list of &lt;code&gt; &lt;a&gt;SendMessageBatchResultEntry&lt;/a&gt; &lt;/code&gt; items.&lt;/p&gt;
-- @param Failed [BatchResultErrorEntryList] &lt;p&gt;A list of &lt;code&gt; &lt;a&gt;BatchResultErrorEntry&lt;/a&gt; &lt;/code&gt; items with error details about each message that can't be enqueued.&lt;/p&gt;
-- Required parameter: Successful
-- Required parameter: Failed
function M.SendMessageBatchResult(Successful, Failed, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SendMessageBatchResult")
	local t = { 
		["Successful"] = Successful,
		["Failed"] = Failed,
	}
	M.AssertSendMessageBatchResult(t)
	return t
end

local CreateQueueRequest_keys = { "Attributes" = true, "QueueName" = true, nil }

function M.AssertCreateQueueRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateQueueRequest to be of type 'table'")
	assert(struct["QueueName"], "Expected key QueueName to exist in table")
	if struct["Attributes"] then M.AssertQueueAttributeMap(struct["Attributes"]) end
	if struct["QueueName"] then M.AssertString(struct["QueueName"]) end
	for k,_ in pairs(struct) do
		assert(CreateQueueRequest_keys[k], "CreateQueueRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateQueueRequest
-- &lt;p/&gt;
-- @param Attributes [QueueAttributeMap] &lt;p&gt;A map of attributes with their corresponding values.&lt;/p&gt; &lt;p&gt;The following lists the names, descriptions, and values of the special request parameters that the &lt;code&gt;CreateQueue&lt;/code&gt; action uses:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;DelaySeconds&lt;/code&gt; - The length of time, in seconds, for which the delivery of all messages in the queue is delayed. Valid values: An integer from 0 to 900 seconds (15 minutes). The default is 0 (zero). &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;MaximumMessageSize&lt;/code&gt; - The limit of how many bytes a message can contain before Amazon SQS rejects it. Valid values: An integer from 1,024 bytes (1 KiB) to 262,144 bytes (256 KiB). The default is 262,144 (256 KiB). &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;MessageRetentionPeriod&lt;/code&gt; - The length of time, in seconds, for which Amazon SQS retains a message. Valid values: An integer from 60 seconds (1 minute) to 1,209,600 seconds (14 days). The default is 345,600 (4 days). &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Policy&lt;/code&gt; - The queue's policy. A valid AWS policy. For more information about policy structure, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/PoliciesOverview.html&quot;&gt;Overview of AWS IAM Policies&lt;/a&gt; in the &lt;i&gt;Amazon IAM User Guide&lt;/i&gt;. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;ReceiveMessageWaitTimeSeconds&lt;/code&gt; - The length of time, in seconds, for which a &lt;code&gt; &lt;a&gt;ReceiveMessage&lt;/a&gt; &lt;/code&gt; action waits for a message to arrive. Valid values: An integer from 0 to 20 (seconds). The default is 0 (zero). &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;RedrivePolicy&lt;/code&gt; - The parameters for the dead letter queue functionality of the source queue. For more information about the redrive policy and dead letter queues, see &lt;a href=&quot;http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html&quot;&gt;Using Amazon SQS Dead Letter Queues&lt;/a&gt; in the &lt;i&gt;Amazon SQS Developer Guide&lt;/i&gt;. &lt;/p&gt; &lt;note&gt; &lt;p&gt;The dead letter queue of a FIFO queue must also be a FIFO queue. Similarly, the dead letter queue of a standard queue must also be a standard queue.&lt;/p&gt; &lt;/note&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;VisibilityTimeout&lt;/code&gt; - The visibility timeout for the queue. Valid values: An integer from 0 to 43,200 (12 hours). The default is 30. For more information about the visibility timeout, see &lt;a href=&quot;http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html&quot;&gt;Visibility Timeout&lt;/a&gt; in the &lt;i&gt;Amazon SQS Developer Guide&lt;/i&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;The following attributes apply only to &lt;a href=&quot;http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html&quot;&gt;server-side-encryption&lt;/a&gt;:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;KmsMasterKeyId&lt;/code&gt; - The ID of an AWS-managed customer master key (CMK) for Amazon SQS or a custom CMK. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-sse-key-terms&quot;&gt;Key Terms&lt;/a&gt;. While the alias of the AWS-managed CMK for Amazon SQS is always &lt;code&gt;alias/aws/sqs&lt;/code&gt;, the alias of a custom CMK can, for example, be &lt;code&gt;alias/aws/sqs&lt;/code&gt;. For more examples, see &lt;a href=&quot;http://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html#API_DescribeKey_RequestParameters&quot;&gt;KeyId&lt;/a&gt; in the &lt;i&gt;AWS Key Management Service API Reference&lt;/i&gt;. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;KmsDataKeyReusePeriodSeconds&lt;/code&gt; - The length of time, in seconds, for which Amazon SQS can reuse a &lt;a href=&quot;http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#data-keys&quot;&gt;data key&lt;/a&gt; to encrypt or decrypt messages before calling AWS KMS again. An integer representing seconds, between 60 seconds (1 minute) and 86,400 seconds (24 hours). The default is 300 (5 minutes). A shorter time period provides better security but results in more calls to KMS which incur charges after Free Tier. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-how-does-the-data-key-reuse-period-work&quot;&gt;How Does the Data Key Reuse Period Work?&lt;/a&gt;. &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;The following attributes apply only to &lt;a href=&quot;http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html&quot;&gt;FIFO (first-in-first-out) queues&lt;/a&gt;:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;FifoQueue&lt;/code&gt; - Designates a queue as FIFO. Valid values: &lt;code&gt;true&lt;/code&gt;, &lt;code&gt;false&lt;/code&gt;. You can provide this attribute only during queue creation. You can't change it for an existing queue. When you set this attribute, you must also provide the &lt;code&gt;MessageGroupId&lt;/code&gt; for your messages explicitly.&lt;/p&gt; &lt;p&gt;For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-understanding-logic&quot;&gt;FIFO Queue Logic&lt;/a&gt; in the &lt;i&gt;Amazon SQS Developer Guide&lt;/i&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;ContentBasedDeduplication&lt;/code&gt; - Enables content-based deduplication. Valid values: &lt;code&gt;true&lt;/code&gt;, &lt;code&gt;false&lt;/code&gt;. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-exactly-once-processing&quot;&gt;Exactly-Once Processing&lt;/a&gt; in the &lt;i&gt;Amazon SQS Developer Guide&lt;/i&gt;. &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Every message must have a unique &lt;code&gt;MessageDeduplicationId&lt;/code&gt;,&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;You may provide a &lt;code&gt;MessageDeduplicationId&lt;/code&gt; explicitly.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;If you aren't able to provide a &lt;code&gt;MessageDeduplicationId&lt;/code&gt; and you enable &lt;code&gt;ContentBasedDeduplication&lt;/code&gt; for your queue, Amazon SQS uses a SHA-256 hash to generate the &lt;code&gt;MessageDeduplicationId&lt;/code&gt; using the body of the message (but not the attributes of the message). &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;If you don't provide a &lt;code&gt;MessageDeduplicationId&lt;/code&gt; and the queue doesn't have &lt;code&gt;ContentBasedDeduplication&lt;/code&gt; set, the action fails with an error.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;If the queue has &lt;code&gt;ContentBasedDeduplication&lt;/code&gt; set, your &lt;code&gt;MessageDeduplicationId&lt;/code&gt; overrides the generated one.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;When &lt;code&gt;ContentBasedDeduplication&lt;/code&gt; is in effect, messages with identical content sent within the deduplication interval are treated as duplicates and only one copy of the message is delivered.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;If you send one message with &lt;code&gt;ContentBasedDeduplication&lt;/code&gt; enabled and then another message with a &lt;code&gt;MessageDeduplicationId&lt;/code&gt; that is the same as the one generated for the first &lt;code&gt;MessageDeduplicationId&lt;/code&gt;, the two messages are treated as duplicates and only one copy of the message is delivered. &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;Any other valid special request parameters (such as the following) are ignored:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;ApproximateNumberOfMessages&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;ApproximateNumberOfMessagesDelayed&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;ApproximateNumberOfMessagesNotVisible&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;CreatedTimestamp&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;LastModifiedTimestamp&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;QueueArn&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param QueueName [String] &lt;p&gt;The name of the new queue. The following limits apply to this name:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;A queue name can have up to 80 characters.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Valid values: alphanumeric characters, hyphens (&lt;code&gt;-&lt;/code&gt;), and underscores (&lt;code&gt;_&lt;/code&gt;).&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;A FIFO queue name must end with the &lt;code&gt;.fifo&lt;/code&gt; suffix.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;Queue names are case-sensitive.&lt;/p&gt;
-- Required parameter: QueueName
function M.CreateQueueRequest(Attributes, QueueName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateQueueRequest")
	local t = { 
		["Attributes"] = Attributes,
		["QueueName"] = QueueName,
	}
	M.AssertCreateQueueRequest(t)
	return t
end

local RemovePermissionRequest_keys = { "QueueUrl" = true, "Label" = true, nil }

function M.AssertRemovePermissionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemovePermissionRequest to be of type 'table'")
	assert(struct["QueueUrl"], "Expected key QueueUrl to exist in table")
	assert(struct["Label"], "Expected key Label to exist in table")
	if struct["QueueUrl"] then M.AssertString(struct["QueueUrl"]) end
	if struct["Label"] then M.AssertString(struct["Label"]) end
	for k,_ in pairs(struct) do
		assert(RemovePermissionRequest_keys[k], "RemovePermissionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemovePermissionRequest
-- &lt;p/&gt;
-- @param QueueUrl [String] &lt;p&gt;The URL of the Amazon SQS queue from which permissions are removed.&lt;/p&gt; &lt;p&gt;Queue URLs are case-sensitive.&lt;/p&gt;
-- @param Label [String] &lt;p&gt;The identification of the permission to remove. This is the label added using the &lt;code&gt; &lt;a&gt;AddPermission&lt;/a&gt; &lt;/code&gt; action.&lt;/p&gt;
-- Required parameter: QueueUrl
-- Required parameter: Label
function M.RemovePermissionRequest(QueueUrl, Label, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemovePermissionRequest")
	local t = { 
		["QueueUrl"] = QueueUrl,
		["Label"] = Label,
	}
	M.AssertRemovePermissionRequest(t)
	return t
end

local DeleteMessageBatchRequestEntry_keys = { "ReceiptHandle" = true, "Id" = true, nil }

function M.AssertDeleteMessageBatchRequestEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteMessageBatchRequestEntry to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["ReceiptHandle"], "Expected key ReceiptHandle to exist in table")
	if struct["ReceiptHandle"] then M.AssertString(struct["ReceiptHandle"]) end
	if struct["Id"] then M.AssertString(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(DeleteMessageBatchRequestEntry_keys[k], "DeleteMessageBatchRequestEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteMessageBatchRequestEntry
-- &lt;p&gt;Encloses a receipt handle and an identifier for it.&lt;/p&gt;
-- @param ReceiptHandle [String] &lt;p&gt;A receipt handle.&lt;/p&gt;
-- @param Id [String] &lt;p&gt;An identifier for this particular receipt handle. This is used to communicate the result.&lt;/p&gt; &lt;note&gt; &lt;p&gt;The &lt;code&gt;Id&lt;/code&gt;s of a batch request need to be unique within a request&lt;/p&gt; &lt;/note&gt;
-- Required parameter: Id
-- Required parameter: ReceiptHandle
function M.DeleteMessageBatchRequestEntry(ReceiptHandle, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteMessageBatchRequestEntry")
	local t = { 
		["ReceiptHandle"] = ReceiptHandle,
		["Id"] = Id,
	}
	M.AssertDeleteMessageBatchRequestEntry(t)
	return t
end

local SendMessageBatchRequest_keys = { "QueueUrl" = true, "Entries" = true, nil }

function M.AssertSendMessageBatchRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendMessageBatchRequest to be of type 'table'")
	assert(struct["QueueUrl"], "Expected key QueueUrl to exist in table")
	assert(struct["Entries"], "Expected key Entries to exist in table")
	if struct["QueueUrl"] then M.AssertString(struct["QueueUrl"]) end
	if struct["Entries"] then M.AssertSendMessageBatchRequestEntryList(struct["Entries"]) end
	for k,_ in pairs(struct) do
		assert(SendMessageBatchRequest_keys[k], "SendMessageBatchRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendMessageBatchRequest
-- &lt;p/&gt;
-- @param QueueUrl [String] &lt;p&gt;The URL of the Amazon SQS queue to which batched messages are sent.&lt;/p&gt; &lt;p&gt;Queue URLs are case-sensitive.&lt;/p&gt;
-- @param Entries [SendMessageBatchRequestEntryList] &lt;p&gt;A list of &lt;code&gt; &lt;a&gt;SendMessageBatchRequestEntry&lt;/a&gt; &lt;/code&gt; items.&lt;/p&gt;
-- Required parameter: QueueUrl
-- Required parameter: Entries
function M.SendMessageBatchRequest(QueueUrl, Entries, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SendMessageBatchRequest")
	local t = { 
		["QueueUrl"] = QueueUrl,
		["Entries"] = Entries,
	}
	M.AssertSendMessageBatchRequest(t)
	return t
end

local ChangeMessageVisibilityBatchResult_keys = { "Successful" = true, "Failed" = true, nil }

function M.AssertChangeMessageVisibilityBatchResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ChangeMessageVisibilityBatchResult to be of type 'table'")
	assert(struct["Successful"], "Expected key Successful to exist in table")
	assert(struct["Failed"], "Expected key Failed to exist in table")
	if struct["Successful"] then M.AssertChangeMessageVisibilityBatchResultEntryList(struct["Successful"]) end
	if struct["Failed"] then M.AssertBatchResultErrorEntryList(struct["Failed"]) end
	for k,_ in pairs(struct) do
		assert(ChangeMessageVisibilityBatchResult_keys[k], "ChangeMessageVisibilityBatchResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ChangeMessageVisibilityBatchResult
-- &lt;p&gt;For each message in the batch, the response contains a &lt;code&gt; &lt;a&gt;ChangeMessageVisibilityBatchResultEntry&lt;/a&gt; &lt;/code&gt; tag if the message succeeds or a &lt;code&gt; &lt;a&gt;BatchResultErrorEntry&lt;/a&gt; &lt;/code&gt; tag if the message fails.&lt;/p&gt;
-- @param Successful [ChangeMessageVisibilityBatchResultEntryList] &lt;p&gt;A list of &lt;code&gt; &lt;a&gt;ChangeMessageVisibilityBatchResultEntry&lt;/a&gt; &lt;/code&gt; items.&lt;/p&gt;
-- @param Failed [BatchResultErrorEntryList] &lt;p&gt;A list of &lt;code&gt; &lt;a&gt;BatchResultErrorEntry&lt;/a&gt; &lt;/code&gt; items.&lt;/p&gt;
-- Required parameter: Successful
-- Required parameter: Failed
function M.ChangeMessageVisibilityBatchResult(Successful, Failed, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ChangeMessageVisibilityBatchResult")
	local t = { 
		["Successful"] = Successful,
		["Failed"] = Failed,
	}
	M.AssertChangeMessageVisibilityBatchResult(t)
	return t
end

local CreateQueueResult_keys = { "QueueUrl" = true, nil }

function M.AssertCreateQueueResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateQueueResult to be of type 'table'")
	if struct["QueueUrl"] then M.AssertString(struct["QueueUrl"]) end
	for k,_ in pairs(struct) do
		assert(CreateQueueResult_keys[k], "CreateQueueResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateQueueResult
-- &lt;p&gt;Returns the &lt;code&gt;QueueUrl&lt;/code&gt; attribute of the created queue.&lt;/p&gt;
-- @param QueueUrl [String] &lt;p&gt;The URL of the created Amazon SQS queue.&lt;/p&gt;
function M.CreateQueueResult(QueueUrl, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateQueueResult")
	local t = { 
		["QueueUrl"] = QueueUrl,
	}
	M.AssertCreateQueueResult(t)
	return t
end

local PurgeQueueRequest_keys = { "QueueUrl" = true, nil }

function M.AssertPurgeQueueRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PurgeQueueRequest to be of type 'table'")
	assert(struct["QueueUrl"], "Expected key QueueUrl to exist in table")
	if struct["QueueUrl"] then M.AssertString(struct["QueueUrl"]) end
	for k,_ in pairs(struct) do
		assert(PurgeQueueRequest_keys[k], "PurgeQueueRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PurgeQueueRequest
-- &lt;p/&gt;
-- @param QueueUrl [String] &lt;p&gt;The URL of the queue from which the &lt;code&gt;PurgeQueue&lt;/code&gt; action deletes messages.&lt;/p&gt; &lt;p&gt;Queue URLs are case-sensitive.&lt;/p&gt;
-- Required parameter: QueueUrl
function M.PurgeQueueRequest(QueueUrl, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PurgeQueueRequest")
	local t = { 
		["QueueUrl"] = QueueUrl,
	}
	M.AssertPurgeQueueRequest(t)
	return t
end

local ReceiptHandleIsInvalid_keys = { nil }

function M.AssertReceiptHandleIsInvalid(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReceiptHandleIsInvalid to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ReceiptHandleIsInvalid_keys[k], "ReceiptHandleIsInvalid contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReceiptHandleIsInvalid
-- &lt;p&gt;The receipt handle provided isn't valid.&lt;/p&gt;
function M.ReceiptHandleIsInvalid(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReceiptHandleIsInvalid")
	local t = { 
	}
	M.AssertReceiptHandleIsInvalid(t)
	return t
end

local InvalidAttributeName_keys = { nil }

function M.AssertInvalidAttributeName(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidAttributeName to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidAttributeName_keys[k], "InvalidAttributeName contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidAttributeName
-- &lt;p&gt;The attribute referred to doesn't exist.&lt;/p&gt;
function M.InvalidAttributeName(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidAttributeName")
	local t = { 
	}
	M.AssertInvalidAttributeName(t)
	return t
end

local ChangeMessageVisibilityBatchRequest_keys = { "QueueUrl" = true, "Entries" = true, nil }

function M.AssertChangeMessageVisibilityBatchRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ChangeMessageVisibilityBatchRequest to be of type 'table'")
	assert(struct["QueueUrl"], "Expected key QueueUrl to exist in table")
	assert(struct["Entries"], "Expected key Entries to exist in table")
	if struct["QueueUrl"] then M.AssertString(struct["QueueUrl"]) end
	if struct["Entries"] then M.AssertChangeMessageVisibilityBatchRequestEntryList(struct["Entries"]) end
	for k,_ in pairs(struct) do
		assert(ChangeMessageVisibilityBatchRequest_keys[k], "ChangeMessageVisibilityBatchRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ChangeMessageVisibilityBatchRequest
-- &lt;p/&gt;
-- @param QueueUrl [String] &lt;p&gt;The URL of the Amazon SQS queue whose messages' visibility is changed.&lt;/p&gt; &lt;p&gt;Queue URLs are case-sensitive.&lt;/p&gt;
-- @param Entries [ChangeMessageVisibilityBatchRequestEntryList] &lt;p&gt;A list of receipt handles of the messages for which the visibility timeout must be changed.&lt;/p&gt;
-- Required parameter: QueueUrl
-- Required parameter: Entries
function M.ChangeMessageVisibilityBatchRequest(QueueUrl, Entries, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ChangeMessageVisibilityBatchRequest")
	local t = { 
		["QueueUrl"] = QueueUrl,
		["Entries"] = Entries,
	}
	M.AssertChangeMessageVisibilityBatchRequest(t)
	return t
end

local ReceiveMessageRequest_keys = { "QueueUrl" = true, "ReceiveRequestAttemptId" = true, "MaxNumberOfMessages" = true, "WaitTimeSeconds" = true, "MessageAttributeNames" = true, "VisibilityTimeout" = true, "AttributeNames" = true, nil }

function M.AssertReceiveMessageRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReceiveMessageRequest to be of type 'table'")
	assert(struct["QueueUrl"], "Expected key QueueUrl to exist in table")
	if struct["QueueUrl"] then M.AssertString(struct["QueueUrl"]) end
	if struct["ReceiveRequestAttemptId"] then M.AssertString(struct["ReceiveRequestAttemptId"]) end
	if struct["MaxNumberOfMessages"] then M.AssertInteger(struct["MaxNumberOfMessages"]) end
	if struct["WaitTimeSeconds"] then M.AssertInteger(struct["WaitTimeSeconds"]) end
	if struct["MessageAttributeNames"] then M.AssertMessageAttributeNameList(struct["MessageAttributeNames"]) end
	if struct["VisibilityTimeout"] then M.AssertInteger(struct["VisibilityTimeout"]) end
	if struct["AttributeNames"] then M.AssertAttributeNameList(struct["AttributeNames"]) end
	for k,_ in pairs(struct) do
		assert(ReceiveMessageRequest_keys[k], "ReceiveMessageRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReceiveMessageRequest
-- &lt;p/&gt;
-- @param QueueUrl [String] &lt;p&gt;The URL of the Amazon SQS queue from which messages are received.&lt;/p&gt; &lt;p&gt;Queue URLs are case-sensitive.&lt;/p&gt;
-- @param ReceiveRequestAttemptId [String] &lt;p&gt;This parameter applies only to FIFO (first-in-first-out) queues.&lt;/p&gt; &lt;p&gt;The token used for deduplication of &lt;code&gt;ReceiveMessage&lt;/code&gt; calls. If a networking issue occurs after a &lt;code&gt;ReceiveMessage&lt;/code&gt; action, and instead of a response you receive a generic error, you can retry the same action with an identical &lt;code&gt;ReceiveRequestAttemptId&lt;/code&gt; to retrieve the same set of messages, even if their visibility timeout has not yet expired.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;You can use &lt;code&gt;ReceiveRequestAttemptId&lt;/code&gt; only for 5 minutes after a &lt;code&gt;ReceiveMessage&lt;/code&gt; action.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;When you set &lt;code&gt;FifoQueue&lt;/code&gt;, a caller of the &lt;code&gt;ReceiveMessage&lt;/code&gt; action can provide a &lt;code&gt;ReceiveRequestAttemptId&lt;/code&gt; explicitly.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;If a caller of the &lt;code&gt;ReceiveMessage&lt;/code&gt; action doesn't provide a &lt;code&gt;ReceiveRequestAttemptId&lt;/code&gt;, Amazon SQS generates a &lt;code&gt;ReceiveRequestAttemptId&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You can retry the &lt;code&gt;ReceiveMessage&lt;/code&gt; action with the same &lt;code&gt;ReceiveRequestAttemptId&lt;/code&gt; if none of the messages have been modified (deleted or had their visibility changes).&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;During a visibility timeout, subsequent calls with the same &lt;code&gt;ReceiveRequestAttemptId&lt;/code&gt; return the same messages and receipt handles. If a retry occurs within the deduplication interval, it resets the visibility timeout. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html&quot;&gt;Visibility Timeout&lt;/a&gt; in the &lt;i&gt;Amazon Simple Queue Service Developer Guide&lt;/i&gt;.&lt;/p&gt; &lt;important&gt; &lt;p&gt;If a caller of the &lt;code&gt;ReceiveMessage&lt;/code&gt; action is still processing messages when the visibility timeout expires and messages become visible, another worker reading from the same queue can receive the same messages and therefore process duplicates. Also, if a reader whose message processing time is longer than the visibility timeout tries to delete the processed messages, the action fails with an error.&lt;/p&gt; &lt;p&gt;To mitigate this effect, ensure that your application observes a safe threshold before the visibility timeout expires and extend the visibility timeout as necessary.&lt;/p&gt; &lt;/important&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;While messages with a particular &lt;code&gt;MessageGroupId&lt;/code&gt; are invisible, no more messages belonging to the same &lt;code&gt;MessageGroupId&lt;/code&gt; are returned until the visibility timeout expires. You can still receive messages with another &lt;code&gt;MessageGroupId&lt;/code&gt; as long as it is also visible.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;If a caller of &lt;code&gt;ReceiveMessage&lt;/code&gt; can't track the &lt;code&gt;ReceiveRequestAttemptId&lt;/code&gt;, no retries work until the original visibility timeout expires. As a result, delays might occur but the messages in the queue remain in a strict order.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;The length of &lt;code&gt;ReceiveRequestAttemptId&lt;/code&gt; is 128 characters. &lt;code&gt;ReceiveRequestAttemptId&lt;/code&gt; can contain alphanumeric characters (&lt;code&gt;a-z&lt;/code&gt;, &lt;code&gt;A-Z&lt;/code&gt;, &lt;code&gt;0-9&lt;/code&gt;) and punctuation (&lt;code&gt;!&quot;#$%&amp;amp;'()*+,-./:;&amp;lt;=&amp;gt;?@[\]^_`{|}~&lt;/code&gt;).&lt;/p&gt; &lt;p&gt;For best practices of using &lt;code&gt;ReceiveRequestAttemptId&lt;/code&gt;, see &lt;a href=&quot;http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queue-recommendations.html#using-receiverequestattemptid-request-parameter&quot;&gt;Using the ReceiveRequestAttemptId Request Parameter&lt;/a&gt; in the &lt;i&gt;Amazon Simple Queue Service Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param MaxNumberOfMessages [Integer] &lt;p&gt;The maximum number of messages to return. Amazon SQS never returns more messages than this value (however, fewer messages might be returned). Valid values are 1 to 10. Default is 1.&lt;/p&gt;
-- @param WaitTimeSeconds [Integer] &lt;p&gt;The duration (in seconds) for which the call waits for a message to arrive in the queue before returning. If a message is available, the call returns sooner than &lt;code&gt;WaitTimeSeconds&lt;/code&gt;.&lt;/p&gt;
-- @param MessageAttributeNames [MessageAttributeNameList] &lt;p&gt;The name of the message attribute, where &lt;i&gt;N&lt;/i&gt; is the index.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;The name can contain alphanumeric characters and the underscore (&lt;code&gt;_&lt;/code&gt;), hyphen (&lt;code&gt;-&lt;/code&gt;), and period (&lt;code&gt;.&lt;/code&gt;).&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;The name is case-sensitive and must be unique among all attribute names for the message.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;The name must not start with AWS-reserved prefixes such as &lt;code&gt;AWS.&lt;/code&gt; or &lt;code&gt;Amazon.&lt;/code&gt; (or any casing variants).&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;The name must not start or end with a period (&lt;code&gt;.&lt;/code&gt;), and it should not have periods in succession (&lt;code&gt;..&lt;/code&gt;).&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;The name can be up to 256 characters long.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;When using &lt;code&gt;ReceiveMessage&lt;/code&gt;, you can send a list of attribute names to receive, or you can return all of the attributes by specifying &lt;code&gt;All&lt;/code&gt; or &lt;code&gt;.*&lt;/code&gt; in your request. You can also use all message attributes starting with a prefix, for example &lt;code&gt;bar.*&lt;/code&gt;.&lt;/p&gt;
-- @param VisibilityTimeout [Integer] &lt;p&gt;The duration (in seconds) that the received messages are hidden from subsequent retrieve requests after being retrieved by a &lt;code&gt;ReceiveMessage&lt;/code&gt; request.&lt;/p&gt;
-- @param AttributeNames [AttributeNameList] &lt;p&gt;A list of attributes that need to be returned along with each message. These attributes include:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;All&lt;/code&gt; - Returns all values.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;ApproximateFirstReceiveTimestamp&lt;/code&gt; - Returns the time the message was first received from the queue (&lt;a href=&quot;http://en.wikipedia.org/wiki/Unix_time&quot;&gt;epoch time&lt;/a&gt; in milliseconds).&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;ApproximateReceiveCount&lt;/code&gt; - Returns the number of times a message has been received from the queue but not deleted.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;SenderId&lt;/code&gt; &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;For an IAM user, returns the IAM user ID, for example &lt;code&gt;ABCDEFGHI1JKLMNOPQ23R&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;For an IAM role, returns the IAM role ID, for example &lt;code&gt;ABCDE1F2GH3I4JK5LMNOP:i-a123b456&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;SentTimestamp&lt;/code&gt; - Returns the time the message was sent to the queue (&lt;a href=&quot;http://en.wikipedia.org/wiki/Unix_time&quot;&gt;epoch time&lt;/a&gt; in milliseconds).&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;MessageDeduplicationId&lt;/code&gt; - Returns the value provided by the sender that calls the &lt;code&gt; &lt;a&gt;SendMessage&lt;/a&gt; &lt;/code&gt; action.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;MessageGroupId&lt;/code&gt; - Returns the value provided by the sender that calls the &lt;code&gt; &lt;a&gt;SendMessage&lt;/a&gt; &lt;/code&gt; action. Messages with the same &lt;code&gt;MessageGroupId&lt;/code&gt; are returned in sequence.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;SequenceNumber&lt;/code&gt; - Returns the value provided by Amazon SQS.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;Any other valid special request parameters (such as the following) are ignored:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;ApproximateNumberOfMessages&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;ApproximateNumberOfMessagesDelayed&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;ApproximateNumberOfMessagesNotVisible&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;CreatedTimestamp&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;ContentBasedDeduplication&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;DelaySeconds&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;FifoQueue&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;LastModifiedTimestamp&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;MaximumMessageSize&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;MessageRetentionPeriod&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Policy&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;QueueArn&lt;/code&gt;, &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;ReceiveMessageWaitTimeSeconds&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;RedrivePolicy&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;VisibilityTimeout&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- Required parameter: QueueUrl
function M.ReceiveMessageRequest(QueueUrl, ReceiveRequestAttemptId, MaxNumberOfMessages, WaitTimeSeconds, MessageAttributeNames, VisibilityTimeout, AttributeNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReceiveMessageRequest")
	local t = { 
		["QueueUrl"] = QueueUrl,
		["ReceiveRequestAttemptId"] = ReceiveRequestAttemptId,
		["MaxNumberOfMessages"] = MaxNumberOfMessages,
		["WaitTimeSeconds"] = WaitTimeSeconds,
		["MessageAttributeNames"] = MessageAttributeNames,
		["VisibilityTimeout"] = VisibilityTimeout,
		["AttributeNames"] = AttributeNames,
	}
	M.AssertReceiveMessageRequest(t)
	return t
end

local ReceiveMessageResult_keys = { "Messages" = true, nil }

function M.AssertReceiveMessageResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReceiveMessageResult to be of type 'table'")
	if struct["Messages"] then M.AssertMessageList(struct["Messages"]) end
	for k,_ in pairs(struct) do
		assert(ReceiveMessageResult_keys[k], "ReceiveMessageResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReceiveMessageResult
-- &lt;p&gt;A list of received messages.&lt;/p&gt;
-- @param Messages [MessageList] &lt;p&gt;A list of messages.&lt;/p&gt;
function M.ReceiveMessageResult(Messages, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReceiveMessageResult")
	local t = { 
		["Messages"] = Messages,
	}
	M.AssertReceiveMessageResult(t)
	return t
end

local SendMessageBatchResultEntry_keys = { "MD5OfMessageBody" = true, "MD5OfMessageAttributes" = true, "Id" = true, "SequenceNumber" = true, "MessageId" = true, nil }

function M.AssertSendMessageBatchResultEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendMessageBatchResultEntry to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["MessageId"], "Expected key MessageId to exist in table")
	assert(struct["MD5OfMessageBody"], "Expected key MD5OfMessageBody to exist in table")
	if struct["MD5OfMessageBody"] then M.AssertString(struct["MD5OfMessageBody"]) end
	if struct["MD5OfMessageAttributes"] then M.AssertString(struct["MD5OfMessageAttributes"]) end
	if struct["Id"] then M.AssertString(struct["Id"]) end
	if struct["SequenceNumber"] then M.AssertString(struct["SequenceNumber"]) end
	if struct["MessageId"] then M.AssertString(struct["MessageId"]) end
	for k,_ in pairs(struct) do
		assert(SendMessageBatchResultEntry_keys[k], "SendMessageBatchResultEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendMessageBatchResultEntry
-- &lt;p&gt;Encloses a &lt;code&gt;MessageId&lt;/code&gt; for a successfully-enqueued message in a &lt;code&gt; &lt;a&gt;SendMessageBatch&lt;/a&gt;.&lt;/code&gt; &lt;/p&gt;
-- @param MD5OfMessageBody [String] &lt;p&gt;An MD5 digest of the non-URL-encoded message attribute string. You can use this attribute to verify that Amazon SQS received the message correctly. Amazon SQS URL-decodes the message before creating the MD5 digest. For information about MD5, see &lt;a href=&quot;https://www.ietf.org/rfc/rfc1321.txt&quot;&gt;RFC1321&lt;/a&gt;.&lt;/p&gt;
-- @param MD5OfMessageAttributes [String] &lt;p&gt;An MD5 digest of the non-URL-encoded message attribute string. You can use this attribute to verify that Amazon SQS received the message correctly. Amazon SQS URL-decodes the message before creating the MD5 digest. For information about MD5, see &lt;a href=&quot;https://www.ietf.org/rfc/rfc1321.txt&quot;&gt;RFC1321&lt;/a&gt;.&lt;/p&gt;
-- @param Id [String] &lt;p&gt;An identifier for the message in this batch.&lt;/p&gt;
-- @param SequenceNumber [String] &lt;p&gt;This parameter applies only to FIFO (first-in-first-out) queues.&lt;/p&gt; &lt;p&gt;The large, non-consecutive number that Amazon SQS assigns to each message.&lt;/p&gt; &lt;p&gt;The length of &lt;code&gt;SequenceNumber&lt;/code&gt; is 128 bits. As &lt;code&gt;SequenceNumber&lt;/code&gt; continues to increase for a particular &lt;code&gt;MessageGroupId&lt;/code&gt;.&lt;/p&gt;
-- @param MessageId [String] &lt;p&gt;An identifier for the message.&lt;/p&gt;
-- Required parameter: Id
-- Required parameter: MessageId
-- Required parameter: MD5OfMessageBody
function M.SendMessageBatchResultEntry(MD5OfMessageBody, MD5OfMessageAttributes, Id, SequenceNumber, MessageId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SendMessageBatchResultEntry")
	local t = { 
		["MD5OfMessageBody"] = MD5OfMessageBody,
		["MD5OfMessageAttributes"] = MD5OfMessageAttributes,
		["Id"] = Id,
		["SequenceNumber"] = SequenceNumber,
		["MessageId"] = MessageId,
	}
	M.AssertSendMessageBatchResultEntry(t)
	return t
end

local InvalidBatchEntryId_keys = { nil }

function M.AssertInvalidBatchEntryId(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidBatchEntryId to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidBatchEntryId_keys[k], "InvalidBatchEntryId contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidBatchEntryId
-- &lt;p&gt;The &lt;code&gt;Id&lt;/code&gt; of a batch entry in a batch request doesn't abide by the specification.&lt;/p&gt;
function M.InvalidBatchEntryId(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidBatchEntryId")
	local t = { 
	}
	M.AssertInvalidBatchEntryId(t)
	return t
end

local ChangeMessageVisibilityRequest_keys = { "QueueUrl" = true, "ReceiptHandle" = true, "VisibilityTimeout" = true, nil }

function M.AssertChangeMessageVisibilityRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ChangeMessageVisibilityRequest to be of type 'table'")
	assert(struct["QueueUrl"], "Expected key QueueUrl to exist in table")
	assert(struct["ReceiptHandle"], "Expected key ReceiptHandle to exist in table")
	assert(struct["VisibilityTimeout"], "Expected key VisibilityTimeout to exist in table")
	if struct["QueueUrl"] then M.AssertString(struct["QueueUrl"]) end
	if struct["ReceiptHandle"] then M.AssertString(struct["ReceiptHandle"]) end
	if struct["VisibilityTimeout"] then M.AssertInteger(struct["VisibilityTimeout"]) end
	for k,_ in pairs(struct) do
		assert(ChangeMessageVisibilityRequest_keys[k], "ChangeMessageVisibilityRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ChangeMessageVisibilityRequest
--  
-- @param QueueUrl [String] &lt;p&gt;The URL of the Amazon SQS queue whose message's visibility is changed.&lt;/p&gt; &lt;p&gt;Queue URLs are case-sensitive.&lt;/p&gt;
-- @param ReceiptHandle [String] &lt;p&gt;The receipt handle associated with the message whose visibility timeout is changed. This parameter is returned by the &lt;code&gt; &lt;a&gt;ReceiveMessage&lt;/a&gt; &lt;/code&gt; action.&lt;/p&gt;
-- @param VisibilityTimeout [Integer] &lt;p&gt;The new value for the message's visibility timeout (in seconds). Values values: &lt;code&gt;0&lt;/code&gt; to &lt;code&gt;43200&lt;/code&gt;. Maximum: 12 hours.&lt;/p&gt;
-- Required parameter: QueueUrl
-- Required parameter: ReceiptHandle
-- Required parameter: VisibilityTimeout
function M.ChangeMessageVisibilityRequest(QueueUrl, ReceiptHandle, VisibilityTimeout, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ChangeMessageVisibilityRequest")
	local t = { 
		["QueueUrl"] = QueueUrl,
		["ReceiptHandle"] = ReceiptHandle,
		["VisibilityTimeout"] = VisibilityTimeout,
	}
	M.AssertChangeMessageVisibilityRequest(t)
	return t
end

local BatchResultErrorEntry_keys = { "Message" = true, "SenderFault" = true, "Code" = true, "Id" = true, nil }

function M.AssertBatchResultErrorEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchResultErrorEntry to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["SenderFault"], "Expected key SenderFault to exist in table")
	assert(struct["Code"], "Expected key Code to exist in table")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	if struct["SenderFault"] then M.AssertBoolean(struct["SenderFault"]) end
	if struct["Code"] then M.AssertString(struct["Code"]) end
	if struct["Id"] then M.AssertString(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(BatchResultErrorEntry_keys[k], "BatchResultErrorEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchResultErrorEntry
-- &lt;p&gt;This is used in the responses of batch API to give a detailed description of the result of an action on each entry in the request.&lt;/p&gt;
-- @param Message [String] &lt;p&gt;A message explaining why the action failed on this entry.&lt;/p&gt;
-- @param SenderFault [Boolean] &lt;p&gt;Specifies whether the error happened due to the sender's fault.&lt;/p&gt;
-- @param Code [String] &lt;p&gt;An error code representing why the action failed on this entry.&lt;/p&gt;
-- @param Id [String] &lt;p&gt;The &lt;code&gt;Id&lt;/code&gt; of an entry in a batch request.&lt;/p&gt;
-- Required parameter: Id
-- Required parameter: SenderFault
-- Required parameter: Code
function M.BatchResultErrorEntry(Message, SenderFault, Code, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchResultErrorEntry")
	local t = { 
		["Message"] = Message,
		["SenderFault"] = SenderFault,
		["Code"] = Code,
		["Id"] = Id,
	}
	M.AssertBatchResultErrorEntry(t)
	return t
end

local SendMessageResult_keys = { "MD5OfMessageBody" = true, "MD5OfMessageAttributes" = true, "SequenceNumber" = true, "MessageId" = true, nil }

function M.AssertSendMessageResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendMessageResult to be of type 'table'")
	if struct["MD5OfMessageBody"] then M.AssertString(struct["MD5OfMessageBody"]) end
	if struct["MD5OfMessageAttributes"] then M.AssertString(struct["MD5OfMessageAttributes"]) end
	if struct["SequenceNumber"] then M.AssertString(struct["SequenceNumber"]) end
	if struct["MessageId"] then M.AssertString(struct["MessageId"]) end
	for k,_ in pairs(struct) do
		assert(SendMessageResult_keys[k], "SendMessageResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendMessageResult
-- &lt;p&gt;The &lt;code&gt;MD5OfMessageBody&lt;/code&gt; and &lt;code&gt;MessageId&lt;/code&gt; elements.&lt;/p&gt;
-- @param MD5OfMessageBody [String] &lt;p&gt;An MD5 digest of the non-URL-encoded message attribute string. You can use this attribute to verify that Amazon SQS received the message correctly. Amazon SQS URL-decodes the message before creating the MD5 digest. For information about MD5, see &lt;a href=&quot;https://www.ietf.org/rfc/rfc1321.txt&quot;&gt;RFC1321&lt;/a&gt;.&lt;/p&gt;
-- @param MD5OfMessageAttributes [String] &lt;p&gt;An MD5 digest of the non-URL-encoded message attribute string. You can use this attribute to verify that Amazon SQS received the message correctly. Amazon SQS URL-decodes the message before creating the MD5 digest. For information about MD5, see &lt;a href=&quot;https://www.ietf.org/rfc/rfc1321.txt&quot;&gt;RFC1321&lt;/a&gt;.&lt;/p&gt;
-- @param SequenceNumber [String] &lt;p&gt;This parameter applies only to FIFO (first-in-first-out) queues.&lt;/p&gt; &lt;p&gt;The large, non-consecutive number that Amazon SQS assigns to each message.&lt;/p&gt; &lt;p&gt;The length of &lt;code&gt;SequenceNumber&lt;/code&gt; is 128 bits. &lt;code&gt;SequenceNumber&lt;/code&gt; continues to increase for a particular &lt;code&gt;MessageGroupId&lt;/code&gt;.&lt;/p&gt;
-- @param MessageId [String] &lt;p&gt;An attribute containing the &lt;code&gt;MessageId&lt;/code&gt; of the message sent to the queue. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-queue-message-identifiers.html&quot;&gt;Queue and Message Identifiers&lt;/a&gt; in the &lt;i&gt;Amazon SQS Developer Guide&lt;/i&gt;. &lt;/p&gt;
function M.SendMessageResult(MD5OfMessageBody, MD5OfMessageAttributes, SequenceNumber, MessageId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SendMessageResult")
	local t = { 
		["MD5OfMessageBody"] = MD5OfMessageBody,
		["MD5OfMessageAttributes"] = MD5OfMessageAttributes,
		["SequenceNumber"] = SequenceNumber,
		["MessageId"] = MessageId,
	}
	M.AssertSendMessageResult(t)
	return t
end

local DeleteMessageBatchRequest_keys = { "QueueUrl" = true, "Entries" = true, nil }

function M.AssertDeleteMessageBatchRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteMessageBatchRequest to be of type 'table'")
	assert(struct["QueueUrl"], "Expected key QueueUrl to exist in table")
	assert(struct["Entries"], "Expected key Entries to exist in table")
	if struct["QueueUrl"] then M.AssertString(struct["QueueUrl"]) end
	if struct["Entries"] then M.AssertDeleteMessageBatchRequestEntryList(struct["Entries"]) end
	for k,_ in pairs(struct) do
		assert(DeleteMessageBatchRequest_keys[k], "DeleteMessageBatchRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteMessageBatchRequest
-- &lt;p/&gt;
-- @param QueueUrl [String] &lt;p&gt;The URL of the Amazon SQS queue from which messages are deleted.&lt;/p&gt; &lt;p&gt;Queue URLs are case-sensitive.&lt;/p&gt;
-- @param Entries [DeleteMessageBatchRequestEntryList] &lt;p&gt;A list of receipt handles for the messages to be deleted.&lt;/p&gt;
-- Required parameter: QueueUrl
-- Required parameter: Entries
function M.DeleteMessageBatchRequest(QueueUrl, Entries, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteMessageBatchRequest")
	local t = { 
		["QueueUrl"] = QueueUrl,
		["Entries"] = Entries,
	}
	M.AssertDeleteMessageBatchRequest(t)
	return t
end

local QueueDoesNotExist_keys = { nil }

function M.AssertQueueDoesNotExist(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected QueueDoesNotExist to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(QueueDoesNotExist_keys[k], "QueueDoesNotExist contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type QueueDoesNotExist
-- &lt;p&gt;The queue referred to doesn't exist.&lt;/p&gt;
function M.QueueDoesNotExist(...)
	assert(select("#", ...) == 0, "Too many arguments when creating QueueDoesNotExist")
	local t = { 
	}
	M.AssertQueueDoesNotExist(t)
	return t
end

local SendMessageRequest_keys = { "QueueUrl" = true, "MessageDeduplicationId" = true, "MessageBody" = true, "DelaySeconds" = true, "MessageAttributes" = true, "MessageGroupId" = true, nil }

function M.AssertSendMessageRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendMessageRequest to be of type 'table'")
	assert(struct["QueueUrl"], "Expected key QueueUrl to exist in table")
	assert(struct["MessageBody"], "Expected key MessageBody to exist in table")
	if struct["QueueUrl"] then M.AssertString(struct["QueueUrl"]) end
	if struct["MessageDeduplicationId"] then M.AssertString(struct["MessageDeduplicationId"]) end
	if struct["MessageBody"] then M.AssertString(struct["MessageBody"]) end
	if struct["DelaySeconds"] then M.AssertInteger(struct["DelaySeconds"]) end
	if struct["MessageAttributes"] then M.AssertMessageBodyAttributeMap(struct["MessageAttributes"]) end
	if struct["MessageGroupId"] then M.AssertString(struct["MessageGroupId"]) end
	for k,_ in pairs(struct) do
		assert(SendMessageRequest_keys[k], "SendMessageRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendMessageRequest
-- &lt;p/&gt;
-- @param QueueUrl [String] &lt;p&gt;The URL of the Amazon SQS queue to which a message is sent.&lt;/p&gt; &lt;p&gt;Queue URLs are case-sensitive.&lt;/p&gt;
-- @param MessageDeduplicationId [String] &lt;p&gt;This parameter applies only to FIFO (first-in-first-out) queues.&lt;/p&gt; &lt;p&gt;The token used for deduplication of sent messages. If a message with a particular &lt;code&gt;MessageDeduplicationId&lt;/code&gt; is sent successfully, any messages sent with the same &lt;code&gt;MessageDeduplicationId&lt;/code&gt; are accepted successfully but aren't delivered during the 5-minute deduplication interval. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-exactly-once-processing&quot;&gt; Exactly-Once Processing&lt;/a&gt; in the &lt;i&gt;Amazon SQS Developer Guide&lt;/i&gt;.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Every message must have a unique &lt;code&gt;MessageDeduplicationId&lt;/code&gt;,&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;You may provide a &lt;code&gt;MessageDeduplicationId&lt;/code&gt; explicitly.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;If you aren't able to provide a &lt;code&gt;MessageDeduplicationId&lt;/code&gt; and you enable &lt;code&gt;ContentBasedDeduplication&lt;/code&gt; for your queue, Amazon SQS uses a SHA-256 hash to generate the &lt;code&gt;MessageDeduplicationId&lt;/code&gt; using the body of the message (but not the attributes of the message). &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;If you don't provide a &lt;code&gt;MessageDeduplicationId&lt;/code&gt; and the queue doesn't have &lt;code&gt;ContentBasedDeduplication&lt;/code&gt; set, the action fails with an error.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;If the queue has &lt;code&gt;ContentBasedDeduplication&lt;/code&gt; set, your &lt;code&gt;MessageDeduplicationId&lt;/code&gt; overrides the generated one.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;When &lt;code&gt;ContentBasedDeduplication&lt;/code&gt; is in effect, messages with identical content sent within the deduplication interval are treated as duplicates and only one copy of the message is delivered.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;If you send one message with &lt;code&gt;ContentBasedDeduplication&lt;/code&gt; enabled and then another message with a &lt;code&gt;MessageDeduplicationId&lt;/code&gt; that is the same as the one generated for the first &lt;code&gt;MessageDeduplicationId&lt;/code&gt;, the two messages are treated as duplicates and only one copy of the message is delivered. &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;note&gt; &lt;p&gt;The &lt;code&gt;MessageDeduplicationId&lt;/code&gt; is available to the recipient of the message (this can be useful for troubleshooting delivery issues).&lt;/p&gt; &lt;p&gt;If a message is sent successfully but the acknowledgement is lost and the message is resent with the same &lt;code&gt;MessageDeduplicationId&lt;/code&gt; after the deduplication interval, Amazon SQS can't detect duplicate messages.&lt;/p&gt; &lt;/note&gt; &lt;p&gt;The length of &lt;code&gt;MessageDeduplicationId&lt;/code&gt; is 128 characters. &lt;code&gt;MessageDeduplicationId&lt;/code&gt; can contain alphanumeric characters (&lt;code&gt;a-z&lt;/code&gt;, &lt;code&gt;A-Z&lt;/code&gt;, &lt;code&gt;0-9&lt;/code&gt;) and punctuation (&lt;code&gt;!&quot;#$%&amp;amp;'()*+,-./:;&amp;lt;=&amp;gt;?@[\]^_`{|}~&lt;/code&gt;).&lt;/p&gt; &lt;p&gt;For best practices of using &lt;code&gt;MessageDeduplicationId&lt;/code&gt;, see &lt;a href=&quot;http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queue-recommendations.html#using-messagededuplicationid-property&quot;&gt;Using the MessageDeduplicationId Property&lt;/a&gt; in the &lt;i&gt;Amazon Simple Queue Service Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param MessageBody [String] &lt;p&gt;The message to send. The maximum string size is 256 KB.&lt;/p&gt; &lt;important&gt; &lt;p&gt;A message can include only XML, JSON, and unformatted text. The following Unicode characters are allowed:&lt;/p&gt; &lt;p&gt; &lt;code&gt;#x9&lt;/code&gt; | &lt;code&gt;#xA&lt;/code&gt; | &lt;code&gt;#xD&lt;/code&gt; | &lt;code&gt;#x20&lt;/code&gt; to &lt;code&gt;#xD7FF&lt;/code&gt; | &lt;code&gt;#xE000&lt;/code&gt; to &lt;code&gt;#xFFFD&lt;/code&gt; | &lt;code&gt;#x10000&lt;/code&gt; to &lt;code&gt;#x10FFFF&lt;/code&gt; &lt;/p&gt; &lt;p&gt;Any characters not included in this list will be rejected. For more information, see the &lt;a href=&quot;http://www.w3.org/TR/REC-xml/#charsets&quot;&gt;W3C specification for characters&lt;/a&gt;.&lt;/p&gt; &lt;/important&gt;
-- @param DelaySeconds [Integer] &lt;p&gt; The length of time, in seconds, for which to delay a specific message. Valid values: 0 to 900. Maximum: 15 minutes. Messages with a positive &lt;code&gt;DelaySeconds&lt;/code&gt; value become available for processing after the delay period is finished. If you don't specify a value, the default value for the queue applies. &lt;/p&gt; &lt;note&gt; &lt;p&gt;When you set &lt;code&gt;FifoQueue&lt;/code&gt;, you can't set &lt;code&gt;DelaySeconds&lt;/code&gt; per message. You can set this parameter only on a queue level.&lt;/p&gt; &lt;/note&gt;
-- @param MessageAttributes [MessageBodyAttributeMap] &lt;p&gt;Each message attribute consists of a &lt;code&gt;Name&lt;/code&gt;, &lt;code&gt;Type&lt;/code&gt;, and &lt;code&gt;Value&lt;/code&gt;. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-message-attributes.html#message-attributes-items-validation&quot;&gt;Message Attribute Items and Validation&lt;/a&gt; in the &lt;i&gt;Amazon SQS Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param MessageGroupId [String] &lt;p&gt;This parameter applies only to FIFO (first-in-first-out) queues.&lt;/p&gt; &lt;p&gt;The tag that specifies that a message belongs to a specific message group. Messages that belong to the same message group are processed in a FIFO manner (however, messages in different message groups might be processed out of order). To interleave multiple ordered streams within a single queue, use &lt;code&gt;MessageGroupId&lt;/code&gt; values (for example, session data for multiple users). In this scenario, multiple readers can process the queue, but the session data of each user is processed in a FIFO fashion.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;You must associate a non-empty &lt;code&gt;MessageGroupId&lt;/code&gt; with a message. If you don't provide a &lt;code&gt;MessageGroupId&lt;/code&gt;, the action fails.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;ReceiveMessage&lt;/code&gt; might return messages with multiple &lt;code&gt;MessageGroupId&lt;/code&gt; values. For each &lt;code&gt;MessageGroupId&lt;/code&gt;, the messages are sorted by time sent. The caller can't specify a &lt;code&gt;MessageGroupId&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;The length of &lt;code&gt;MessageGroupId&lt;/code&gt; is 128 characters. Valid values are alphanumeric characters and punctuation &lt;code&gt;(!&quot;#$%&amp;amp;'()*+,-./:;&amp;lt;=&amp;gt;?@[\]^_`{|}~)&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;For best practices of using &lt;code&gt;MessageGroupId&lt;/code&gt;, see &lt;a href=&quot;http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queue-recommendations.html#using-messagegroupid-property&quot;&gt;Using the MessageGroupId Property&lt;/a&gt; in the &lt;i&gt;Amazon Simple Queue Service Developer Guide&lt;/i&gt;.&lt;/p&gt; &lt;important&gt; &lt;p&gt; &lt;code&gt;MessageGroupId&lt;/code&gt; is required for FIFO queues. You can't use it for Standard queues.&lt;/p&gt; &lt;/important&gt;
-- Required parameter: QueueUrl
-- Required parameter: MessageBody
function M.SendMessageRequest(QueueUrl, MessageDeduplicationId, MessageBody, DelaySeconds, MessageAttributes, MessageGroupId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SendMessageRequest")
	local t = { 
		["QueueUrl"] = QueueUrl,
		["MessageDeduplicationId"] = MessageDeduplicationId,
		["MessageBody"] = MessageBody,
		["DelaySeconds"] = DelaySeconds,
		["MessageAttributes"] = MessageAttributes,
		["MessageGroupId"] = MessageGroupId,
	}
	M.AssertSendMessageRequest(t)
	return t
end

local MessageNotInflight_keys = { nil }

function M.AssertMessageNotInflight(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MessageNotInflight to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(MessageNotInflight_keys[k], "MessageNotInflight contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MessageNotInflight
-- &lt;p&gt;The message referred to isn't in flight.&lt;/p&gt;
function M.MessageNotInflight(...)
	assert(select("#", ...) == 0, "Too many arguments when creating MessageNotInflight")
	local t = { 
	}
	M.AssertMessageNotInflight(t)
	return t
end

local GetQueueAttributesResult_keys = { "Attributes" = true, nil }

function M.AssertGetQueueAttributesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetQueueAttributesResult to be of type 'table'")
	if struct["Attributes"] then M.AssertQueueAttributeMap(struct["Attributes"]) end
	for k,_ in pairs(struct) do
		assert(GetQueueAttributesResult_keys[k], "GetQueueAttributesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetQueueAttributesResult
-- &lt;p&gt;A list of returned queue attributes.&lt;/p&gt;
-- @param Attributes [QueueAttributeMap] &lt;p&gt;A map of attributes to their respective values.&lt;/p&gt;
function M.GetQueueAttributesResult(Attributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetQueueAttributesResult")
	local t = { 
		["Attributes"] = Attributes,
	}
	M.AssertGetQueueAttributesResult(t)
	return t
end

local ListDeadLetterSourceQueuesRequest_keys = { "QueueUrl" = true, nil }

function M.AssertListDeadLetterSourceQueuesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDeadLetterSourceQueuesRequest to be of type 'table'")
	assert(struct["QueueUrl"], "Expected key QueueUrl to exist in table")
	if struct["QueueUrl"] then M.AssertString(struct["QueueUrl"]) end
	for k,_ in pairs(struct) do
		assert(ListDeadLetterSourceQueuesRequest_keys[k], "ListDeadLetterSourceQueuesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDeadLetterSourceQueuesRequest
-- &lt;p/&gt;
-- @param QueueUrl [String] &lt;p&gt;The URL of a dead letter queue.&lt;/p&gt; &lt;p&gt;Queue URLs are case-sensitive.&lt;/p&gt;
-- Required parameter: QueueUrl
function M.ListDeadLetterSourceQueuesRequest(QueueUrl, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDeadLetterSourceQueuesRequest")
	local t = { 
		["QueueUrl"] = QueueUrl,
	}
	M.AssertListDeadLetterSourceQueuesRequest(t)
	return t
end

local Message_keys = { "Body" = true, "ReceiptHandle" = true, "MD5OfBody" = true, "MD5OfMessageAttributes" = true, "MessageId" = true, "Attributes" = true, "MessageAttributes" = true, nil }

function M.AssertMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Message to be of type 'table'")
	if struct["Body"] then M.AssertString(struct["Body"]) end
	if struct["ReceiptHandle"] then M.AssertString(struct["ReceiptHandle"]) end
	if struct["MD5OfBody"] then M.AssertString(struct["MD5OfBody"]) end
	if struct["MD5OfMessageAttributes"] then M.AssertString(struct["MD5OfMessageAttributes"]) end
	if struct["MessageId"] then M.AssertString(struct["MessageId"]) end
	if struct["Attributes"] then M.AssertMessageSystemAttributeMap(struct["Attributes"]) end
	if struct["MessageAttributes"] then M.AssertMessageBodyAttributeMap(struct["MessageAttributes"]) end
	for k,_ in pairs(struct) do
		assert(Message_keys[k], "Message contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Message
-- &lt;p&gt;An Amazon SQS message.&lt;/p&gt;
-- @param Body [String] &lt;p&gt;The message's contents (not URL-encoded).&lt;/p&gt;
-- @param ReceiptHandle [String] &lt;p&gt;An identifier associated with the act of receiving the message. A new receipt handle is returned every time you receive a message. When deleting a message, you provide the last received receipt handle to delete the message.&lt;/p&gt;
-- @param MD5OfBody [String] &lt;p&gt;An MD5 digest of the non-URL-encoded message body string.&lt;/p&gt;
-- @param MD5OfMessageAttributes [String] &lt;p&gt;An MD5 digest of the non-URL-encoded message attribute string. You can use this attribute to verify that Amazon SQS received the message correctly. Amazon SQS URL-decodes the message before creating the MD5 digest. For information about MD5, see &lt;a href=&quot;https://www.ietf.org/rfc/rfc1321.txt&quot;&gt;RFC1321&lt;/a&gt;.&lt;/p&gt;
-- @param MessageId [String] &lt;p&gt;A unique identifier for the message. A &lt;code&gt;MessageId&lt;/code&gt;is considered unique across all AWS accounts for an extended period of time.&lt;/p&gt;
-- @param Attributes [MessageSystemAttributeMap] &lt;p&gt; &lt;code&gt;SenderId&lt;/code&gt;, &lt;code&gt;SentTimestamp&lt;/code&gt;, &lt;code&gt;ApproximateReceiveCount&lt;/code&gt;, and/or &lt;code&gt;ApproximateFirstReceiveTimestamp&lt;/code&gt;. &lt;code&gt;SentTimestamp&lt;/code&gt; and &lt;code&gt;ApproximateFirstReceiveTimestamp&lt;/code&gt; are each returned as an integer representing the &lt;a href=&quot;http://en.wikipedia.org/wiki/Unix_time&quot;&gt;epoch time&lt;/a&gt; in milliseconds.&lt;/p&gt;
-- @param MessageAttributes [MessageBodyAttributeMap] &lt;p&gt;Each message attribute consists of a &lt;code&gt;Name&lt;/code&gt;, &lt;code&gt;Type&lt;/code&gt;, and &lt;code&gt;Value&lt;/code&gt;. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-message-attributes.html#message-attributes-items-validation&quot;&gt;Message Attribute Items and Validation&lt;/a&gt; in the &lt;i&gt;Amazon SQS Developer Guide&lt;/i&gt;.&lt;/p&gt;
function M.Message(Body, ReceiptHandle, MD5OfBody, MD5OfMessageAttributes, MessageId, Attributes, MessageAttributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Message")
	local t = { 
		["Body"] = Body,
		["ReceiptHandle"] = ReceiptHandle,
		["MD5OfBody"] = MD5OfBody,
		["MD5OfMessageAttributes"] = MD5OfMessageAttributes,
		["MessageId"] = MessageId,
		["Attributes"] = Attributes,
		["MessageAttributes"] = MessageAttributes,
	}
	M.AssertMessage(t)
	return t
end

local OverLimit_keys = { nil }

function M.AssertOverLimit(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OverLimit to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(OverLimit_keys[k], "OverLimit contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OverLimit
-- &lt;p&gt;The action that you requested would violate a limit. For example, &lt;code&gt;ReceiveMessage&lt;/code&gt; returns this error if the maximum number of inflight messages is reached. &lt;code&gt; &lt;a&gt;AddPermission&lt;/a&gt; &lt;/code&gt; returns this error if the maximum number of permissions for the queue is reached.&lt;/p&gt;
function M.OverLimit(...)
	assert(select("#", ...) == 0, "Too many arguments when creating OverLimit")
	local t = { 
	}
	M.AssertOverLimit(t)
	return t
end

local GetQueueUrlRequest_keys = { "QueueName" = true, "QueueOwnerAWSAccountId" = true, nil }

function M.AssertGetQueueUrlRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetQueueUrlRequest to be of type 'table'")
	assert(struct["QueueName"], "Expected key QueueName to exist in table")
	if struct["QueueName"] then M.AssertString(struct["QueueName"]) end
	if struct["QueueOwnerAWSAccountId"] then M.AssertString(struct["QueueOwnerAWSAccountId"]) end
	for k,_ in pairs(struct) do
		assert(GetQueueUrlRequest_keys[k], "GetQueueUrlRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetQueueUrlRequest
-- &lt;p/&gt;
-- @param QueueName [String] &lt;p&gt;The name of the queue whose URL must be fetched. Maximum 80 characters. Valid values: alphanumeric characters, hyphens (&lt;code&gt;-&lt;/code&gt;), and underscores (&lt;code&gt;_&lt;/code&gt;).&lt;/p&gt; &lt;p&gt;Queue names are case-sensitive.&lt;/p&gt;
-- @param QueueOwnerAWSAccountId [String] &lt;p&gt;The AWS account ID of the account that created the queue.&lt;/p&gt;
-- Required parameter: QueueName
function M.GetQueueUrlRequest(QueueName, QueueOwnerAWSAccountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetQueueUrlRequest")
	local t = { 
		["QueueName"] = QueueName,
		["QueueOwnerAWSAccountId"] = QueueOwnerAWSAccountId,
	}
	M.AssertGetQueueUrlRequest(t)
	return t
end

local GetQueueUrlResult_keys = { "QueueUrl" = true, nil }

function M.AssertGetQueueUrlResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetQueueUrlResult to be of type 'table'")
	if struct["QueueUrl"] then M.AssertString(struct["QueueUrl"]) end
	for k,_ in pairs(struct) do
		assert(GetQueueUrlResult_keys[k], "GetQueueUrlResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetQueueUrlResult
-- &lt;p&gt;For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/UnderstandingResponses.html&quot;&gt;Responses&lt;/a&gt; in the &lt;i&gt;Amazon SQS Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param QueueUrl [String] &lt;p&gt;The URL of the queue.&lt;/p&gt;
function M.GetQueueUrlResult(QueueUrl, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetQueueUrlResult")
	local t = { 
		["QueueUrl"] = QueueUrl,
	}
	M.AssertGetQueueUrlResult(t)
	return t
end

local DeleteQueueRequest_keys = { "QueueUrl" = true, nil }

function M.AssertDeleteQueueRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteQueueRequest to be of type 'table'")
	assert(struct["QueueUrl"], "Expected key QueueUrl to exist in table")
	if struct["QueueUrl"] then M.AssertString(struct["QueueUrl"]) end
	for k,_ in pairs(struct) do
		assert(DeleteQueueRequest_keys[k], "DeleteQueueRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteQueueRequest
-- &lt;p/&gt;
-- @param QueueUrl [String] &lt;p&gt;The URL of the Amazon SQS queue to delete.&lt;/p&gt; &lt;p&gt;Queue URLs are case-sensitive.&lt;/p&gt;
-- Required parameter: QueueUrl
function M.DeleteQueueRequest(QueueUrl, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteQueueRequest")
	local t = { 
		["QueueUrl"] = QueueUrl,
	}
	M.AssertDeleteQueueRequest(t)
	return t
end

local BatchRequestTooLong_keys = { nil }

function M.AssertBatchRequestTooLong(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchRequestTooLong to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(BatchRequestTooLong_keys[k], "BatchRequestTooLong contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchRequestTooLong
-- &lt;p&gt;The length of all the messages put together is more than the limit.&lt;/p&gt;
function M.BatchRequestTooLong(...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchRequestTooLong")
	local t = { 
	}
	M.AssertBatchRequestTooLong(t)
	return t
end

local InvalidMessageContents_keys = { nil }

function M.AssertInvalidMessageContents(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidMessageContents to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidMessageContents_keys[k], "InvalidMessageContents contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidMessageContents
-- &lt;p&gt;The message contains characters outside the allowed set.&lt;/p&gt;
function M.InvalidMessageContents(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidMessageContents")
	local t = { 
	}
	M.AssertInvalidMessageContents(t)
	return t
end

local ListQueuesRequest_keys = { "QueueNamePrefix" = true, nil }

function M.AssertListQueuesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListQueuesRequest to be of type 'table'")
	if struct["QueueNamePrefix"] then M.AssertString(struct["QueueNamePrefix"]) end
	for k,_ in pairs(struct) do
		assert(ListQueuesRequest_keys[k], "ListQueuesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListQueuesRequest
-- &lt;p/&gt;
-- @param QueueNamePrefix [String] &lt;p&gt;A string to use for filtering the list results. Only those queues whose name begins with the specified string are returned.&lt;/p&gt; &lt;p&gt;Queue names are case-sensitive.&lt;/p&gt;
function M.ListQueuesRequest(QueueNamePrefix, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListQueuesRequest")
	local t = { 
		["QueueNamePrefix"] = QueueNamePrefix,
	}
	M.AssertListQueuesRequest(t)
	return t
end

local InvalidIdFormat_keys = { nil }

function M.AssertInvalidIdFormat(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidIdFormat to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidIdFormat_keys[k], "InvalidIdFormat contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidIdFormat
-- &lt;p&gt;The receipt handle isn't valid for the current version.&lt;/p&gt;
function M.InvalidIdFormat(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidIdFormat")
	local t = { 
	}
	M.AssertInvalidIdFormat(t)
	return t
end

local AddPermissionRequest_keys = { "QueueUrl" = true, "AWSAccountIds" = true, "Actions" = true, "Label" = true, nil }

function M.AssertAddPermissionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddPermissionRequest to be of type 'table'")
	assert(struct["QueueUrl"], "Expected key QueueUrl to exist in table")
	assert(struct["Label"], "Expected key Label to exist in table")
	assert(struct["AWSAccountIds"], "Expected key AWSAccountIds to exist in table")
	assert(struct["Actions"], "Expected key Actions to exist in table")
	if struct["QueueUrl"] then M.AssertString(struct["QueueUrl"]) end
	if struct["AWSAccountIds"] then M.AssertAWSAccountIdList(struct["AWSAccountIds"]) end
	if struct["Actions"] then M.AssertActionNameList(struct["Actions"]) end
	if struct["Label"] then M.AssertString(struct["Label"]) end
	for k,_ in pairs(struct) do
		assert(AddPermissionRequest_keys[k], "AddPermissionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddPermissionRequest
-- &lt;p/&gt;
-- @param QueueUrl [String] &lt;p&gt;The URL of the Amazon SQS queue to which permissions are added.&lt;/p&gt; &lt;p&gt;Queue URLs are case-sensitive.&lt;/p&gt;
-- @param AWSAccountIds [AWSAccountIdList] &lt;p&gt;The AWS account number of the &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/glos-chap.html#P&quot;&gt;principal&lt;/a&gt; who is given permission. The principal must have an AWS account, but does not need to be signed up for Amazon SQS. For information about locating the AWS account identification, see &lt;a href=&quot;http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/AWSCredentials.html&quot;&gt;Your AWS Identifiers&lt;/a&gt; in the &lt;i&gt;Amazon SQS Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param Actions [ActionNameList] &lt;p&gt;The action the client wants to allow for the specified principal. The following values are valid:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;*&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;ChangeMessageVisibility&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;DeleteMessage&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;GetQueueAttributes&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;GetQueueUrl&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;ReceiveMessage&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;SendMessage&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;For more information about these actions, see &lt;a href=&quot;http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/acp-overview.html#PermissionTypes&quot;&gt;Understanding Permissions&lt;/a&gt; in the &lt;i&gt;Amazon SQS Developer Guide&lt;/i&gt;.&lt;/p&gt; &lt;p&gt;Specifying &lt;code&gt;SendMessage&lt;/code&gt;, &lt;code&gt;DeleteMessage&lt;/code&gt;, or &lt;code&gt;ChangeMessageVisibility&lt;/code&gt; for &lt;code&gt;ActionName.n&lt;/code&gt; also grants permissions for the corresponding batch versions of those actions: &lt;code&gt;SendMessageBatch&lt;/code&gt;, &lt;code&gt;DeleteMessageBatch&lt;/code&gt;, and &lt;code&gt;ChangeMessageVisibilityBatch&lt;/code&gt;.&lt;/p&gt;
-- @param Label [String] &lt;p&gt;The unique identification of the permission you're setting (for example, &lt;code&gt;AliceSendMessage&lt;/code&gt;). Maximum 80 characters. Allowed characters include alphanumeric characters, hyphens (&lt;code&gt;-&lt;/code&gt;), and underscores (&lt;code&gt;_&lt;/code&gt;).&lt;/p&gt;
-- Required parameter: QueueUrl
-- Required parameter: Label
-- Required parameter: AWSAccountIds
-- Required parameter: Actions
function M.AddPermissionRequest(QueueUrl, AWSAccountIds, Actions, Label, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddPermissionRequest")
	local t = { 
		["QueueUrl"] = QueueUrl,
		["AWSAccountIds"] = AWSAccountIds,
		["Actions"] = Actions,
		["Label"] = Label,
	}
	M.AssertAddPermissionRequest(t)
	return t
end

local ListDeadLetterSourceQueuesResult_keys = { "queueUrls" = true, nil }

function M.AssertListDeadLetterSourceQueuesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDeadLetterSourceQueuesResult to be of type 'table'")
	assert(struct["queueUrls"], "Expected key queueUrls to exist in table")
	if struct["queueUrls"] then M.AssertQueueUrlList(struct["queueUrls"]) end
	for k,_ in pairs(struct) do
		assert(ListDeadLetterSourceQueuesResult_keys[k], "ListDeadLetterSourceQueuesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDeadLetterSourceQueuesResult
-- &lt;p&gt;A list of your dead letter source queues.&lt;/p&gt;
-- @param queueUrls [QueueUrlList] &lt;p&gt;A list of source queue URLs that have the &lt;code&gt;RedrivePolicy&lt;/code&gt; queue attribute configured with a dead letter queue.&lt;/p&gt;
-- Required parameter: queueUrls
function M.ListDeadLetterSourceQueuesResult(queueUrls, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDeadLetterSourceQueuesResult")
	local t = { 
		["queueUrls"] = queueUrls,
	}
	M.AssertListDeadLetterSourceQueuesResult(t)
	return t
end

local QueueNameExists_keys = { nil }

function M.AssertQueueNameExists(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected QueueNameExists to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(QueueNameExists_keys[k], "QueueNameExists contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type QueueNameExists
-- &lt;p&gt;A queue already exists with this name. Amazon SQS returns this error only if the request includes attributes whose values differ from those of the existing queue.&lt;/p&gt;
function M.QueueNameExists(...)
	assert(select("#", ...) == 0, "Too many arguments when creating QueueNameExists")
	local t = { 
	}
	M.AssertQueueNameExists(t)
	return t
end

local BatchEntryIdsNotDistinct_keys = { nil }

function M.AssertBatchEntryIdsNotDistinct(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchEntryIdsNotDistinct to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(BatchEntryIdsNotDistinct_keys[k], "BatchEntryIdsNotDistinct contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchEntryIdsNotDistinct
-- &lt;p&gt;Two or more batch entries in the request have the same &lt;code&gt;Id&lt;/code&gt;.&lt;/p&gt;
function M.BatchEntryIdsNotDistinct(...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchEntryIdsNotDistinct")
	local t = { 
	}
	M.AssertBatchEntryIdsNotDistinct(t)
	return t
end

local DeleteMessageBatchResultEntry_keys = { "Id" = true, nil }

function M.AssertDeleteMessageBatchResultEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteMessageBatchResultEntry to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then M.AssertString(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(DeleteMessageBatchResultEntry_keys[k], "DeleteMessageBatchResultEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteMessageBatchResultEntry
-- &lt;p&gt;Encloses the &lt;code&gt;Id&lt;/code&gt; of an entry in &lt;code&gt; &lt;a&gt;DeleteMessageBatch&lt;/a&gt;.&lt;/code&gt; &lt;/p&gt;
-- @param Id [String] &lt;p&gt;Represents a successfully deleted message.&lt;/p&gt;
-- Required parameter: Id
function M.DeleteMessageBatchResultEntry(Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteMessageBatchResultEntry")
	local t = { 
		["Id"] = Id,
	}
	M.AssertDeleteMessageBatchResultEntry(t)
	return t
end

local EmptyBatchRequest_keys = { nil }

function M.AssertEmptyBatchRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EmptyBatchRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(EmptyBatchRequest_keys[k], "EmptyBatchRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EmptyBatchRequest
-- &lt;p&gt;The batch request doesn't contain any entries.&lt;/p&gt;
function M.EmptyBatchRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating EmptyBatchRequest")
	local t = { 
	}
	M.AssertEmptyBatchRequest(t)
	return t
end

local ListQueuesResult_keys = { "QueueUrls" = true, nil }

function M.AssertListQueuesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListQueuesResult to be of type 'table'")
	if struct["QueueUrls"] then M.AssertQueueUrlList(struct["QueueUrls"]) end
	for k,_ in pairs(struct) do
		assert(ListQueuesResult_keys[k], "ListQueuesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListQueuesResult
-- &lt;p&gt;A list of your queues.&lt;/p&gt;
-- @param QueueUrls [QueueUrlList] &lt;p&gt;A list of queue URLs, up to 1,000 entries.&lt;/p&gt;
function M.ListQueuesResult(QueueUrls, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListQueuesResult")
	local t = { 
		["QueueUrls"] = QueueUrls,
	}
	M.AssertListQueuesResult(t)
	return t
end

local SendMessageBatchRequestEntry_keys = { "MessageDeduplicationId" = true, "MessageBody" = true, "DelaySeconds" = true, "MessageAttributes" = true, "Id" = true, "MessageGroupId" = true, nil }

function M.AssertSendMessageBatchRequestEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendMessageBatchRequestEntry to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["MessageBody"], "Expected key MessageBody to exist in table")
	if struct["MessageDeduplicationId"] then M.AssertString(struct["MessageDeduplicationId"]) end
	if struct["MessageBody"] then M.AssertString(struct["MessageBody"]) end
	if struct["DelaySeconds"] then M.AssertInteger(struct["DelaySeconds"]) end
	if struct["MessageAttributes"] then M.AssertMessageBodyAttributeMap(struct["MessageAttributes"]) end
	if struct["Id"] then M.AssertString(struct["Id"]) end
	if struct["MessageGroupId"] then M.AssertString(struct["MessageGroupId"]) end
	for k,_ in pairs(struct) do
		assert(SendMessageBatchRequestEntry_keys[k], "SendMessageBatchRequestEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendMessageBatchRequestEntry
-- &lt;p&gt;Contains the details of a single Amazon SQS message along with an &lt;code&gt;Id&lt;/code&gt;.&lt;/p&gt;
-- @param MessageDeduplicationId [String] &lt;p&gt;This parameter applies only to FIFO (first-in-first-out) queues.&lt;/p&gt; &lt;p&gt;The token used for deduplication of messages within a 5-minute minimum deduplication interval. If a message with a particular &lt;code&gt;MessageDeduplicationId&lt;/code&gt; is sent successfully, subsequent messages with the same &lt;code&gt;MessageDeduplicationId&lt;/code&gt; are accepted successfully but aren't delivered. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-exactly-once-processing&quot;&gt; Exactly-Once Processing&lt;/a&gt; in the &lt;i&gt;Amazon SQS Developer Guide&lt;/i&gt;.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Every message must have a unique &lt;code&gt;MessageDeduplicationId&lt;/code&gt;,&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;You may provide a &lt;code&gt;MessageDeduplicationId&lt;/code&gt; explicitly.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;If you aren't able to provide a &lt;code&gt;MessageDeduplicationId&lt;/code&gt; and you enable &lt;code&gt;ContentBasedDeduplication&lt;/code&gt; for your queue, Amazon SQS uses a SHA-256 hash to generate the &lt;code&gt;MessageDeduplicationId&lt;/code&gt; using the body of the message (but not the attributes of the message). &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;If you don't provide a &lt;code&gt;MessageDeduplicationId&lt;/code&gt; and the queue doesn't have &lt;code&gt;ContentBasedDeduplication&lt;/code&gt; set, the action fails with an error.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;If the queue has &lt;code&gt;ContentBasedDeduplication&lt;/code&gt; set, your &lt;code&gt;MessageDeduplicationId&lt;/code&gt; overrides the generated one.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;When &lt;code&gt;ContentBasedDeduplication&lt;/code&gt; is in effect, messages with identical content sent within the deduplication interval are treated as duplicates and only one copy of the message is delivered.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;If you send one message with &lt;code&gt;ContentBasedDeduplication&lt;/code&gt; enabled and then another message with a &lt;code&gt;MessageDeduplicationId&lt;/code&gt; that is the same as the one generated for the first &lt;code&gt;MessageDeduplicationId&lt;/code&gt;, the two messages are treated as duplicates and only one copy of the message is delivered. &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;note&gt; &lt;p&gt;The &lt;code&gt;MessageDeduplicationId&lt;/code&gt; is available to the recipient of the message (this can be useful for troubleshooting delivery issues).&lt;/p&gt; &lt;p&gt;If a message is sent successfully but the acknowledgement is lost and the message is resent with the same &lt;code&gt;MessageDeduplicationId&lt;/code&gt; after the deduplication interval, Amazon SQS can't detect duplicate messages.&lt;/p&gt; &lt;/note&gt; &lt;p&gt;The length of &lt;code&gt;MessageDeduplicationId&lt;/code&gt; is 128 characters. &lt;code&gt;MessageDeduplicationId&lt;/code&gt; can contain alphanumeric characters (&lt;code&gt;a-z&lt;/code&gt;, &lt;code&gt;A-Z&lt;/code&gt;, &lt;code&gt;0-9&lt;/code&gt;) and punctuation (&lt;code&gt;!&quot;#$%&amp;amp;'()*+,-./:;&amp;lt;=&amp;gt;?@[\]^_`{|}~&lt;/code&gt;).&lt;/p&gt; &lt;p&gt;For best practices of using &lt;code&gt;MessageDeduplicationId&lt;/code&gt;, see &lt;a href=&quot;http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queue-recommendations.html#using-messagededuplicationid-property&quot;&gt;Using the MessageDeduplicationId Property&lt;/a&gt; in the &lt;i&gt;Amazon Simple Queue Service Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param MessageBody [String] &lt;p&gt;The body of the message.&lt;/p&gt;
-- @param DelaySeconds [Integer] &lt;p&gt;The length of time, in seconds, for which a specific message is delayed. Valid values: 0 to 900. Maximum: 15 minutes. Messages with a positive &lt;code&gt;DelaySeconds&lt;/code&gt; value become available for processing after the delay period is finished. If you don't specify a value, the default value for the queue is applied. &lt;/p&gt; &lt;note&gt; &lt;p&gt;When you set &lt;code&gt;FifoQueue&lt;/code&gt;, you can't set &lt;code&gt;DelaySeconds&lt;/code&gt; per message. You can set this parameter only on a queue level.&lt;/p&gt; &lt;/note&gt;
-- @param MessageAttributes [MessageBodyAttributeMap] &lt;p&gt;Each message attribute consists of a &lt;code&gt;Name&lt;/code&gt;, &lt;code&gt;Type&lt;/code&gt;, and &lt;code&gt;Value&lt;/code&gt;. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-message-attributes.html#message-attributes-items-validation&quot;&gt;Message Attribute Items and Validation&lt;/a&gt; in the &lt;i&gt;Amazon SQS Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param Id [String] &lt;p&gt;An identifier for a message in this batch used to communicate the result.&lt;/p&gt; &lt;note&gt; &lt;p&gt;The &lt;code&gt;Id&lt;/code&gt;s of a batch request need to be unique within a request&lt;/p&gt; &lt;/note&gt;
-- @param MessageGroupId [String] &lt;p&gt;This parameter applies only to FIFO (first-in-first-out) queues.&lt;/p&gt; &lt;p&gt;The tag that specifies that a message belongs to a specific message group. Messages that belong to the same message group are processed in a FIFO manner (however, messages in different message groups might be processed out of order). To interleave multiple ordered streams within a single queue, use &lt;code&gt;MessageGroupId&lt;/code&gt; values (for example, session data for multiple users). In this scenario, multiple readers can process the queue, but the session data of each user is processed in a FIFO fashion.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;You must associate a non-empty &lt;code&gt;MessageGroupId&lt;/code&gt; with a message. If you don't provide a &lt;code&gt;MessageGroupId&lt;/code&gt;, the action fails.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;ReceiveMessage&lt;/code&gt; might return messages with multiple &lt;code&gt;MessageGroupId&lt;/code&gt; values. For each &lt;code&gt;MessageGroupId&lt;/code&gt;, the messages are sorted by time sent. The caller can't specify a &lt;code&gt;MessageGroupId&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;The length of &lt;code&gt;MessageGroupId&lt;/code&gt; is 128 characters. Valid values are alphanumeric characters and punctuation &lt;code&gt;(!&quot;#$%&amp;amp;'()*+,-./:;&amp;lt;=&amp;gt;?@[\]^_`{|}~)&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;For best practices of using &lt;code&gt;MessageGroupId&lt;/code&gt;, see &lt;a href=&quot;http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queue-recommendations.html#using-messagegroupid-property&quot;&gt;Using the MessageGroupId Property&lt;/a&gt; in the &lt;i&gt;Amazon Simple Queue Service Developer Guide&lt;/i&gt;.&lt;/p&gt; &lt;important&gt; &lt;p&gt; &lt;code&gt;MessageGroupId&lt;/code&gt; is required for FIFO queues. You can't use it for Standard queues.&lt;/p&gt; &lt;/important&gt;
-- Required parameter: Id
-- Required parameter: MessageBody
function M.SendMessageBatchRequestEntry(MessageDeduplicationId, MessageBody, DelaySeconds, MessageAttributes, Id, MessageGroupId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SendMessageBatchRequestEntry")
	local t = { 
		["MessageDeduplicationId"] = MessageDeduplicationId,
		["MessageBody"] = MessageBody,
		["DelaySeconds"] = DelaySeconds,
		["MessageAttributes"] = MessageAttributes,
		["Id"] = Id,
		["MessageGroupId"] = MessageGroupId,
	}
	M.AssertSendMessageBatchRequestEntry(t)
	return t
end

local ChangeMessageVisibilityBatchRequestEntry_keys = { "ReceiptHandle" = true, "VisibilityTimeout" = true, "Id" = true, nil }

function M.AssertChangeMessageVisibilityBatchRequestEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ChangeMessageVisibilityBatchRequestEntry to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["ReceiptHandle"], "Expected key ReceiptHandle to exist in table")
	if struct["ReceiptHandle"] then M.AssertString(struct["ReceiptHandle"]) end
	if struct["VisibilityTimeout"] then M.AssertInteger(struct["VisibilityTimeout"]) end
	if struct["Id"] then M.AssertString(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(ChangeMessageVisibilityBatchRequestEntry_keys[k], "ChangeMessageVisibilityBatchRequestEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ChangeMessageVisibilityBatchRequestEntry
-- &lt;p&gt;Encloses a receipt handle and an entry id for each message in &lt;code&gt; &lt;a&gt;ChangeMessageVisibilityBatch&lt;/a&gt;.&lt;/code&gt; &lt;/p&gt; &lt;important&gt; &lt;p&gt;All of the following list parameters must be prefixed with &lt;code&gt;ChangeMessageVisibilityBatchRequestEntry.n&lt;/code&gt;, where &lt;code&gt;n&lt;/code&gt; is an integer value starting with &lt;code&gt;1&lt;/code&gt;. For example, a parameter list for this action might look like this:&lt;/p&gt; &lt;/important&gt; &lt;p&gt; &lt;code&gt;&amp;amp;amp;ChangeMessageVisibilityBatchRequestEntry.1.Id=change_visibility_msg_2&lt;/code&gt; &lt;/p&gt; &lt;p&gt; &lt;code&gt;&amp;amp;amp;ChangeMessageVisibilityBatchRequestEntry.1.ReceiptHandle=oooreplaceable&amp;gt;Your_Receipt_Handleooo/replaceable&amp;gt;&lt;/code&gt; &lt;/p&gt; &lt;p&gt; &lt;code&gt;&amp;amp;amp;ChangeMessageVisibilityBatchRequestEntry.1.VisibilityTimeout=45&lt;/code&gt; &lt;/p&gt;
-- @param ReceiptHandle [String] &lt;p&gt;A receipt handle.&lt;/p&gt;
-- @param VisibilityTimeout [Integer] &lt;p&gt;The new value (in seconds) for the message's visibility timeout.&lt;/p&gt;
-- @param Id [String] &lt;p&gt;An identifier for this particular receipt handle used to communicate the result.&lt;/p&gt; &lt;note&gt; &lt;p&gt;The &lt;code&gt;Id&lt;/code&gt;s of a batch request need to be unique within a request&lt;/p&gt; &lt;/note&gt;
-- Required parameter: Id
-- Required parameter: ReceiptHandle
function M.ChangeMessageVisibilityBatchRequestEntry(ReceiptHandle, VisibilityTimeout, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ChangeMessageVisibilityBatchRequestEntry")
	local t = { 
		["ReceiptHandle"] = ReceiptHandle,
		["VisibilityTimeout"] = VisibilityTimeout,
		["Id"] = Id,
	}
	M.AssertChangeMessageVisibilityBatchRequestEntry(t)
	return t
end

local TooManyEntriesInBatchRequest_keys = { nil }

function M.AssertTooManyEntriesInBatchRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyEntriesInBatchRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(TooManyEntriesInBatchRequest_keys[k], "TooManyEntriesInBatchRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyEntriesInBatchRequest
-- &lt;p&gt;The batch request contains more entries than permissible.&lt;/p&gt;
function M.TooManyEntriesInBatchRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyEntriesInBatchRequest")
	local t = { 
	}
	M.AssertTooManyEntriesInBatchRequest(t)
	return t
end

local QueueDeletedRecently_keys = { nil }

function M.AssertQueueDeletedRecently(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected QueueDeletedRecently to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(QueueDeletedRecently_keys[k], "QueueDeletedRecently contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type QueueDeletedRecently
-- &lt;p&gt;You must wait 60 seconds after deleting a queue before you can create another one with the same name.&lt;/p&gt;
function M.QueueDeletedRecently(...)
	assert(select("#", ...) == 0, "Too many arguments when creating QueueDeletedRecently")
	local t = { 
	}
	M.AssertQueueDeletedRecently(t)
	return t
end

local DeleteMessageBatchResult_keys = { "Successful" = true, "Failed" = true, nil }

function M.AssertDeleteMessageBatchResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteMessageBatchResult to be of type 'table'")
	assert(struct["Successful"], "Expected key Successful to exist in table")
	assert(struct["Failed"], "Expected key Failed to exist in table")
	if struct["Successful"] then M.AssertDeleteMessageBatchResultEntryList(struct["Successful"]) end
	if struct["Failed"] then M.AssertBatchResultErrorEntryList(struct["Failed"]) end
	for k,_ in pairs(struct) do
		assert(DeleteMessageBatchResult_keys[k], "DeleteMessageBatchResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteMessageBatchResult
-- &lt;p&gt;For each message in the batch, the response contains a &lt;code&gt; &lt;a&gt;DeleteMessageBatchResultEntry&lt;/a&gt; &lt;/code&gt; tag if the message is deleted or a &lt;code&gt; &lt;a&gt;BatchResultErrorEntry&lt;/a&gt; &lt;/code&gt; tag if the message can't be deleted.&lt;/p&gt;
-- @param Successful [DeleteMessageBatchResultEntryList] &lt;p&gt;A list of &lt;code&gt; &lt;a&gt;DeleteMessageBatchResultEntry&lt;/a&gt; &lt;/code&gt; items.&lt;/p&gt;
-- @param Failed [BatchResultErrorEntryList] &lt;p&gt;A list of &lt;code&gt; &lt;a&gt;BatchResultErrorEntry&lt;/a&gt; &lt;/code&gt; items.&lt;/p&gt;
-- Required parameter: Successful
-- Required parameter: Failed
function M.DeleteMessageBatchResult(Successful, Failed, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteMessageBatchResult")
	local t = { 
		["Successful"] = Successful,
		["Failed"] = Failed,
	}
	M.AssertDeleteMessageBatchResult(t)
	return t
end

local ChangeMessageVisibilityBatchResultEntry_keys = { "Id" = true, nil }

function M.AssertChangeMessageVisibilityBatchResultEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ChangeMessageVisibilityBatchResultEntry to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then M.AssertString(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(ChangeMessageVisibilityBatchResultEntry_keys[k], "ChangeMessageVisibilityBatchResultEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ChangeMessageVisibilityBatchResultEntry
-- &lt;p&gt;Encloses the &lt;code&gt;Id&lt;/code&gt; of an entry in &lt;code&gt; &lt;a&gt;ChangeMessageVisibilityBatch&lt;/a&gt;.&lt;/code&gt; &lt;/p&gt;
-- @param Id [String] &lt;p&gt;Represents a message whose visibility timeout has been changed successfully.&lt;/p&gt;
-- Required parameter: Id
function M.ChangeMessageVisibilityBatchResultEntry(Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ChangeMessageVisibilityBatchResultEntry")
	local t = { 
		["Id"] = Id,
	}
	M.AssertChangeMessageVisibilityBatchResultEntry(t)
	return t
end

local DeleteMessageRequest_keys = { "QueueUrl" = true, "ReceiptHandle" = true, nil }

function M.AssertDeleteMessageRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteMessageRequest to be of type 'table'")
	assert(struct["QueueUrl"], "Expected key QueueUrl to exist in table")
	assert(struct["ReceiptHandle"], "Expected key ReceiptHandle to exist in table")
	if struct["QueueUrl"] then M.AssertString(struct["QueueUrl"]) end
	if struct["ReceiptHandle"] then M.AssertString(struct["ReceiptHandle"]) end
	for k,_ in pairs(struct) do
		assert(DeleteMessageRequest_keys[k], "DeleteMessageRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteMessageRequest
-- &lt;p/&gt;
-- @param QueueUrl [String] &lt;p&gt;The URL of the Amazon SQS queue from which messages are deleted.&lt;/p&gt; &lt;p&gt;Queue URLs are case-sensitive.&lt;/p&gt;
-- @param ReceiptHandle [String] &lt;p&gt;The receipt handle associated with the message to delete.&lt;/p&gt;
-- Required parameter: QueueUrl
-- Required parameter: ReceiptHandle
function M.DeleteMessageRequest(QueueUrl, ReceiptHandle, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteMessageRequest")
	local t = { 
		["QueueUrl"] = QueueUrl,
		["ReceiptHandle"] = ReceiptHandle,
	}
	M.AssertDeleteMessageRequest(t)
	return t
end

function M.AssertQueueAttributeName(str)
	assert(str)
	assert(type(str) == "string", "Expected QueueAttributeName to be of type 'string'")
end

--  
function M.QueueAttributeName(str)
	M.AssertQueueAttributeName(str)
	return str
end

function M.AssertString(str)
	assert(str)
	assert(type(str) == "string", "Expected String to be of type 'string'")
end

--  
function M.String(str)
	M.AssertString(str)
	return str
end

function M.AssertMessageAttributeName(str)
	assert(str)
	assert(type(str) == "string", "Expected MessageAttributeName to be of type 'string'")
end

--  
function M.MessageAttributeName(str)
	M.AssertMessageAttributeName(str)
	return str
end

function M.AssertMessageSystemAttributeName(str)
	assert(str)
	assert(type(str) == "string", "Expected MessageSystemAttributeName to be of type 'string'")
end

--  
function M.MessageSystemAttributeName(str)
	M.AssertMessageSystemAttributeName(str)
	return str
end

function M.AssertInteger(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Integer to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.Integer(integer)
	M.AssertInteger(integer)
	return integer
end

function M.AssertBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Boolean to be of type 'boolean'")
end

function M.Boolean(boolean)
	M.AssertBoolean(boolean)
	return boolean
end

function M.AssertQueueAttributeMap(map)
	assert(map)
	assert(type(map) == "table", "Expected QueueAttributeMap to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertQueueAttributeName(k)
		M.AssertString(v)
	end
end

function M.QueueAttributeMap(map)
	M.AssertQueueAttributeMap(map)
	return map
end

function M.AssertMessageSystemAttributeMap(map)
	assert(map)
	assert(type(map) == "table", "Expected MessageSystemAttributeMap to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertMessageSystemAttributeName(k)
		M.AssertString(v)
	end
end

function M.MessageSystemAttributeMap(map)
	M.AssertMessageSystemAttributeMap(map)
	return map
end

function M.AssertMessageBodyAttributeMap(map)
	assert(map)
	assert(type(map) == "table", "Expected MessageBodyAttributeMap to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertString(k)
		M.AssertMessageAttributeValue(v)
	end
end

function M.MessageBodyAttributeMap(map)
	M.AssertMessageBodyAttributeMap(map)
	return map
end

function M.AssertBinary(blob)
	assert(blob)
	assert(type(string) == "string", "Expected Binary to be of type 'string'")
end

function M.Binary(blob)
	M.AssertBinary(blob)
	return blob
end

function M.AssertMessageAttributeNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected MessageAttributeNameList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertMessageAttributeName(v)
	end
end

--  
-- List of MessageAttributeName objects
function M.MessageAttributeNameList(list)
	M.AssertMessageAttributeNameList(list)
	return list
end

function M.AssertChangeMessageVisibilityBatchRequestEntryList(list)
	assert(list)
	assert(type(list) == "table", "Expected ChangeMessageVisibilityBatchRequestEntryList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertChangeMessageVisibilityBatchRequestEntry(v)
	end
end

--  
-- List of ChangeMessageVisibilityBatchRequestEntry objects
function M.ChangeMessageVisibilityBatchRequestEntryList(list)
	M.AssertChangeMessageVisibilityBatchRequestEntryList(list)
	return list
end

function M.AssertDeleteMessageBatchResultEntryList(list)
	assert(list)
	assert(type(list) == "table", "Expected DeleteMessageBatchResultEntryList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDeleteMessageBatchResultEntry(v)
	end
end

--  
-- List of DeleteMessageBatchResultEntry objects
function M.DeleteMessageBatchResultEntryList(list)
	M.AssertDeleteMessageBatchResultEntryList(list)
	return list
end

function M.AssertStringList(list)
	assert(list)
	assert(type(list) == "table", "Expected StringList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.StringList(list)
	M.AssertStringList(list)
	return list
end

function M.AssertBatchResultErrorEntryList(list)
	assert(list)
	assert(type(list) == "table", "Expected BatchResultErrorEntryList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertBatchResultErrorEntry(v)
	end
end

--  
-- List of BatchResultErrorEntry objects
function M.BatchResultErrorEntryList(list)
	M.AssertBatchResultErrorEntryList(list)
	return list
end

function M.AssertChangeMessageVisibilityBatchResultEntryList(list)
	assert(list)
	assert(type(list) == "table", "Expected ChangeMessageVisibilityBatchResultEntryList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertChangeMessageVisibilityBatchResultEntry(v)
	end
end

--  
-- List of ChangeMessageVisibilityBatchResultEntry objects
function M.ChangeMessageVisibilityBatchResultEntryList(list)
	M.AssertChangeMessageVisibilityBatchResultEntryList(list)
	return list
end

function M.AssertBinaryList(list)
	assert(list)
	assert(type(list) == "table", "Expected BinaryList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertBinary(v)
	end
end

--  
-- List of Binary objects
function M.BinaryList(list)
	M.AssertBinaryList(list)
	return list
end

function M.AssertMessageList(list)
	assert(list)
	assert(type(list) == "table", "Expected MessageList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertMessage(v)
	end
end

--  
-- List of Message objects
function M.MessageList(list)
	M.AssertMessageList(list)
	return list
end

function M.AssertSendMessageBatchRequestEntryList(list)
	assert(list)
	assert(type(list) == "table", "Expected SendMessageBatchRequestEntryList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertSendMessageBatchRequestEntry(v)
	end
end

--  
-- List of SendMessageBatchRequestEntry objects
function M.SendMessageBatchRequestEntryList(list)
	M.AssertSendMessageBatchRequestEntryList(list)
	return list
end

function M.AssertActionNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected ActionNameList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.ActionNameList(list)
	M.AssertActionNameList(list)
	return list
end

function M.AssertAWSAccountIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected AWSAccountIdList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.AWSAccountIdList(list)
	M.AssertAWSAccountIdList(list)
	return list
end

function M.AssertQueueUrlList(list)
	assert(list)
	assert(type(list) == "table", "Expected QueueUrlList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.QueueUrlList(list)
	M.AssertQueueUrlList(list)
	return list
end

function M.AssertSendMessageBatchResultEntryList(list)
	assert(list)
	assert(type(list) == "table", "Expected SendMessageBatchResultEntryList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertSendMessageBatchResultEntry(v)
	end
end

--  
-- List of SendMessageBatchResultEntry objects
function M.SendMessageBatchResultEntryList(list)
	M.AssertSendMessageBatchResultEntryList(list)
	return list
end

function M.AssertDeleteMessageBatchRequestEntryList(list)
	assert(list)
	assert(type(list) == "table", "Expected DeleteMessageBatchRequestEntryList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDeleteMessageBatchRequestEntry(v)
	end
end

--  
-- List of DeleteMessageBatchRequestEntry objects
function M.DeleteMessageBatchRequestEntryList(list)
	M.AssertDeleteMessageBatchRequestEntryList(list)
	return list
end

function M.AssertAttributeNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected AttributeNameList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertQueueAttributeName(v)
	end
end

--  
-- List of QueueAttributeName objects
function M.AttributeNameList(list)
	M.AssertAttributeNameList(list)
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
			return "sqs.amazonaws.com"
		end
	end
	local ss = { "sqs" }
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
--- CreateQueue
-- @param CreateQueueRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateQueueAsync(CreateQueueRequest, cb)
	assert(CreateQueueRequest, "You must provide a CreateQueueRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateQueue",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateQueueRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetQueueAttributes
-- @param GetQueueAttributesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetQueueAttributesAsync(GetQueueAttributesRequest, cb)
	assert(GetQueueAttributesRequest, "You must provide a GetQueueAttributesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetQueueAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetQueueAttributesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SetQueueAttributes
-- @param SetQueueAttributesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.SetQueueAttributesAsync(SetQueueAttributesRequest, cb)
	assert(SetQueueAttributesRequest, "You must provide a SetQueueAttributesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".SetQueueAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SetQueueAttributesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetQueueUrl
-- @param GetQueueUrlRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetQueueUrlAsync(GetQueueUrlRequest, cb)
	assert(GetQueueUrlRequest, "You must provide a GetQueueUrlRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetQueueUrl",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetQueueUrlRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteMessageBatch
-- @param DeleteMessageBatchRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteMessageBatchAsync(DeleteMessageBatchRequest, cb)
	assert(DeleteMessageBatchRequest, "You must provide a DeleteMessageBatchRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteMessageBatch",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteMessageBatchRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SendMessageBatch
-- @param SendMessageBatchRequest
-- @param cb Callback function accepting two args: response, error_message
function M.SendMessageBatchAsync(SendMessageBatchRequest, cb)
	assert(SendMessageBatchRequest, "You must provide a SendMessageBatchRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".SendMessageBatch",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SendMessageBatchRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListDeadLetterSourceQueues
-- @param ListDeadLetterSourceQueuesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListDeadLetterSourceQueuesAsync(ListDeadLetterSourceQueuesRequest, cb)
	assert(ListDeadLetterSourceQueuesRequest, "You must provide a ListDeadLetterSourceQueuesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListDeadLetterSourceQueues",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListDeadLetterSourceQueuesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ChangeMessageVisibility
-- @param ChangeMessageVisibilityRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ChangeMessageVisibilityAsync(ChangeMessageVisibilityRequest, cb)
	assert(ChangeMessageVisibilityRequest, "You must provide a ChangeMessageVisibilityRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ChangeMessageVisibility",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ChangeMessageVisibilityRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AddPermission
-- @param AddPermissionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AddPermissionAsync(AddPermissionRequest, cb)
	assert(AddPermissionRequest, "You must provide a AddPermissionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".AddPermission",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AddPermissionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ChangeMessageVisibilityBatch
-- @param ChangeMessageVisibilityBatchRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ChangeMessageVisibilityBatchAsync(ChangeMessageVisibilityBatchRequest, cb)
	assert(ChangeMessageVisibilityBatchRequest, "You must provide a ChangeMessageVisibilityBatchRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ChangeMessageVisibilityBatch",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ChangeMessageVisibilityBatchRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SendMessage
-- @param SendMessageRequest
-- @param cb Callback function accepting two args: response, error_message
function M.SendMessageAsync(SendMessageRequest, cb)
	assert(SendMessageRequest, "You must provide a SendMessageRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".SendMessage",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SendMessageRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteQueue
-- @param DeleteQueueRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteQueueAsync(DeleteQueueRequest, cb)
	assert(DeleteQueueRequest, "You must provide a DeleteQueueRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteQueue",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteQueueRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PurgeQueue
-- @param PurgeQueueRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PurgeQueueAsync(PurgeQueueRequest, cb)
	assert(PurgeQueueRequest, "You must provide a PurgeQueueRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".PurgeQueue",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", PurgeQueueRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ReceiveMessage
-- @param ReceiveMessageRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ReceiveMessageAsync(ReceiveMessageRequest, cb)
	assert(ReceiveMessageRequest, "You must provide a ReceiveMessageRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ReceiveMessage",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ReceiveMessageRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteMessage
-- @param DeleteMessageRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteMessageAsync(DeleteMessageRequest, cb)
	assert(DeleteMessageRequest, "You must provide a DeleteMessageRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteMessage",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteMessageRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListQueues
-- @param ListQueuesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListQueuesAsync(ListQueuesRequest, cb)
	assert(ListQueuesRequest, "You must provide a ListQueuesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListQueues",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListQueuesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RemovePermission
-- @param RemovePermissionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RemovePermissionAsync(RemovePermissionRequest, cb)
	assert(RemovePermissionRequest, "You must provide a RemovePermissionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".RemovePermission",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RemovePermissionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
