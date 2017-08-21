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
	assert(args, "You must provdide an argument table when creating DisableAlarmActionsInput")
	local t = { 
		["AlarmNames"] = args["AlarmNames"],
	}
	asserts.AssertDisableAlarmActionsInput(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DescribeAlarmsOutput")
	local t = { 
		["NextToken"] = args["NextToken"],
		["MetricAlarms"] = args["MetricAlarms"],
	}
	asserts.AssertDescribeAlarmsOutput(t)
	return t
end

keys.InternalServiceFault = { ["Message"] = true, nil }

function asserts.AssertInternalServiceFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalServiceFault to be of type 'table'")
	if struct["Message"] then asserts.AssertFaultDescription(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InternalServiceFault[k], "InternalServiceFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalServiceFault
-- <p>Request processing has failed due to some unknown error, exception, or failure.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [FaultDescription] <p/>
-- @return InternalServiceFault structure as a key-value pair table
function M.InternalServiceFault(args)
	assert(args, "You must provdide an argument table when creating InternalServiceFault")
	local t = { 
		["Message"] = args["Message"],
	}
	asserts.AssertInternalServiceFault(t)
	return t
end

keys.MetricAlarm = { ["ExtendedStatistic"] = true, ["Dimensions"] = true, ["Namespace"] = true, ["ActionsEnabled"] = true, ["MetricName"] = true, ["EvaluationPeriods"] = true, ["StateValue"] = true, ["StateUpdatedTimestamp"] = true, ["AlarmConfigurationUpdatedTimestamp"] = true, ["AlarmActions"] = true, ["InsufficientDataActions"] = true, ["AlarmArn"] = true, ["StateReasonData"] = true, ["TreatMissingData"] = true, ["StateReason"] = true, ["EvaluateLowSampleCountPercentile"] = true, ["OKActions"] = true, ["AlarmDescription"] = true, ["Period"] = true, ["ComparisonOperator"] = true, ["AlarmName"] = true, ["Statistic"] = true, ["Threshold"] = true, ["Unit"] = true, nil }

function asserts.AssertMetricAlarm(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MetricAlarm to be of type 'table'")
	if struct["ExtendedStatistic"] then asserts.AssertExtendedStatistic(struct["ExtendedStatistic"]) end
	if struct["Dimensions"] then asserts.AssertDimensions(struct["Dimensions"]) end
	if struct["Namespace"] then asserts.AssertNamespace(struct["Namespace"]) end
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
-- * TreatMissingData [TreatMissingData] 
-- * StateReason [StateReason] <p>An explanation for the alarm state, in text format.</p>
-- * EvaluateLowSampleCountPercentile [EvaluateLowSampleCountPercentile] 
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
	assert(args, "You must provdide an argument table when creating MetricAlarm")
	local t = { 
		["ExtendedStatistic"] = args["ExtendedStatistic"],
		["Dimensions"] = args["Dimensions"],
		["Namespace"] = args["Namespace"],
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
	asserts.AssertMetricAlarm(t)
	return t
end

keys.LimitExceededFault = { ["message"] = true, nil }

function asserts.AssertLimitExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededFault to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.LimitExceededFault[k], "LimitExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededFault
-- <p>The quota for alarms for this customer has already been reached.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p/>
-- @return LimitExceededFault structure as a key-value pair table
function M.LimitExceededFault(args)
	assert(args, "You must provdide an argument table when creating LimitExceededFault")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertLimitExceededFault(t)
	return t
end

keys.InvalidNextToken = { ["message"] = true, nil }

function asserts.AssertInvalidNextToken(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidNextToken to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidNextToken[k], "InvalidNextToken contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidNextToken
-- <p>The next token specified is invalid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p/>
-- @return InvalidNextToken structure as a key-value pair table
function M.InvalidNextToken(args)
	assert(args, "You must provdide an argument table when creating InvalidNextToken")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidNextToken(t)
	return t
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
	assert(args, "You must provdide an argument table when creating AlarmHistoryItem")
	local t = { 
		["Timestamp"] = args["Timestamp"],
		["HistoryItemType"] = args["HistoryItemType"],
		["AlarmName"] = args["AlarmName"],
		["HistoryData"] = args["HistoryData"],
		["HistorySummary"] = args["HistorySummary"],
	}
	asserts.AssertAlarmHistoryItem(t)
	return t
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
-- * Statistics [Statistics] <p>The metric statistics, other than percentile. For percentile statistics, use <code>ExtendedStatistic</code>.</p>
-- * Dimensions [Dimensions] <p>The dimensions. If the metric contains multiple dimensions, you must include a value for each dimension. CloudWatch treats each unique combination of dimensions as a separate metric. You can't retrieve statistics using combinations of dimensions that were not specially published. You must specify the same dimensions that were used when the metrics were created. For an example, see <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html#dimension-combinations">Dimension Combinations</a> in the <i>Amazon CloudWatch User Guide</i>. For more information on specifying dimensions, see <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/publishingMetrics.html">Publishing Metrics</a> in the <i>Amazon CloudWatch User Guide</i>.</p>
-- * Namespace [Namespace] <p>The namespace of the metric, with or without spaces.</p>
-- * Period [Period] <p>The granularity, in seconds, of the returned data points. A period can be as short as one minute (60 seconds) and must be a multiple of 60. The default value is 60.</p> <p>If the <code>StartTime</code> parameter specifies a time stamp that is greater than 15 days ago, you must specify the period as follows or no data points in that time range is returned:</p> <ul> <li> <p>Start time between 15 and 63 days ago - Use a multiple of 300 seconds (5 minutes).</p> </li> <li> <p>Start time greater than 63 days ago - Use a multiple of 3600 seconds (1 hour).</p> </li> </ul>
-- * StartTime [Timestamp] <p>The time stamp that determines the first data point to return. Note that start times are evaluated relative to the time that CloudWatch receives the request.</p> <p>The value specified is inclusive; results include data points with the specified time stamp. The time stamp must be in ISO 8601 UTC format (for example, 2016-10-03T23:00:00Z).</p> <p>CloudWatch rounds the specified time stamp as follows:</p> <ul> <li> <p>Start time less than 15 days ago - Round down to the nearest whole minute. For example, 12:32:34 is rounded down to 12:32:00.</p> </li> <li> <p>Start time between 15 and 63 days ago - Round down to the nearest 5-minute clock interval. For example, 12:32:34 is rounded down to 12:30:00.</p> </li> <li> <p>Start time greater than 63 days ago - Round down to the nearest 1-hour clock interval. For example, 12:32:34 is rounded down to 12:00:00.</p> </li> </ul>
-- * ExtendedStatistics [ExtendedStatistics] <p>The percentile statistics. Specify values between p0.0 and p100.</p>
-- * EndTime [Timestamp] <p>The time stamp that determines the last data point to return.</p> <p>The value specified is exclusive; results will include data points up to the specified time stamp. The time stamp must be in ISO 8601 UTC format (for example, 2016-10-10T23:00:00Z).</p>
-- * Unit [StandardUnit] <p>The unit for a given metric. Metrics may be reported in multiple units. Not supplying a unit results in all units being returned. If the metric only ever reports one unit, specifying a unit has no effect.</p>
-- * MetricName [MetricName] <p>The name of the metric, with or without spaces.</p>
-- Required key: Namespace
-- Required key: MetricName
-- Required key: StartTime
-- Required key: EndTime
-- Required key: Period
-- @return GetMetricStatisticsInput structure as a key-value pair table
function M.GetMetricStatisticsInput(args)
	assert(args, "You must provdide an argument table when creating GetMetricStatisticsInput")
	local t = { 
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
	asserts.AssertGetMetricStatisticsInput(t)
	return t
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
	assert(args, "You must provdide an argument table when creating ListMetricsOutput")
	local t = { 
		["Metrics"] = args["Metrics"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListMetricsOutput(t)
	return t
end

keys.InvalidParameterCombinationException = { ["message"] = true, nil }

function asserts.AssertInvalidParameterCombinationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParameterCombinationException to be of type 'table'")
	if struct["message"] then asserts.AssertAwsQueryErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidParameterCombinationException[k], "InvalidParameterCombinationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParameterCombinationException
-- <p>Parameters that cannot be used together were used together.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [AwsQueryErrorMessage] <p/>
-- @return InvalidParameterCombinationException structure as a key-value pair table
function M.InvalidParameterCombinationException(args)
	assert(args, "You must provdide an argument table when creating InvalidParameterCombinationException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidParameterCombinationException(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DescribeAlarmHistoryOutput")
	local t = { 
		["AlarmHistoryItems"] = args["AlarmHistoryItems"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertDescribeAlarmHistoryOutput(t)
	return t
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
	assert(args, "You must provdide an argument table when creating GetMetricStatisticsOutput")
	local t = { 
		["Datapoints"] = args["Datapoints"],
		["Label"] = args["Label"],
	}
	asserts.AssertGetMetricStatisticsOutput(t)
	return t
end

keys.MetricDatum = { ["Dimensions"] = true, ["Timestamp"] = true, ["Value"] = true, ["StatisticValues"] = true, ["Unit"] = true, ["MetricName"] = true, nil }

function asserts.AssertMetricDatum(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MetricDatum to be of type 'table'")
	assert(struct["MetricName"], "Expected key MetricName to exist in table")
	if struct["Dimensions"] then asserts.AssertDimensions(struct["Dimensions"]) end
	if struct["Timestamp"] then asserts.AssertTimestamp(struct["Timestamp"]) end
	if struct["Value"] then asserts.AssertDatapointValue(struct["Value"]) end
	if struct["StatisticValues"] then asserts.AssertStatisticSet(struct["StatisticValues"]) end
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
-- * Value [DatapointValue] <p>The value for the metric.</p> <p>Although the parameter accepts numbers of type Double, Amazon CloudWatch rejects values that are either too small or too large. Values must be in the range of 8.515920e-109 to 1.174271e+108 (Base 10) or 2e-360 to 2e360 (Base 2). In addition, special values (for example, NaN, +Infinity, -Infinity) are not supported.</p>
-- * StatisticValues [StatisticSet] <p>The statistical values for the metric.</p>
-- * Unit [StandardUnit] <p>The unit of the metric.</p>
-- * MetricName [MetricName] <p>The name of the metric.</p>
-- Required key: MetricName
-- @return MetricDatum structure as a key-value pair table
function M.MetricDatum(args)
	assert(args, "You must provdide an argument table when creating MetricDatum")
	local t = { 
		["Dimensions"] = args["Dimensions"],
		["Timestamp"] = args["Timestamp"],
		["Value"] = args["Value"],
		["StatisticValues"] = args["StatisticValues"],
		["Unit"] = args["Unit"],
		["MetricName"] = args["MetricName"],
	}
	asserts.AssertMetricDatum(t)
	return t
end

keys.PutMetricAlarmInput = { ["EvaluationPeriods"] = true, ["ExtendedStatistic"] = true, ["TreatMissingData"] = true, ["Dimensions"] = true, ["AlarmActions"] = true, ["AlarmDescription"] = true, ["Namespace"] = true, ["Period"] = true, ["EvaluateLowSampleCountPercentile"] = true, ["ComparisonOperator"] = true, ["AlarmName"] = true, ["Unit"] = true, ["Statistic"] = true, ["Threshold"] = true, ["InsufficientDataActions"] = true, ["OKActions"] = true, ["ActionsEnabled"] = true, ["MetricName"] = true, nil }

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
-- * EvaluationPeriods [EvaluationPeriods] <p>The number of periods over which data is compared to the specified threshold.</p>
-- * ExtendedStatistic [ExtendedStatistic] <p>The percentile statistic for the metric associated with the alarm. Specify a value between p0.0 and p100.</p>
-- * TreatMissingData [TreatMissingData] <p> Sets how this alarm is to handle missing data points. If <code>TreatMissingData</code> is omitted, the default behavior of <code>missing</code> is used. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/AlarmThatSendsEmail.html#alarms-and-missing-data">Configuring How CloudWatch Alarms Treats Missing Data</a>.</p> <p>Valid Values: <code>breaching | notBreaching | ignore | missing</code> </p>
-- * Dimensions [Dimensions] <p>The dimensions for the metric associated with the alarm.</p>
-- * AlarmActions [ResourceList] <p>The actions to execute when this alarm transitions to the <code>ALARM</code> state from any other state. Each action is specified as an Amazon Resource Name (ARN).</p> <p>Valid Values: arn:aws:automate:<i>region</i>:ec2:stop | arn:aws:automate:<i>region</i>:ec2:terminate | arn:aws:automate:<i>region</i>:ec2:recover</p> <p>Valid Values (for use with IAM roles): arn:aws:swf:us-east-1:{<i>customer-account</i>}:action/actions/AWS_EC2.InstanceId.Stop/1.0 | arn:aws:swf:us-east-1:{<i>customer-account</i>}:action/actions/AWS_EC2.InstanceId.Terminate/1.0 | arn:aws:swf:us-east-1:{<i>customer-account</i>}:action/actions/AWS_EC2.InstanceId.Reboot/1.0</p>
-- * AlarmDescription [AlarmDescription] <p>The description for the alarm.</p>
-- * Namespace [Namespace] <p>The namespace for the metric associated with the alarm.</p>
-- * Period [Period] <p>The period, in seconds, over which the specified statistic is applied.</p>
-- * EvaluateLowSampleCountPercentile [EvaluateLowSampleCountPercentile] <p> Used only for alarms based on percentiles. If you specify <code>ignore</code>, the alarm state will not change during periods with too few data points to be statistically significant. If you specify <code>evaluate</code> or omit this parameter, the alarm will always be evaluated and possibly change state no matter how many data points are available. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/AlarmThatSendsEmail.html#percentiles-with-low-samples">Percentile-Based CloudWatch Alarms and Low Data Samples</a>.</p> <p>Valid Values: <code>evaluate | ignore</code> </p>
-- * ComparisonOperator [ComparisonOperator] <p> The arithmetic operation to use when comparing the specified statistic and threshold. The specified statistic value is used as the first operand.</p>
-- * AlarmName [AlarmName] <p>The name for the alarm. This name must be unique within the AWS account.</p>
-- * Unit [StandardUnit] <p>The unit of measure for the statistic. For example, the units for the Amazon EC2 NetworkIn metric are Bytes because NetworkIn tracks the number of bytes that an instance receives on all network interfaces. You can also specify a unit when you create a custom metric. Units help provide conceptual meaning to your data. Metric data points that specify a unit of measure, such as Percent, are aggregated separately.</p> <p>If you specify a unit, you must use a unit that is appropriate for the metric. Otherwise, the Amazon CloudWatch alarm can get stuck in the <code>INSUFFICIENT DATA</code> state. </p>
-- * Statistic [Statistic] <p>The statistic for the metric associated with the alarm, other than percentile. For percentile statistics, use <code>ExtendedStatistic</code>.</p>
-- * Threshold [Threshold] <p>The value against which the specified statistic is compared.</p>
-- * InsufficientDataActions [ResourceList] <p>The actions to execute when this alarm transitions to the <code>INSUFFICIENT_DATA</code> state from any other state. Each action is specified as an Amazon Resource Name (ARN).</p> <p>Valid Values: arn:aws:automate:<i>region</i>:ec2:stop | arn:aws:automate:<i>region</i>:ec2:terminate | arn:aws:automate:<i>region</i>:ec2:recover</p> <p>Valid Values (for use with IAM roles): arn:aws:swf:us-east-1:{<i>customer-account</i>}:action/actions/AWS_EC2.InstanceId.Stop/1.0 | arn:aws:swf:us-east-1:{<i>customer-account</i>}:action/actions/AWS_EC2.InstanceId.Terminate/1.0 | arn:aws:swf:us-east-1:{<i>customer-account</i>}:action/actions/AWS_EC2.InstanceId.Reboot/1.0</p>
-- * OKActions [ResourceList] <p>The actions to execute when this alarm transitions to an <code>OK</code> state from any other state. Each action is specified as an Amazon Resource Name (ARN).</p> <p>Valid Values: arn:aws:automate:<i>region</i>:ec2:stop | arn:aws:automate:<i>region</i>:ec2:terminate | arn:aws:automate:<i>region</i>:ec2:recover</p> <p>Valid Values (for use with IAM roles): arn:aws:swf:us-east-1:{<i>customer-account</i>}:action/actions/AWS_EC2.InstanceId.Stop/1.0 | arn:aws:swf:us-east-1:{<i>customer-account</i>}:action/actions/AWS_EC2.InstanceId.Terminate/1.0 | arn:aws:swf:us-east-1:{<i>customer-account</i>}:action/actions/AWS_EC2.InstanceId.Reboot/1.0</p>
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
	assert(args, "You must provdide an argument table when creating PutMetricAlarmInput")
	local t = { 
		["EvaluationPeriods"] = args["EvaluationPeriods"],
		["ExtendedStatistic"] = args["ExtendedStatistic"],
		["TreatMissingData"] = args["TreatMissingData"],
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
	asserts.AssertPutMetricAlarmInput(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DeleteAlarmsInput")
	local t = { 
		["AlarmNames"] = args["AlarmNames"],
	}
	asserts.AssertDeleteAlarmsInput(t)
	return t
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
	assert(args, "You must provdide an argument table when creating StatisticSet")
	local t = { 
		["SampleCount"] = args["SampleCount"],
		["Sum"] = args["Sum"],
		["Minimum"] = args["Minimum"],
		["Maximum"] = args["Maximum"],
	}
	asserts.AssertStatisticSet(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DescribeAlarmsForMetricOutput")
	local t = { 
		["MetricAlarms"] = args["MetricAlarms"],
	}
	asserts.AssertDescribeAlarmsForMetricOutput(t)
	return t
end

keys.InvalidParameterValueException = { ["message"] = true, nil }

function asserts.AssertInvalidParameterValueException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParameterValueException to be of type 'table'")
	if struct["message"] then asserts.AssertAwsQueryErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidParameterValueException[k], "InvalidParameterValueException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParameterValueException
-- <p>The value of an input parameter is bad or out-of-range.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [AwsQueryErrorMessage] <p/>
-- @return InvalidParameterValueException structure as a key-value pair table
function M.InvalidParameterValueException(args)
	assert(args, "You must provdide an argument table when creating InvalidParameterValueException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidParameterValueException(t)
	return t
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
-- <p>Encapsulates the statistical data that Amazon CloudWatch computes from metric data.</p>
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
	assert(args, "You must provdide an argument table when creating Datapoint")
	local t = { 
		["SampleCount"] = args["SampleCount"],
		["Timestamp"] = args["Timestamp"],
		["Average"] = args["Average"],
		["Maximum"] = args["Maximum"],
		["Minimum"] = args["Minimum"],
		["ExtendedStatistics"] = args["ExtendedStatistics"],
		["Sum"] = args["Sum"],
		["Unit"] = args["Unit"],
	}
	asserts.AssertDatapoint(t)
	return t
end

keys.MissingRequiredParameterException = { ["message"] = true, nil }

function asserts.AssertMissingRequiredParameterException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MissingRequiredParameterException to be of type 'table'")
	if struct["message"] then asserts.AssertAwsQueryErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.MissingRequiredParameterException[k], "MissingRequiredParameterException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MissingRequiredParameterException
-- <p>An input parameter that is required is missing.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [AwsQueryErrorMessage] <p/>
-- @return MissingRequiredParameterException structure as a key-value pair table
function M.MissingRequiredParameterException(args)
	assert(args, "You must provdide an argument table when creating MissingRequiredParameterException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertMissingRequiredParameterException(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DimensionFilter")
	local t = { 
		["Name"] = args["Name"],
		["Value"] = args["Value"],
	}
	asserts.AssertDimensionFilter(t)
	return t
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
	assert(args, "You must provdide an argument table when creating EnableAlarmActionsInput")
	local t = { 
		["AlarmNames"] = args["AlarmNames"],
	}
	asserts.AssertEnableAlarmActionsInput(t)
	return t
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
-- * AlarmNamePrefix [AlarmNamePrefix] <p>The alarm name prefix. You cannot specify <code>AlarmNames</code> if this parameter is specified.</p>
-- * NextToken [NextToken] <p>The token returned by a previous call to indicate that there is more data available.</p>
-- @return DescribeAlarmsInput structure as a key-value pair table
function M.DescribeAlarmsInput(args)
	assert(args, "You must provdide an argument table when creating DescribeAlarmsInput")
	local t = { 
		["StateValue"] = args["StateValue"],
		["ActionPrefix"] = args["ActionPrefix"],
		["MaxRecords"] = args["MaxRecords"],
		["AlarmNames"] = args["AlarmNames"],
		["AlarmNamePrefix"] = args["AlarmNamePrefix"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertDescribeAlarmsInput(t)
	return t
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
	assert(args, "You must provdide an argument table when creating Dimension")
	local t = { 
		["Name"] = args["Name"],
		["Value"] = args["Value"],
	}
	asserts.AssertDimension(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DescribeAlarmHistoryInput")
	local t = { 
		["StartDate"] = args["StartDate"],
		["EndDate"] = args["EndDate"],
		["MaxRecords"] = args["MaxRecords"],
		["AlarmName"] = args["AlarmName"],
		["HistoryItemType"] = args["HistoryItemType"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertDescribeAlarmHistoryInput(t)
	return t
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
	assert(args, "You must provdide an argument table when creating ListMetricsInput")
	local t = { 
		["NextToken"] = args["NextToken"],
		["Namespace"] = args["Namespace"],
		["Dimensions"] = args["Dimensions"],
		["MetricName"] = args["MetricName"],
	}
	asserts.AssertListMetricsInput(t)
	return t
end

keys.InvalidFormatFault = { ["message"] = true, nil }

function asserts.AssertInvalidFormatFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidFormatFault to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidFormatFault[k], "InvalidFormatFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidFormatFault
-- <p>Data was not syntactically valid JSON.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p/>
-- @return InvalidFormatFault structure as a key-value pair table
function M.InvalidFormatFault(args)
	assert(args, "You must provdide an argument table when creating InvalidFormatFault")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidFormatFault(t)
	return t
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
-- * MetricData [MetricData] <p>The data for the metric.</p>
-- Required key: Namespace
-- Required key: MetricData
-- @return PutMetricDataInput structure as a key-value pair table
function M.PutMetricDataInput(args)
	assert(args, "You must provdide an argument table when creating PutMetricDataInput")
	local t = { 
		["Namespace"] = args["Namespace"],
		["MetricData"] = args["MetricData"],
	}
	asserts.AssertPutMetricDataInput(t)
	return t
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
	assert(args, "You must provdide an argument table when creating Metric")
	local t = { 
		["Namespace"] = args["Namespace"],
		["Dimensions"] = args["Dimensions"],
		["MetricName"] = args["MetricName"],
	}
	asserts.AssertMetric(t)
	return t
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
	assert(args, "You must provdide an argument table when creating SetAlarmStateInput")
	local t = { 
		["StateReason"] = args["StateReason"],
		["StateReasonData"] = args["StateReasonData"],
		["AlarmName"] = args["AlarmName"],
		["StateValue"] = args["StateValue"],
	}
	asserts.AssertSetAlarmStateInput(t)
	return t
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
	assert(args, "You must provdide an argument table when creating DescribeAlarmsForMetricInput")
	local t = { 
		["ExtendedStatistic"] = args["ExtendedStatistic"],
		["Dimensions"] = args["Dimensions"],
		["Namespace"] = args["Namespace"],
		["Period"] = args["Period"],
		["Statistic"] = args["Statistic"],
		["Unit"] = args["Unit"],
		["MetricName"] = args["MetricName"],
	}
	asserts.AssertDescribeAlarmsForMetricInput(t)
	return t
end

keys.ResourceNotFound = { ["message"] = true, nil }

function asserts.AssertResourceNotFound(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceNotFound to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceNotFound[k], "ResourceNotFound contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceNotFound
-- <p>The named resource does not exist.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p/>
-- @return ResourceNotFound structure as a key-value pair table
function M.ResourceNotFound(args)
	assert(args, "You must provdide an argument table when creating ResourceNotFound")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertResourceNotFound(t)
	return t
end

function asserts.AssertErrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorMessage to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ErrorMessage(str)
	asserts.AssertErrorMessage(str)
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

function asserts.AssertFaultDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected FaultDescription to be of type 'string'")
end

--  
function M.FaultDescription(str)
	asserts.AssertFaultDescription(str)
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

function asserts.AssertStandardUnit(str)
	assert(str)
	assert(type(str) == "string", "Expected StandardUnit to be of type 'string'")
end

--  
function M.StandardUnit(str)
	asserts.AssertStandardUnit(str)
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

function asserts.AssertAwsQueryErrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected AwsQueryErrorMessage to be of type 'string'")
end

--  
function M.AwsQueryErrorMessage(str)
	asserts.AssertAwsQueryErrorMessage(str)
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

function asserts.AssertStatistic(str)
	assert(str)
	assert(type(str) == "string", "Expected Statistic to be of type 'string'")
end

--  
function M.Statistic(str)
	asserts.AssertStatistic(str)
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

function asserts.AssertExtendedStatistic(str)
	assert(str)
	assert(type(str) == "string", "Expected ExtendedStatistic to be of type 'string'")
end

--  
function M.ExtendedStatistic(str)
	asserts.AssertExtendedStatistic(str)
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

function asserts.AssertHistoryItemType(str)
	assert(str)
	assert(type(str) == "string", "Expected HistoryItemType to be of type 'string'")
end

--  
function M.HistoryItemType(str)
	asserts.AssertHistoryItemType(str)
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

function asserts.AssertPeriod(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Period to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 60, "Expected integer to be min 60")
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

function asserts.AssertActionsEnabled(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected ActionsEnabled to be of type 'boolean'")
end

function M.ActionsEnabled(boolean)
	asserts.AssertActionsEnabled(boolean)
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
	settings.uri = (config.scheme or "https") .. "://" .. settings.endpoint
end


--
-- OPERATIONS
--
--- Call ListMetrics asynchronously, invoking a callback when done
-- @param ListMetricsInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListMetricsAsync(ListMetricsInput, cb)
	assert(ListMetricsInput, "You must provide a ListMetricsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListMetrics",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.ListMetricsSync(ListMetricsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListMetricsAsync(ListMetricsInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call EnableAlarmActions asynchronously, invoking a callback when done
-- @param EnableAlarmActionsInput
-- @param cb Callback function accepting two args: response, error_message
function M.EnableAlarmActionsAsync(EnableAlarmActionsInput, cb)
	assert(EnableAlarmActionsInput, "You must provide a EnableAlarmActionsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".EnableAlarmActions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.EnableAlarmActionsSync(EnableAlarmActionsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.EnableAlarmActionsAsync(EnableAlarmActionsInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteAlarms asynchronously, invoking a callback when done
-- @param DeleteAlarmsInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteAlarmsAsync(DeleteAlarmsInput, cb)
	assert(DeleteAlarmsInput, "You must provide a DeleteAlarmsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteAlarms",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DeleteAlarmsSync(DeleteAlarmsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteAlarmsAsync(DeleteAlarmsInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PutMetricAlarm asynchronously, invoking a callback when done
-- @param PutMetricAlarmInput
-- @param cb Callback function accepting two args: response, error_message
function M.PutMetricAlarmAsync(PutMetricAlarmInput, cb)
	assert(PutMetricAlarmInput, "You must provide a PutMetricAlarmInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutMetricAlarm",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.PutMetricAlarmSync(PutMetricAlarmInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutMetricAlarmAsync(PutMetricAlarmInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetMetricStatistics asynchronously, invoking a callback when done
-- @param GetMetricStatisticsInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetMetricStatisticsAsync(GetMetricStatisticsInput, cb)
	assert(GetMetricStatisticsInput, "You must provide a GetMetricStatisticsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetMetricStatistics",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.GetMetricStatisticsSync(GetMetricStatisticsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetMetricStatisticsAsync(GetMetricStatisticsInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DisableAlarmActions asynchronously, invoking a callback when done
-- @param DisableAlarmActionsInput
-- @param cb Callback function accepting two args: response, error_message
function M.DisableAlarmActionsAsync(DisableAlarmActionsInput, cb)
	assert(DisableAlarmActionsInput, "You must provide a DisableAlarmActionsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DisableAlarmActions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DisableAlarmActionsSync(DisableAlarmActionsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisableAlarmActionsAsync(DisableAlarmActionsInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call SetAlarmState asynchronously, invoking a callback when done
-- @param SetAlarmStateInput
-- @param cb Callback function accepting two args: response, error_message
function M.SetAlarmStateAsync(SetAlarmStateInput, cb)
	assert(SetAlarmStateInput, "You must provide a SetAlarmStateInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".SetAlarmState",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.SetAlarmStateSync(SetAlarmStateInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetAlarmStateAsync(SetAlarmStateInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PutMetricData asynchronously, invoking a callback when done
-- @param PutMetricDataInput
-- @param cb Callback function accepting two args: response, error_message
function M.PutMetricDataAsync(PutMetricDataInput, cb)
	assert(PutMetricDataInput, "You must provide a PutMetricDataInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutMetricData",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.PutMetricDataSync(PutMetricDataInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutMetricDataAsync(PutMetricDataInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeAlarms asynchronously, invoking a callback when done
-- @param DescribeAlarmsInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeAlarmsAsync(DescribeAlarmsInput, cb)
	assert(DescribeAlarmsInput, "You must provide a DescribeAlarmsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeAlarms",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DescribeAlarmsSync(DescribeAlarmsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeAlarmsAsync(DescribeAlarmsInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeAlarmsForMetric asynchronously, invoking a callback when done
-- @param DescribeAlarmsForMetricInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeAlarmsForMetricAsync(DescribeAlarmsForMetricInput, cb)
	assert(DescribeAlarmsForMetricInput, "You must provide a DescribeAlarmsForMetricInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeAlarmsForMetric",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DescribeAlarmsForMetricSync(DescribeAlarmsForMetricInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeAlarmsForMetricAsync(DescribeAlarmsForMetricInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeAlarmHistory asynchronously, invoking a callback when done
-- @param DescribeAlarmHistoryInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeAlarmHistoryAsync(DescribeAlarmHistoryInput, cb)
	assert(DescribeAlarmHistoryInput, "You must provide a DescribeAlarmHistoryInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeAlarmHistory",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
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
-- @return error_message
function M.DescribeAlarmHistorySync(DescribeAlarmHistoryInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeAlarmHistoryAsync(DescribeAlarmHistoryInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end


return M
