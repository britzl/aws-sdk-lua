--- GENERATED CODE - DO NOT MODIFY
-- Amazon CloudWatch (monitoring-2010-08-01)

local M = {}

M.metadata = {
	api_version = "2010-08-01",
	json_version = "",
	protocol = "query",
	checksum_format = "",
	endpoint_prefix = "monitoring",
	service_abbreviation = "CloudWatch",
	service_full_name = "Amazon CloudWatch",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "monitoring-2010-08-01",
}

local keys = {}
local asserts = {}

keys.DeleteDashboardsOutput = { nil }

function asserts.AssertDeleteDashboardsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDashboardsOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteDashboardsOutput[k], "DeleteDashboardsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDashboardsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteDashboardsOutput structure as a key-value pair table
function M.DeleteDashboardsOutput(args)
	assert(args, "You must provide an argument table when creating DeleteDashboardsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteDashboardsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetMetricWidgetImageOutput = { ["MetricWidgetImage"] = true, nil }

function asserts.AssertGetMetricWidgetImageOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetMetricWidgetImageOutput to be of type 'table'")
	if struct["MetricWidgetImage"] then asserts.AssertMetricWidgetImage(struct["MetricWidgetImage"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetMetricWidgetImageOutput[k], "GetMetricWidgetImageOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetMetricWidgetImageOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MetricWidgetImage [MetricWidgetImage] <p>The image of the graph, in the output format specified.</p>
-- @return GetMetricWidgetImageOutput structure as a key-value pair table
function M.GetMetricWidgetImageOutput(args)
	assert(args, "You must provide an argument table when creating GetMetricWidgetImageOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MetricWidgetImage"] = args["MetricWidgetImage"],
	}
	asserts.AssertGetMetricWidgetImageOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutMetricAlarmInput = { ["EvaluationPeriods"] = true, ["ExtendedStatistic"] = true, ["TreatMissingData"] = true, ["DatapointsToAlarm"] = true, ["Dimensions"] = true, ["AlarmActions"] = true, ["AlarmDescription"] = true, ["Namespace"] = true, ["Period"] = true, ["EvaluateLowSampleCountPercentile"] = true, ["ComparisonOperator"] = true, ["AlarmName"] = true, ["Unit"] = true, ["Statistic"] = true, ["Threshold"] = true, ["InsufficientDataActions"] = true, ["OKActions"] = true, ["ActionsEnabled"] = true, ["MetricName"] = true, nil }

function asserts.AssertPutMetricAlarmInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutMetricAlarmInput to be of type 'table'")
	assert(struct["AlarmName"], "Expected key AlarmName to exist in table")
	assert(struct["MetricName"], "Expected key MetricName to exist in table")
	assert(struct["Namespace"], "Expected key Namespace to exist in table")
	assert(struct["Period"], "Expected key Period to exist in table")
	assert(struct["EvaluationPeriods"], "Expected key EvaluationPeriods to exist in table")
	assert(struct["Threshold"], "Expected key Threshold to exist in table")
	assert(struct["ComparisonOperator"], "Expected key ComparisonOperator to exist in table")
	if struct["EvaluationPeriods"] then asserts.AssertEvaluationPeriods(struct["EvaluationPeriods"]) end
	if struct["ExtendedStatistic"] then asserts.AssertExtendedStatistic(struct["ExtendedStatistic"]) end
	if struct["TreatMissingData"] then asserts.AssertTreatMissingData(struct["TreatMissingData"]) end
	if struct["DatapointsToAlarm"] then asserts.AssertDatapointsToAlarm(struct["DatapointsToAlarm"]) end
	if struct["Dimensions"] then asserts.AssertDimensions(struct["Dimensions"]) end
	if struct["AlarmActions"] then asserts.AssertResourceList(struct["AlarmActions"]) end
	if struct["AlarmDescription"] then asserts.AssertAlarmDescription(struct["AlarmDescription"]) end
	if struct["Namespace"] then asserts.AssertNamespace(struct["Namespace"]) end
	if struct["Period"] then asserts.AssertPeriod(struct["Period"]) end
	if struct["EvaluateLowSampleCountPercentile"] then asserts.AssertEvaluateLowSampleCountPercentile(struct["EvaluateLowSampleCountPercentile"]) end
	if struct["ComparisonOperator"] then asserts.AssertComparisonOperator(struct["ComparisonOperator"]) end
	if struct["AlarmName"] then asserts.AssertAlarmName(struct["AlarmName"]) end
	if struct["Unit"] then asserts.AssertStandardUnit(struct["Unit"]) end
	if struct["Statistic"] then asserts.AssertStatistic(struct["Statistic"]) end
	if struct["Threshold"] then asserts.AssertThreshold(struct["Threshold"]) end
	if struct["InsufficientDataActions"] then asserts.AssertResourceList(struct["InsufficientDataActions"]) end
	if struct["OKActions"] then asserts.AssertResourceList(struct["OKActions"]) end
	if struct["ActionsEnabled"] then asserts.AssertActionsEnabled(struct["ActionsEnabled"]) end
	if struct["MetricName"] then asserts.AssertMetricName(struct["MetricName"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutMetricAlarmInput[k], "PutMetricAlarmInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutMetricAlarmInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EvaluationPeriods [EvaluationPeriods] <p>The number of periods over which data is compared to the specified threshold. If you are setting an alarm which requires that a number of consecutive data points be breaching to trigger the alarm, this value specifies that number. If you are setting an "M out of N" alarm, this value is the N.</p> <p>An alarm's total current evaluation period can be no longer than one day, so this number multiplied by <code>Period</code> cannot be more than 86,400 seconds.</p>
-- * ExtendedStatistic [ExtendedStatistic] <p>The percentile statistic for the metric associated with the alarm. Specify a value between p0.0 and p100. When you call <code>PutMetricAlarm</code>, you must specify either <code>Statistic</code> or <code>ExtendedStatistic,</code> but not both.</p>
-- * TreatMissingData [TreatMissingData] <p> Sets how this alarm is to handle missing data points. If <code>TreatMissingData</code> is omitted, the default behavior of <code>missing</code> is used. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/AlarmThatSendsEmail.html#alarms-and-missing-data">Configuring How CloudWatch Alarms Treats Missing Data</a>.</p> <p>Valid Values: <code>breaching | notBreaching | ignore | missing</code> </p>
-- * DatapointsToAlarm [DatapointsToAlarm] <p>The number of datapoints that must be breaching to trigger the alarm. This is used only if you are setting an "M out of N" alarm. In that case, this value is the M. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/AlarmThatSendsEmail.html#alarm-evaluation">Evaluating an Alarm</a> in the <i>Amazon CloudWatch User Guide</i>.</p>
-- * Dimensions [Dimensions] <p>The dimensions for the metric associated with the alarm.</p>
-- * AlarmActions [ResourceList] <p>The actions to execute when this alarm transitions to the <code>ALARM</code> state from any other state. Each action is specified as an Amazon Resource Name (ARN).</p> <p>Valid Values: <code>arn:aws:automate:<i>region</i>:ec2:stop</code> | <code>arn:aws:automate:<i>region</i>:ec2:terminate</code> | <code>arn:aws:automate:<i>region</i>:ec2:recover</code> | <code>arn:aws:sns:<i>region</i>:<i>account-id</i>:<i>sns-topic-name</i> </code> | <code>arn:aws:autoscaling:<i>region</i>:<i>account-id</i>:scalingPolicy:<i>policy-id</i>autoScalingGroupName/<i>group-friendly-name</i>:policyName/<i>policy-friendly-name</i> </code> </p> <p>Valid Values (for use with IAM roles): <code>arn:aws:swf:<i>region</i>:<i>account-id</i>:action/actions/AWS_EC2.InstanceId.Stop/1.0</code> | <code>arn:aws:swf:<i>region</i>:<i>account-id</i>:action/actions/AWS_EC2.InstanceId.Terminate/1.0</code> | <code>arn:aws:swf:<i>region</i>:<i>account-id</i>:action/actions/AWS_EC2.InstanceId.Reboot/1.0</code> </p>
-- * AlarmDescription [AlarmDescription] <p>The description for the alarm.</p>
-- * Namespace [Namespace] <p>The namespace for the metric associated with the alarm.</p>
-- * Period [Period] <p>The period, in seconds, over which the specified statistic is applied. Valid values are 10, 30, and any multiple of 60.</p> <p>Be sure to specify 10 or 30 only for metrics that are stored by a <code>PutMetricData</code> call with a <code>StorageResolution</code> of 1. If you specify a period of 10 or 30 for a metric that does not have sub-minute resolution, the alarm still attempts to gather data at the period rate that you specify. In this case, it does not receive data for the attempts that do not correspond to a one-minute data resolution, and the alarm may often lapse into INSUFFICENT_DATA status. Specifying 10 or 30 also sets this alarm as a high-resolution alarm, which has a higher charge than other alarms. For more information about pricing, see <a href="https://aws.amazon.com/cloudwatch/pricing/">Amazon CloudWatch Pricing</a>.</p> <p>An alarm's total current evaluation period can be no longer than one day, so <code>Period</code> multiplied by <code>EvaluationPeriods</code> cannot be more than 86,400 seconds.</p>
-- * EvaluateLowSampleCountPercentile [EvaluateLowSampleCountPercentile] <p> Used only for alarms based on percentiles. If you specify <code>ignore</code>, the alarm state does not change during periods with too few data points to be statistically significant. If you specify <code>evaluate</code> or omit this parameter, the alarm is always evaluated and possibly changes state no matter how many data points are available. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/AlarmThatSendsEmail.html#percentiles-with-low-samples">Percentile-Based CloudWatch Alarms and Low Data Samples</a>.</p> <p>Valid Values: <code>evaluate | ignore</code> </p>
-- * ComparisonOperator [ComparisonOperator] <p> The arithmetic operation to use when comparing the specified statistic and threshold. The specified statistic value is used as the first operand.</p>
-- * AlarmName [AlarmName] <p>The name for the alarm. This name must be unique within the AWS account.</p>
-- * Unit [StandardUnit] <p>The unit of measure for the statistic. For example, the units for the Amazon EC2 NetworkIn metric are Bytes because NetworkIn tracks the number of bytes that an instance receives on all network interfaces. You can also specify a unit when you create a custom metric. Units help provide conceptual meaning to your data. Metric data points that specify a unit of measure, such as Percent, are aggregated separately.</p> <p>If you specify a unit, you must use a unit that is appropriate for the metric. Otherwise, the CloudWatch alarm can get stuck in the <code>INSUFFICIENT DATA</code> state. </p>
-- * Statistic [Statistic] <p>The statistic for the metric associated with the alarm, other than percentile. For percentile statistics, use <code>ExtendedStatistic</code>. When you call <code>PutMetricAlarm</code>, you must specify either <code>Statistic</code> or <code>ExtendedStatistic,</code> but not both.</p>
-- * Threshold [Threshold] <p>The value against which the specified statistic is compared.</p>
-- * InsufficientDataActions [ResourceList] <p>The actions to execute when this alarm transitions to the <code>INSUFFICIENT_DATA</code> state from any other state. Each action is specified as an Amazon Resource Name (ARN).</p> <p>Valid Values: <code>arn:aws:automate:<i>region</i>:ec2:stop</code> | <code>arn:aws:automate:<i>region</i>:ec2:terminate</code> | <code>arn:aws:automate:<i>region</i>:ec2:recover</code> | <code>arn:aws:sns:<i>region</i>:<i>account-id</i>:<i>sns-topic-name</i> </code> | <code>arn:aws:autoscaling:<i>region</i>:<i>account-id</i>:scalingPolicy:<i>policy-id</i>autoScalingGroupName/<i>group-friendly-name</i>:policyName/<i>policy-friendly-name</i> </code> </p> <p>Valid Values (for use with IAM roles): <code>&gt;arn:aws:swf:<i>region</i>:<i>account-id</i>:action/actions/AWS_EC2.InstanceId.Stop/1.0</code> | <code>arn:aws:swf:<i>region</i>:<i>account-id</i>:action/actions/AWS_EC2.InstanceId.Terminate/1.0</code> | <code>arn:aws:swf:<i>region</i>:<i>account-id</i>:action/actions/AWS_EC2.InstanceId.Reboot/1.0</code> </p>
-- * OKActions [ResourceList] <p>The actions to execute when this alarm transitions to an <code>OK</code> state from any other state. Each action is specified as an Amazon Resource Name (ARN).</p> <p>Valid Values: <code>arn:aws:automate:<i>region</i>:ec2:stop</code> | <code>arn:aws:automate:<i>region</i>:ec2:terminate</code> | <code>arn:aws:automate:<i>region</i>:ec2:recover</code> | <code>arn:aws:sns:<i>region</i>:<i>account-id</i>:<i>sns-topic-name</i> </code> | <code>arn:aws:autoscaling:<i>region</i>:<i>account-id</i>:scalingPolicy:<i>policy-id</i>autoScalingGroupName/<i>group-friendly-name</i>:policyName/<i>policy-friendly-name</i> </code> </p> <p>Valid Values (for use with IAM roles): <code>arn:aws:swf:<i>region</i>:<i>account-id</i>:action/actions/AWS_EC2.InstanceId.Stop/1.0</code> | <code>arn:aws:swf:<i>region</i>:<i>account-id</i>:action/actions/AWS_EC2.InstanceId.Terminate/1.0</code> | <code>arn:aws:swf:<i>region</i>:<i>account-id</i>:action/actions/AWS_EC2.InstanceId.Reboot/1.0</code> </p>
-- * ActionsEnabled [ActionsEnabled] <p>Indicates whether actions should be executed during any changes to the alarm state.</p>
-- * MetricName [MetricName] <p>The name for the metric associated with the alarm.</p>
-- Required key: AlarmName
-- Required key: MetricName
-- Required key: Namespace
-- Required key: Period
-- Required key: EvaluationPeriods
-- Required key: Threshold
-- Required key: ComparisonOperator
-- @return PutMetricAlarmInput structure as a key-value pair table
function M.PutMetricAlarmInput(args)
	assert(args, "You must provide an argument table when creating PutMetricAlarmInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EvaluationPeriods"] = args["EvaluationPeriods"],
		["ExtendedStatistic"] = args["ExtendedStatistic"],
		["TreatMissingData"] = args["TreatMissingData"],
		["DatapointsToAlarm"] = args["DatapointsToAlarm"],
		["Dimensions"] = args["Dimensions"],
		["AlarmActions"] = args["AlarmActions"],
		["AlarmDescription"] = args["AlarmDescription"],
		["Namespace"] = args["Namespace"],
		["Period"] = args["Period"],
		["EvaluateLowSampleCountPercentile"] = args["EvaluateLowSampleCountPercentile"],
		["ComparisonOperator"] = args["ComparisonOperator"],
		["AlarmName"] = args["AlarmName"],
		["Unit"] = args["Unit"],
		["Statistic"] = args["Statistic"],
		["Threshold"] = args["Threshold"],
		["InsufficientDataActions"] = args["InsufficientDataActions"],
		["OKActions"] = args["OKActions"],
		["ActionsEnabled"] = args["ActionsEnabled"],
		["MetricName"] = args["MetricName"],
	}
	asserts.AssertPutMetricAlarmInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDashboardInput = { ["DashboardName"] = true, nil }

function asserts.AssertGetDashboardInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDashboardInput to be of type 'table'")
	assert(struct["DashboardName"], "Expected key DashboardName to exist in table")
	if struct["DashboardName"] then asserts.AssertDashboardName(struct["DashboardName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDashboardInput[k], "GetDashboardInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDashboardInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DashboardName [DashboardName] <p>The name of the dashboard to be described.</p>
-- Required key: DashboardName
-- @return GetDashboardInput structure as a key-value pair table
function M.GetDashboardInput(args)
	assert(args, "You must provide an argument table when creating GetDashboardInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DashboardName"] = args["DashboardName"],
	}
	asserts.AssertGetDashboardInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AlarmHistoryItem = { ["Timestamp"] = true, ["HistoryItemType"] = true, ["AlarmName"] = true, ["HistoryData"] = true, ["HistorySummary"] = true, nil }

function asserts.AssertAlarmHistoryItem(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AlarmHistoryItem to be of type 'table'")
	if struct["Timestamp"] then asserts.AssertTimestamp(struct["Timestamp"]) end
	if struct["HistoryItemType"] then asserts.AssertHistoryItemType(struct["HistoryItemType"]) end
	if struct["AlarmName"] then asserts.AssertAlarmName(struct["AlarmName"]) end
	if struct["HistoryData"] then asserts.AssertHistoryData(struct["HistoryData"]) end
	if struct["HistorySummary"] then asserts.AssertHistorySummary(struct["HistorySummary"]) end
	for k,_ in pairs(struct) do
		assert(keys.AlarmHistoryItem[k], "AlarmHistoryItem contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AlarmHistoryItem
-- <p>Represents the history of a specific alarm.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Timestamp [Timestamp] <p>The time stamp for the alarm history item.</p>
-- * HistoryItemType [HistoryItemType] <p>The type of alarm history item.</p>
-- * AlarmName [AlarmName] <p>The descriptive name for the alarm.</p>
-- * HistoryData [HistoryData] <p>Data about the alarm, in JSON format.</p>
-- * HistorySummary [HistorySummary] <p>A summary of the alarm history, in text format.</p>
-- @return AlarmHistoryItem structure as a key-value pair table
function M.AlarmHistoryItem(args)
	assert(args, "You must provide an argument table when creating AlarmHistoryItem")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Timestamp"] = args["Timestamp"],
		["HistoryItemType"] = args["HistoryItemType"],
		["AlarmName"] = args["AlarmName"],
		["HistoryData"] = args["HistoryData"],
		["HistorySummary"] = args["HistorySummary"],
	}
	asserts.AssertAlarmHistoryItem(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeAlarmHistoryOutput = { ["AlarmHistoryItems"] = true, ["NextToken"] = true, nil }

function asserts.AssertDescribeAlarmHistoryOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAlarmHistoryOutput to be of type 'table'")
	if struct["AlarmHistoryItems"] then asserts.AssertAlarmHistoryItems(struct["AlarmHistoryItems"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAlarmHistoryOutput[k], "DescribeAlarmHistoryOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAlarmHistoryOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AlarmHistoryItems [AlarmHistoryItems] <p>The alarm histories, in JSON format.</p>
-- * NextToken [NextToken] <p>The token that marks the start of the next batch of returned results.</p>
-- @return DescribeAlarmHistoryOutput structure as a key-value pair table
function M.DescribeAlarmHistoryOutput(args)
	assert(args, "You must provide an argument table when creating DescribeAlarmHistoryOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AlarmHistoryItems"] = args["AlarmHistoryItems"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertDescribeAlarmHistoryOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDashboardOutput = { ["DashboardName"] = true, ["DashboardArn"] = true, ["DashboardBody"] = true, nil }

function asserts.AssertGetDashboardOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDashboardOutput to be of type 'table'")
	if struct["DashboardName"] then asserts.AssertDashboardName(struct["DashboardName"]) end
	if struct["DashboardArn"] then asserts.AssertDashboardArn(struct["DashboardArn"]) end
	if struct["DashboardBody"] then asserts.AssertDashboardBody(struct["DashboardBody"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDashboardOutput[k], "GetDashboardOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDashboardOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DashboardName [DashboardName] <p>The name of the dashboard.</p>
-- * DashboardArn [DashboardArn] <p>The Amazon Resource Name (ARN) of the dashboard.</p>
-- * DashboardBody [DashboardBody] <p>The detailed information about the dashboard, including what widgets are included and their location on the dashboard. For more information about the <code>DashboardBody</code> syntax, see <a>CloudWatch-Dashboard-Body-Structure</a>. </p>
-- @return GetDashboardOutput structure as a key-value pair table
function M.GetDashboardOutput(args)
	assert(args, "You must provide an argument table when creating GetDashboardOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DashboardName"] = args["DashboardName"],
		["DashboardArn"] = args["DashboardArn"],
		["DashboardBody"] = args["DashboardBody"],
	}
	asserts.AssertGetDashboardOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MessageData = { ["Code"] = true, ["Value"] = true, nil }

function asserts.AssertMessageData(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MessageData to be of type 'table'")
	if struct["Code"] then asserts.AssertMessageDataCode(struct["Code"]) end
	if struct["Value"] then asserts.AssertMessageDataValue(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(keys.MessageData[k], "MessageData contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MessageData
-- <p>A message returned by the <code>GetMetricData</code>API, including a code and a description.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Code [MessageDataCode] <p>The error code or status code associated with the message.</p>
-- * Value [MessageDataValue] <p>The message text.</p>
-- @return MessageData structure as a key-value pair table
function M.MessageData(args)
	assert(args, "You must provide an argument table when creating MessageData")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Code"] = args["Code"],
		["Value"] = args["Value"],
	}
	asserts.AssertMessageData(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeAlarmsForMetricOutput = { ["MetricAlarms"] = true, nil }

function asserts.AssertDescribeAlarmsForMetricOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAlarmsForMetricOutput to be of type 'table'")
	if struct["MetricAlarms"] then asserts.AssertMetricAlarms(struct["MetricAlarms"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAlarmsForMetricOutput[k], "DescribeAlarmsForMetricOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAlarmsForMetricOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MetricAlarms [MetricAlarms] <p>The information for each alarm with the specified metric.</p>
-- @return DescribeAlarmsForMetricOutput structure as a key-value pair table
function M.DescribeAlarmsForMetricOutput(args)
	assert(args, "You must provide an argument table when creating DescribeAlarmsForMetricOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MetricAlarms"] = args["MetricAlarms"],
	}
	asserts.AssertDescribeAlarmsForMetricOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeAlarmHistoryInput = { ["StartDate"] = true, ["EndDate"] = true, ["MaxRecords"] = true, ["AlarmName"] = true, ["HistoryItemType"] = true, ["NextToken"] = true, nil }

function asserts.AssertDescribeAlarmHistoryInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAlarmHistoryInput to be of type 'table'")
	if struct["StartDate"] then asserts.AssertTimestamp(struct["StartDate"]) end
	if struct["EndDate"] then asserts.AssertTimestamp(struct["EndDate"]) end
	if struct["MaxRecords"] then asserts.AssertMaxRecords(struct["MaxRecords"]) end
	if struct["AlarmName"] then asserts.AssertAlarmName(struct["AlarmName"]) end
	if struct["HistoryItemType"] then asserts.AssertHistoryItemType(struct["HistoryItemType"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAlarmHistoryInput[k], "DescribeAlarmHistoryInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAlarmHistoryInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StartDate [Timestamp] <p>The starting date to retrieve alarm history.</p>
-- * EndDate [Timestamp] <p>The ending date to retrieve alarm history.</p>
-- * MaxRecords [MaxRecords] <p>The maximum number of alarm history records to retrieve.</p>
-- * AlarmName [AlarmName] <p>The name of the alarm.</p>
-- * HistoryItemType [HistoryItemType] <p>The type of alarm histories to retrieve.</p>
-- * NextToken [NextToken] <p>The token returned by a previous call to indicate that there is more data available.</p>
-- @return DescribeAlarmHistoryInput structure as a key-value pair table
function M.DescribeAlarmHistoryInput(args)
	assert(args, "You must provide an argument table when creating DescribeAlarmHistoryInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StartDate"] = args["StartDate"],
		["EndDate"] = args["EndDate"],
		["MaxRecords"] = args["MaxRecords"],
		["AlarmName"] = args["AlarmName"],
		["HistoryItemType"] = args["HistoryItemType"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertDescribeAlarmHistoryInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListMetricsInput = { ["NextToken"] = true, ["Namespace"] = true, ["Dimensions"] = true, ["MetricName"] = true, nil }

function asserts.AssertListMetricsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListMetricsInput to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Namespace"] then asserts.AssertNamespace(struct["Namespace"]) end
	if struct["Dimensions"] then asserts.AssertDimensionFilters(struct["Dimensions"]) end
	if struct["MetricName"] then asserts.AssertMetricName(struct["MetricName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListMetricsInput[k], "ListMetricsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListMetricsInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The token returned by a previous call to indicate that there is more data available.</p>
-- * Namespace [Namespace] <p>The namespace to filter against.</p>
-- * Dimensions [DimensionFilters] <p>The dimensions to filter against.</p>
-- * MetricName [MetricName] <p>The name of the metric to filter against.</p>
-- @return ListMetricsInput structure as a key-value pair table
function M.ListMetricsInput(args)
	assert(args, "You must provide an argument table when creating ListMetricsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Namespace"] = args["Namespace"],
		["Dimensions"] = args["Dimensions"],
		["MetricName"] = args["MetricName"],
	}
	asserts.AssertListMetricsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeAlarmsOutput = { ["NextToken"] = true, ["MetricAlarms"] = true, nil }

function asserts.AssertDescribeAlarmsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAlarmsOutput to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MetricAlarms"] then asserts.AssertMetricAlarms(struct["MetricAlarms"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAlarmsOutput[k], "DescribeAlarmsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAlarmsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The token that marks the start of the next batch of returned results.</p>
-- * MetricAlarms [MetricAlarms] <p>The information for the specified alarms.</p>
-- @return DescribeAlarmsOutput structure as a key-value pair table
function M.DescribeAlarmsOutput(args)
	assert(args, "You must provide an argument table when creating DescribeAlarmsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["MetricAlarms"] = args["MetricAlarms"],
	}
	asserts.AssertDescribeAlarmsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MetricDataResult = { ["Messages"] = true, ["Label"] = true, ["Values"] = true, ["Timestamps"] = true, ["Id"] = true, ["StatusCode"] = true, nil }

function asserts.AssertMetricDataResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MetricDataResult to be of type 'table'")
	if struct["Messages"] then asserts.AssertMetricDataResultMessages(struct["Messages"]) end
	if struct["Label"] then asserts.AssertMetricLabel(struct["Label"]) end
	if struct["Values"] then asserts.AssertDatapointValues(struct["Values"]) end
	if struct["Timestamps"] then asserts.AssertTimestamps(struct["Timestamps"]) end
	if struct["Id"] then asserts.AssertMetricId(struct["Id"]) end
	if struct["StatusCode"] then asserts.AssertStatusCode(struct["StatusCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.MetricDataResult[k], "MetricDataResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MetricDataResult
-- <p>A <code>GetMetricData</code> call returns an array of <code>MetricDataResult</code> structures. Each of these structures includes the data points for that metric, along with the time stamps of those data points and other identifying information.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Messages [MetricDataResultMessages] <p>A list of messages with additional information about the data returned.</p>
-- * Label [MetricLabel] <p>The human-readable label associated with the data.</p>
-- * Values [DatapointValues] <p>The data points for the metric corresponding to <code>Timestamps</code>. The number of values always matches the number of time stamps and the time stamp for Values[x] is Timestamps[x].</p>
-- * Timestamps [Timestamps] <p>The time stamps for the data points, formatted in Unix timestamp format. The number of time stamps always matches the number of values and the value for Timestamps[x] is Values[x].</p>
-- * Id [MetricId] <p>The short name you specified to represent this metric.</p>
-- * StatusCode [StatusCode] <p>The status of the returned data. <code>Complete</code> indicates that all data points in the requested time range were returned. <code>PartialData</code> means that an incomplete set of data points were returned. You can use the <code>NextToken</code> value that was returned and repeat your request to get more data points. <code>NextToken</code> is not returned if you are performing a math expression. <code>InternalError</code> indicates that an error occurred. Retry your request using <code>NextToken</code>, if present.</p>
-- @return MetricDataResult structure as a key-value pair table
function M.MetricDataResult(args)
	assert(args, "You must provide an argument table when creating MetricDataResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Messages"] = args["Messages"],
		["Label"] = args["Label"],
		["Values"] = args["Values"],
		["Timestamps"] = args["Timestamps"],
		["Id"] = args["Id"],
		["StatusCode"] = args["StatusCode"],
	}
	asserts.AssertMetricDataResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SetAlarmStateInput = { ["StateReason"] = true, ["StateReasonData"] = true, ["AlarmName"] = true, ["StateValue"] = true, nil }

function asserts.AssertSetAlarmStateInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetAlarmStateInput to be of type 'table'")
	assert(struct["AlarmName"], "Expected key AlarmName to exist in table")
	assert(struct["StateValue"], "Expected key StateValue to exist in table")
	assert(struct["StateReason"], "Expected key StateReason to exist in table")
	if struct["StateReason"] then asserts.AssertStateReason(struct["StateReason"]) end
	if struct["StateReasonData"] then asserts.AssertStateReasonData(struct["StateReasonData"]) end
	if struct["AlarmName"] then asserts.AssertAlarmName(struct["AlarmName"]) end
	if struct["StateValue"] then asserts.AssertStateValue(struct["StateValue"]) end
	for k,_ in pairs(struct) do
		assert(keys.SetAlarmStateInput[k], "SetAlarmStateInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetAlarmStateInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StateReason [StateReason] <p>The reason that this alarm is set to this specific state, in text format.</p>
-- * StateReasonData [StateReasonData] <p>The reason that this alarm is set to this specific state, in JSON format.</p>
-- * AlarmName [AlarmName] <p>The name for the alarm. This name must be unique within the AWS account. The maximum length is 255 characters.</p>
-- * StateValue [StateValue] <p>The value of the state.</p>
-- Required key: AlarmName
-- Required key: StateValue
-- Required key: StateReason
-- @return SetAlarmStateInput structure as a key-value pair table
function M.SetAlarmStateInput(args)
	assert(args, "You must provide an argument table when creating SetAlarmStateInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StateReason"] = args["StateReason"],
		["StateReasonData"] = args["StateReasonData"],
		["AlarmName"] = args["AlarmName"],
		["StateValue"] = args["StateValue"],
	}
	asserts.AssertSetAlarmStateInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DashboardEntry = { ["DashboardName"] = true, ["LastModified"] = true, ["DashboardArn"] = true, ["Size"] = true, nil }

function asserts.AssertDashboardEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DashboardEntry to be of type 'table'")
	if struct["DashboardName"] then asserts.AssertDashboardName(struct["DashboardName"]) end
	if struct["LastModified"] then asserts.AssertLastModified(struct["LastModified"]) end
	if struct["DashboardArn"] then asserts.AssertDashboardArn(struct["DashboardArn"]) end
	if struct["Size"] then asserts.AssertSize(struct["Size"]) end
	for k,_ in pairs(struct) do
		assert(keys.DashboardEntry[k], "DashboardEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DashboardEntry
-- <p>Represents a specific dashboard.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DashboardName [DashboardName] <p>The name of the dashboard.</p>
-- * LastModified [LastModified] <p>The time stamp of when the dashboard was last modified, either by an API call or through the console. This number is expressed as the number of milliseconds since Jan 1, 1970 00:00:00 UTC.</p>
-- * DashboardArn [DashboardArn] <p>The Amazon Resource Name (ARN) of the dashboard.</p>
-- * Size [Size] <p>The size of the dashboard, in bytes.</p>
-- @return DashboardEntry structure as a key-value pair table
function M.DashboardEntry(args)
	assert(args, "You must provide an argument table when creating DashboardEntry")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DashboardName"] = args["DashboardName"],
		["LastModified"] = args["LastModified"],
		["DashboardArn"] = args["DashboardArn"],
		["Size"] = args["Size"],
	}
	asserts.AssertDashboardEntry(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MetricStat = { ["Metric"] = true, ["Stat"] = true, ["Period"] = true, ["Unit"] = true, nil }

function asserts.AssertMetricStat(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MetricStat to be of type 'table'")
	assert(struct["Metric"], "Expected key Metric to exist in table")
	assert(struct["Period"], "Expected key Period to exist in table")
	assert(struct["Stat"], "Expected key Stat to exist in table")
	if struct["Metric"] then asserts.AssertMetric(struct["Metric"]) end
	if struct["Stat"] then asserts.AssertStat(struct["Stat"]) end
	if struct["Period"] then asserts.AssertPeriod(struct["Period"]) end
	if struct["Unit"] then asserts.AssertStandardUnit(struct["Unit"]) end
	for k,_ in pairs(struct) do
		assert(keys.MetricStat[k], "MetricStat contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MetricStat
-- <p>This structure defines the metric to be returned, along with the statistics, period, and units.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Metric [Metric] <p>The metric to return, including the metric name, namespace, and dimensions.</p>
-- * Stat [Stat] <p>The statistic to return. It can include any CloudWatch statistic or extended statistic.</p>
-- * Period [Period] <p>The period to use when retrieving the metric.</p>
-- * Unit [StandardUnit] <p>The unit to use for the returned data points.</p>
-- Required key: Metric
-- Required key: Period
-- Required key: Stat
-- @return MetricStat structure as a key-value pair table
function M.MetricStat(args)
	assert(args, "You must provide an argument table when creating MetricStat")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Metric"] = args["Metric"],
		["Stat"] = args["Stat"],
		["Period"] = args["Period"],
		["Unit"] = args["Unit"],
	}
	asserts.AssertMetricStat(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListDashboardsOutput = { ["NextToken"] = true, ["DashboardEntries"] = true, nil }

function asserts.AssertListDashboardsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDashboardsOutput to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["DashboardEntries"] then asserts.AssertDashboardEntries(struct["DashboardEntries"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDashboardsOutput[k], "ListDashboardsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDashboardsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The token that marks the start of the next batch of returned results.</p>
-- * DashboardEntries [DashboardEntries] <p>The list of matching dashboards.</p>
-- @return ListDashboardsOutput structure as a key-value pair table
function M.ListDashboardsOutput(args)
	assert(args, "You must provide an argument table when creating ListDashboardsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["DashboardEntries"] = args["DashboardEntries"],
	}
	asserts.AssertListDashboardsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Dimension = { ["Name"] = true, ["Value"] = true, nil }

function asserts.AssertDimension(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Dimension to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Value"], "Expected key Value to exist in table")
	if struct["Name"] then asserts.AssertDimensionName(struct["Name"]) end
	if struct["Value"] then asserts.AssertDimensionValue(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(keys.Dimension[k], "Dimension contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Dimension
-- <p>Expands the identity of a metric.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [DimensionName] <p>The name of the dimension.</p>
-- * Value [DimensionValue] <p>The value representing the dimension measurement.</p>
-- Required key: Name
-- Required key: Value
-- @return Dimension structure as a key-value pair table
function M.Dimension(args)
	assert(args, "You must provide an argument table when creating Dimension")
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
	asserts.AssertDimension(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListDashboardsInput = { ["DashboardNamePrefix"] = true, ["NextToken"] = true, nil }

function asserts.AssertListDashboardsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDashboardsInput to be of type 'table'")
	if struct["DashboardNamePrefix"] then asserts.AssertDashboardNamePrefix(struct["DashboardNamePrefix"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDashboardsInput[k], "ListDashboardsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDashboardsInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DashboardNamePrefix [DashboardNamePrefix] <p>If you specify this parameter, only the dashboards with names starting with the specified string are listed. The maximum length is 255, and valid characters are A-Z, a-z, 0-9, ".", "-", and "_". </p>
-- * NextToken [NextToken] <p>The token returned by a previous call to indicate that there is more data available.</p>
-- @return ListDashboardsInput structure as a key-value pair table
function M.ListDashboardsInput(args)
	assert(args, "You must provide an argument table when creating ListDashboardsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DashboardNamePrefix"] = args["DashboardNamePrefix"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListDashboardsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Metric = { ["Namespace"] = true, ["Dimensions"] = true, ["MetricName"] = true, nil }

function asserts.AssertMetric(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Metric to be of type 'table'")
	if struct["Namespace"] then asserts.AssertNamespace(struct["Namespace"]) end
	if struct["Dimensions"] then asserts.AssertDimensions(struct["Dimensions"]) end
	if struct["MetricName"] then asserts.AssertMetricName(struct["MetricName"]) end
	for k,_ in pairs(struct) do
		assert(keys.Metric[k], "Metric contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Metric
-- <p>Represents a specific metric.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Namespace [Namespace] <p>The namespace of the metric.</p>
-- * Dimensions [Dimensions] <p>The dimensions for the metric.</p>
-- * MetricName [MetricName] <p>The name of the metric.</p>
-- @return Metric structure as a key-value pair table
function M.Metric(args)
	assert(args, "You must provide an argument table when creating Metric")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Namespace"] = args["Namespace"],
		["Dimensions"] = args["Dimensions"],
		["MetricName"] = args["MetricName"],
	}
	asserts.AssertMetric(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DisableAlarmActionsInput = { ["AlarmNames"] = true, nil }

function asserts.AssertDisableAlarmActionsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisableAlarmActionsInput to be of type 'table'")
	assert(struct["AlarmNames"], "Expected key AlarmNames to exist in table")
	if struct["AlarmNames"] then asserts.AssertAlarmNames(struct["AlarmNames"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisableAlarmActionsInput[k], "DisableAlarmActionsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisableAlarmActionsInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AlarmNames [AlarmNames] <p>The names of the alarms.</p>
-- Required key: AlarmNames
-- @return DisableAlarmActionsInput structure as a key-value pair table
function M.DisableAlarmActionsInput(args)
	assert(args, "You must provide an argument table when creating DisableAlarmActionsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AlarmNames"] = args["AlarmNames"],
	}
	asserts.AssertDisableAlarmActionsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutDashboardOutput = { ["DashboardValidationMessages"] = true, nil }

function asserts.AssertPutDashboardOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutDashboardOutput to be of type 'table'")
	if struct["DashboardValidationMessages"] then asserts.AssertDashboardValidationMessages(struct["DashboardValidationMessages"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutDashboardOutput[k], "PutDashboardOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutDashboardOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DashboardValidationMessages [DashboardValidationMessages] <p>If the input for <code>PutDashboard</code> was correct and the dashboard was successfully created or modified, this result is empty.</p> <p>If this result includes only warning messages, then the input was valid enough for the dashboard to be created or modified, but some elements of the dashboard may not render.</p> <p>If this result includes error messages, the input was not valid and the operation failed.</p>
-- @return PutDashboardOutput structure as a key-value pair table
function M.PutDashboardOutput(args)
	assert(args, "You must provide an argument table when creating PutDashboardOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DashboardValidationMessages"] = args["DashboardValidationMessages"],
	}
	asserts.AssertPutDashboardOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DashboardValidationMessage = { ["Message"] = true, ["DataPath"] = true, nil }

function asserts.AssertDashboardValidationMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DashboardValidationMessage to be of type 'table'")
	if struct["Message"] then asserts.AssertMessage(struct["Message"]) end
	if struct["DataPath"] then asserts.AssertDataPath(struct["DataPath"]) end
	for k,_ in pairs(struct) do
		assert(keys.DashboardValidationMessage[k], "DashboardValidationMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DashboardValidationMessage
-- <p>An error or warning for the operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [Message] <p>A message describing the error or warning.</p>
-- * DataPath [DataPath] <p>The data path related to the message.</p>
-- @return DashboardValidationMessage structure as a key-value pair table
function M.DashboardValidationMessage(args)
	assert(args, "You must provide an argument table when creating DashboardValidationMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
		["DataPath"] = args["DataPath"],
	}
	asserts.AssertDashboardValidationMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetMetricDataOutput = { ["NextToken"] = true, ["MetricDataResults"] = true, nil }

function asserts.AssertGetMetricDataOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetMetricDataOutput to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MetricDataResults"] then asserts.AssertMetricDataResults(struct["MetricDataResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetMetricDataOutput[k], "GetMetricDataOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetMetricDataOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>A token that marks the next batch of returned results.</p>
-- * MetricDataResults [MetricDataResults] <p>The metrics that are returned, including the metric name, namespace, and dimensions.</p>
-- @return GetMetricDataOutput structure as a key-value pair table
function M.GetMetricDataOutput(args)
	assert(args, "You must provide an argument table when creating GetMetricDataOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["MetricDataResults"] = args["MetricDataResults"],
	}
	asserts.AssertGetMetricDataOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListMetricsOutput = { ["Metrics"] = true, ["NextToken"] = true, nil }

function asserts.AssertListMetricsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListMetricsOutput to be of type 'table'")
	if struct["Metrics"] then asserts.AssertMetrics(struct["Metrics"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListMetricsOutput[k], "ListMetricsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListMetricsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Metrics [Metrics] <p>The metrics.</p>
-- * NextToken [NextToken] <p>The token that marks the start of the next batch of returned results.</p>
-- @return ListMetricsOutput structure as a key-value pair table
function M.ListMetricsOutput(args)
	assert(args, "You must provide an argument table when creating ListMetricsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Metrics"] = args["Metrics"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListMetricsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutMetricDataInput = { ["Namespace"] = true, ["MetricData"] = true, nil }

function asserts.AssertPutMetricDataInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutMetricDataInput to be of type 'table'")
	assert(struct["Namespace"], "Expected key Namespace to exist in table")
	assert(struct["MetricData"], "Expected key MetricData to exist in table")
	if struct["Namespace"] then asserts.AssertNamespace(struct["Namespace"]) end
	if struct["MetricData"] then asserts.AssertMetricData(struct["MetricData"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutMetricDataInput[k], "PutMetricDataInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutMetricDataInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Namespace [Namespace] <p>The namespace for the metric data.</p> <p>You cannot specify a namespace that begins with "AWS/". Namespaces that begin with "AWS/" are reserved for use by Amazon Web Services products.</p>
-- * MetricData [MetricData] <p>The data for the metric. The array can include no more than 20 metrics per call.</p>
-- Required key: Namespace
-- Required key: MetricData
-- @return PutMetricDataInput structure as a key-value pair table
function M.PutMetricDataInput(args)
	assert(args, "You must provide an argument table when creating PutMetricDataInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Namespace"] = args["Namespace"],
		["MetricData"] = args["MetricData"],
	}
	asserts.AssertPutMetricDataInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteAlarmsInput = { ["AlarmNames"] = true, nil }

function asserts.AssertDeleteAlarmsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteAlarmsInput to be of type 'table'")
	assert(struct["AlarmNames"], "Expected key AlarmNames to exist in table")
	if struct["AlarmNames"] then asserts.AssertAlarmNames(struct["AlarmNames"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteAlarmsInput[k], "DeleteAlarmsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteAlarmsInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AlarmNames [AlarmNames] <p>The alarms to be deleted.</p>
-- Required key: AlarmNames
-- @return DeleteAlarmsInput structure as a key-value pair table
function M.DeleteAlarmsInput(args)
	assert(args, "You must provide an argument table when creating DeleteAlarmsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AlarmNames"] = args["AlarmNames"],
	}
	asserts.AssertDeleteAlarmsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StatisticSet = { ["SampleCount"] = true, ["Sum"] = true, ["Minimum"] = true, ["Maximum"] = true, nil }

function asserts.AssertStatisticSet(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StatisticSet to be of type 'table'")
	assert(struct["SampleCount"], "Expected key SampleCount to exist in table")
	assert(struct["Sum"], "Expected key Sum to exist in table")
	assert(struct["Minimum"], "Expected key Minimum to exist in table")
	assert(struct["Maximum"], "Expected key Maximum to exist in table")
	if struct["SampleCount"] then asserts.AssertDatapointValue(struct["SampleCount"]) end
	if struct["Sum"] then asserts.AssertDatapointValue(struct["Sum"]) end
	if struct["Minimum"] then asserts.AssertDatapointValue(struct["Minimum"]) end
	if struct["Maximum"] then asserts.AssertDatapointValue(struct["Maximum"]) end
	for k,_ in pairs(struct) do
		assert(keys.StatisticSet[k], "StatisticSet contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StatisticSet
-- <p>Represents a set of statistics that describes a specific metric. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SampleCount [DatapointValue] <p>The number of samples used for the statistic set.</p>
-- * Sum [DatapointValue] <p>The sum of values for the sample set.</p>
-- * Minimum [DatapointValue] <p>The minimum value of the sample set.</p>
-- * Maximum [DatapointValue] <p>The maximum value of the sample set.</p>
-- Required key: SampleCount
-- Required key: Sum
-- Required key: Minimum
-- Required key: Maximum
-- @return StatisticSet structure as a key-value pair table
function M.StatisticSet(args)
	assert(args, "You must provide an argument table when creating StatisticSet")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SampleCount"] = args["SampleCount"],
		["Sum"] = args["Sum"],
		["Minimum"] = args["Minimum"],
		["Maximum"] = args["Maximum"],
	}
	asserts.AssertStatisticSet(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Datapoint = { ["SampleCount"] = true, ["Timestamp"] = true, ["Average"] = true, ["Maximum"] = true, ["Minimum"] = true, ["ExtendedStatistics"] = true, ["Sum"] = true, ["Unit"] = true, nil }

function asserts.AssertDatapoint(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Datapoint to be of type 'table'")
	if struct["SampleCount"] then asserts.AssertDatapointValue(struct["SampleCount"]) end
	if struct["Timestamp"] then asserts.AssertTimestamp(struct["Timestamp"]) end
	if struct["Average"] then asserts.AssertDatapointValue(struct["Average"]) end
	if struct["Maximum"] then asserts.AssertDatapointValue(struct["Maximum"]) end
	if struct["Minimum"] then asserts.AssertDatapointValue(struct["Minimum"]) end
	if struct["ExtendedStatistics"] then asserts.AssertDatapointValueMap(struct["ExtendedStatistics"]) end
	if struct["Sum"] then asserts.AssertDatapointValue(struct["Sum"]) end
	if struct["Unit"] then asserts.AssertStandardUnit(struct["Unit"]) end
	for k,_ in pairs(struct) do
		assert(keys.Datapoint[k], "Datapoint contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Datapoint
-- <p>Encapsulates the statistical data that CloudWatch computes from metric data.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SampleCount [DatapointValue] <p>The number of metric values that contributed to the aggregate value of this data point.</p>
-- * Timestamp [Timestamp] <p>The time stamp used for the data point.</p>
-- * Average [DatapointValue] <p>The average of the metric values that correspond to the data point.</p>
-- * Maximum [DatapointValue] <p>The maximum metric value for the data point.</p>
-- * Minimum [DatapointValue] <p>The minimum metric value for the data point.</p>
-- * ExtendedStatistics [DatapointValueMap] <p>The percentile statistic for the data point.</p>
-- * Sum [DatapointValue] <p>The sum of the metric values for the data point.</p>
-- * Unit [StandardUnit] <p>The standard unit for the data point.</p>
-- @return Datapoint structure as a key-value pair table
function M.Datapoint(args)
	assert(args, "You must provide an argument table when creating Datapoint")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SampleCount"] = args["SampleCount"],
		["Timestamp"] = args["Timestamp"],
		["Average"] = args["Average"],
		["Maximum"] = args["Maximum"],
		["Minimum"] = args["Minimum"],
		["ExtendedStatistics"] = args["ExtendedStatistics"],
		["Sum"] = args["Sum"],
		["Unit"] = args["Unit"],
	}
	asserts.AssertDatapoint(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DimensionFilter = { ["Name"] = true, ["Value"] = true, nil }

function asserts.AssertDimensionFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DimensionFilter to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.AssertDimensionName(struct["Name"]) end
	if struct["Value"] then asserts.AssertDimensionValue(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(keys.DimensionFilter[k], "DimensionFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DimensionFilter
-- <p>Represents filters for a dimension.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [DimensionName] <p>The dimension name to be matched.</p>
-- * Value [DimensionValue] <p>The value of the dimension to be matched.</p>
-- Required key: Name
-- @return DimensionFilter structure as a key-value pair table
function M.DimensionFilter(args)
	assert(args, "You must provide an argument table when creating DimensionFilter")
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
	asserts.AssertDimensionFilter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EnableAlarmActionsInput = { ["AlarmNames"] = true, nil }

function asserts.AssertEnableAlarmActionsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnableAlarmActionsInput to be of type 'table'")
	assert(struct["AlarmNames"], "Expected key AlarmNames to exist in table")
	if struct["AlarmNames"] then asserts.AssertAlarmNames(struct["AlarmNames"]) end
	for k,_ in pairs(struct) do
		assert(keys.EnableAlarmActionsInput[k], "EnableAlarmActionsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnableAlarmActionsInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AlarmNames [AlarmNames] <p>The names of the alarms.</p>
-- Required key: AlarmNames
-- @return EnableAlarmActionsInput structure as a key-value pair table
function M.EnableAlarmActionsInput(args)
	assert(args, "You must provide an argument table when creating EnableAlarmActionsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AlarmNames"] = args["AlarmNames"],
	}
	asserts.AssertEnableAlarmActionsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetMetricWidgetImageInput = { ["OutputFormat"] = true, ["MetricWidget"] = true, nil }

function asserts.AssertGetMetricWidgetImageInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetMetricWidgetImageInput to be of type 'table'")
	assert(struct["MetricWidget"], "Expected key MetricWidget to exist in table")
	if struct["OutputFormat"] then asserts.AssertOutputFormat(struct["OutputFormat"]) end
	if struct["MetricWidget"] then asserts.AssertMetricWidget(struct["MetricWidget"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetMetricWidgetImageInput[k], "GetMetricWidgetImageInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetMetricWidgetImageInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OutputFormat [OutputFormat] <p>The format of the resulting image. Only PNG images are supported.</p> <p>The default is <code>png</code>. If you specify <code>png</code>, the API returns an HTTP response with the content-type set to <code>text/xml</code>. The image data is in a <code>MetricWidgetImage</code> field. For example:</p> <p> <code> &lt;GetMetricWidgetImageResponse xmlns="http://monitoring.amazonaws.com/doc/2010-08-01/"&gt;</code> </p> <p> <code> &lt;GetMetricWidgetImageResult&gt;</code> </p> <p> <code> &lt;MetricWidgetImage&gt;</code> </p> <p> <code> iVBORw0KGgoAAAANSUhEUgAAAlgAAAGQEAYAAAAip...</code> </p> <p> <code> &lt;/MetricWidgetImage&gt;</code> </p> <p> <code> &lt;/GetMetricWidgetImageResult&gt;</code> </p> <p> <code> &lt;ResponseMetadata&gt;</code> </p> <p> <code> &lt;RequestId&gt;6f0d4192-4d42-11e8-82c1-f539a07e0e3b&lt;/RequestId&gt;</code> </p> <p> <code> &lt;/ResponseMetadata&gt;</code> </p> <p> <code>&lt;/GetMetricWidgetImageResponse&gt;</code> </p> <p>The <code>image/png</code> setting is intended only for custom HTTP requests. For most use cases, and all actions using an AWS SDK, you should use <code>png</code>. If you specify <code>image/png</code>, the HTTP response has a content-type set to <code>image/png</code>, and the body of the response is a PNG image. </p>
-- * MetricWidget [MetricWidget] <p>A JSON string that defines the bitmap graph to be retrieved. The string includes the metrics to include in the graph, statistics, annotations, title, axis limits, and so on. You can include only one <code>MetricWidget</code> parameter in each <code>GetMetricWidgetImage</code> call.</p> <p>For more information about the syntax of <code>MetricWidget</code> see <a>CloudWatch-Metric-Widget-Structure</a>.</p> <p>If any metric on the graph could not load all the requested data points, an orange triangle with an exclamation point appears next to the graph legend.</p>
-- Required key: MetricWidget
-- @return GetMetricWidgetImageInput structure as a key-value pair table
function M.GetMetricWidgetImageInput(args)
	assert(args, "You must provide an argument table when creating GetMetricWidgetImageInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OutputFormat"] = args["OutputFormat"],
		["MetricWidget"] = args["MetricWidget"],
	}
	asserts.AssertGetMetricWidgetImageInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetMetricDataInput = { ["NextToken"] = true, ["MetricDataQueries"] = true, ["MaxDatapoints"] = true, ["StartTime"] = true, ["EndTime"] = true, ["ScanBy"] = true, nil }

function asserts.AssertGetMetricDataInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetMetricDataInput to be of type 'table'")
	assert(struct["MetricDataQueries"], "Expected key MetricDataQueries to exist in table")
	assert(struct["StartTime"], "Expected key StartTime to exist in table")
	assert(struct["EndTime"], "Expected key EndTime to exist in table")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MetricDataQueries"] then asserts.AssertMetricDataQueries(struct["MetricDataQueries"]) end
	if struct["MaxDatapoints"] then asserts.AssertGetMetricDataMaxDatapoints(struct["MaxDatapoints"]) end
	if struct["StartTime"] then asserts.AssertTimestamp(struct["StartTime"]) end
	if struct["EndTime"] then asserts.AssertTimestamp(struct["EndTime"]) end
	if struct["ScanBy"] then asserts.AssertScanBy(struct["ScanBy"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetMetricDataInput[k], "GetMetricDataInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetMetricDataInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>Include this value, if it was returned by the previous call, to get the next set of data points.</p>
-- * MetricDataQueries [MetricDataQueries] <p>The metric queries to be returned. A single <code>GetMetricData</code> call can include as many as 100 <code>MetricDataQuery</code> structures. Each of these structures can specify either a metric to retrieve, or a math expression to perform on retrieved data. </p>
-- * MaxDatapoints [GetMetricDataMaxDatapoints] <p>The maximum number of data points the request should return before paginating. If you omit this, the default of 100,800 is used.</p>
-- * StartTime [Timestamp] <p>The time stamp indicating the earliest data to be returned.</p> <p>For better performance, specify <code>StartTime</code> and <code>EndTime</code> values that align with the value of the metric's <code>Period</code> and sync up with the beginning and end of an hour. For example, if the <code>Period</code> of a metric is 5 minutes, specifying 12:05 or 12:30 as <code>StartTime</code> can get a faster response from CloudWatch then setting 12:07 or 12:29 as the <code>StartTime</code>.</p>
-- * EndTime [Timestamp] <p>The time stamp indicating the latest data to be returned.</p> <p>For better performance, specify <code>StartTime</code> and <code>EndTime</code> values that align with the value of the metric's <code>Period</code> and sync up with the beginning and end of an hour. For example, if the <code>Period</code> of a metric is 5 minutes, specifying 12:05 or 12:30 as <code>EndTime</code> can get a faster response from CloudWatch then setting 12:07 or 12:29 as the <code>EndTime</code>.</p>
-- * ScanBy [ScanBy] <p>The order in which data points should be returned. <code>TimestampDescending</code> returns the newest data first and paginates when the <code>MaxDatapoints</code> limit is reached. <code>TimestampAscending</code> returns the oldest data first and paginates when the <code>MaxDatapoints</code> limit is reached.</p>
-- Required key: MetricDataQueries
-- Required key: StartTime
-- Required key: EndTime
-- @return GetMetricDataInput structure as a key-value pair table
function M.GetMetricDataInput(args)
	assert(args, "You must provide an argument table when creating GetMetricDataInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["MetricDataQueries"] = args["MetricDataQueries"],
		["MaxDatapoints"] = args["MaxDatapoints"],
		["StartTime"] = args["StartTime"],
		["EndTime"] = args["EndTime"],
		["ScanBy"] = args["ScanBy"],
	}
	asserts.AssertGetMetricDataInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MetricAlarm = { ["ExtendedStatistic"] = true, ["Dimensions"] = true, ["Namespace"] = true, ["DatapointsToAlarm"] = true, ["ActionsEnabled"] = true, ["MetricName"] = true, ["EvaluationPeriods"] = true, ["StateValue"] = true, ["StateUpdatedTimestamp"] = true, ["AlarmConfigurationUpdatedTimestamp"] = true, ["AlarmActions"] = true, ["InsufficientDataActions"] = true, ["AlarmArn"] = true, ["StateReasonData"] = true, ["TreatMissingData"] = true, ["StateReason"] = true, ["EvaluateLowSampleCountPercentile"] = true, ["OKActions"] = true, ["AlarmDescription"] = true, ["Period"] = true, ["ComparisonOperator"] = true, ["AlarmName"] = true, ["Statistic"] = true, ["Threshold"] = true, ["Unit"] = true, nil }

function asserts.AssertMetricAlarm(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MetricAlarm to be of type 'table'")
	if struct["ExtendedStatistic"] then asserts.AssertExtendedStatistic(struct["ExtendedStatistic"]) end
	if struct["Dimensions"] then asserts.AssertDimensions(struct["Dimensions"]) end
	if struct["Namespace"] then asserts.AssertNamespace(struct["Namespace"]) end
	if struct["DatapointsToAlarm"] then asserts.AssertDatapointsToAlarm(struct["DatapointsToAlarm"]) end
	if struct["ActionsEnabled"] then asserts.AssertActionsEnabled(struct["ActionsEnabled"]) end
	if struct["MetricName"] then asserts.AssertMetricName(struct["MetricName"]) end
	if struct["EvaluationPeriods"] then asserts.AssertEvaluationPeriods(struct["EvaluationPeriods"]) end
	if struct["StateValue"] then asserts.AssertStateValue(struct["StateValue"]) end
	if struct["StateUpdatedTimestamp"] then asserts.AssertTimestamp(struct["StateUpdatedTimestamp"]) end
	if struct["AlarmConfigurationUpdatedTimestamp"] then asserts.AssertTimestamp(struct["AlarmConfigurationUpdatedTimestamp"]) end
	if struct["AlarmActions"] then asserts.AssertResourceList(struct["AlarmActions"]) end
	if struct["InsufficientDataActions"] then asserts.AssertResourceList(struct["InsufficientDataActions"]) end
	if struct["AlarmArn"] then asserts.AssertAlarmArn(struct["AlarmArn"]) end
	if struct["StateReasonData"] then asserts.AssertStateReasonData(struct["StateReasonData"]) end
	if struct["TreatMissingData"] then asserts.AssertTreatMissingData(struct["TreatMissingData"]) end
	if struct["StateReason"] then asserts.AssertStateReason(struct["StateReason"]) end
	if struct["EvaluateLowSampleCountPercentile"] then asserts.AssertEvaluateLowSampleCountPercentile(struct["EvaluateLowSampleCountPercentile"]) end
	if struct["OKActions"] then asserts.AssertResourceList(struct["OKActions"]) end
	if struct["AlarmDescription"] then asserts.AssertAlarmDescription(struct["AlarmDescription"]) end
	if struct["Period"] then asserts.AssertPeriod(struct["Period"]) end
	if struct["ComparisonOperator"] then asserts.AssertComparisonOperator(struct["ComparisonOperator"]) end
	if struct["AlarmName"] then asserts.AssertAlarmName(struct["AlarmName"]) end
	if struct["Statistic"] then asserts.AssertStatistic(struct["Statistic"]) end
	if struct["Threshold"] then asserts.AssertThreshold(struct["Threshold"]) end
	if struct["Unit"] then asserts.AssertStandardUnit(struct["Unit"]) end
	for k,_ in pairs(struct) do
		assert(keys.MetricAlarm[k], "MetricAlarm contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MetricAlarm
-- <p>Represents an alarm.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ExtendedStatistic [ExtendedStatistic] <p>The percentile statistic for the metric associated with the alarm. Specify a value between p0.0 and p100.</p>
-- * Dimensions [Dimensions] <p>The dimensions for the metric associated with the alarm.</p>
-- * Namespace [Namespace] <p>The namespace of the metric associated with the alarm.</p>
-- * DatapointsToAlarm [DatapointsToAlarm] <p>The number of datapoints that must be breaching to trigger the alarm.</p>
-- * ActionsEnabled [ActionsEnabled] <p>Indicates whether actions should be executed during any changes to the alarm state.</p>
-- * MetricName [MetricName] <p>The name of the metric associated with the alarm.</p>
-- * EvaluationPeriods [EvaluationPeriods] <p>The number of periods over which data is compared to the specified threshold.</p>
-- * StateValue [StateValue] <p>The state value for the alarm.</p>
-- * StateUpdatedTimestamp [Timestamp] <p>The time stamp of the last update to the alarm state.</p>
-- * AlarmConfigurationUpdatedTimestamp [Timestamp] <p>The time stamp of the last update to the alarm configuration.</p>
-- * AlarmActions [ResourceList] <p>The actions to execute when this alarm transitions to the <code>ALARM</code> state from any other state. Each action is specified as an Amazon Resource Name (ARN).</p>
-- * InsufficientDataActions [ResourceList] <p>The actions to execute when this alarm transitions to the <code>INSUFFICIENT_DATA</code> state from any other state. Each action is specified as an Amazon Resource Name (ARN).</p>
-- * AlarmArn [AlarmArn] <p>The Amazon Resource Name (ARN) of the alarm.</p>
-- * StateReasonData [StateReasonData] <p>An explanation for the alarm state, in JSON format.</p>
-- * TreatMissingData [TreatMissingData] <p>Sets how this alarm is to handle missing data points. If this parameter is omitted, the default behavior of <code>missing</code> is used.</p>
-- * StateReason [StateReason] <p>An explanation for the alarm state, in text format.</p>
-- * EvaluateLowSampleCountPercentile [EvaluateLowSampleCountPercentile] <p>Used only for alarms based on percentiles. If <code>ignore</code>, the alarm state does not change during periods with too few data points to be statistically significant. If <code>evaluate</code> or this parameter is not used, the alarm is always evaluated and possibly changes state no matter how many data points are available.</p>
-- * OKActions [ResourceList] <p>The actions to execute when this alarm transitions to the <code>OK</code> state from any other state. Each action is specified as an Amazon Resource Name (ARN).</p>
-- * AlarmDescription [AlarmDescription] <p>The description of the alarm.</p>
-- * Period [Period] <p>The period, in seconds, over which the statistic is applied.</p>
-- * ComparisonOperator [ComparisonOperator] <p>The arithmetic operation to use when comparing the specified statistic and threshold. The specified statistic value is used as the first operand.</p>
-- * AlarmName [AlarmName] <p>The name of the alarm.</p>
-- * Statistic [Statistic] <p>The statistic for the metric associated with the alarm, other than percentile. For percentile statistics, use <code>ExtendedStatistic</code>.</p>
-- * Threshold [Threshold] <p>The value to compare with the specified statistic.</p>
-- * Unit [StandardUnit] <p>The unit of the metric associated with the alarm.</p>
-- @return MetricAlarm structure as a key-value pair table
function M.MetricAlarm(args)
	assert(args, "You must provide an argument table when creating MetricAlarm")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ExtendedStatistic"] = args["ExtendedStatistic"],
		["Dimensions"] = args["Dimensions"],
		["Namespace"] = args["Namespace"],
		["DatapointsToAlarm"] = args["DatapointsToAlarm"],
		["ActionsEnabled"] = args["ActionsEnabled"],
		["MetricName"] = args["MetricName"],
		["EvaluationPeriods"] = args["EvaluationPeriods"],
		["StateValue"] = args["StateValue"],
		["StateUpdatedTimestamp"] = args["StateUpdatedTimestamp"],
		["AlarmConfigurationUpdatedTimestamp"] = args["AlarmConfigurationUpdatedTimestamp"],
		["AlarmActions"] = args["AlarmActions"],
		["InsufficientDataActions"] = args["InsufficientDataActions"],
		["AlarmArn"] = args["AlarmArn"],
		["StateReasonData"] = args["StateReasonData"],
		["TreatMissingData"] = args["TreatMissingData"],
		["StateReason"] = args["StateReason"],
		["EvaluateLowSampleCountPercentile"] = args["EvaluateLowSampleCountPercentile"],
		["OKActions"] = args["OKActions"],
		["AlarmDescription"] = args["AlarmDescription"],
		["Period"] = args["Period"],
		["ComparisonOperator"] = args["ComparisonOperator"],
		["AlarmName"] = args["AlarmName"],
		["Statistic"] = args["Statistic"],
		["Threshold"] = args["Threshold"],
		["Unit"] = args["Unit"],
	}
	asserts.AssertMetricAlarm(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutDashboardInput = { ["DashboardName"] = true, ["DashboardBody"] = true, nil }

function asserts.AssertPutDashboardInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutDashboardInput to be of type 'table'")
	assert(struct["DashboardName"], "Expected key DashboardName to exist in table")
	assert(struct["DashboardBody"], "Expected key DashboardBody to exist in table")
	if struct["DashboardName"] then asserts.AssertDashboardName(struct["DashboardName"]) end
	if struct["DashboardBody"] then asserts.AssertDashboardBody(struct["DashboardBody"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutDashboardInput[k], "PutDashboardInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutDashboardInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DashboardName [DashboardName] <p>The name of the dashboard. If a dashboard with this name already exists, this call modifies that dashboard, replacing its current contents. Otherwise, a new dashboard is created. The maximum length is 255, and valid characters are A-Z, a-z, 0-9, "-", and "_". This parameter is required.</p>
-- * DashboardBody [DashboardBody] <p>The detailed information about the dashboard in JSON format, including the widgets to include and their location on the dashboard. This parameter is required.</p> <p>For more information about the syntax, see <a>CloudWatch-Dashboard-Body-Structure</a>.</p>
-- Required key: DashboardName
-- Required key: DashboardBody
-- @return PutDashboardInput structure as a key-value pair table
function M.PutDashboardInput(args)
	assert(args, "You must provide an argument table when creating PutDashboardInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DashboardName"] = args["DashboardName"],
		["DashboardBody"] = args["DashboardBody"],
	}
	asserts.AssertPutDashboardInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteDashboardsInput = { ["DashboardNames"] = true, nil }

function asserts.AssertDeleteDashboardsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDashboardsInput to be of type 'table'")
	assert(struct["DashboardNames"], "Expected key DashboardNames to exist in table")
	if struct["DashboardNames"] then asserts.AssertDashboardNames(struct["DashboardNames"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDashboardsInput[k], "DeleteDashboardsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDashboardsInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DashboardNames [DashboardNames] <p>The dashboards to be deleted. This parameter is required.</p>
-- Required key: DashboardNames
-- @return DeleteDashboardsInput structure as a key-value pair table
function M.DeleteDashboardsInput(args)
	assert(args, "You must provide an argument table when creating DeleteDashboardsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DashboardNames"] = args["DashboardNames"],
	}
	asserts.AssertDeleteDashboardsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetMetricStatisticsInput = { ["Statistics"] = true, ["Dimensions"] = true, ["Namespace"] = true, ["Period"] = true, ["StartTime"] = true, ["ExtendedStatistics"] = true, ["EndTime"] = true, ["Unit"] = true, ["MetricName"] = true, nil }

function asserts.AssertGetMetricStatisticsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetMetricStatisticsInput to be of type 'table'")
	assert(struct["Namespace"], "Expected key Namespace to exist in table")
	assert(struct["MetricName"], "Expected key MetricName to exist in table")
	assert(struct["StartTime"], "Expected key StartTime to exist in table")
	assert(struct["EndTime"], "Expected key EndTime to exist in table")
	assert(struct["Period"], "Expected key Period to exist in table")
	if struct["Statistics"] then asserts.AssertStatistics(struct["Statistics"]) end
	if struct["Dimensions"] then asserts.AssertDimensions(struct["Dimensions"]) end
	if struct["Namespace"] then asserts.AssertNamespace(struct["Namespace"]) end
	if struct["Period"] then asserts.AssertPeriod(struct["Period"]) end
	if struct["StartTime"] then asserts.AssertTimestamp(struct["StartTime"]) end
	if struct["ExtendedStatistics"] then asserts.AssertExtendedStatistics(struct["ExtendedStatistics"]) end
	if struct["EndTime"] then asserts.AssertTimestamp(struct["EndTime"]) end
	if struct["Unit"] then asserts.AssertStandardUnit(struct["Unit"]) end
	if struct["MetricName"] then asserts.AssertMetricName(struct["MetricName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetMetricStatisticsInput[k], "GetMetricStatisticsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetMetricStatisticsInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Statistics [Statistics] <p>The metric statistics, other than percentile. For percentile statistics, use <code>ExtendedStatistics</code>. When calling <code>GetMetricStatistics</code>, you must specify either <code>Statistics</code> or <code>ExtendedStatistics</code>, but not both.</p>
-- * Dimensions [Dimensions] <p>The dimensions. If the metric contains multiple dimensions, you must include a value for each dimension. CloudWatch treats each unique combination of dimensions as a separate metric. If a specific combination of dimensions was not published, you can't retrieve statistics for it. You must specify the same dimensions that were used when the metrics were created. For an example, see <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html#dimension-combinations">Dimension Combinations</a> in the <i>Amazon CloudWatch User Guide</i>. For more information about specifying dimensions, see <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/publishingMetrics.html">Publishing Metrics</a> in the <i>Amazon CloudWatch User Guide</i>.</p>
-- * Namespace [Namespace] <p>The namespace of the metric, with or without spaces.</p>
-- * Period [Period] <p>The granularity, in seconds, of the returned data points. For metrics with regular resolution, a period can be as short as one minute (60 seconds) and must be a multiple of 60. For high-resolution metrics that are collected at intervals of less than one minute, the period can be 1, 5, 10, 30, 60, or any multiple of 60. High-resolution metrics are those metrics stored by a <code>PutMetricData</code> call that includes a <code>StorageResolution</code> of 1 second.</p> <p>If the <code>StartTime</code> parameter specifies a time stamp that is greater than 3 hours ago, you must specify the period as follows or no data points in that time range is returned:</p> <ul> <li> <p>Start time between 3 hours and 15 days ago - Use a multiple of 60 seconds (1 minute).</p> </li> <li> <p>Start time between 15 and 63 days ago - Use a multiple of 300 seconds (5 minutes).</p> </li> <li> <p>Start time greater than 63 days ago - Use a multiple of 3600 seconds (1 hour).</p> </li> </ul>
-- * StartTime [Timestamp] <p>The time stamp that determines the first data point to return. Start times are evaluated relative to the time that CloudWatch receives the request.</p> <p>The value specified is inclusive; results include data points with the specified time stamp. The time stamp must be in ISO 8601 UTC format (for example, 2016-10-03T23:00:00Z).</p> <p>CloudWatch rounds the specified time stamp as follows:</p> <ul> <li> <p>Start time less than 15 days ago - Round down to the nearest whole minute. For example, 12:32:34 is rounded down to 12:32:00.</p> </li> <li> <p>Start time between 15 and 63 days ago - Round down to the nearest 5-minute clock interval. For example, 12:32:34 is rounded down to 12:30:00.</p> </li> <li> <p>Start time greater than 63 days ago - Round down to the nearest 1-hour clock interval. For example, 12:32:34 is rounded down to 12:00:00.</p> </li> </ul> <p>If you set <code>Period</code> to 5, 10, or 30, the start time of your request is rounded down to the nearest time that corresponds to even 5-, 10-, or 30-second divisions of a minute. For example, if you make a query at (HH:mm:ss) 01:05:23 for the previous 10-second period, the start time of your request is rounded down and you receive data from 01:05:10 to 01:05:20. If you make a query at 15:07:17 for the previous 5 minutes of data, using a period of 5 seconds, you receive data timestamped between 15:02:15 and 15:07:15. </p>
-- * ExtendedStatistics [ExtendedStatistics] <p>The percentile statistics. Specify values between p0.0 and p100. When calling <code>GetMetricStatistics</code>, you must specify either <code>Statistics</code> or <code>ExtendedStatistics</code>, but not both. Percentile statistics are not available for metrics when any of the metric values are negative numbers.</p>
-- * EndTime [Timestamp] <p>The time stamp that determines the last data point to return.</p> <p>The value specified is exclusive; results include data points up to the specified time stamp. The time stamp must be in ISO 8601 UTC format (for example, 2016-10-10T23:00:00Z).</p>
-- * Unit [StandardUnit] <p>The unit for a given metric. Metrics may be reported in multiple units. Not supplying a unit results in all units being returned. If you specify only a unit that the metric does not report, the results of the call are null.</p>
-- * MetricName [MetricName] <p>The name of the metric, with or without spaces.</p>
-- Required key: Namespace
-- Required key: MetricName
-- Required key: StartTime
-- Required key: EndTime
-- Required key: Period
-- @return GetMetricStatisticsInput structure as a key-value pair table
function M.GetMetricStatisticsInput(args)
	assert(args, "You must provide an argument table when creating GetMetricStatisticsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Statistics"] = args["Statistics"],
		["Dimensions"] = args["Dimensions"],
		["Namespace"] = args["Namespace"],
		["Period"] = args["Period"],
		["StartTime"] = args["StartTime"],
		["ExtendedStatistics"] = args["ExtendedStatistics"],
		["EndTime"] = args["EndTime"],
		["Unit"] = args["Unit"],
		["MetricName"] = args["MetricName"],
	}
	asserts.AssertGetMetricStatisticsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MetricDatum = { ["Dimensions"] = true, ["Timestamp"] = true, ["Value"] = true, ["StatisticValues"] = true, ["StorageResolution"] = true, ["Values"] = true, ["Counts"] = true, ["Unit"] = true, ["MetricName"] = true, nil }

function asserts.AssertMetricDatum(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MetricDatum to be of type 'table'")
	assert(struct["MetricName"], "Expected key MetricName to exist in table")
	if struct["Dimensions"] then asserts.AssertDimensions(struct["Dimensions"]) end
	if struct["Timestamp"] then asserts.AssertTimestamp(struct["Timestamp"]) end
	if struct["Value"] then asserts.AssertDatapointValue(struct["Value"]) end
	if struct["StatisticValues"] then asserts.AssertStatisticSet(struct["StatisticValues"]) end
	if struct["StorageResolution"] then asserts.AssertStorageResolution(struct["StorageResolution"]) end
	if struct["Values"] then asserts.AssertValues(struct["Values"]) end
	if struct["Counts"] then asserts.AssertCounts(struct["Counts"]) end
	if struct["Unit"] then asserts.AssertStandardUnit(struct["Unit"]) end
	if struct["MetricName"] then asserts.AssertMetricName(struct["MetricName"]) end
	for k,_ in pairs(struct) do
		assert(keys.MetricDatum[k], "MetricDatum contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MetricDatum
-- <p>Encapsulates the information sent to either create a metric or add new values to be aggregated into an existing metric.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Dimensions [Dimensions] <p>The dimensions associated with the metric.</p>
-- * Timestamp [Timestamp] <p>The time the metric data was received, expressed as the number of milliseconds since Jan 1, 1970 00:00:00 UTC.</p>
-- * Value [DatapointValue] <p>The value for the metric.</p> <p>Although the parameter accepts numbers of type Double, CloudWatch rejects values that are either too small or too large. Values must be in the range of 8.515920e-109 to 1.174271e+108 (Base 10) or 2e-360 to 2e360 (Base 2). In addition, special values (for example, NaN, +Infinity, -Infinity) are not supported.</p>
-- * StatisticValues [StatisticSet] <p>The statistical values for the metric.</p>
-- * StorageResolution [StorageResolution] <p>Valid values are 1 and 60. Setting this to 1 specifies this metric as a high-resolution metric, so that CloudWatch stores the metric with sub-minute resolution down to one second. Setting this to 60 specifies this metric as a regular-resolution metric, which CloudWatch stores at 1-minute resolution. Currently, high resolution is available only for custom metrics. For more information about high-resolution metrics, see <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/publishingMetrics.html#high-resolution-metrics">High-Resolution Metrics</a> in the <i>Amazon CloudWatch User Guide</i>. </p> <p>This field is optional, if you do not specify it the default of 60 is used.</p>
-- * Values [Values] <p>Array of numbers representing the values for the metric during the period. Each unique value is listed just once in this array, and the corresponding number in the <code>Counts</code> array specifies the number of times that value occurred during the period. You can include up to 150 unique values in each <code>PutMetricData</code> action that specifies a <code>Values</code> array.</p> <p>Although the <code>Values</code> array accepts numbers of type <code>Double</code>, CloudWatch rejects values that are either too small or too large. Values must be in the range of 8.515920e-109 to 1.174271e+108 (Base 10) or 2e-360 to 2e360 (Base 2). In addition, special values (for example, NaN, +Infinity, -Infinity) are not supported.</p>
-- * Counts [Counts] <p>Array of numbers that is used along with the <code>Values</code> array. Each number in the <code>Count</code> array is the number of times the corresponding value in the <code>Values</code> array occurred during the period. </p> <p>If you omit the <code>Counts</code> array, the default of 1 is used as the value for each count. If you include a <code>Counts</code> array, it must include the same amount of values as the <code>Values</code> array.</p>
-- * Unit [StandardUnit] <p>The unit of the metric.</p>
-- * MetricName [MetricName] <p>The name of the metric.</p>
-- Required key: MetricName
-- @return MetricDatum structure as a key-value pair table
function M.MetricDatum(args)
	assert(args, "You must provide an argument table when creating MetricDatum")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Dimensions"] = args["Dimensions"],
		["Timestamp"] = args["Timestamp"],
		["Value"] = args["Value"],
		["StatisticValues"] = args["StatisticValues"],
		["StorageResolution"] = args["StorageResolution"],
		["Values"] = args["Values"],
		["Counts"] = args["Counts"],
		["Unit"] = args["Unit"],
		["MetricName"] = args["MetricName"],
	}
	asserts.AssertMetricDatum(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetMetricStatisticsOutput = { ["Datapoints"] = true, ["Label"] = true, nil }

function asserts.AssertGetMetricStatisticsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetMetricStatisticsOutput to be of type 'table'")
	if struct["Datapoints"] then asserts.AssertDatapoints(struct["Datapoints"]) end
	if struct["Label"] then asserts.AssertMetricLabel(struct["Label"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetMetricStatisticsOutput[k], "GetMetricStatisticsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetMetricStatisticsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Datapoints [Datapoints] <p>The data points for the specified metric.</p>
-- * Label [MetricLabel] <p>A label for the specified metric.</p>
-- @return GetMetricStatisticsOutput structure as a key-value pair table
function M.GetMetricStatisticsOutput(args)
	assert(args, "You must provide an argument table when creating GetMetricStatisticsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Datapoints"] = args["Datapoints"],
		["Label"] = args["Label"],
	}
	asserts.AssertGetMetricStatisticsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeAlarmsInput = { ["StateValue"] = true, ["ActionPrefix"] = true, ["MaxRecords"] = true, ["AlarmNames"] = true, ["AlarmNamePrefix"] = true, ["NextToken"] = true, nil }

function asserts.AssertDescribeAlarmsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAlarmsInput to be of type 'table'")
	if struct["StateValue"] then asserts.AssertStateValue(struct["StateValue"]) end
	if struct["ActionPrefix"] then asserts.AssertActionPrefix(struct["ActionPrefix"]) end
	if struct["MaxRecords"] then asserts.AssertMaxRecords(struct["MaxRecords"]) end
	if struct["AlarmNames"] then asserts.AssertAlarmNames(struct["AlarmNames"]) end
	if struct["AlarmNamePrefix"] then asserts.AssertAlarmNamePrefix(struct["AlarmNamePrefix"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAlarmsInput[k], "DescribeAlarmsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAlarmsInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StateValue [StateValue] <p>The state value to be used in matching alarms.</p>
-- * ActionPrefix [ActionPrefix] <p>The action name prefix.</p>
-- * MaxRecords [MaxRecords] <p>The maximum number of alarm descriptions to retrieve.</p>
-- * AlarmNames [AlarmNames] <p>The names of the alarms.</p>
-- * AlarmNamePrefix [AlarmNamePrefix] <p>The alarm name prefix. If this parameter is specified, you cannot specify <code>AlarmNames</code>.</p>
-- * NextToken [NextToken] <p>The token returned by a previous call to indicate that there is more data available.</p>
-- @return DescribeAlarmsInput structure as a key-value pair table
function M.DescribeAlarmsInput(args)
	assert(args, "You must provide an argument table when creating DescribeAlarmsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StateValue"] = args["StateValue"],
		["ActionPrefix"] = args["ActionPrefix"],
		["MaxRecords"] = args["MaxRecords"],
		["AlarmNames"] = args["AlarmNames"],
		["AlarmNamePrefix"] = args["AlarmNamePrefix"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertDescribeAlarmsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeAlarmsForMetricInput = { ["ExtendedStatistic"] = true, ["Dimensions"] = true, ["Namespace"] = true, ["Period"] = true, ["Statistic"] = true, ["Unit"] = true, ["MetricName"] = true, nil }

function asserts.AssertDescribeAlarmsForMetricInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAlarmsForMetricInput to be of type 'table'")
	assert(struct["MetricName"], "Expected key MetricName to exist in table")
	assert(struct["Namespace"], "Expected key Namespace to exist in table")
	if struct["ExtendedStatistic"] then asserts.AssertExtendedStatistic(struct["ExtendedStatistic"]) end
	if struct["Dimensions"] then asserts.AssertDimensions(struct["Dimensions"]) end
	if struct["Namespace"] then asserts.AssertNamespace(struct["Namespace"]) end
	if struct["Period"] then asserts.AssertPeriod(struct["Period"]) end
	if struct["Statistic"] then asserts.AssertStatistic(struct["Statistic"]) end
	if struct["Unit"] then asserts.AssertStandardUnit(struct["Unit"]) end
	if struct["MetricName"] then asserts.AssertMetricName(struct["MetricName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAlarmsForMetricInput[k], "DescribeAlarmsForMetricInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAlarmsForMetricInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ExtendedStatistic [ExtendedStatistic] <p>The percentile statistic for the metric. Specify a value between p0.0 and p100.</p>
-- * Dimensions [Dimensions] <p>The dimensions associated with the metric. If the metric has any associated dimensions, you must specify them in order for the call to succeed.</p>
-- * Namespace [Namespace] <p>The namespace of the metric.</p>
-- * Period [Period] <p>The period, in seconds, over which the statistic is applied.</p>
-- * Statistic [Statistic] <p>The statistic for the metric, other than percentiles. For percentile statistics, use <code>ExtendedStatistics</code>.</p>
-- * Unit [StandardUnit] <p>The unit for the metric.</p>
-- * MetricName [MetricName] <p>The name of the metric.</p>
-- Required key: MetricName
-- Required key: Namespace
-- @return DescribeAlarmsForMetricInput structure as a key-value pair table
function M.DescribeAlarmsForMetricInput(args)
	assert(args, "You must provide an argument table when creating DescribeAlarmsForMetricInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ExtendedStatistic"] = args["ExtendedStatistic"],
		["Dimensions"] = args["Dimensions"],
		["Namespace"] = args["Namespace"],
		["Period"] = args["Period"],
		["Statistic"] = args["Statistic"],
		["Unit"] = args["Unit"],
		["MetricName"] = args["MetricName"],
	}
	asserts.AssertDescribeAlarmsForMetricInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MetricDataQuery = { ["MetricStat"] = true, ["ReturnData"] = true, ["Expression"] = true, ["Id"] = true, ["Label"] = true, nil }

function asserts.AssertMetricDataQuery(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MetricDataQuery to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["MetricStat"] then asserts.AssertMetricStat(struct["MetricStat"]) end
	if struct["ReturnData"] then asserts.AssertReturnData(struct["ReturnData"]) end
	if struct["Expression"] then asserts.AssertMetricExpression(struct["Expression"]) end
	if struct["Id"] then asserts.AssertMetricId(struct["Id"]) end
	if struct["Label"] then asserts.AssertMetricLabel(struct["Label"]) end
	for k,_ in pairs(struct) do
		assert(keys.MetricDataQuery[k], "MetricDataQuery contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MetricDataQuery
-- <p>This structure indicates the metric data to return, and whether this call is just retrieving a batch set of data for one metric, or is performing a math expression on metric data. A single <code>GetMetricData</code> call can include up to 100 <code>MetricDataQuery</code> structures.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MetricStat [MetricStat] <p>The metric to be returned, along with statistics, period, and units. Use this parameter only if this structure is performing a data retrieval and not performing a math expression on the returned data.</p> <p>Within one MetricDataQuery structure, you must specify either <code>Expression</code> or <code>MetricStat</code> but not both.</p>
-- * ReturnData [ReturnData] <p>Indicates whether to return the time stamps and raw data values of this metric. If you are performing this call just to do math expressions and do not also need the raw data returned, you can specify <code>False</code>. If you omit this, the default of <code>True</code> is used.</p>
-- * Expression [MetricExpression] <p>The math expression to be performed on the returned data, if this structure is performing a math expression. For more information about metric math expressions, see <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/using-metric-math.html#metric-math-syntax">Metric Math Syntax and Functions</a> in the <i>Amazon CloudWatch User Guide</i>.</p> <p>Within one MetricDataQuery structure, you must specify either <code>Expression</code> or <code>MetricStat</code> but not both.</p>
-- * Id [MetricId] <p>A short name used to tie this structure to the results in the response. This name must be unique within a single call to <code>GetMetricData</code>. If you are performing math expressions on this set of data, this name represents that data and can serve as a variable in the mathematical expression. The valid characters are letters, numbers, and underscore. The first character must be a lowercase letter.</p>
-- * Label [MetricLabel] <p>A human-readable label for this metric or expression. This is especially useful if this is an expression, so that you know what the value represents. If the metric or expression is shown in a CloudWatch dashboard widget, the label is shown. If Label is omitted, CloudWatch generates a default.</p>
-- Required key: Id
-- @return MetricDataQuery structure as a key-value pair table
function M.MetricDataQuery(args)
	assert(args, "You must provide an argument table when creating MetricDataQuery")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MetricStat"] = args["MetricStat"],
		["ReturnData"] = args["ReturnData"],
		["Expression"] = args["Expression"],
		["Id"] = args["Id"],
		["Label"] = args["Label"],
	}
	asserts.AssertMetricDataQuery(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertStateReasonData(str)
	assert(str)
	assert(type(str) == "string", "Expected StateReasonData to be of type 'string'")
	assert(#str <= 4000, "Expected string to be max 4000 characters")
end

--  
function M.StateReasonData(str)
	asserts.AssertStateReasonData(str)
	return str
end

function asserts.AssertAlarmDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected AlarmDescription to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
end

--  
function M.AlarmDescription(str)
	asserts.AssertAlarmDescription(str)
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

function asserts.AssertNextToken(str)
	assert(str)
	assert(type(str) == "string", "Expected NextToken to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
end

--  
function M.NextToken(str)
	asserts.AssertNextToken(str)
	return str
end

function asserts.AssertMetricLabel(str)
	assert(str)
	assert(type(str) == "string", "Expected MetricLabel to be of type 'string'")
end

--  
function M.MetricLabel(str)
	asserts.AssertMetricLabel(str)
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

function asserts.AssertMessageDataValue(str)
	assert(str)
	assert(type(str) == "string", "Expected MessageDataValue to be of type 'string'")
end

--  
function M.MessageDataValue(str)
	asserts.AssertMessageDataValue(str)
	return str
end

function asserts.AssertDashboardNamePrefix(str)
	assert(str)
	assert(type(str) == "string", "Expected DashboardNamePrefix to be of type 'string'")
end

--  
function M.DashboardNamePrefix(str)
	asserts.AssertDashboardNamePrefix(str)
	return str
end

function asserts.AssertHistoryItemType(str)
	assert(str)
	assert(type(str) == "string", "Expected HistoryItemType to be of type 'string'")
end

--  
function M.HistoryItemType(str)
	asserts.AssertHistoryItemType(str)
	return str
end

function asserts.AssertDashboardName(str)
	assert(str)
	assert(type(str) == "string", "Expected DashboardName to be of type 'string'")
end

--  
function M.DashboardName(str)
	asserts.AssertDashboardName(str)
	return str
end

function asserts.AssertStateValue(str)
	assert(str)
	assert(type(str) == "string", "Expected StateValue to be of type 'string'")
end

--  
function M.StateValue(str)
	asserts.AssertStateValue(str)
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

function asserts.AssertExtendedStatistic(str)
	assert(str)
	assert(type(str) == "string", "Expected ExtendedStatistic to be of type 'string'")
end

--  
function M.ExtendedStatistic(str)
	asserts.AssertExtendedStatistic(str)
	return str
end

function asserts.AssertOutputFormat(str)
	assert(str)
	assert(type(str) == "string", "Expected OutputFormat to be of type 'string'")
end

--  
function M.OutputFormat(str)
	asserts.AssertOutputFormat(str)
	return str
end

function asserts.AssertStatusCode(str)
	assert(str)
	assert(type(str) == "string", "Expected StatusCode to be of type 'string'")
end

--  
function M.StatusCode(str)
	asserts.AssertStatusCode(str)
	return str
end

function asserts.AssertStat(str)
	assert(str)
	assert(type(str) == "string", "Expected Stat to be of type 'string'")
end

--  
function M.Stat(str)
	asserts.AssertStat(str)
	return str
end

function asserts.AssertAlarmNamePrefix(str)
	assert(str)
	assert(type(str) == "string", "Expected AlarmNamePrefix to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AlarmNamePrefix(str)
	asserts.AssertAlarmNamePrefix(str)
	return str
end

function asserts.AssertMetricId(str)
	assert(str)
	assert(type(str) == "string", "Expected MetricId to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.MetricId(str)
	asserts.AssertMetricId(str)
	return str
end

function asserts.AssertEvaluateLowSampleCountPercentile(str)
	assert(str)
	assert(type(str) == "string", "Expected EvaluateLowSampleCountPercentile to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.EvaluateLowSampleCountPercentile(str)
	asserts.AssertEvaluateLowSampleCountPercentile(str)
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
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AlarmName(str)
	asserts.AssertAlarmName(str)
	return str
end

function asserts.AssertScanBy(str)
	assert(str)
	assert(type(str) == "string", "Expected ScanBy to be of type 'string'")
end

--  
function M.ScanBy(str)
	asserts.AssertScanBy(str)
	return str
end

function asserts.AssertTreatMissingData(str)
	assert(str)
	assert(type(str) == "string", "Expected TreatMissingData to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TreatMissingData(str)
	asserts.AssertTreatMissingData(str)
	return str
end

function asserts.AssertMetricExpression(str)
	assert(str)
	assert(type(str) == "string", "Expected MetricExpression to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.MetricExpression(str)
	asserts.AssertMetricExpression(str)
	return str
end

function asserts.AssertActionPrefix(str)
	assert(str)
	assert(type(str) == "string", "Expected ActionPrefix to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ActionPrefix(str)
	asserts.AssertActionPrefix(str)
	return str
end

function asserts.AssertMessageDataCode(str)
	assert(str)
	assert(type(str) == "string", "Expected MessageDataCode to be of type 'string'")
end

--  
function M.MessageDataCode(str)
	asserts.AssertMessageDataCode(str)
	return str
end

function asserts.AssertAlarmArn(str)
	assert(str)
	assert(type(str) == "string", "Expected AlarmArn to be of type 'string'")
	assert(#str <= 1600, "Expected string to be max 1600 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AlarmArn(str)
	asserts.AssertAlarmArn(str)
	return str
end

function asserts.AssertHistoryData(str)
	assert(str)
	assert(type(str) == "string", "Expected HistoryData to be of type 'string'")
	assert(#str <= 4095, "Expected string to be max 4095 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.HistoryData(str)
	asserts.AssertHistoryData(str)
	return str
end

function asserts.AssertDashboardArn(str)
	assert(str)
	assert(type(str) == "string", "Expected DashboardArn to be of type 'string'")
end

--  
function M.DashboardArn(str)
	asserts.AssertDashboardArn(str)
	return str
end

function asserts.AssertMetricWidget(str)
	assert(str)
	assert(type(str) == "string", "Expected MetricWidget to be of type 'string'")
end

--  
function M.MetricWidget(str)
	asserts.AssertMetricWidget(str)
	return str
end

function asserts.AssertDataPath(str)
	assert(str)
	assert(type(str) == "string", "Expected DataPath to be of type 'string'")
end

--  
function M.DataPath(str)
	asserts.AssertDataPath(str)
	return str
end

function asserts.AssertDashboardBody(str)
	assert(str)
	assert(type(str) == "string", "Expected DashboardBody to be of type 'string'")
end

--  
function M.DashboardBody(str)
	asserts.AssertDashboardBody(str)
	return str
end

function asserts.AssertDimensionName(str)
	assert(str)
	assert(type(str) == "string", "Expected DimensionName to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DimensionName(str)
	asserts.AssertDimensionName(str)
	return str
end

function asserts.AssertStandardUnit(str)
	assert(str)
	assert(type(str) == "string", "Expected StandardUnit to be of type 'string'")
end

--  
function M.StandardUnit(str)
	asserts.AssertStandardUnit(str)
	return str
end

function asserts.AssertResourceName(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceName to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ResourceName(str)
	asserts.AssertResourceName(str)
	return str
end

function asserts.AssertStateReason(str)
	assert(str)
	assert(type(str) == "string", "Expected StateReason to be of type 'string'")
	assert(#str <= 1023, "Expected string to be max 1023 characters")
end

--  
function M.StateReason(str)
	asserts.AssertStateReason(str)
	return str
end

function asserts.AssertDimensionValue(str)
	assert(str)
	assert(type(str) == "string", "Expected DimensionValue to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DimensionValue(str)
	asserts.AssertDimensionValue(str)
	return str
end

function asserts.AssertHistorySummary(str)
	assert(str)
	assert(type(str) == "string", "Expected HistorySummary to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.HistorySummary(str)
	asserts.AssertHistorySummary(str)
	return str
end

function asserts.AssertDatapointValue(double)
	assert(double)
	assert(type(double) == "number", "Expected DatapointValue to be of type 'number'")
end

function M.DatapointValue(double)
	asserts.AssertDatapointValue(double)
	return double
end

function asserts.AssertThreshold(double)
	assert(double)
	assert(type(double) == "number", "Expected Threshold to be of type 'number'")
end

function M.Threshold(double)
	asserts.AssertThreshold(double)
	return double
end

function asserts.AssertSize(long)
	assert(long)
	assert(type(long) == "number", "Expected Size to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.Size(long)
	asserts.AssertSize(long)
	return long
end

function asserts.AssertGetMetricDataMaxDatapoints(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected GetMetricDataMaxDatapoints to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.GetMetricDataMaxDatapoints(integer)
	asserts.AssertGetMetricDataMaxDatapoints(integer)
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

function asserts.AssertStorageResolution(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected StorageResolution to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.StorageResolution(integer)
	asserts.AssertStorageResolution(integer)
	return integer
end

function asserts.AssertDatapointsToAlarm(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected DatapointsToAlarm to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.DatapointsToAlarm(integer)
	asserts.AssertDatapointsToAlarm(integer)
	return integer
end

function asserts.AssertPeriod(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Period to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.Period(integer)
	asserts.AssertPeriod(integer)
	return integer
end

function asserts.AssertMaxRecords(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxRecords to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaxRecords(integer)
	asserts.AssertMaxRecords(integer)
	return integer
end

function asserts.AssertActionsEnabled(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected ActionsEnabled to be of type 'boolean'")
end

function M.ActionsEnabled(boolean)
	asserts.AssertActionsEnabled(boolean)
	return boolean
end

function asserts.AssertReturnData(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected ReturnData to be of type 'boolean'")
end

function M.ReturnData(boolean)
	asserts.AssertReturnData(boolean)
	return boolean
end

function asserts.AssertDatapointValueMap(map)
	assert(map)
	assert(type(map) == "table", "Expected DatapointValueMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertExtendedStatistic(k)
		asserts.AssertDatapointValue(v)
	end
end

function M.DatapointValueMap(map)
	asserts.AssertDatapointValueMap(map)
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

function asserts.AssertLastModified(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected LastModified to be of type 'string'")
end

function M.LastModified(timestamp)
	asserts.AssertLastModified(timestamp)
	return timestamp
end

function asserts.AssertMetricWidgetImage(blob)
	assert(blob)
	assert(type(blob) == "string", "Expected MetricWidgetImage to be of type 'string'")
end

function M.MetricWidgetImage(blob)
	asserts.AssertMetricWidgetImage(blob)
	return blob
end

function asserts.AssertAlarmHistoryItems(list)
	assert(list)
	assert(type(list) == "table", "Expected AlarmHistoryItems to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAlarmHistoryItem(v)
	end
end

--  
-- List of AlarmHistoryItem objects
function M.AlarmHistoryItems(list)
	asserts.AssertAlarmHistoryItems(list)
	return list
end

function asserts.AssertMetrics(list)
	assert(list)
	assert(type(list) == "table", "Expected Metrics to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertMetric(v)
	end
end

--  
-- List of Metric objects
function M.Metrics(list)
	asserts.AssertMetrics(list)
	return list
end

function asserts.AssertDatapointValues(list)
	assert(list)
	assert(type(list) == "table", "Expected DatapointValues to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDatapointValue(v)
	end
end

--  
-- List of DatapointValue objects
function M.DatapointValues(list)
	asserts.AssertDatapointValues(list)
	return list
end

function asserts.AssertDashboardEntries(list)
	assert(list)
	assert(type(list) == "table", "Expected DashboardEntries to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDashboardEntry(v)
	end
end

--  
-- List of DashboardEntry objects
function M.DashboardEntries(list)
	asserts.AssertDashboardEntries(list)
	return list
end

function asserts.AssertResourceList(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceList to be of type ''table")
	assert(#list <= 5, "Expected list to be contain 5 elements")
	for _,v in ipairs(list) do
		asserts.AssertResourceName(v)
	end
end

--  
-- List of ResourceName objects
function M.ResourceList(list)
	asserts.AssertResourceList(list)
	return list
end

function asserts.AssertStatistics(list)
	assert(list)
	assert(type(list) == "table", "Expected Statistics to be of type ''table")
	assert(#list <= 5, "Expected list to be contain 5 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertStatistic(v)
	end
end

--  
-- List of Statistic objects
function M.Statistics(list)
	asserts.AssertStatistics(list)
	return list
end

function asserts.AssertMetricDataResultMessages(list)
	assert(list)
	assert(type(list) == "table", "Expected MetricDataResultMessages to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertMessageData(v)
	end
end

--  
-- List of MessageData objects
function M.MetricDataResultMessages(list)
	asserts.AssertMetricDataResultMessages(list)
	return list
end

function asserts.AssertTimestamps(list)
	assert(list)
	assert(type(list) == "table", "Expected Timestamps to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTimestamp(v)
	end
end

--  
-- List of Timestamp objects
function M.Timestamps(list)
	asserts.AssertTimestamps(list)
	return list
end

function asserts.AssertDimensionFilters(list)
	assert(list)
	assert(type(list) == "table", "Expected DimensionFilters to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	for _,v in ipairs(list) do
		asserts.AssertDimensionFilter(v)
	end
end

--  
-- List of DimensionFilter objects
function M.DimensionFilters(list)
	asserts.AssertDimensionFilters(list)
	return list
end

function asserts.AssertDatapoints(list)
	assert(list)
	assert(type(list) == "table", "Expected Datapoints to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDatapoint(v)
	end
end

--  
-- List of Datapoint objects
function M.Datapoints(list)
	asserts.AssertDatapoints(list)
	return list
end

function asserts.AssertDimensions(list)
	assert(list)
	assert(type(list) == "table", "Expected Dimensions to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	for _,v in ipairs(list) do
		asserts.AssertDimension(v)
	end
end

--  
-- List of Dimension objects
function M.Dimensions(list)
	asserts.AssertDimensions(list)
	return list
end

function asserts.AssertMetricAlarms(list)
	assert(list)
	assert(type(list) == "table", "Expected MetricAlarms to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertMetricAlarm(v)
	end
end

--  
-- List of MetricAlarm objects
function M.MetricAlarms(list)
	asserts.AssertMetricAlarms(list)
	return list
end

function asserts.AssertDashboardValidationMessages(list)
	assert(list)
	assert(type(list) == "table", "Expected DashboardValidationMessages to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDashboardValidationMessage(v)
	end
end

--  
-- List of DashboardValidationMessage objects
function M.DashboardValidationMessages(list)
	asserts.AssertDashboardValidationMessages(list)
	return list
end

function asserts.AssertMetricDataResults(list)
	assert(list)
	assert(type(list) == "table", "Expected MetricDataResults to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertMetricDataResult(v)
	end
end

--  
-- List of MetricDataResult objects
function M.MetricDataResults(list)
	asserts.AssertMetricDataResults(list)
	return list
end

function asserts.AssertMetricDataQueries(list)
	assert(list)
	assert(type(list) == "table", "Expected MetricDataQueries to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertMetricDataQuery(v)
	end
end

--  
-- List of MetricDataQuery objects
function M.MetricDataQueries(list)
	asserts.AssertMetricDataQueries(list)
	return list
end

function asserts.AssertMetricData(list)
	assert(list)
	assert(type(list) == "table", "Expected MetricData to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertMetricDatum(v)
	end
end

--  
-- List of MetricDatum objects
function M.MetricData(list)
	asserts.AssertMetricData(list)
	return list
end

function asserts.AssertCounts(list)
	assert(list)
	assert(type(list) == "table", "Expected Counts to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDatapointValue(v)
	end
end

--  
-- List of DatapointValue objects
function M.Counts(list)
	asserts.AssertCounts(list)
	return list
end

function asserts.AssertAlarmNames(list)
	assert(list)
	assert(type(list) == "table", "Expected AlarmNames to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	for _,v in ipairs(list) do
		asserts.AssertAlarmName(v)
	end
end

--  
-- List of AlarmName objects
function M.AlarmNames(list)
	asserts.AssertAlarmNames(list)
	return list
end

function asserts.AssertExtendedStatistics(list)
	assert(list)
	assert(type(list) == "table", "Expected ExtendedStatistics to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertExtendedStatistic(v)
	end
end

--  
-- List of ExtendedStatistic objects
function M.ExtendedStatistics(list)
	asserts.AssertExtendedStatistics(list)
	return list
end

function asserts.AssertValues(list)
	assert(list)
	assert(type(list) == "table", "Expected Values to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDatapointValue(v)
	end
end

--  
-- List of DatapointValue objects
function M.Values(list)
	asserts.AssertValues(list)
	return list
end

function asserts.AssertDashboardNames(list)
	assert(list)
	assert(type(list) == "table", "Expected DashboardNames to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDashboardName(v)
	end
end

--  
-- List of DashboardName objects
function M.DashboardNames(list)
	asserts.AssertDashboardNames(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "monitoring.amazonaws.com"
		end
	end
	local ss = { "monitoring" }
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
--- Call ListDashboards asynchronously, invoking a callback when done
-- @param ListDashboardsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListDashboardsAsync(ListDashboardsInput, cb)
	assert(ListDashboardsInput, "You must provide a ListDashboardsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListDashboards",
	}
	for header,value in pairs(ListDashboardsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListDashboardsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListDashboards synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListDashboardsInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListDashboardsSync(ListDashboardsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListDashboardsAsync(ListDashboardsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListMetrics asynchronously, invoking a callback when done
-- @param ListMetricsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListMetricsAsync(ListMetricsInput, cb)
	assert(ListMetricsInput, "You must provide a ListMetricsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListMetrics",
	}
	for header,value in pairs(ListMetricsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListMetricsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListMetrics synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListMetricsInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListMetricsSync(ListMetricsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListMetricsAsync(ListMetricsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDashboards asynchronously, invoking a callback when done
-- @param DeleteDashboardsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteDashboardsAsync(DeleteDashboardsInput, cb)
	assert(DeleteDashboardsInput, "You must provide a DeleteDashboardsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteDashboards",
	}
	for header,value in pairs(DeleteDashboardsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteDashboardsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteDashboards synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteDashboardsInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteDashboardsSync(DeleteDashboardsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDashboardsAsync(DeleteDashboardsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteAlarms asynchronously, invoking a callback when done
-- @param DeleteAlarmsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteAlarmsAsync(DeleteAlarmsInput, cb)
	assert(DeleteAlarmsInput, "You must provide a DeleteAlarmsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteAlarms",
	}
	for header,value in pairs(DeleteAlarmsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteAlarmsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteAlarms synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteAlarmsInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteAlarmsSync(DeleteAlarmsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteAlarmsAsync(DeleteAlarmsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call EnableAlarmActions asynchronously, invoking a callback when done
-- @param EnableAlarmActionsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.EnableAlarmActionsAsync(EnableAlarmActionsInput, cb)
	assert(EnableAlarmActionsInput, "You must provide a EnableAlarmActionsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".EnableAlarmActions",
	}
	for header,value in pairs(EnableAlarmActionsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", EnableAlarmActionsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call EnableAlarmActions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param EnableAlarmActionsInput
-- @return response
-- @return error_type
-- @return error_message
function M.EnableAlarmActionsSync(EnableAlarmActionsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.EnableAlarmActionsAsync(EnableAlarmActionsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetMetricData asynchronously, invoking a callback when done
-- @param GetMetricDataInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetMetricDataAsync(GetMetricDataInput, cb)
	assert(GetMetricDataInput, "You must provide a GetMetricDataInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetMetricData",
	}
	for header,value in pairs(GetMetricDataInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetMetricDataInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetMetricData synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetMetricDataInput
-- @return response
-- @return error_type
-- @return error_message
function M.GetMetricDataSync(GetMetricDataInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetMetricDataAsync(GetMetricDataInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutMetricAlarm asynchronously, invoking a callback when done
-- @param PutMetricAlarmInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutMetricAlarmAsync(PutMetricAlarmInput, cb)
	assert(PutMetricAlarmInput, "You must provide a PutMetricAlarmInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutMetricAlarm",
	}
	for header,value in pairs(PutMetricAlarmInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutMetricAlarmInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutMetricAlarm synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutMetricAlarmInput
-- @return response
-- @return error_type
-- @return error_message
function M.PutMetricAlarmSync(PutMetricAlarmInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutMetricAlarmAsync(PutMetricAlarmInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetMetricStatistics asynchronously, invoking a callback when done
-- @param GetMetricStatisticsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetMetricStatisticsAsync(GetMetricStatisticsInput, cb)
	assert(GetMetricStatisticsInput, "You must provide a GetMetricStatisticsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetMetricStatistics",
	}
	for header,value in pairs(GetMetricStatisticsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetMetricStatisticsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetMetricStatistics synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetMetricStatisticsInput
-- @return response
-- @return error_type
-- @return error_message
function M.GetMetricStatisticsSync(GetMetricStatisticsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetMetricStatisticsAsync(GetMetricStatisticsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DisableAlarmActions asynchronously, invoking a callback when done
-- @param DisableAlarmActionsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DisableAlarmActionsAsync(DisableAlarmActionsInput, cb)
	assert(DisableAlarmActionsInput, "You must provide a DisableAlarmActionsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DisableAlarmActions",
	}
	for header,value in pairs(DisableAlarmActionsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DisableAlarmActionsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DisableAlarmActions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DisableAlarmActionsInput
-- @return response
-- @return error_type
-- @return error_message
function M.DisableAlarmActionsSync(DisableAlarmActionsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisableAlarmActionsAsync(DisableAlarmActionsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SetAlarmState asynchronously, invoking a callback when done
-- @param SetAlarmStateInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SetAlarmStateAsync(SetAlarmStateInput, cb)
	assert(SetAlarmStateInput, "You must provide a SetAlarmStateInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".SetAlarmState",
	}
	for header,value in pairs(SetAlarmStateInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", SetAlarmStateInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SetAlarmState synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SetAlarmStateInput
-- @return response
-- @return error_type
-- @return error_message
function M.SetAlarmStateSync(SetAlarmStateInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetAlarmStateAsync(SetAlarmStateInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutDashboard asynchronously, invoking a callback when done
-- @param PutDashboardInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutDashboardAsync(PutDashboardInput, cb)
	assert(PutDashboardInput, "You must provide a PutDashboardInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutDashboard",
	}
	for header,value in pairs(PutDashboardInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutDashboardInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutDashboard synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutDashboardInput
-- @return response
-- @return error_type
-- @return error_message
function M.PutDashboardSync(PutDashboardInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutDashboardAsync(PutDashboardInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutMetricData asynchronously, invoking a callback when done
-- @param PutMetricDataInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutMetricDataAsync(PutMetricDataInput, cb)
	assert(PutMetricDataInput, "You must provide a PutMetricDataInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutMetricData",
	}
	for header,value in pairs(PutMetricDataInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutMetricDataInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutMetricData synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutMetricDataInput
-- @return response
-- @return error_type
-- @return error_message
function M.PutMetricDataSync(PutMetricDataInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutMetricDataAsync(PutMetricDataInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeAlarms asynchronously, invoking a callback when done
-- @param DescribeAlarmsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeAlarmsAsync(DescribeAlarmsInput, cb)
	assert(DescribeAlarmsInput, "You must provide a DescribeAlarmsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeAlarms",
	}
	for header,value in pairs(DescribeAlarmsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeAlarmsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeAlarms synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeAlarmsInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeAlarmsSync(DescribeAlarmsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeAlarmsAsync(DescribeAlarmsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDashboard asynchronously, invoking a callback when done
-- @param GetDashboardInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetDashboardAsync(GetDashboardInput, cb)
	assert(GetDashboardInput, "You must provide a GetDashboardInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetDashboard",
	}
	for header,value in pairs(GetDashboardInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetDashboardInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetDashboard synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDashboardInput
-- @return response
-- @return error_type
-- @return error_message
function M.GetDashboardSync(GetDashboardInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDashboardAsync(GetDashboardInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeAlarmsForMetric asynchronously, invoking a callback when done
-- @param DescribeAlarmsForMetricInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeAlarmsForMetricAsync(DescribeAlarmsForMetricInput, cb)
	assert(DescribeAlarmsForMetricInput, "You must provide a DescribeAlarmsForMetricInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeAlarmsForMetric",
	}
	for header,value in pairs(DescribeAlarmsForMetricInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeAlarmsForMetricInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeAlarmsForMetric synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeAlarmsForMetricInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeAlarmsForMetricSync(DescribeAlarmsForMetricInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeAlarmsForMetricAsync(DescribeAlarmsForMetricInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeAlarmHistory asynchronously, invoking a callback when done
-- @param DescribeAlarmHistoryInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeAlarmHistoryAsync(DescribeAlarmHistoryInput, cb)
	assert(DescribeAlarmHistoryInput, "You must provide a DescribeAlarmHistoryInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeAlarmHistory",
	}
	for header,value in pairs(DescribeAlarmHistoryInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeAlarmHistoryInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeAlarmHistory synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeAlarmHistoryInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeAlarmHistorySync(DescribeAlarmHistoryInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeAlarmHistoryAsync(DescribeAlarmHistoryInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetMetricWidgetImage asynchronously, invoking a callback when done
-- @param GetMetricWidgetImageInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetMetricWidgetImageAsync(GetMetricWidgetImageInput, cb)
	assert(GetMetricWidgetImageInput, "You must provide a GetMetricWidgetImageInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetMetricWidgetImage",
	}
	for header,value in pairs(GetMetricWidgetImageInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetMetricWidgetImageInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetMetricWidgetImage synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetMetricWidgetImageInput
-- @return response
-- @return error_type
-- @return error_message
function M.GetMetricWidgetImageSync(GetMetricWidgetImageInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetMetricWidgetImageAsync(GetMetricWidgetImageInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
