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
-- <p>Error code 400. Unsupported operation.</p>
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
-- <p>Indicates that the specified queue previously received a <code>PurgeQueue</code> request within the last 60 seconds (the time it can take to delete the messages in the queue).</p>
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
-- <p>The user-specified message attribute value. For string data types, the <code>Value</code> attribute has the same restrictions on the content as the message body. For more information, see <code> <a>SendMessage</a>.</code> </p> <p> <code>Name</code>, <code>type</code>, <code>value</code> and the message body must not be empty or null. All parts of the message attribute, including <code>Name</code>, <code>Type</code>, and <code>Value</code>, are part of the message size restriction (256 KB or 262,144 bytes).</p>
-- @param BinaryListValues [BinaryList] <p>Not implemented. Reserved for future use.</p>
-- @param StringValue [String] <p>Strings are Unicode with UTF-8 binary encoding. For a list of code values, see <a href="http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters">ASCII Printable Characters</a>.</p>
-- @param DataType [String] <p>Amazon SQS supports the following logical data types: <code>String</code>, <code>Number</code>, and <code>Binary</code>. For the <code>Number</code> data type, you must use <code>StringValue</code>.</p> <p>You can also append custom labels. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-message-attributes.html#message-attributes-data-types-validation">Message Attribute Data Types and Validation</a> in the <i>Amazon SQS Developer Guide</i>.</p>
-- @param BinaryValue [Binary] <p>Binary type attributes can store any binary data, such as compressed data, encrypted data, or images.</p>
-- @param StringListValues [StringList] <p>Not implemented. Reserved for future use.</p>
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
-- <p/>
-- @param QueueUrl [String] <p>The URL of the Amazon SQS queue whose attributes are set.</p> <p>Queue URLs are case-sensitive.</p>
-- @param Attributes [QueueAttributeMap] <p>A map of attributes to set.</p> <p>The following lists the names, descriptions, and values of the special request parameters that the <code>SetQueueAttributes</code> action uses:</p> <ul> <li> <p> <code>DelaySeconds</code> - The length of time, in seconds, for which the delivery of all messages in the queue is delayed. Valid values: An integer from 0 to 900 (15 minutes). The default is 0 (zero). </p> </li> <li> <p> <code>MaximumMessageSize</code> - The limit of how many bytes a message can contain before Amazon SQS rejects it. Valid values: An integer from 1,024 bytes (1 KiB) up to 262,144 bytes (256 KiB). The default is 262,144 (256 KiB). </p> </li> <li> <p> <code>MessageRetentionPeriod</code> - The length of time, in seconds, for which Amazon SQS retains a message. Valid values: An integer representing seconds, from 60 (1 minute) to 1,209,600 (14 days). The default is 345,600 (4 days). </p> </li> <li> <p> <code>Policy</code> - The queue's policy. A valid AWS policy. For more information about policy structure, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/PoliciesOverview.html">Overview of AWS IAM Policies</a> in the <i>Amazon IAM User Guide</i>. </p> </li> <li> <p> <code>ReceiveMessageWaitTimeSeconds</code> - The length of time, in seconds, for which a <code> <a>ReceiveMessage</a> </code> action waits for a message to arrive. Valid values: an integer from 0 to 20 (seconds). The default is 0. </p> </li> <li> <p> <code>RedrivePolicy</code> - The parameters for the dead letter queue functionality of the source queue. For more information about the redrive policy and dead letter queues, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html">Using Amazon SQS Dead Letter Queues</a> in the <i>Amazon SQS Developer Guide</i>. </p> <note> <p>The dead letter queue of a FIFO queue must also be a FIFO queue. Similarly, the dead letter queue of a standard queue must also be a standard queue.</p> </note> </li> <li> <p> <code>VisibilityTimeout</code> - The visibility timeout for the queue. Valid values: an integer from 0 to 43,200 (12 hours). The default is 30. For more information about the visibility timeout, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html">Visibility Timeout</a> in the <i>Amazon SQS Developer Guide</i>.</p> </li> </ul> <p>The following attributes apply only to <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html">server-side-encryption</a>:</p> <ul> <li> <p> <code>KmsMasterKeyId</code> - The ID of an AWS-managed customer master key (CMK) for Amazon SQS or a custom CMK. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-sse-key-terms">Key Terms</a>. While the alias of the AWS-managed CMK for Amazon SQS is always <code>alias/aws/sqs</code>, the alias of a custom CMK can, for example, be <code>alias/aws/sqs</code>. For more examples, see <a href="http://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html#API_DescribeKey_RequestParameters">KeyId</a> in the <i>AWS Key Management Service API Reference</i>. </p> </li> <li> <p> <code>KmsDataKeyReusePeriodSeconds</code> - The length of time, in seconds, for which Amazon SQS can reuse a <a href="http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#data-keys">data key</a> to encrypt or decrypt messages before calling AWS KMS again. An integer representing seconds, between 60 seconds (1 minute) and 86,400 seconds (24 hours). The default is 300 (5 minutes). A shorter time period provides better security but results in more calls to KMS which incur charges after Free Tier. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-how-does-the-data-key-reuse-period-work">How Does the Data Key Reuse Period Work?</a>. </p> </li> </ul> <p>The following attribute applies only to <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html">FIFO (first-in-first-out) queues</a>:</p> <ul> <li> <p> <code>ContentBasedDeduplication</code> - Enables content-based deduplication. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-exactly-once-processing">Exactly-Once Processing</a> in the <i>Amazon SQS Developer Guide</i>. </p> <ul> <li> <p>Every message must have a unique <code>MessageDeduplicationId</code>,</p> <ul> <li> <p>You may provide a <code>MessageDeduplicationId</code> explicitly.</p> </li> <li> <p>If you aren't able to provide a <code>MessageDeduplicationId</code> and you enable <code>ContentBasedDeduplication</code> for your queue, Amazon SQS uses a SHA-256 hash to generate the <code>MessageDeduplicationId</code> using the body of the message (but not the attributes of the message). </p> </li> <li> <p>If you don't provide a <code>MessageDeduplicationId</code> and the queue doesn't have <code>ContentBasedDeduplication</code> set, the action fails with an error.</p> </li> <li> <p>If the queue has <code>ContentBasedDeduplication</code> set, your <code>MessageDeduplicationId</code> overrides the generated one.</p> </li> </ul> </li> <li> <p>When <code>ContentBasedDeduplication</code> is in effect, messages with identical content sent within the deduplication interval are treated as duplicates and only one copy of the message is delivered.</p> </li> <li> <p>If you send one message with <code>ContentBasedDeduplication</code> enabled and then another message with a <code>MessageDeduplicationId</code> that is the same as the one generated for the first <code>MessageDeduplicationId</code>, the two messages are treated as duplicates and only one copy of the message is delivered. </p> </li> </ul> </li> </ul> <p>Any other valid special request parameters (such as the following) are ignored:</p> <ul> <li> <p> <code>ApproximateNumberOfMessages</code> </p> </li> <li> <p> <code>ApproximateNumberOfMessagesDelayed</code> </p> </li> <li> <p> <code>ApproximateNumberOfMessagesNotVisible</code> </p> </li> <li> <p> <code>CreatedTimestamp</code> </p> </li> <li> <p> <code>LastModifiedTimestamp</code> </p> </li> <li> <p> <code>QueueArn</code> </p> </li> </ul>
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
-- <p/>
-- @param QueueUrl [String] <p>The URL of the Amazon SQS queue whose attribute information is retrieved.</p> <p>Queue URLs are case-sensitive.</p>
-- @param AttributeNames [AttributeNameList] <p>A list of attributes for which to retrieve information.</p> <note> <p>In the future, new attributes might be added. If you write code that calls this action, we recommend that you structure your code so that it can handle new attributes gracefully.</p> </note> <p>The following attributes are supported:</p> <ul> <li> <p> <code>All</code> - Returns all values. </p> </li> <li> <p> <code>ApproximateNumberOfMessages</code> - Returns the approximate number of visible messages in a queue. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-resources-required-process-messages.html">Resources Required to Process Messages</a> in the <i>Amazon SQS Developer Guide</i>. </p> </li> <li> <p> <code>ApproximateNumberOfMessagesDelayed</code> - Returns the approximate number of messages that are waiting to be added to the queue. </p> </li> <li> <p> <code>ApproximateNumberOfMessagesNotVisible</code> - Returns the approximate number of messages that have not timed-out and aren't deleted. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-resources-required-process-messages.html">Resources Required to Process Messages</a> in the <i>Amazon SQS Developer Guide</i>. </p> </li> <li> <p> <code>CreatedTimestamp</code> - Returns the time when the queue was created in seconds (<a href="http://en.wikipedia.org/wiki/Unix_time">epoch time</a>).</p> </li> <li> <p> <code>DelaySeconds</code> - Returns the default delay on the queue in seconds.</p> </li> <li> <p> <code>LastModifiedTimestamp</code> - Returns the time when the queue was last changed in seconds (<a href="http://en.wikipedia.org/wiki/Unix_time">epoch time</a>).</p> </li> <li> <p> <code>MaximumMessageSize</code> - Returns the limit of how many bytes a message can contain before Amazon SQS rejects it.</p> </li> <li> <p> <code>MessageRetentionPeriod</code> - Returns the length of time, in seconds, for which Amazon SQS retains a message.</p> </li> <li> <p> <code>Policy</code> - Returns the policy of the queue.</p> </li> <li> <p> <code>QueueArn</code> - Returns the Amazon resource name (ARN) of the queue.</p> </li> <li> <p> <code>ReceiveMessageWaitTimeSeconds</code> - Returns the length of time, in seconds, for which the <code>ReceiveMessage</code> action waits for a message to arrive. </p> </li> <li> <p> <code>RedrivePolicy</code> - Returns the parameters for dead letter queue functionality of the source queue. For more information about the redrive policy and dead letter queues, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html">Using Amazon SQS Dead Letter Queues</a> in the <i>Amazon SQS Developer Guide</i>. </p> </li> <li> <p> <code>VisibilityTimeout</code> - Returns the visibility timeout for the queue. For more information about the visibility timeout, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html">Visibility Timeout</a> in the <i>Amazon SQS Developer Guide</i>. </p> </li> </ul> <p>The following attributes apply only to <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html">server-side-encryption</a>:</p> <ul> <li> <p> <code>KmsMasterKeyId</code> - Returns the ID of an AWS-managed customer master key (CMK) for Amazon SQS or a custom CMK. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-sse-key-terms">Key Terms</a>. </p> </li> <li> <p> <code>KmsDataKeyReusePeriodSeconds</code> - Returns the length of time, in seconds, for which Amazon SQS can reuse a data key to encrypt or decrypt messages before calling AWS KMS again. </p> </li> </ul> <p>The following attributes apply only to <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html">FIFO (first-in-first-out) queues</a>:</p> <ul> <li> <p> <code>FifoQueue</code> - Returns whether the queue is FIFO. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-understanding-logic">FIFO Queue Logic</a> in the <i>Amazon SQS Developer Guide</i>.</p> <note> <p>To determine whether a queue is <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html">FIFO</a>, you can check whether <code>QueueName</code> ends with the <code>.fifo</code> suffix.</p> </note> </li> <li> <p> <code>ContentBasedDeduplication</code> - Returns whether content-based deduplication is enabled for the queue. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-exactly-once-processing">Exactly-Once Processing</a> in the <i>Amazon SQS Developer Guide</i>. </p> </li> </ul>
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
-- <p>For each message in the batch, the response contains a <code> <a>SendMessageBatchResultEntry</a> </code> tag if the message succeeds or a <code> <a>BatchResultErrorEntry</a> </code> tag if the message fails.</p>
-- @param Successful [SendMessageBatchResultEntryList] <p>A list of <code> <a>SendMessageBatchResultEntry</a> </code> items.</p>
-- @param Failed [BatchResultErrorEntryList] <p>A list of <code> <a>BatchResultErrorEntry</a> </code> items with error details about each message that can't be enqueued.</p>
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
-- <p/>
-- @param Attributes [QueueAttributeMap] <p>A map of attributes with their corresponding values.</p> <p>The following lists the names, descriptions, and values of the special request parameters that the <code>CreateQueue</code> action uses:</p> <ul> <li> <p> <code>DelaySeconds</code> - The length of time, in seconds, for which the delivery of all messages in the queue is delayed. Valid values: An integer from 0 to 900 seconds (15 minutes). The default is 0 (zero). </p> </li> <li> <p> <code>MaximumMessageSize</code> - The limit of how many bytes a message can contain before Amazon SQS rejects it. Valid values: An integer from 1,024 bytes (1 KiB) to 262,144 bytes (256 KiB). The default is 262,144 (256 KiB). </p> </li> <li> <p> <code>MessageRetentionPeriod</code> - The length of time, in seconds, for which Amazon SQS retains a message. Valid values: An integer from 60 seconds (1 minute) to 1,209,600 seconds (14 days). The default is 345,600 (4 days). </p> </li> <li> <p> <code>Policy</code> - The queue's policy. A valid AWS policy. For more information about policy structure, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/PoliciesOverview.html">Overview of AWS IAM Policies</a> in the <i>Amazon IAM User Guide</i>. </p> </li> <li> <p> <code>ReceiveMessageWaitTimeSeconds</code> - The length of time, in seconds, for which a <code> <a>ReceiveMessage</a> </code> action waits for a message to arrive. Valid values: An integer from 0 to 20 (seconds). The default is 0 (zero). </p> </li> <li> <p> <code>RedrivePolicy</code> - The parameters for the dead letter queue functionality of the source queue. For more information about the redrive policy and dead letter queues, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html">Using Amazon SQS Dead Letter Queues</a> in the <i>Amazon SQS Developer Guide</i>. </p> <note> <p>The dead letter queue of a FIFO queue must also be a FIFO queue. Similarly, the dead letter queue of a standard queue must also be a standard queue.</p> </note> </li> <li> <p> <code>VisibilityTimeout</code> - The visibility timeout for the queue. Valid values: An integer from 0 to 43,200 (12 hours). The default is 30. For more information about the visibility timeout, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html">Visibility Timeout</a> in the <i>Amazon SQS Developer Guide</i>.</p> </li> </ul> <p>The following attributes apply only to <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html">server-side-encryption</a>:</p> <ul> <li> <p> <code>KmsMasterKeyId</code> - The ID of an AWS-managed customer master key (CMK) for Amazon SQS or a custom CMK. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-sse-key-terms">Key Terms</a>. While the alias of the AWS-managed CMK for Amazon SQS is always <code>alias/aws/sqs</code>, the alias of a custom CMK can, for example, be <code>alias/aws/sqs</code>. For more examples, see <a href="http://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html#API_DescribeKey_RequestParameters">KeyId</a> in the <i>AWS Key Management Service API Reference</i>. </p> </li> <li> <p> <code>KmsDataKeyReusePeriodSeconds</code> - The length of time, in seconds, for which Amazon SQS can reuse a <a href="http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#data-keys">data key</a> to encrypt or decrypt messages before calling AWS KMS again. An integer representing seconds, between 60 seconds (1 minute) and 86,400 seconds (24 hours). The default is 300 (5 minutes). A shorter time period provides better security but results in more calls to KMS which incur charges after Free Tier. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-server-side-encryption.html#sqs-how-does-the-data-key-reuse-period-work">How Does the Data Key Reuse Period Work?</a>. </p> </li> </ul> <p>The following attributes apply only to <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html">FIFO (first-in-first-out) queues</a>:</p> <ul> <li> <p> <code>FifoQueue</code> - Designates a queue as FIFO. Valid values: <code>true</code>, <code>false</code>. You can provide this attribute only during queue creation. You can't change it for an existing queue. When you set this attribute, you must also provide the <code>MessageGroupId</code> for your messages explicitly.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-understanding-logic">FIFO Queue Logic</a> in the <i>Amazon SQS Developer Guide</i>.</p> </li> <li> <p> <code>ContentBasedDeduplication</code> - Enables content-based deduplication. Valid values: <code>true</code>, <code>false</code>. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-exactly-once-processing">Exactly-Once Processing</a> in the <i>Amazon SQS Developer Guide</i>. </p> <ul> <li> <p>Every message must have a unique <code>MessageDeduplicationId</code>,</p> <ul> <li> <p>You may provide a <code>MessageDeduplicationId</code> explicitly.</p> </li> <li> <p>If you aren't able to provide a <code>MessageDeduplicationId</code> and you enable <code>ContentBasedDeduplication</code> for your queue, Amazon SQS uses a SHA-256 hash to generate the <code>MessageDeduplicationId</code> using the body of the message (but not the attributes of the message). </p> </li> <li> <p>If you don't provide a <code>MessageDeduplicationId</code> and the queue doesn't have <code>ContentBasedDeduplication</code> set, the action fails with an error.</p> </li> <li> <p>If the queue has <code>ContentBasedDeduplication</code> set, your <code>MessageDeduplicationId</code> overrides the generated one.</p> </li> </ul> </li> <li> <p>When <code>ContentBasedDeduplication</code> is in effect, messages with identical content sent within the deduplication interval are treated as duplicates and only one copy of the message is delivered.</p> </li> <li> <p>If you send one message with <code>ContentBasedDeduplication</code> enabled and then another message with a <code>MessageDeduplicationId</code> that is the same as the one generated for the first <code>MessageDeduplicationId</code>, the two messages are treated as duplicates and only one copy of the message is delivered. </p> </li> </ul> </li> </ul> <p>Any other valid special request parameters (such as the following) are ignored:</p> <ul> <li> <p> <code>ApproximateNumberOfMessages</code> </p> </li> <li> <p> <code>ApproximateNumberOfMessagesDelayed</code> </p> </li> <li> <p> <code>ApproximateNumberOfMessagesNotVisible</code> </p> </li> <li> <p> <code>CreatedTimestamp</code> </p> </li> <li> <p> <code>LastModifiedTimestamp</code> </p> </li> <li> <p> <code>QueueArn</code> </p> </li> </ul>
-- @param QueueName [String] <p>The name of the new queue. The following limits apply to this name:</p> <ul> <li> <p>A queue name can have up to 80 characters.</p> </li> <li> <p>Valid values: alphanumeric characters, hyphens (<code>-</code>), and underscores (<code>_</code>).</p> </li> <li> <p>A FIFO queue name must end with the <code>.fifo</code> suffix.</p> </li> </ul> <p>Queue names are case-sensitive.</p>
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
-- <p/>
-- @param QueueUrl [String] <p>The URL of the Amazon SQS queue from which permissions are removed.</p> <p>Queue URLs are case-sensitive.</p>
-- @param Label [String] <p>The identification of the permission to remove. This is the label added using the <code> <a>AddPermission</a> </code> action.</p>
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
-- <p>Encloses a receipt handle and an identifier for it.</p>
-- @param ReceiptHandle [String] <p>A receipt handle.</p>
-- @param Id [String] <p>An identifier for this particular receipt handle. This is used to communicate the result.</p> <note> <p>The <code>Id</code>s of a batch request need to be unique within a request</p> </note>
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
-- <p/>
-- @param QueueUrl [String] <p>The URL of the Amazon SQS queue to which batched messages are sent.</p> <p>Queue URLs are case-sensitive.</p>
-- @param Entries [SendMessageBatchRequestEntryList] <p>A list of <code> <a>SendMessageBatchRequestEntry</a> </code> items.</p>
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
-- <p>For each message in the batch, the response contains a <code> <a>ChangeMessageVisibilityBatchResultEntry</a> </code> tag if the message succeeds or a <code> <a>BatchResultErrorEntry</a> </code> tag if the message fails.</p>
-- @param Successful [ChangeMessageVisibilityBatchResultEntryList] <p>A list of <code> <a>ChangeMessageVisibilityBatchResultEntry</a> </code> items.</p>
-- @param Failed [BatchResultErrorEntryList] <p>A list of <code> <a>BatchResultErrorEntry</a> </code> items.</p>
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
-- <p>Returns the <code>QueueUrl</code> attribute of the created queue.</p>
-- @param QueueUrl [String] <p>The URL of the created Amazon SQS queue.</p>
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
-- <p/>
-- @param QueueUrl [String] <p>The URL of the queue from which the <code>PurgeQueue</code> action deletes messages.</p> <p>Queue URLs are case-sensitive.</p>
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
-- <p>The receipt handle provided isn't valid.</p>
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
-- <p>The attribute referred to doesn't exist.</p>
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
-- <p/>
-- @param QueueUrl [String] <p>The URL of the Amazon SQS queue whose messages' visibility is changed.</p> <p>Queue URLs are case-sensitive.</p>
-- @param Entries [ChangeMessageVisibilityBatchRequestEntryList] <p>A list of receipt handles of the messages for which the visibility timeout must be changed.</p>
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
-- <p/>
-- @param QueueUrl [String] <p>The URL of the Amazon SQS queue from which messages are received.</p> <p>Queue URLs are case-sensitive.</p>
-- @param ReceiveRequestAttemptId [String] <p>This parameter applies only to FIFO (first-in-first-out) queues.</p> <p>The token used for deduplication of <code>ReceiveMessage</code> calls. If a networking issue occurs after a <code>ReceiveMessage</code> action, and instead of a response you receive a generic error, you can retry the same action with an identical <code>ReceiveRequestAttemptId</code> to retrieve the same set of messages, even if their visibility timeout has not yet expired.</p> <ul> <li> <p>You can use <code>ReceiveRequestAttemptId</code> only for 5 minutes after a <code>ReceiveMessage</code> action.</p> </li> <li> <p>When you set <code>FifoQueue</code>, a caller of the <code>ReceiveMessage</code> action can provide a <code>ReceiveRequestAttemptId</code> explicitly.</p> </li> <li> <p>If a caller of the <code>ReceiveMessage</code> action doesn't provide a <code>ReceiveRequestAttemptId</code>, Amazon SQS generates a <code>ReceiveRequestAttemptId</code>.</p> </li> <li> <p>You can retry the <code>ReceiveMessage</code> action with the same <code>ReceiveRequestAttemptId</code> if none of the messages have been modified (deleted or had their visibility changes).</p> </li> <li> <p>During a visibility timeout, subsequent calls with the same <code>ReceiveRequestAttemptId</code> return the same messages and receipt handles. If a retry occurs within the deduplication interval, it resets the visibility timeout. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html">Visibility Timeout</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> <important> <p>If a caller of the <code>ReceiveMessage</code> action is still processing messages when the visibility timeout expires and messages become visible, another worker reading from the same queue can receive the same messages and therefore process duplicates. Also, if a reader whose message processing time is longer than the visibility timeout tries to delete the processed messages, the action fails with an error.</p> <p>To mitigate this effect, ensure that your application observes a safe threshold before the visibility timeout expires and extend the visibility timeout as necessary.</p> </important> </li> <li> <p>While messages with a particular <code>MessageGroupId</code> are invisible, no more messages belonging to the same <code>MessageGroupId</code> are returned until the visibility timeout expires. You can still receive messages with another <code>MessageGroupId</code> as long as it is also visible.</p> </li> <li> <p>If a caller of <code>ReceiveMessage</code> can't track the <code>ReceiveRequestAttemptId</code>, no retries work until the original visibility timeout expires. As a result, delays might occur but the messages in the queue remain in a strict order.</p> </li> </ul> <p>The length of <code>ReceiveRequestAttemptId</code> is 128 characters. <code>ReceiveRequestAttemptId</code> can contain alphanumeric characters (<code>a-z</code>, <code>A-Z</code>, <code>0-9</code>) and punctuation (<code>!"#$%&amp;'()*+,-./:;&lt;=&gt;?@[\]^_`{|}~</code>).</p> <p>For best practices of using <code>ReceiveRequestAttemptId</code>, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queue-recommendations.html#using-receiverequestattemptid-request-parameter">Using the ReceiveRequestAttemptId Request Parameter</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p>
-- @param MaxNumberOfMessages [Integer] <p>The maximum number of messages to return. Amazon SQS never returns more messages than this value (however, fewer messages might be returned). Valid values are 1 to 10. Default is 1.</p>
-- @param WaitTimeSeconds [Integer] <p>The duration (in seconds) for which the call waits for a message to arrive in the queue before returning. If a message is available, the call returns sooner than <code>WaitTimeSeconds</code>.</p>
-- @param MessageAttributeNames [MessageAttributeNameList] <p>The name of the message attribute, where <i>N</i> is the index.</p> <ul> <li> <p>The name can contain alphanumeric characters and the underscore (<code>_</code>), hyphen (<code>-</code>), and period (<code>.</code>).</p> </li> <li> <p>The name is case-sensitive and must be unique among all attribute names for the message.</p> </li> <li> <p>The name must not start with AWS-reserved prefixes such as <code>AWS.</code> or <code>Amazon.</code> (or any casing variants).</p> </li> <li> <p>The name must not start or end with a period (<code>.</code>), and it should not have periods in succession (<code>..</code>).</p> </li> <li> <p>The name can be up to 256 characters long.</p> </li> </ul> <p>When using <code>ReceiveMessage</code>, you can send a list of attribute names to receive, or you can return all of the attributes by specifying <code>All</code> or <code>.*</code> in your request. You can also use all message attributes starting with a prefix, for example <code>bar.*</code>.</p>
-- @param VisibilityTimeout [Integer] <p>The duration (in seconds) that the received messages are hidden from subsequent retrieve requests after being retrieved by a <code>ReceiveMessage</code> request.</p>
-- @param AttributeNames [AttributeNameList] <p>A list of attributes that need to be returned along with each message. These attributes include:</p> <ul> <li> <p> <code>All</code> - Returns all values.</p> </li> <li> <p> <code>ApproximateFirstReceiveTimestamp</code> - Returns the time the message was first received from the queue (<a href="http://en.wikipedia.org/wiki/Unix_time">epoch time</a> in milliseconds).</p> </li> <li> <p> <code>ApproximateReceiveCount</code> - Returns the number of times a message has been received from the queue but not deleted.</p> </li> <li> <p> <code>SenderId</code> </p> <ul> <li> <p>For an IAM user, returns the IAM user ID, for example <code>ABCDEFGHI1JKLMNOPQ23R</code>.</p> </li> <li> <p>For an IAM role, returns the IAM role ID, for example <code>ABCDE1F2GH3I4JK5LMNOP:i-a123b456</code>.</p> </li> </ul> </li> <li> <p> <code>SentTimestamp</code> - Returns the time the message was sent to the queue (<a href="http://en.wikipedia.org/wiki/Unix_time">epoch time</a> in milliseconds).</p> </li> <li> <p> <code>MessageDeduplicationId</code> - Returns the value provided by the sender that calls the <code> <a>SendMessage</a> </code> action.</p> </li> <li> <p> <code>MessageGroupId</code> - Returns the value provided by the sender that calls the <code> <a>SendMessage</a> </code> action. Messages with the same <code>MessageGroupId</code> are returned in sequence.</p> </li> <li> <p> <code>SequenceNumber</code> - Returns the value provided by Amazon SQS.</p> </li> </ul> <p>Any other valid special request parameters (such as the following) are ignored:</p> <ul> <li> <p> <code>ApproximateNumberOfMessages</code> </p> </li> <li> <p> <code>ApproximateNumberOfMessagesDelayed</code> </p> </li> <li> <p> <code>ApproximateNumberOfMessagesNotVisible</code> </p> </li> <li> <p> <code>CreatedTimestamp</code> </p> </li> <li> <p> <code>ContentBasedDeduplication</code> </p> </li> <li> <p> <code>DelaySeconds</code> </p> </li> <li> <p> <code>FifoQueue</code> </p> </li> <li> <p> <code>LastModifiedTimestamp</code> </p> </li> <li> <p> <code>MaximumMessageSize</code> </p> </li> <li> <p> <code>MessageRetentionPeriod</code> </p> </li> <li> <p> <code>Policy</code> </p> </li> <li> <p> <code>QueueArn</code>, </p> </li> <li> <p> <code>ReceiveMessageWaitTimeSeconds</code> </p> </li> <li> <p> <code>RedrivePolicy</code> </p> </li> <li> <p> <code>VisibilityTimeout</code> </p> </li> </ul>
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
-- <p>A list of received messages.</p>
-- @param Messages [MessageList] <p>A list of messages.</p>
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
-- <p>Encloses a <code>MessageId</code> for a successfully-enqueued message in a <code> <a>SendMessageBatch</a>.</code> </p>
-- @param MD5OfMessageBody [String] <p>An MD5 digest of the non-URL-encoded message attribute string. You can use this attribute to verify that Amazon SQS received the message correctly. Amazon SQS URL-decodes the message before creating the MD5 digest. For information about MD5, see <a href="https://www.ietf.org/rfc/rfc1321.txt">RFC1321</a>.</p>
-- @param MD5OfMessageAttributes [String] <p>An MD5 digest of the non-URL-encoded message attribute string. You can use this attribute to verify that Amazon SQS received the message correctly. Amazon SQS URL-decodes the message before creating the MD5 digest. For information about MD5, see <a href="https://www.ietf.org/rfc/rfc1321.txt">RFC1321</a>.</p>
-- @param Id [String] <p>An identifier for the message in this batch.</p>
-- @param SequenceNumber [String] <p>This parameter applies only to FIFO (first-in-first-out) queues.</p> <p>The large, non-consecutive number that Amazon SQS assigns to each message.</p> <p>The length of <code>SequenceNumber</code> is 128 bits. As <code>SequenceNumber</code> continues to increase for a particular <code>MessageGroupId</code>.</p>
-- @param MessageId [String] <p>An identifier for the message.</p>
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
-- <p>The <code>Id</code> of a batch entry in a batch request doesn't abide by the specification.</p>
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
-- @param QueueUrl [String] <p>The URL of the Amazon SQS queue whose message's visibility is changed.</p> <p>Queue URLs are case-sensitive.</p>
-- @param ReceiptHandle [String] <p>The receipt handle associated with the message whose visibility timeout is changed. This parameter is returned by the <code> <a>ReceiveMessage</a> </code> action.</p>
-- @param VisibilityTimeout [Integer] <p>The new value for the message's visibility timeout (in seconds). Values values: <code>0</code> to <code>43200</code>. Maximum: 12 hours.</p>
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
-- <p>This is used in the responses of batch API to give a detailed description of the result of an action on each entry in the request.</p>
-- @param Message [String] <p>A message explaining why the action failed on this entry.</p>
-- @param SenderFault [Boolean] <p>Specifies whether the error happened due to the sender's fault.</p>
-- @param Code [String] <p>An error code representing why the action failed on this entry.</p>
-- @param Id [String] <p>The <code>Id</code> of an entry in a batch request.</p>
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
-- <p>The <code>MD5OfMessageBody</code> and <code>MessageId</code> elements.</p>
-- @param MD5OfMessageBody [String] <p>An MD5 digest of the non-URL-encoded message attribute string. You can use this attribute to verify that Amazon SQS received the message correctly. Amazon SQS URL-decodes the message before creating the MD5 digest. For information about MD5, see <a href="https://www.ietf.org/rfc/rfc1321.txt">RFC1321</a>.</p>
-- @param MD5OfMessageAttributes [String] <p>An MD5 digest of the non-URL-encoded message attribute string. You can use this attribute to verify that Amazon SQS received the message correctly. Amazon SQS URL-decodes the message before creating the MD5 digest. For information about MD5, see <a href="https://www.ietf.org/rfc/rfc1321.txt">RFC1321</a>.</p>
-- @param SequenceNumber [String] <p>This parameter applies only to FIFO (first-in-first-out) queues.</p> <p>The large, non-consecutive number that Amazon SQS assigns to each message.</p> <p>The length of <code>SequenceNumber</code> is 128 bits. <code>SequenceNumber</code> continues to increase for a particular <code>MessageGroupId</code>.</p>
-- @param MessageId [String] <p>An attribute containing the <code>MessageId</code> of the message sent to the queue. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-queue-message-identifiers.html">Queue and Message Identifiers</a> in the <i>Amazon SQS Developer Guide</i>. </p>
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
-- <p/>
-- @param QueueUrl [String] <p>The URL of the Amazon SQS queue from which messages are deleted.</p> <p>Queue URLs are case-sensitive.</p>
-- @param Entries [DeleteMessageBatchRequestEntryList] <p>A list of receipt handles for the messages to be deleted.</p>
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
-- <p>The queue referred to doesn't exist.</p>
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
-- <p/>
-- @param QueueUrl [String] <p>The URL of the Amazon SQS queue to which a message is sent.</p> <p>Queue URLs are case-sensitive.</p>
-- @param MessageDeduplicationId [String] <p>This parameter applies only to FIFO (first-in-first-out) queues.</p> <p>The token used for deduplication of sent messages. If a message with a particular <code>MessageDeduplicationId</code> is sent successfully, any messages sent with the same <code>MessageDeduplicationId</code> are accepted successfully but aren't delivered during the 5-minute deduplication interval. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-exactly-once-processing"> Exactly-Once Processing</a> in the <i>Amazon SQS Developer Guide</i>.</p> <ul> <li> <p>Every message must have a unique <code>MessageDeduplicationId</code>,</p> <ul> <li> <p>You may provide a <code>MessageDeduplicationId</code> explicitly.</p> </li> <li> <p>If you aren't able to provide a <code>MessageDeduplicationId</code> and you enable <code>ContentBasedDeduplication</code> for your queue, Amazon SQS uses a SHA-256 hash to generate the <code>MessageDeduplicationId</code> using the body of the message (but not the attributes of the message). </p> </li> <li> <p>If you don't provide a <code>MessageDeduplicationId</code> and the queue doesn't have <code>ContentBasedDeduplication</code> set, the action fails with an error.</p> </li> <li> <p>If the queue has <code>ContentBasedDeduplication</code> set, your <code>MessageDeduplicationId</code> overrides the generated one.</p> </li> </ul> </li> <li> <p>When <code>ContentBasedDeduplication</code> is in effect, messages with identical content sent within the deduplication interval are treated as duplicates and only one copy of the message is delivered.</p> </li> <li> <p>If you send one message with <code>ContentBasedDeduplication</code> enabled and then another message with a <code>MessageDeduplicationId</code> that is the same as the one generated for the first <code>MessageDeduplicationId</code>, the two messages are treated as duplicates and only one copy of the message is delivered. </p> </li> </ul> <note> <p>The <code>MessageDeduplicationId</code> is available to the recipient of the message (this can be useful for troubleshooting delivery issues).</p> <p>If a message is sent successfully but the acknowledgement is lost and the message is resent with the same <code>MessageDeduplicationId</code> after the deduplication interval, Amazon SQS can't detect duplicate messages.</p> </note> <p>The length of <code>MessageDeduplicationId</code> is 128 characters. <code>MessageDeduplicationId</code> can contain alphanumeric characters (<code>a-z</code>, <code>A-Z</code>, <code>0-9</code>) and punctuation (<code>!"#$%&amp;'()*+,-./:;&lt;=&gt;?@[\]^_`{|}~</code>).</p> <p>For best practices of using <code>MessageDeduplicationId</code>, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queue-recommendations.html#using-messagededuplicationid-property">Using the MessageDeduplicationId Property</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p>
-- @param MessageBody [String] <p>The message to send. The maximum string size is 256 KB.</p> <important> <p>A message can include only XML, JSON, and unformatted text. The following Unicode characters are allowed:</p> <p> <code>#x9</code> | <code>#xA</code> | <code>#xD</code> | <code>#x20</code> to <code>#xD7FF</code> | <code>#xE000</code> to <code>#xFFFD</code> | <code>#x10000</code> to <code>#x10FFFF</code> </p> <p>Any characters not included in this list will be rejected. For more information, see the <a href="http://www.w3.org/TR/REC-xml/#charsets">W3C specification for characters</a>.</p> </important>
-- @param DelaySeconds [Integer] <p> The length of time, in seconds, for which to delay a specific message. Valid values: 0 to 900. Maximum: 15 minutes. Messages with a positive <code>DelaySeconds</code> value become available for processing after the delay period is finished. If you don't specify a value, the default value for the queue applies. </p> <note> <p>When you set <code>FifoQueue</code>, you can't set <code>DelaySeconds</code> per message. You can set this parameter only on a queue level.</p> </note>
-- @param MessageAttributes [MessageBodyAttributeMap] <p>Each message attribute consists of a <code>Name</code>, <code>Type</code>, and <code>Value</code>. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-message-attributes.html#message-attributes-items-validation">Message Attribute Items and Validation</a> in the <i>Amazon SQS Developer Guide</i>.</p>
-- @param MessageGroupId [String] <p>This parameter applies only to FIFO (first-in-first-out) queues.</p> <p>The tag that specifies that a message belongs to a specific message group. Messages that belong to the same message group are processed in a FIFO manner (however, messages in different message groups might be processed out of order). To interleave multiple ordered streams within a single queue, use <code>MessageGroupId</code> values (for example, session data for multiple users). In this scenario, multiple readers can process the queue, but the session data of each user is processed in a FIFO fashion.</p> <ul> <li> <p>You must associate a non-empty <code>MessageGroupId</code> with a message. If you don't provide a <code>MessageGroupId</code>, the action fails.</p> </li> <li> <p> <code>ReceiveMessage</code> might return messages with multiple <code>MessageGroupId</code> values. For each <code>MessageGroupId</code>, the messages are sorted by time sent. The caller can't specify a <code>MessageGroupId</code>.</p> </li> </ul> <p>The length of <code>MessageGroupId</code> is 128 characters. Valid values are alphanumeric characters and punctuation <code>(!"#$%&amp;'()*+,-./:;&lt;=&gt;?@[\]^_`{|}~)</code>.</p> <p>For best practices of using <code>MessageGroupId</code>, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queue-recommendations.html#using-messagegroupid-property">Using the MessageGroupId Property</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> <important> <p> <code>MessageGroupId</code> is required for FIFO queues. You can't use it for Standard queues.</p> </important>
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
-- <p>The message referred to isn't in flight.</p>
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
-- <p>A list of returned queue attributes.</p>
-- @param Attributes [QueueAttributeMap] <p>A map of attributes to their respective values.</p>
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
-- <p/>
-- @param QueueUrl [String] <p>The URL of a dead letter queue.</p> <p>Queue URLs are case-sensitive.</p>
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
-- <p>An Amazon SQS message.</p>
-- @param Body [String] <p>The message's contents (not URL-encoded).</p>
-- @param ReceiptHandle [String] <p>An identifier associated with the act of receiving the message. A new receipt handle is returned every time you receive a message. When deleting a message, you provide the last received receipt handle to delete the message.</p>
-- @param MD5OfBody [String] <p>An MD5 digest of the non-URL-encoded message body string.</p>
-- @param MD5OfMessageAttributes [String] <p>An MD5 digest of the non-URL-encoded message attribute string. You can use this attribute to verify that Amazon SQS received the message correctly. Amazon SQS URL-decodes the message before creating the MD5 digest. For information about MD5, see <a href="https://www.ietf.org/rfc/rfc1321.txt">RFC1321</a>.</p>
-- @param MessageId [String] <p>A unique identifier for the message. A <code>MessageId</code>is considered unique across all AWS accounts for an extended period of time.</p>
-- @param Attributes [MessageSystemAttributeMap] <p> <code>SenderId</code>, <code>SentTimestamp</code>, <code>ApproximateReceiveCount</code>, and/or <code>ApproximateFirstReceiveTimestamp</code>. <code>SentTimestamp</code> and <code>ApproximateFirstReceiveTimestamp</code> are each returned as an integer representing the <a href="http://en.wikipedia.org/wiki/Unix_time">epoch time</a> in milliseconds.</p>
-- @param MessageAttributes [MessageBodyAttributeMap] <p>Each message attribute consists of a <code>Name</code>, <code>Type</code>, and <code>Value</code>. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-message-attributes.html#message-attributes-items-validation">Message Attribute Items and Validation</a> in the <i>Amazon SQS Developer Guide</i>.</p>
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
-- <p>The action that you requested would violate a limit. For example, <code>ReceiveMessage</code> returns this error if the maximum number of inflight messages is reached. <code> <a>AddPermission</a> </code> returns this error if the maximum number of permissions for the queue is reached.</p>
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
-- <p/>
-- @param QueueName [String] <p>The name of the queue whose URL must be fetched. Maximum 80 characters. Valid values: alphanumeric characters, hyphens (<code>-</code>), and underscores (<code>_</code>).</p> <p>Queue names are case-sensitive.</p>
-- @param QueueOwnerAWSAccountId [String] <p>The AWS account ID of the account that created the queue.</p>
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
-- <p>For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/UnderstandingResponses.html">Responses</a> in the <i>Amazon SQS Developer Guide</i>.</p>
-- @param QueueUrl [String] <p>The URL of the queue.</p>
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
-- <p/>
-- @param QueueUrl [String] <p>The URL of the Amazon SQS queue to delete.</p> <p>Queue URLs are case-sensitive.</p>
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
-- <p>The length of all the messages put together is more than the limit.</p>
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
-- <p>The message contains characters outside the allowed set.</p>
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
-- <p/>
-- @param QueueNamePrefix [String] <p>A string to use for filtering the list results. Only those queues whose name begins with the specified string are returned.</p> <p>Queue names are case-sensitive.</p>
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
-- <p>The receipt handle isn't valid for the current version.</p>
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
-- <p/>
-- @param QueueUrl [String] <p>The URL of the Amazon SQS queue to which permissions are added.</p> <p>Queue URLs are case-sensitive.</p>
-- @param AWSAccountIds [AWSAccountIdList] <p>The AWS account number of the <a href="http://docs.aws.amazon.com/general/latest/gr/glos-chap.html#P">principal</a> who is given permission. The principal must have an AWS account, but does not need to be signed up for Amazon SQS. For information about locating the AWS account identification, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/AWSCredentials.html">Your AWS Identifiers</a> in the <i>Amazon SQS Developer Guide</i>.</p>
-- @param Actions [ActionNameList] <p>The action the client wants to allow for the specified principal. The following values are valid:</p> <ul> <li> <p> <code>*</code> </p> </li> <li> <p> <code>ChangeMessageVisibility</code> </p> </li> <li> <p> <code>DeleteMessage</code> </p> </li> <li> <p> <code>GetQueueAttributes</code> </p> </li> <li> <p> <code>GetQueueUrl</code> </p> </li> <li> <p> <code>ReceiveMessage</code> </p> </li> <li> <p> <code>SendMessage</code> </p> </li> </ul> <p>For more information about these actions, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/acp-overview.html#PermissionTypes">Understanding Permissions</a> in the <i>Amazon SQS Developer Guide</i>.</p> <p>Specifying <code>SendMessage</code>, <code>DeleteMessage</code>, or <code>ChangeMessageVisibility</code> for <code>ActionName.n</code> also grants permissions for the corresponding batch versions of those actions: <code>SendMessageBatch</code>, <code>DeleteMessageBatch</code>, and <code>ChangeMessageVisibilityBatch</code>.</p>
-- @param Label [String] <p>The unique identification of the permission you're setting (for example, <code>AliceSendMessage</code>). Maximum 80 characters. Allowed characters include alphanumeric characters, hyphens (<code>-</code>), and underscores (<code>_</code>).</p>
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
-- <p>A list of your dead letter source queues.</p>
-- @param queueUrls [QueueUrlList] <p>A list of source queue URLs that have the <code>RedrivePolicy</code> queue attribute configured with a dead letter queue.</p>
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
-- <p>A queue already exists with this name. Amazon SQS returns this error only if the request includes attributes whose values differ from those of the existing queue.</p>
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
-- <p>Two or more batch entries in the request have the same <code>Id</code>.</p>
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
-- <p>Encloses the <code>Id</code> of an entry in <code> <a>DeleteMessageBatch</a>.</code> </p>
-- @param Id [String] <p>Represents a successfully deleted message.</p>
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
-- <p>The batch request doesn't contain any entries.</p>
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
-- <p>A list of your queues.</p>
-- @param QueueUrls [QueueUrlList] <p>A list of queue URLs, up to 1,000 entries.</p>
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
-- <p>Contains the details of a single Amazon SQS message along with an <code>Id</code>.</p>
-- @param MessageDeduplicationId [String] <p>This parameter applies only to FIFO (first-in-first-out) queues.</p> <p>The token used for deduplication of messages within a 5-minute minimum deduplication interval. If a message with a particular <code>MessageDeduplicationId</code> is sent successfully, subsequent messages with the same <code>MessageDeduplicationId</code> are accepted successfully but aren't delivered. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html#FIFO-queues-exactly-once-processing"> Exactly-Once Processing</a> in the <i>Amazon SQS Developer Guide</i>.</p> <ul> <li> <p>Every message must have a unique <code>MessageDeduplicationId</code>,</p> <ul> <li> <p>You may provide a <code>MessageDeduplicationId</code> explicitly.</p> </li> <li> <p>If you aren't able to provide a <code>MessageDeduplicationId</code> and you enable <code>ContentBasedDeduplication</code> for your queue, Amazon SQS uses a SHA-256 hash to generate the <code>MessageDeduplicationId</code> using the body of the message (but not the attributes of the message). </p> </li> <li> <p>If you don't provide a <code>MessageDeduplicationId</code> and the queue doesn't have <code>ContentBasedDeduplication</code> set, the action fails with an error.</p> </li> <li> <p>If the queue has <code>ContentBasedDeduplication</code> set, your <code>MessageDeduplicationId</code> overrides the generated one.</p> </li> </ul> </li> <li> <p>When <code>ContentBasedDeduplication</code> is in effect, messages with identical content sent within the deduplication interval are treated as duplicates and only one copy of the message is delivered.</p> </li> <li> <p>If you send one message with <code>ContentBasedDeduplication</code> enabled and then another message with a <code>MessageDeduplicationId</code> that is the same as the one generated for the first <code>MessageDeduplicationId</code>, the two messages are treated as duplicates and only one copy of the message is delivered. </p> </li> </ul> <note> <p>The <code>MessageDeduplicationId</code> is available to the recipient of the message (this can be useful for troubleshooting delivery issues).</p> <p>If a message is sent successfully but the acknowledgement is lost and the message is resent with the same <code>MessageDeduplicationId</code> after the deduplication interval, Amazon SQS can't detect duplicate messages.</p> </note> <p>The length of <code>MessageDeduplicationId</code> is 128 characters. <code>MessageDeduplicationId</code> can contain alphanumeric characters (<code>a-z</code>, <code>A-Z</code>, <code>0-9</code>) and punctuation (<code>!"#$%&amp;'()*+,-./:;&lt;=&gt;?@[\]^_`{|}~</code>).</p> <p>For best practices of using <code>MessageDeduplicationId</code>, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queue-recommendations.html#using-messagededuplicationid-property">Using the MessageDeduplicationId Property</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p>
-- @param MessageBody [String] <p>The body of the message.</p>
-- @param DelaySeconds [Integer] <p>The length of time, in seconds, for which a specific message is delayed. Valid values: 0 to 900. Maximum: 15 minutes. Messages with a positive <code>DelaySeconds</code> value become available for processing after the delay period is finished. If you don't specify a value, the default value for the queue is applied. </p> <note> <p>When you set <code>FifoQueue</code>, you can't set <code>DelaySeconds</code> per message. You can set this parameter only on a queue level.</p> </note>
-- @param MessageAttributes [MessageBodyAttributeMap] <p>Each message attribute consists of a <code>Name</code>, <code>Type</code>, and <code>Value</code>. For more information, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-message-attributes.html#message-attributes-items-validation">Message Attribute Items and Validation</a> in the <i>Amazon SQS Developer Guide</i>.</p>
-- @param Id [String] <p>An identifier for a message in this batch used to communicate the result.</p> <note> <p>The <code>Id</code>s of a batch request need to be unique within a request</p> </note>
-- @param MessageGroupId [String] <p>This parameter applies only to FIFO (first-in-first-out) queues.</p> <p>The tag that specifies that a message belongs to a specific message group. Messages that belong to the same message group are processed in a FIFO manner (however, messages in different message groups might be processed out of order). To interleave multiple ordered streams within a single queue, use <code>MessageGroupId</code> values (for example, session data for multiple users). In this scenario, multiple readers can process the queue, but the session data of each user is processed in a FIFO fashion.</p> <ul> <li> <p>You must associate a non-empty <code>MessageGroupId</code> with a message. If you don't provide a <code>MessageGroupId</code>, the action fails.</p> </li> <li> <p> <code>ReceiveMessage</code> might return messages with multiple <code>MessageGroupId</code> values. For each <code>MessageGroupId</code>, the messages are sorted by time sent. The caller can't specify a <code>MessageGroupId</code>.</p> </li> </ul> <p>The length of <code>MessageGroupId</code> is 128 characters. Valid values are alphanumeric characters and punctuation <code>(!"#$%&amp;'()*+,-./:;&lt;=&gt;?@[\]^_`{|}~)</code>.</p> <p>For best practices of using <code>MessageGroupId</code>, see <a href="http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queue-recommendations.html#using-messagegroupid-property">Using the MessageGroupId Property</a> in the <i>Amazon Simple Queue Service Developer Guide</i>.</p> <important> <p> <code>MessageGroupId</code> is required for FIFO queues. You can't use it for Standard queues.</p> </important>
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
-- <p>Encloses a receipt handle and an entry id for each message in <code> <a>ChangeMessageVisibilityBatch</a>.</code> </p> <important> <p>All of the following list parameters must be prefixed with <code>ChangeMessageVisibilityBatchRequestEntry.n</code>, where <code>n</code> is an integer value starting with <code>1</code>. For example, a parameter list for this action might look like this:</p> </important> <p> <code>&amp;amp;ChangeMessageVisibilityBatchRequestEntry.1.Id=change_visibility_msg_2</code> </p> <p> <code>&amp;amp;ChangeMessageVisibilityBatchRequestEntry.1.ReceiptHandle=&lt;replaceable&gt;Your_Receipt_Handle&lt;/replaceable&gt;</code> </p> <p> <code>&amp;amp;ChangeMessageVisibilityBatchRequestEntry.1.VisibilityTimeout=45</code> </p>
-- @param ReceiptHandle [String] <p>A receipt handle.</p>
-- @param VisibilityTimeout [Integer] <p>The new value (in seconds) for the message's visibility timeout.</p>
-- @param Id [String] <p>An identifier for this particular receipt handle used to communicate the result.</p> <note> <p>The <code>Id</code>s of a batch request need to be unique within a request</p> </note>
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
-- <p>The batch request contains more entries than permissible.</p>
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
-- <p>You must wait 60 seconds after deleting a queue before you can create another one with the same name.</p>
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
-- <p>For each message in the batch, the response contains a <code> <a>DeleteMessageBatchResultEntry</a> </code> tag if the message is deleted or a <code> <a>BatchResultErrorEntry</a> </code> tag if the message can't be deleted.</p>
-- @param Successful [DeleteMessageBatchResultEntryList] <p>A list of <code> <a>DeleteMessageBatchResultEntry</a> </code> items.</p>
-- @param Failed [BatchResultErrorEntryList] <p>A list of <code> <a>BatchResultErrorEntry</a> </code> items.</p>
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
-- <p>Encloses the <code>Id</code> of an entry in <code> <a>ChangeMessageVisibilityBatch</a>.</code> </p>
-- @param Id [String] <p>Represents a message whose visibility timeout has been changed successfully.</p>
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
-- <p/>
-- @param QueueUrl [String] <p>The URL of the Amazon SQS queue from which messages are deleted.</p> <p>Queue URLs are case-sensitive.</p>
-- @param ReceiptHandle [String] <p>The receipt handle associated with the message to delete.</p>
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
