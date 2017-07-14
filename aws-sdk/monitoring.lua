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

local DisableAlarmActionsInput_keys = { "AlarmNames" = true, nil }

function M.AssertDisableAlarmActionsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisableAlarmActionsInput to be of type 'table'")
	assert(struct["AlarmNames"], "Expected key AlarmNames to exist in table")
	if struct["AlarmNames"] then M.AssertAlarmNames(struct["AlarmNames"]) end
	for k,_ in pairs(struct) do
		assert(DisableAlarmActionsInput_keys[k], "DisableAlarmActionsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisableAlarmActionsInput
--  
-- @param AlarmNames [AlarmNames] <p>The names of the alarms.</p>
-- Required parameter: AlarmNames
function M.DisableAlarmActionsInput(AlarmNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisableAlarmActionsInput")
	local t = { 
		["AlarmNames"] = AlarmNames,
	}
	M.AssertDisableAlarmActionsInput(t)
	return t
end

local DescribeAlarmsOutput_keys = { "NextToken" = true, "MetricAlarms" = true, nil }

function M.AssertDescribeAlarmsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAlarmsOutput to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["MetricAlarms"] then M.AssertMetricAlarms(struct["MetricAlarms"]) end
	for k,_ in pairs(struct) do
		assert(DescribeAlarmsOutput_keys[k], "DescribeAlarmsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAlarmsOutput
--  
-- @param NextToken [NextToken] <p>The token that marks the start of the next batch of returned results.</p>
-- @param MetricAlarms [MetricAlarms] <p>The information for the specified alarms.</p>
function M.DescribeAlarmsOutput(NextToken, MetricAlarms, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAlarmsOutput")
	local t = { 
		["NextToken"] = NextToken,
		["MetricAlarms"] = MetricAlarms,
	}
	M.AssertDescribeAlarmsOutput(t)
	return t
end

local InternalServiceFault_keys = { "Message" = true, nil }

function M.AssertInternalServiceFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalServiceFault to be of type 'table'")
	if struct["Message"] then M.AssertFaultDescription(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InternalServiceFault_keys[k], "InternalServiceFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalServiceFault
-- <p>Request processing has failed due to some unknown error, exception, or failure.</p>
-- @param Message [FaultDescription] <p/>
function M.InternalServiceFault(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InternalServiceFault")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInternalServiceFault(t)
	return t
end

local MetricAlarm_keys = { "ExtendedStatistic" = true, "Dimensions" = true, "Namespace" = true, "ActionsEnabled" = true, "MetricName" = true, "EvaluationPeriods" = true, "StateValue" = true, "StateUpdatedTimestamp" = true, "AlarmConfigurationUpdatedTimestamp" = true, "AlarmActions" = true, "InsufficientDataActions" = true, "AlarmArn" = true, "StateReasonData" = true, "TreatMissingData" = true, "StateReason" = true, "EvaluateLowSampleCountPercentile" = true, "OKActions" = true, "AlarmDescription" = true, "Period" = true, "ComparisonOperator" = true, "AlarmName" = true, "Statistic" = true, "Threshold" = true, "Unit" = true, nil }

function M.AssertMetricAlarm(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MetricAlarm to be of type 'table'")
	if struct["ExtendedStatistic"] then M.AssertExtendedStatistic(struct["ExtendedStatistic"]) end
	if struct["Dimensions"] then M.AssertDimensions(struct["Dimensions"]) end
	if struct["Namespace"] then M.AssertNamespace(struct["Namespace"]) end
	if struct["ActionsEnabled"] then M.AssertActionsEnabled(struct["ActionsEnabled"]) end
	if struct["MetricName"] then M.AssertMetricName(struct["MetricName"]) end
	if struct["EvaluationPeriods"] then M.AssertEvaluationPeriods(struct["EvaluationPeriods"]) end
	if struct["StateValue"] then M.AssertStateValue(struct["StateValue"]) end
	if struct["StateUpdatedTimestamp"] then M.AssertTimestamp(struct["StateUpdatedTimestamp"]) end
	if struct["AlarmConfigurationUpdatedTimestamp"] then M.AssertTimestamp(struct["AlarmConfigurationUpdatedTimestamp"]) end
	if struct["AlarmActions"] then M.AssertResourceList(struct["AlarmActions"]) end
	if struct["InsufficientDataActions"] then M.AssertResourceList(struct["InsufficientDataActions"]) end
	if struct["AlarmArn"] then M.AssertAlarmArn(struct["AlarmArn"]) end
	if struct["StateReasonData"] then M.AssertStateReasonData(struct["StateReasonData"]) end
	if struct["TreatMissingData"] then M.AssertTreatMissingData(struct["TreatMissingData"]) end
	if struct["StateReason"] then M.AssertStateReason(struct["StateReason"]) end
	if struct["EvaluateLowSampleCountPercentile"] then M.AssertEvaluateLowSampleCountPercentile(struct["EvaluateLowSampleCountPercentile"]) end
	if struct["OKActions"] then M.AssertResourceList(struct["OKActions"]) end
	if struct["AlarmDescription"] then M.AssertAlarmDescription(struct["AlarmDescription"]) end
	if struct["Period"] then M.AssertPeriod(struct["Period"]) end
	if struct["ComparisonOperator"] then M.AssertComparisonOperator(struct["ComparisonOperator"]) end
	if struct["AlarmName"] then M.AssertAlarmName(struct["AlarmName"]) end
	if struct["Statistic"] then M.AssertStatistic(struct["Statistic"]) end
	if struct["Threshold"] then M.AssertThreshold(struct["Threshold"]) end
	if struct["Unit"] then M.AssertStandardUnit(struct["Unit"]) end
	for k,_ in pairs(struct) do
		assert(MetricAlarm_keys[k], "MetricAlarm contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MetricAlarm
-- <p>Represents an alarm.</p>
-- @param ExtendedStatistic [ExtendedStatistic] <p>The percentile statistic for the metric associated with the alarm. Specify a value between p0.0 and p100.</p>
-- @param Dimensions [Dimensions] <p>The dimensions for the metric associated with the alarm.</p>
-- @param Namespace [Namespace] <p>The namespace of the metric associated with the alarm.</p>
-- @param ActionsEnabled [ActionsEnabled] <p>Indicates whether actions should be executed during any changes to the alarm state.</p>
-- @param MetricName [MetricName] <p>The name of the metric associated with the alarm.</p>
-- @param EvaluationPeriods [EvaluationPeriods] <p>The number of periods over which data is compared to the specified threshold.</p>
-- @param StateValue [StateValue] <p>The state value for the alarm.</p>
-- @param StateUpdatedTimestamp [Timestamp] <p>The time stamp of the last update to the alarm state.</p>
-- @param AlarmConfigurationUpdatedTimestamp [Timestamp] <p>The time stamp of the last update to the alarm configuration.</p>
-- @param AlarmActions [ResourceList] <p>The actions to execute when this alarm transitions to the <code>ALARM</code> state from any other state. Each action is specified as an Amazon Resource Name (ARN).</p>
-- @param InsufficientDataActions [ResourceList] <p>The actions to execute when this alarm transitions to the <code>INSUFFICIENT_DATA</code> state from any other state. Each action is specified as an Amazon Resource Name (ARN).</p>
-- @param AlarmArn [AlarmArn] <p>The Amazon Resource Name (ARN) of the alarm.</p>
-- @param StateReasonData [StateReasonData] <p>An explanation for the alarm state, in JSON format.</p>
-- @param TreatMissingData [TreatMissingData] <p>Represents an alarm.</p>
-- @param StateReason [StateReason] <p>An explanation for the alarm state, in text format.</p>
-- @param EvaluateLowSampleCountPercentile [EvaluateLowSampleCountPercentile] <p>Represents an alarm.</p>
-- @param OKActions [ResourceList] <p>The actions to execute when this alarm transitions to the <code>OK</code> state from any other state. Each action is specified as an Amazon Resource Name (ARN).</p>
-- @param AlarmDescription [AlarmDescription] <p>The description of the alarm.</p>
-- @param Period [Period] <p>The period, in seconds, over which the statistic is applied.</p>
-- @param ComparisonOperator [ComparisonOperator] <p>The arithmetic operation to use when comparing the specified statistic and threshold. The specified statistic value is used as the first operand.</p>
-- @param AlarmName [AlarmName] <p>The name of the alarm.</p>
-- @param Statistic [Statistic] <p>The statistic for the metric associated with the alarm, other than percentile. For percentile statistics, use <code>ExtendedStatistic</code>.</p>
-- @param Threshold [Threshold] <p>The value to compare with the specified statistic.</p>
-- @param Unit [StandardUnit] <p>The unit of the metric associated with the alarm.</p>
function M.MetricAlarm(ExtendedStatistic, Dimensions, Namespace, ActionsEnabled, MetricName, EvaluationPeriods, StateValue, StateUpdatedTimestamp, AlarmConfigurationUpdatedTimestamp, AlarmActions, InsufficientDataActions, AlarmArn, StateReasonData, TreatMissingData, StateReason, EvaluateLowSampleCountPercentile, OKActions, AlarmDescription, Period, ComparisonOperator, AlarmName, Statistic, Threshold, Unit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MetricAlarm")
	local t = { 
		["ExtendedStatistic"] = ExtendedStatistic,
		["Dimensions"] = Dimensions,
		["Namespace"] = Namespace,
		["ActionsEnabled"] = ActionsEnabled,
		["MetricName"] = MetricName,
		["EvaluationPeriods"] = EvaluationPeriods,
		["StateValue"] = StateValue,
		["StateUpdatedTimestamp"] = StateUpdatedTimestamp,
		["AlarmConfigurationUpdatedTimestamp"] = AlarmConfigurationUpdatedTimestamp,
		["AlarmActions"] = AlarmActions,
		["InsufficientDataActions"] = InsufficientDataActions,
		["AlarmArn"] = AlarmArn,
		["StateReasonData"] = StateReasonData,
		["TreatMissingData"] = TreatMissingData,
		["StateReason"] = StateReason,
		["EvaluateLowSampleCountPercentile"] = EvaluateLowSampleCountPercentile,
		["OKActions"] = OKActions,
		["AlarmDescription"] = AlarmDescription,
		["Period"] = Period,
		["ComparisonOperator"] = ComparisonOperator,
		["AlarmName"] = AlarmName,
		["Statistic"] = Statistic,
		["Threshold"] = Threshold,
		["Unit"] = Unit,
	}
	M.AssertMetricAlarm(t)
	return t
end

local LimitExceededFault_keys = { "message" = true, nil }

function M.AssertLimitExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededFault to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(LimitExceededFault_keys[k], "LimitExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededFault
-- <p>The quota for alarms for this customer has already been reached.</p>
-- @param message [ErrorMessage] <p/>
function M.LimitExceededFault(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededFault")
	local t = { 
		["message"] = message,
	}
	M.AssertLimitExceededFault(t)
	return t
end

local InvalidNextToken_keys = { "message" = true, nil }

function M.AssertInvalidNextToken(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidNextToken to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidNextToken_keys[k], "InvalidNextToken contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidNextToken
-- <p>The next token specified is invalid.</p>
-- @param message [ErrorMessage] <p/>
function M.InvalidNextToken(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidNextToken")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidNextToken(t)
	return t
end

local AlarmHistoryItem_keys = { "Timestamp" = true, "HistoryItemType" = true, "AlarmName" = true, "HistoryData" = true, "HistorySummary" = true, nil }

function M.AssertAlarmHistoryItem(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AlarmHistoryItem to be of type 'table'")
	if struct["Timestamp"] then M.AssertTimestamp(struct["Timestamp"]) end
	if struct["HistoryItemType"] then M.AssertHistoryItemType(struct["HistoryItemType"]) end
	if struct["AlarmName"] then M.AssertAlarmName(struct["AlarmName"]) end
	if struct["HistoryData"] then M.AssertHistoryData(struct["HistoryData"]) end
	if struct["HistorySummary"] then M.AssertHistorySummary(struct["HistorySummary"]) end
	for k,_ in pairs(struct) do
		assert(AlarmHistoryItem_keys[k], "AlarmHistoryItem contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AlarmHistoryItem
-- <p>Represents the history of a specific alarm.</p>
-- @param Timestamp [Timestamp] <p>The time stamp for the alarm history item.</p>
-- @param HistoryItemType [HistoryItemType] <p>The type of alarm history item.</p>
-- @param AlarmName [AlarmName] <p>The descriptive name for the alarm.</p>
-- @param HistoryData [HistoryData] <p>Data about the alarm, in JSON format.</p>
-- @param HistorySummary [HistorySummary] <p>A summary of the alarm history, in text format.</p>
function M.AlarmHistoryItem(Timestamp, HistoryItemType, AlarmName, HistoryData, HistorySummary, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AlarmHistoryItem")
	local t = { 
		["Timestamp"] = Timestamp,
		["HistoryItemType"] = HistoryItemType,
		["AlarmName"] = AlarmName,
		["HistoryData"] = HistoryData,
		["HistorySummary"] = HistorySummary,
	}
	M.AssertAlarmHistoryItem(t)
	return t
end

local GetMetricStatisticsInput_keys = { "Statistics" = true, "Dimensions" = true, "Namespace" = true, "Period" = true, "StartTime" = true, "ExtendedStatistics" = true, "EndTime" = true, "Unit" = true, "MetricName" = true, nil }

function M.AssertGetMetricStatisticsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetMetricStatisticsInput to be of type 'table'")
	assert(struct["Namespace"], "Expected key Namespace to exist in table")
	assert(struct["MetricName"], "Expected key MetricName to exist in table")
	assert(struct["StartTime"], "Expected key StartTime to exist in table")
	assert(struct["EndTime"], "Expected key EndTime to exist in table")
	assert(struct["Period"], "Expected key Period to exist in table")
	if struct["Statistics"] then M.AssertStatistics(struct["Statistics"]) end
	if struct["Dimensions"] then M.AssertDimensions(struct["Dimensions"]) end
	if struct["Namespace"] then M.AssertNamespace(struct["Namespace"]) end
	if struct["Period"] then M.AssertPeriod(struct["Period"]) end
	if struct["StartTime"] then M.AssertTimestamp(struct["StartTime"]) end
	if struct["ExtendedStatistics"] then M.AssertExtendedStatistics(struct["ExtendedStatistics"]) end
	if struct["EndTime"] then M.AssertTimestamp(struct["EndTime"]) end
	if struct["Unit"] then M.AssertStandardUnit(struct["Unit"]) end
	if struct["MetricName"] then M.AssertMetricName(struct["MetricName"]) end
	for k,_ in pairs(struct) do
		assert(GetMetricStatisticsInput_keys[k], "GetMetricStatisticsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetMetricStatisticsInput
--  
-- @param Statistics [Statistics] <p>The metric statistics, other than percentile. For percentile statistics, use <code>ExtendedStatistic</code>.</p>
-- @param Dimensions [Dimensions] <p>The dimensions. If the metric contains multiple dimensions, you must include a value for each dimension. CloudWatch treats each unique combination of dimensions as a separate metric. You can't retrieve statistics using combinations of dimensions that were not specially published. You must specify the same dimensions that were used when the metrics were created. For an example, see <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch_concepts.html#dimension-combinations">Dimension Combinations</a> in the <i>Amazon CloudWatch User Guide</i>. For more information on specifying dimensions, see <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/publishingMetrics.html">Publishing Metrics</a> in the <i>Amazon CloudWatch User Guide</i>.</p>
-- @param Namespace [Namespace] <p>The namespace of the metric, with or without spaces.</p>
-- @param Period [Period] <p>The granularity, in seconds, of the returned data points. A period can be as short as one minute (60 seconds) and must be a multiple of 60. The default value is 60.</p> <p>If the <code>StartTime</code> parameter specifies a time stamp that is greater than 15 days ago, you must specify the period as follows or no data points in that time range is returned:</p> <ul> <li> <p>Start time between 15 and 63 days ago - Use a multiple of 300 seconds (5 minutes).</p> </li> <li> <p>Start time greater than 63 days ago - Use a multiple of 3600 seconds (1 hour).</p> </li> </ul>
-- @param StartTime [Timestamp] <p>The time stamp that determines the first data point to return. Note that start times are evaluated relative to the time that CloudWatch receives the request.</p> <p>The value specified is inclusive; results include data points with the specified time stamp. The time stamp must be in ISO 8601 UTC format (for example, 2016-10-03T23:00:00Z).</p> <p>CloudWatch rounds the specified time stamp as follows:</p> <ul> <li> <p>Start time less than 15 days ago - Round down to the nearest whole minute. For example, 12:32:34 is rounded down to 12:32:00.</p> </li> <li> <p>Start time between 15 and 63 days ago - Round down to the nearest 5-minute clock interval. For example, 12:32:34 is rounded down to 12:30:00.</p> </li> <li> <p>Start time greater than 63 days ago - Round down to the nearest 1-hour clock interval. For example, 12:32:34 is rounded down to 12:00:00.</p> </li> </ul>
-- @param ExtendedStatistics [ExtendedStatistics] <p>The percentile statistics. Specify values between p0.0 and p100.</p>
-- @param EndTime [Timestamp] <p>The time stamp that determines the last data point to return.</p> <p>The value specified is exclusive; results will include data points up to the specified time stamp. The time stamp must be in ISO 8601 UTC format (for example, 2016-10-10T23:00:00Z).</p>
-- @param Unit [StandardUnit] <p>The unit for a given metric. Metrics may be reported in multiple units. Not supplying a unit results in all units being returned. If the metric only ever reports one unit, specifying a unit has no effect.</p>
-- @param MetricName [MetricName] <p>The name of the metric, with or without spaces.</p>
-- Required parameter: Namespace
-- Required parameter: MetricName
-- Required parameter: StartTime
-- Required parameter: EndTime
-- Required parameter: Period
function M.GetMetricStatisticsInput(Statistics, Dimensions, Namespace, Period, StartTime, ExtendedStatistics, EndTime, Unit, MetricName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetMetricStatisticsInput")
	local t = { 
		["Statistics"] = Statistics,
		["Dimensions"] = Dimensions,
		["Namespace"] = Namespace,
		["Period"] = Period,
		["StartTime"] = StartTime,
		["ExtendedStatistics"] = ExtendedStatistics,
		["EndTime"] = EndTime,
		["Unit"] = Unit,
		["MetricName"] = MetricName,
	}
	M.AssertGetMetricStatisticsInput(t)
	return t
end

local ListMetricsOutput_keys = { "Metrics" = true, "NextToken" = true, nil }

function M.AssertListMetricsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListMetricsOutput to be of type 'table'")
	if struct["Metrics"] then M.AssertMetrics(struct["Metrics"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListMetricsOutput_keys[k], "ListMetricsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListMetricsOutput
--  
-- @param Metrics [Metrics] <p>The metrics.</p>
-- @param NextToken [NextToken] <p>The token that marks the start of the next batch of returned results.</p>
function M.ListMetricsOutput(Metrics, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListMetricsOutput")
	local t = { 
		["Metrics"] = Metrics,
		["NextToken"] = NextToken,
	}
	M.AssertListMetricsOutput(t)
	return t
end

local InvalidParameterCombinationException_keys = { "message" = true, nil }

function M.AssertInvalidParameterCombinationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParameterCombinationException to be of type 'table'")
	if struct["message"] then M.AssertAwsQueryErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidParameterCombinationException_keys[k], "InvalidParameterCombinationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParameterCombinationException
-- <p>Parameters that cannot be used together were used together.</p>
-- @param message [AwsQueryErrorMessage] <p/>
function M.InvalidParameterCombinationException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidParameterCombinationException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidParameterCombinationException(t)
	return t
end

local DescribeAlarmHistoryOutput_keys = { "AlarmHistoryItems" = true, "NextToken" = true, nil }

function M.AssertDescribeAlarmHistoryOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAlarmHistoryOutput to be of type 'table'")
	if struct["AlarmHistoryItems"] then M.AssertAlarmHistoryItems(struct["AlarmHistoryItems"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(DescribeAlarmHistoryOutput_keys[k], "DescribeAlarmHistoryOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAlarmHistoryOutput
--  
-- @param AlarmHistoryItems [AlarmHistoryItems] <p>The alarm histories, in JSON format.</p>
-- @param NextToken [NextToken] <p>The token that marks the start of the next batch of returned results.</p>
function M.DescribeAlarmHistoryOutput(AlarmHistoryItems, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAlarmHistoryOutput")
	local t = { 
		["AlarmHistoryItems"] = AlarmHistoryItems,
		["NextToken"] = NextToken,
	}
	M.AssertDescribeAlarmHistoryOutput(t)
	return t
end

local GetMetricStatisticsOutput_keys = { "Datapoints" = true, "Label" = true, nil }

function M.AssertGetMetricStatisticsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetMetricStatisticsOutput to be of type 'table'")
	if struct["Datapoints"] then M.AssertDatapoints(struct["Datapoints"]) end
	if struct["Label"] then M.AssertMetricLabel(struct["Label"]) end
	for k,_ in pairs(struct) do
		assert(GetMetricStatisticsOutput_keys[k], "GetMetricStatisticsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetMetricStatisticsOutput
--  
-- @param Datapoints [Datapoints] <p>The data points for the specified metric.</p>
-- @param Label [MetricLabel] <p>A label for the specified metric.</p>
function M.GetMetricStatisticsOutput(Datapoints, Label, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetMetricStatisticsOutput")
	local t = { 
		["Datapoints"] = Datapoints,
		["Label"] = Label,
	}
	M.AssertGetMetricStatisticsOutput(t)
	return t
end

local MetricDatum_keys = { "Dimensions" = true, "Timestamp" = true, "Value" = true, "StatisticValues" = true, "Unit" = true, "MetricName" = true, nil }

function M.AssertMetricDatum(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MetricDatum to be of type 'table'")
	assert(struct["MetricName"], "Expected key MetricName to exist in table")
	if struct["Dimensions"] then M.AssertDimensions(struct["Dimensions"]) end
	if struct["Timestamp"] then M.AssertTimestamp(struct["Timestamp"]) end
	if struct["Value"] then M.AssertDatapointValue(struct["Value"]) end
	if struct["StatisticValues"] then M.AssertStatisticSet(struct["StatisticValues"]) end
	if struct["Unit"] then M.AssertStandardUnit(struct["Unit"]) end
	if struct["MetricName"] then M.AssertMetricName(struct["MetricName"]) end
	for k,_ in pairs(struct) do
		assert(MetricDatum_keys[k], "MetricDatum contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MetricDatum
-- <p>Encapsulates the information sent to either create a metric or add new values to be aggregated into an existing metric.</p>
-- @param Dimensions [Dimensions] <p>The dimensions associated with the metric.</p>
-- @param Timestamp [Timestamp] <p>The time the metric data was received, expressed as the number of milliseconds since Jan 1, 1970 00:00:00 UTC.</p>
-- @param Value [DatapointValue] <p>The value for the metric.</p> <p>Although the parameter accepts numbers of type Double, Amazon CloudWatch rejects values that are either too small or too large. Values must be in the range of 8.515920e-109 to 1.174271e+108 (Base 10) or 2e-360 to 2e360 (Base 2). In addition, special values (for example, NaN, +Infinity, -Infinity) are not supported.</p>
-- @param StatisticValues [StatisticSet] <p>The statistical values for the metric.</p>
-- @param Unit [StandardUnit] <p>The unit of the metric.</p>
-- @param MetricName [MetricName] <p>The name of the metric.</p>
-- Required parameter: MetricName
function M.MetricDatum(Dimensions, Timestamp, Value, StatisticValues, Unit, MetricName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MetricDatum")
	local t = { 
		["Dimensions"] = Dimensions,
		["Timestamp"] = Timestamp,
		["Value"] = Value,
		["StatisticValues"] = StatisticValues,
		["Unit"] = Unit,
		["MetricName"] = MetricName,
	}
	M.AssertMetricDatum(t)
	return t
end

local PutMetricAlarmInput_keys = { "EvaluationPeriods" = true, "ExtendedStatistic" = true, "TreatMissingData" = true, "Dimensions" = true, "AlarmActions" = true, "AlarmDescription" = true, "Namespace" = true, "Period" = true, "EvaluateLowSampleCountPercentile" = true, "ComparisonOperator" = true, "AlarmName" = true, "Unit" = true, "Statistic" = true, "Threshold" = true, "InsufficientDataActions" = true, "OKActions" = true, "ActionsEnabled" = true, "MetricName" = true, nil }

function M.AssertPutMetricAlarmInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutMetricAlarmInput to be of type 'table'")
	assert(struct["AlarmName"], "Expected key AlarmName to exist in table")
	assert(struct["MetricName"], "Expected key MetricName to exist in table")
	assert(struct["Namespace"], "Expected key Namespace to exist in table")
	assert(struct["Period"], "Expected key Period to exist in table")
	assert(struct["EvaluationPeriods"], "Expected key EvaluationPeriods to exist in table")
	assert(struct["Threshold"], "Expected key Threshold to exist in table")
	assert(struct["ComparisonOperator"], "Expected key ComparisonOperator to exist in table")
	if struct["EvaluationPeriods"] then M.AssertEvaluationPeriods(struct["EvaluationPeriods"]) end
	if struct["ExtendedStatistic"] then M.AssertExtendedStatistic(struct["ExtendedStatistic"]) end
	if struct["TreatMissingData"] then M.AssertTreatMissingData(struct["TreatMissingData"]) end
	if struct["Dimensions"] then M.AssertDimensions(struct["Dimensions"]) end
	if struct["AlarmActions"] then M.AssertResourceList(struct["AlarmActions"]) end
	if struct["AlarmDescription"] then M.AssertAlarmDescription(struct["AlarmDescription"]) end
	if struct["Namespace"] then M.AssertNamespace(struct["Namespace"]) end
	if struct["Period"] then M.AssertPeriod(struct["Period"]) end
	if struct["EvaluateLowSampleCountPercentile"] then M.AssertEvaluateLowSampleCountPercentile(struct["EvaluateLowSampleCountPercentile"]) end
	if struct["ComparisonOperator"] then M.AssertComparisonOperator(struct["ComparisonOperator"]) end
	if struct["AlarmName"] then M.AssertAlarmName(struct["AlarmName"]) end
	if struct["Unit"] then M.AssertStandardUnit(struct["Unit"]) end
	if struct["Statistic"] then M.AssertStatistic(struct["Statistic"]) end
	if struct["Threshold"] then M.AssertThreshold(struct["Threshold"]) end
	if struct["InsufficientDataActions"] then M.AssertResourceList(struct["InsufficientDataActions"]) end
	if struct["OKActions"] then M.AssertResourceList(struct["OKActions"]) end
	if struct["ActionsEnabled"] then M.AssertActionsEnabled(struct["ActionsEnabled"]) end
	if struct["MetricName"] then M.AssertMetricName(struct["MetricName"]) end
	for k,_ in pairs(struct) do
		assert(PutMetricAlarmInput_keys[k], "PutMetricAlarmInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutMetricAlarmInput
--  
-- @param EvaluationPeriods [EvaluationPeriods] <p>The number of periods over which data is compared to the specified threshold.</p>
-- @param ExtendedStatistic [ExtendedStatistic] <p>The percentile statistic for the metric associated with the alarm. Specify a value between p0.0 and p100.</p>
-- @param TreatMissingData [TreatMissingData] <p> Sets how this alarm is to handle missing data points. If <code>TreatMissingData</code> is omitted, the default behavior of <code>missing</code> is used. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/AlarmThatSendsEmail.html#alarms-and-missing-data">Configuring How CloudWatch Alarms Treats Missing Data</a>.</p> <p>Valid Values: <code>breaching | notBreaching | ignore | missing</code> </p>
-- @param Dimensions [Dimensions] <p>The dimensions for the metric associated with the alarm.</p>
-- @param AlarmActions [ResourceList] <p>The actions to execute when this alarm transitions to the <code>ALARM</code> state from any other state. Each action is specified as an Amazon Resource Name (ARN).</p> <p>Valid Values: arn:aws:automate:<i>region</i>:ec2:stop | arn:aws:automate:<i>region</i>:ec2:terminate | arn:aws:automate:<i>region</i>:ec2:recover</p> <p>Valid Values (for use with IAM roles): arn:aws:swf:us-east-1:{<i>customer-account</i>}:action/actions/AWS_EC2.InstanceId.Stop/1.0 | arn:aws:swf:us-east-1:{<i>customer-account</i>}:action/actions/AWS_EC2.InstanceId.Terminate/1.0 | arn:aws:swf:us-east-1:{<i>customer-account</i>}:action/actions/AWS_EC2.InstanceId.Reboot/1.0</p>
-- @param AlarmDescription [AlarmDescription] <p>The description for the alarm.</p>
-- @param Namespace [Namespace] <p>The namespace for the metric associated with the alarm.</p>
-- @param Period [Period] <p>The period, in seconds, over which the specified statistic is applied.</p>
-- @param EvaluateLowSampleCountPercentile [EvaluateLowSampleCountPercentile] <p> Used only for alarms based on percentiles. If you specify <code>ignore</code>, the alarm state will not change during periods with too few data points to be statistically significant. If you specify <code>evaluate</code> or omit this parameter, the alarm will always be evaluated and possibly change state no matter how many data points are available. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/AlarmThatSendsEmail.html#percentiles-with-low-samples">Percentile-Based CloudWatch Alarms and Low Data Samples</a>.</p> <p>Valid Values: <code>evaluate | ignore</code> </p>
-- @param ComparisonOperator [ComparisonOperator] <p> The arithmetic operation to use when comparing the specified statistic and threshold. The specified statistic value is used as the first operand.</p>
-- @param AlarmName [AlarmName] <p>The name for the alarm. This name must be unique within the AWS account.</p>
-- @param Unit [StandardUnit] <p>The unit of measure for the statistic. For example, the units for the Amazon EC2 NetworkIn metric are Bytes because NetworkIn tracks the number of bytes that an instance receives on all network interfaces. You can also specify a unit when you create a custom metric. Units help provide conceptual meaning to your data. Metric data points that specify a unit of measure, such as Percent, are aggregated separately.</p> <p>If you specify a unit, you must use a unit that is appropriate for the metric. Otherwise, the Amazon CloudWatch alarm can get stuck in the <code>INSUFFICIENT DATA</code> state. </p>
-- @param Statistic [Statistic] <p>The statistic for the metric associated with the alarm, other than percentile. For percentile statistics, use <code>ExtendedStatistic</code>.</p>
-- @param Threshold [Threshold] <p>The value against which the specified statistic is compared.</p>
-- @param InsufficientDataActions [ResourceList] <p>The actions to execute when this alarm transitions to the <code>INSUFFICIENT_DATA</code> state from any other state. Each action is specified as an Amazon Resource Name (ARN).</p> <p>Valid Values: arn:aws:automate:<i>region</i>:ec2:stop | arn:aws:automate:<i>region</i>:ec2:terminate | arn:aws:automate:<i>region</i>:ec2:recover</p> <p>Valid Values (for use with IAM roles): arn:aws:swf:us-east-1:{<i>customer-account</i>}:action/actions/AWS_EC2.InstanceId.Stop/1.0 | arn:aws:swf:us-east-1:{<i>customer-account</i>}:action/actions/AWS_EC2.InstanceId.Terminate/1.0 | arn:aws:swf:us-east-1:{<i>customer-account</i>}:action/actions/AWS_EC2.InstanceId.Reboot/1.0</p>
-- @param OKActions [ResourceList] <p>The actions to execute when this alarm transitions to an <code>OK</code> state from any other state. Each action is specified as an Amazon Resource Name (ARN).</p> <p>Valid Values: arn:aws:automate:<i>region</i>:ec2:stop | arn:aws:automate:<i>region</i>:ec2:terminate | arn:aws:automate:<i>region</i>:ec2:recover</p> <p>Valid Values (for use with IAM roles): arn:aws:swf:us-east-1:{<i>customer-account</i>}:action/actions/AWS_EC2.InstanceId.Stop/1.0 | arn:aws:swf:us-east-1:{<i>customer-account</i>}:action/actions/AWS_EC2.InstanceId.Terminate/1.0 | arn:aws:swf:us-east-1:{<i>customer-account</i>}:action/actions/AWS_EC2.InstanceId.Reboot/1.0</p>
-- @param ActionsEnabled [ActionsEnabled] <p>Indicates whether actions should be executed during any changes to the alarm state.</p>
-- @param MetricName [MetricName] <p>The name for the metric associated with the alarm.</p>
-- Required parameter: AlarmName
-- Required parameter: MetricName
-- Required parameter: Namespace
-- Required parameter: Period
-- Required parameter: EvaluationPeriods
-- Required parameter: Threshold
-- Required parameter: ComparisonOperator
function M.PutMetricAlarmInput(EvaluationPeriods, ExtendedStatistic, TreatMissingData, Dimensions, AlarmActions, AlarmDescription, Namespace, Period, EvaluateLowSampleCountPercentile, ComparisonOperator, AlarmName, Unit, Statistic, Threshold, InsufficientDataActions, OKActions, ActionsEnabled, MetricName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutMetricAlarmInput")
	local t = { 
		["EvaluationPeriods"] = EvaluationPeriods,
		["ExtendedStatistic"] = ExtendedStatistic,
		["TreatMissingData"] = TreatMissingData,
		["Dimensions"] = Dimensions,
		["AlarmActions"] = AlarmActions,
		["AlarmDescription"] = AlarmDescription,
		["Namespace"] = Namespace,
		["Period"] = Period,
		["EvaluateLowSampleCountPercentile"] = EvaluateLowSampleCountPercentile,
		["ComparisonOperator"] = ComparisonOperator,
		["AlarmName"] = AlarmName,
		["Unit"] = Unit,
		["Statistic"] = Statistic,
		["Threshold"] = Threshold,
		["InsufficientDataActions"] = InsufficientDataActions,
		["OKActions"] = OKActions,
		["ActionsEnabled"] = ActionsEnabled,
		["MetricName"] = MetricName,
	}
	M.AssertPutMetricAlarmInput(t)
	return t
end

local DeleteAlarmsInput_keys = { "AlarmNames" = true, nil }

function M.AssertDeleteAlarmsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteAlarmsInput to be of type 'table'")
	assert(struct["AlarmNames"], "Expected key AlarmNames to exist in table")
	if struct["AlarmNames"] then M.AssertAlarmNames(struct["AlarmNames"]) end
	for k,_ in pairs(struct) do
		assert(DeleteAlarmsInput_keys[k], "DeleteAlarmsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteAlarmsInput
--  
-- @param AlarmNames [AlarmNames] <p>The alarms to be deleted.</p>
-- Required parameter: AlarmNames
function M.DeleteAlarmsInput(AlarmNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteAlarmsInput")
	local t = { 
		["AlarmNames"] = AlarmNames,
	}
	M.AssertDeleteAlarmsInput(t)
	return t
end

local StatisticSet_keys = { "SampleCount" = true, "Sum" = true, "Minimum" = true, "Maximum" = true, nil }

function M.AssertStatisticSet(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StatisticSet to be of type 'table'")
	assert(struct["SampleCount"], "Expected key SampleCount to exist in table")
	assert(struct["Sum"], "Expected key Sum to exist in table")
	assert(struct["Minimum"], "Expected key Minimum to exist in table")
	assert(struct["Maximum"], "Expected key Maximum to exist in table")
	if struct["SampleCount"] then M.AssertDatapointValue(struct["SampleCount"]) end
	if struct["Sum"] then M.AssertDatapointValue(struct["Sum"]) end
	if struct["Minimum"] then M.AssertDatapointValue(struct["Minimum"]) end
	if struct["Maximum"] then M.AssertDatapointValue(struct["Maximum"]) end
	for k,_ in pairs(struct) do
		assert(StatisticSet_keys[k], "StatisticSet contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StatisticSet
-- <p>Represents a set of statistics that describes a specific metric. </p>
-- @param SampleCount [DatapointValue] <p>The number of samples used for the statistic set.</p>
-- @param Sum [DatapointValue] <p>The sum of values for the sample set.</p>
-- @param Minimum [DatapointValue] <p>The minimum value of the sample set.</p>
-- @param Maximum [DatapointValue] <p>The maximum value of the sample set.</p>
-- Required parameter: SampleCount
-- Required parameter: Sum
-- Required parameter: Minimum
-- Required parameter: Maximum
function M.StatisticSet(SampleCount, Sum, Minimum, Maximum, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StatisticSet")
	local t = { 
		["SampleCount"] = SampleCount,
		["Sum"] = Sum,
		["Minimum"] = Minimum,
		["Maximum"] = Maximum,
	}
	M.AssertStatisticSet(t)
	return t
end

local DescribeAlarmsForMetricOutput_keys = { "MetricAlarms" = true, nil }

function M.AssertDescribeAlarmsForMetricOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAlarmsForMetricOutput to be of type 'table'")
	if struct["MetricAlarms"] then M.AssertMetricAlarms(struct["MetricAlarms"]) end
	for k,_ in pairs(struct) do
		assert(DescribeAlarmsForMetricOutput_keys[k], "DescribeAlarmsForMetricOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAlarmsForMetricOutput
--  
-- @param MetricAlarms [MetricAlarms] <p>The information for each alarm with the specified metric.</p>
function M.DescribeAlarmsForMetricOutput(MetricAlarms, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAlarmsForMetricOutput")
	local t = { 
		["MetricAlarms"] = MetricAlarms,
	}
	M.AssertDescribeAlarmsForMetricOutput(t)
	return t
end

local InvalidParameterValueException_keys = { "message" = true, nil }

function M.AssertInvalidParameterValueException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParameterValueException to be of type 'table'")
	if struct["message"] then M.AssertAwsQueryErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidParameterValueException_keys[k], "InvalidParameterValueException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParameterValueException
-- <p>The value of an input parameter is bad or out-of-range.</p>
-- @param message [AwsQueryErrorMessage] <p/>
function M.InvalidParameterValueException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidParameterValueException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidParameterValueException(t)
	return t
end

local Datapoint_keys = { "SampleCount" = true, "Timestamp" = true, "Average" = true, "Maximum" = true, "Minimum" = true, "ExtendedStatistics" = true, "Sum" = true, "Unit" = true, nil }

function M.AssertDatapoint(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Datapoint to be of type 'table'")
	if struct["SampleCount"] then M.AssertDatapointValue(struct["SampleCount"]) end
	if struct["Timestamp"] then M.AssertTimestamp(struct["Timestamp"]) end
	if struct["Average"] then M.AssertDatapointValue(struct["Average"]) end
	if struct["Maximum"] then M.AssertDatapointValue(struct["Maximum"]) end
	if struct["Minimum"] then M.AssertDatapointValue(struct["Minimum"]) end
	if struct["ExtendedStatistics"] then M.AssertDatapointValueMap(struct["ExtendedStatistics"]) end
	if struct["Sum"] then M.AssertDatapointValue(struct["Sum"]) end
	if struct["Unit"] then M.AssertStandardUnit(struct["Unit"]) end
	for k,_ in pairs(struct) do
		assert(Datapoint_keys[k], "Datapoint contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Datapoint
-- <p>Encapsulates the statistical data that Amazon CloudWatch computes from metric data.</p>
-- @param SampleCount [DatapointValue] <p>The number of metric values that contributed to the aggregate value of this data point.</p>
-- @param Timestamp [Timestamp] <p>The time stamp used for the data point.</p>
-- @param Average [DatapointValue] <p>The average of the metric values that correspond to the data point.</p>
-- @param Maximum [DatapointValue] <p>The maximum metric value for the data point.</p>
-- @param Minimum [DatapointValue] <p>The minimum metric value for the data point.</p>
-- @param ExtendedStatistics [DatapointValueMap] <p>The percentile statistic for the data point.</p>
-- @param Sum [DatapointValue] <p>The sum of the metric values for the data point.</p>
-- @param Unit [StandardUnit] <p>The standard unit for the data point.</p>
function M.Datapoint(SampleCount, Timestamp, Average, Maximum, Minimum, ExtendedStatistics, Sum, Unit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Datapoint")
	local t = { 
		["SampleCount"] = SampleCount,
		["Timestamp"] = Timestamp,
		["Average"] = Average,
		["Maximum"] = Maximum,
		["Minimum"] = Minimum,
		["ExtendedStatistics"] = ExtendedStatistics,
		["Sum"] = Sum,
		["Unit"] = Unit,
	}
	M.AssertDatapoint(t)
	return t
end

local MissingRequiredParameterException_keys = { "message" = true, nil }

function M.AssertMissingRequiredParameterException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MissingRequiredParameterException to be of type 'table'")
	if struct["message"] then M.AssertAwsQueryErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(MissingRequiredParameterException_keys[k], "MissingRequiredParameterException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MissingRequiredParameterException
-- <p>An input parameter that is required is missing.</p>
-- @param message [AwsQueryErrorMessage] <p/>
function M.MissingRequiredParameterException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MissingRequiredParameterException")
	local t = { 
		["message"] = message,
	}
	M.AssertMissingRequiredParameterException(t)
	return t
end

local DimensionFilter_keys = { "Name" = true, "Value" = true, nil }

function M.AssertDimensionFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DimensionFilter to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then M.AssertDimensionName(struct["Name"]) end
	if struct["Value"] then M.AssertDimensionValue(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(DimensionFilter_keys[k], "DimensionFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DimensionFilter
-- <p>Represents filters for a dimension.</p>
-- @param Name [DimensionName] <p>The dimension name to be matched.</p>
-- @param Value [DimensionValue] <p>The value of the dimension to be matched.</p>
-- Required parameter: Name
function M.DimensionFilter(Name, Value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DimensionFilter")
	local t = { 
		["Name"] = Name,
		["Value"] = Value,
	}
	M.AssertDimensionFilter(t)
	return t
end

local EnableAlarmActionsInput_keys = { "AlarmNames" = true, nil }

function M.AssertEnableAlarmActionsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnableAlarmActionsInput to be of type 'table'")
	assert(struct["AlarmNames"], "Expected key AlarmNames to exist in table")
	if struct["AlarmNames"] then M.AssertAlarmNames(struct["AlarmNames"]) end
	for k,_ in pairs(struct) do
		assert(EnableAlarmActionsInput_keys[k], "EnableAlarmActionsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnableAlarmActionsInput
--  
-- @param AlarmNames [AlarmNames] <p>The names of the alarms.</p>
-- Required parameter: AlarmNames
function M.EnableAlarmActionsInput(AlarmNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EnableAlarmActionsInput")
	local t = { 
		["AlarmNames"] = AlarmNames,
	}
	M.AssertEnableAlarmActionsInput(t)
	return t
end

local DescribeAlarmsInput_keys = { "StateValue" = true, "ActionPrefix" = true, "MaxRecords" = true, "AlarmNames" = true, "AlarmNamePrefix" = true, "NextToken" = true, nil }

function M.AssertDescribeAlarmsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAlarmsInput to be of type 'table'")
	if struct["StateValue"] then M.AssertStateValue(struct["StateValue"]) end
	if struct["ActionPrefix"] then M.AssertActionPrefix(struct["ActionPrefix"]) end
	if struct["MaxRecords"] then M.AssertMaxRecords(struct["MaxRecords"]) end
	if struct["AlarmNames"] then M.AssertAlarmNames(struct["AlarmNames"]) end
	if struct["AlarmNamePrefix"] then M.AssertAlarmNamePrefix(struct["AlarmNamePrefix"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(DescribeAlarmsInput_keys[k], "DescribeAlarmsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAlarmsInput
--  
-- @param StateValue [StateValue] <p>The state value to be used in matching alarms.</p>
-- @param ActionPrefix [ActionPrefix] <p>The action name prefix.</p>
-- @param MaxRecords [MaxRecords] <p>The maximum number of alarm descriptions to retrieve.</p>
-- @param AlarmNames [AlarmNames] <p>The names of the alarms.</p>
-- @param AlarmNamePrefix [AlarmNamePrefix] <p>The alarm name prefix. You cannot specify <code>AlarmNames</code> if this parameter is specified.</p>
-- @param NextToken [NextToken] <p>The token returned by a previous call to indicate that there is more data available.</p>
function M.DescribeAlarmsInput(StateValue, ActionPrefix, MaxRecords, AlarmNames, AlarmNamePrefix, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAlarmsInput")
	local t = { 
		["StateValue"] = StateValue,
		["ActionPrefix"] = ActionPrefix,
		["MaxRecords"] = MaxRecords,
		["AlarmNames"] = AlarmNames,
		["AlarmNamePrefix"] = AlarmNamePrefix,
		["NextToken"] = NextToken,
	}
	M.AssertDescribeAlarmsInput(t)
	return t
end

local Dimension_keys = { "Name" = true, "Value" = true, nil }

function M.AssertDimension(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Dimension to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Value"], "Expected key Value to exist in table")
	if struct["Name"] then M.AssertDimensionName(struct["Name"]) end
	if struct["Value"] then M.AssertDimensionValue(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(Dimension_keys[k], "Dimension contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Dimension
-- <p>Expands the identity of a metric.</p>
-- @param Name [DimensionName] <p>The name of the dimension.</p>
-- @param Value [DimensionValue] <p>The value representing the dimension measurement.</p>
-- Required parameter: Name
-- Required parameter: Value
function M.Dimension(Name, Value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Dimension")
	local t = { 
		["Name"] = Name,
		["Value"] = Value,
	}
	M.AssertDimension(t)
	return t
end

local DescribeAlarmHistoryInput_keys = { "StartDate" = true, "EndDate" = true, "MaxRecords" = true, "AlarmName" = true, "HistoryItemType" = true, "NextToken" = true, nil }

function M.AssertDescribeAlarmHistoryInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAlarmHistoryInput to be of type 'table'")
	if struct["StartDate"] then M.AssertTimestamp(struct["StartDate"]) end
	if struct["EndDate"] then M.AssertTimestamp(struct["EndDate"]) end
	if struct["MaxRecords"] then M.AssertMaxRecords(struct["MaxRecords"]) end
	if struct["AlarmName"] then M.AssertAlarmName(struct["AlarmName"]) end
	if struct["HistoryItemType"] then M.AssertHistoryItemType(struct["HistoryItemType"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(DescribeAlarmHistoryInput_keys[k], "DescribeAlarmHistoryInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAlarmHistoryInput
--  
-- @param StartDate [Timestamp] <p>The starting date to retrieve alarm history.</p>
-- @param EndDate [Timestamp] <p>The ending date to retrieve alarm history.</p>
-- @param MaxRecords [MaxRecords] <p>The maximum number of alarm history records to retrieve.</p>
-- @param AlarmName [AlarmName] <p>The name of the alarm.</p>
-- @param HistoryItemType [HistoryItemType] <p>The type of alarm histories to retrieve.</p>
-- @param NextToken [NextToken] <p>The token returned by a previous call to indicate that there is more data available.</p>
function M.DescribeAlarmHistoryInput(StartDate, EndDate, MaxRecords, AlarmName, HistoryItemType, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAlarmHistoryInput")
	local t = { 
		["StartDate"] = StartDate,
		["EndDate"] = EndDate,
		["MaxRecords"] = MaxRecords,
		["AlarmName"] = AlarmName,
		["HistoryItemType"] = HistoryItemType,
		["NextToken"] = NextToken,
	}
	M.AssertDescribeAlarmHistoryInput(t)
	return t
end

local ListMetricsInput_keys = { "NextToken" = true, "Namespace" = true, "Dimensions" = true, "MetricName" = true, nil }

function M.AssertListMetricsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListMetricsInput to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["Namespace"] then M.AssertNamespace(struct["Namespace"]) end
	if struct["Dimensions"] then M.AssertDimensionFilters(struct["Dimensions"]) end
	if struct["MetricName"] then M.AssertMetricName(struct["MetricName"]) end
	for k,_ in pairs(struct) do
		assert(ListMetricsInput_keys[k], "ListMetricsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListMetricsInput
--  
-- @param NextToken [NextToken] <p>The token returned by a previous call to indicate that there is more data available.</p>
-- @param Namespace [Namespace] <p>The namespace to filter against.</p>
-- @param Dimensions [DimensionFilters] <p>The dimensions to filter against.</p>
-- @param MetricName [MetricName] <p>The name of the metric to filter against.</p>
function M.ListMetricsInput(NextToken, Namespace, Dimensions, MetricName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListMetricsInput")
	local t = { 
		["NextToken"] = NextToken,
		["Namespace"] = Namespace,
		["Dimensions"] = Dimensions,
		["MetricName"] = MetricName,
	}
	M.AssertListMetricsInput(t)
	return t
end

local InvalidFormatFault_keys = { "message" = true, nil }

function M.AssertInvalidFormatFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidFormatFault to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidFormatFault_keys[k], "InvalidFormatFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidFormatFault
-- <p>Data was not syntactically valid JSON.</p>
-- @param message [ErrorMessage] <p/>
function M.InvalidFormatFault(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidFormatFault")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidFormatFault(t)
	return t
end

local PutMetricDataInput_keys = { "Namespace" = true, "MetricData" = true, nil }

function M.AssertPutMetricDataInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutMetricDataInput to be of type 'table'")
	assert(struct["Namespace"], "Expected key Namespace to exist in table")
	assert(struct["MetricData"], "Expected key MetricData to exist in table")
	if struct["Namespace"] then M.AssertNamespace(struct["Namespace"]) end
	if struct["MetricData"] then M.AssertMetricData(struct["MetricData"]) end
	for k,_ in pairs(struct) do
		assert(PutMetricDataInput_keys[k], "PutMetricDataInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutMetricDataInput
--  
-- @param Namespace [Namespace] <p>The namespace for the metric data.</p> <p>You cannot specify a namespace that begins with "AWS/". Namespaces that begin with "AWS/" are reserved for use by Amazon Web Services products.</p>
-- @param MetricData [MetricData] <p>The data for the metric.</p>
-- Required parameter: Namespace
-- Required parameter: MetricData
function M.PutMetricDataInput(Namespace, MetricData, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutMetricDataInput")
	local t = { 
		["Namespace"] = Namespace,
		["MetricData"] = MetricData,
	}
	M.AssertPutMetricDataInput(t)
	return t
end

local Metric_keys = { "Namespace" = true, "Dimensions" = true, "MetricName" = true, nil }

function M.AssertMetric(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Metric to be of type 'table'")
	if struct["Namespace"] then M.AssertNamespace(struct["Namespace"]) end
	if struct["Dimensions"] then M.AssertDimensions(struct["Dimensions"]) end
	if struct["MetricName"] then M.AssertMetricName(struct["MetricName"]) end
	for k,_ in pairs(struct) do
		assert(Metric_keys[k], "Metric contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Metric
-- <p>Represents a specific metric.</p>
-- @param Namespace [Namespace] <p>The namespace of the metric.</p>
-- @param Dimensions [Dimensions] <p>The dimensions for the metric.</p>
-- @param MetricName [MetricName] <p>The name of the metric.</p>
function M.Metric(Namespace, Dimensions, MetricName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Metric")
	local t = { 
		["Namespace"] = Namespace,
		["Dimensions"] = Dimensions,
		["MetricName"] = MetricName,
	}
	M.AssertMetric(t)
	return t
end

local SetAlarmStateInput_keys = { "StateReason" = true, "StateReasonData" = true, "AlarmName" = true, "StateValue" = true, nil }

function M.AssertSetAlarmStateInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetAlarmStateInput to be of type 'table'")
	assert(struct["AlarmName"], "Expected key AlarmName to exist in table")
	assert(struct["StateValue"], "Expected key StateValue to exist in table")
	assert(struct["StateReason"], "Expected key StateReason to exist in table")
	if struct["StateReason"] then M.AssertStateReason(struct["StateReason"]) end
	if struct["StateReasonData"] then M.AssertStateReasonData(struct["StateReasonData"]) end
	if struct["AlarmName"] then M.AssertAlarmName(struct["AlarmName"]) end
	if struct["StateValue"] then M.AssertStateValue(struct["StateValue"]) end
	for k,_ in pairs(struct) do
		assert(SetAlarmStateInput_keys[k], "SetAlarmStateInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetAlarmStateInput
--  
-- @param StateReason [StateReason] <p>The reason that this alarm is set to this specific state, in text format.</p>
-- @param StateReasonData [StateReasonData] <p>The reason that this alarm is set to this specific state, in JSON format.</p>
-- @param AlarmName [AlarmName] <p>The name for the alarm. This name must be unique within the AWS account. The maximum length is 255 characters.</p>
-- @param StateValue [StateValue] <p>The value of the state.</p>
-- Required parameter: AlarmName
-- Required parameter: StateValue
-- Required parameter: StateReason
function M.SetAlarmStateInput(StateReason, StateReasonData, AlarmName, StateValue, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetAlarmStateInput")
	local t = { 
		["StateReason"] = StateReason,
		["StateReasonData"] = StateReasonData,
		["AlarmName"] = AlarmName,
		["StateValue"] = StateValue,
	}
	M.AssertSetAlarmStateInput(t)
	return t
end

local DescribeAlarmsForMetricInput_keys = { "ExtendedStatistic" = true, "Dimensions" = true, "Namespace" = true, "Period" = true, "Statistic" = true, "Unit" = true, "MetricName" = true, nil }

function M.AssertDescribeAlarmsForMetricInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAlarmsForMetricInput to be of type 'table'")
	assert(struct["MetricName"], "Expected key MetricName to exist in table")
	assert(struct["Namespace"], "Expected key Namespace to exist in table")
	if struct["ExtendedStatistic"] then M.AssertExtendedStatistic(struct["ExtendedStatistic"]) end
	if struct["Dimensions"] then M.AssertDimensions(struct["Dimensions"]) end
	if struct["Namespace"] then M.AssertNamespace(struct["Namespace"]) end
	if struct["Period"] then M.AssertPeriod(struct["Period"]) end
	if struct["Statistic"] then M.AssertStatistic(struct["Statistic"]) end
	if struct["Unit"] then M.AssertStandardUnit(struct["Unit"]) end
	if struct["MetricName"] then M.AssertMetricName(struct["MetricName"]) end
	for k,_ in pairs(struct) do
		assert(DescribeAlarmsForMetricInput_keys[k], "DescribeAlarmsForMetricInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAlarmsForMetricInput
--  
-- @param ExtendedStatistic [ExtendedStatistic] <p>The percentile statistic for the metric. Specify a value between p0.0 and p100.</p>
-- @param Dimensions [Dimensions] <p>The dimensions associated with the metric. If the metric has any associated dimensions, you must specify them in order for the call to succeed.</p>
-- @param Namespace [Namespace] <p>The namespace of the metric.</p>
-- @param Period [Period] <p>The period, in seconds, over which the statistic is applied.</p>
-- @param Statistic [Statistic] <p>The statistic for the metric, other than percentiles. For percentile statistics, use <code>ExtendedStatistics</code>.</p>
-- @param Unit [StandardUnit] <p>The unit for the metric.</p>
-- @param MetricName [MetricName] <p>The name of the metric.</p>
-- Required parameter: MetricName
-- Required parameter: Namespace
function M.DescribeAlarmsForMetricInput(ExtendedStatistic, Dimensions, Namespace, Period, Statistic, Unit, MetricName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAlarmsForMetricInput")
	local t = { 
		["ExtendedStatistic"] = ExtendedStatistic,
		["Dimensions"] = Dimensions,
		["Namespace"] = Namespace,
		["Period"] = Period,
		["Statistic"] = Statistic,
		["Unit"] = Unit,
		["MetricName"] = MetricName,
	}
	M.AssertDescribeAlarmsForMetricInput(t)
	return t
end

local ResourceNotFound_keys = { "message" = true, nil }

function M.AssertResourceNotFound(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceNotFound to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ResourceNotFound_keys[k], "ResourceNotFound contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceNotFound
-- <p>The named resource does not exist.</p>
-- @param message [ErrorMessage] <p/>
function M.ResourceNotFound(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceNotFound")
	local t = { 
		["message"] = message,
	}
	M.AssertResourceNotFound(t)
	return t
end

function M.AssertErrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorMessage to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ErrorMessage(str)
	M.AssertErrorMessage(str)
	return str
end

function M.AssertActionPrefix(str)
	assert(str)
	assert(type(str) == "string", "Expected ActionPrefix to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ActionPrefix(str)
	M.AssertActionPrefix(str)
	return str
end

function M.AssertFaultDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected FaultDescription to be of type 'string'")
end

--  
function M.FaultDescription(str)
	M.AssertFaultDescription(str)
	return str
end

function M.AssertNamespace(str)
	assert(str)
	assert(type(str) == "string", "Expected Namespace to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[^:].*"), "Expected string to match pattern '[^:].*'")
end

--  
function M.Namespace(str)
	M.AssertNamespace(str)
	return str
end

function M.AssertEvaluateLowSampleCountPercentile(str)
	assert(str)
	assert(type(str) == "string", "Expected EvaluateLowSampleCountPercentile to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.EvaluateLowSampleCountPercentile(str)
	M.AssertEvaluateLowSampleCountPercentile(str)
	return str
end

function M.AssertHistoryData(str)
	assert(str)
	assert(type(str) == "string", "Expected HistoryData to be of type 'string'")
	assert(#str <= 4095, "Expected string to be max 4095 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.HistoryData(str)
	M.AssertHistoryData(str)
	return str
end

function M.AssertMetricLabel(str)
	assert(str)
	assert(type(str) == "string", "Expected MetricLabel to be of type 'string'")
end

--  
function M.MetricLabel(str)
	M.AssertMetricLabel(str)
	return str
end

function M.AssertMetricName(str)
	assert(str)
	assert(type(str) == "string", "Expected MetricName to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.MetricName(str)
	M.AssertMetricName(str)
	return str
end

function M.AssertDimensionName(str)
	assert(str)
	assert(type(str) == "string", "Expected DimensionName to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DimensionName(str)
	M.AssertDimensionName(str)
	return str
end

function M.AssertNextToken(str)
	assert(str)
	assert(type(str) == "string", "Expected NextToken to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
end

--  
function M.NextToken(str)
	M.AssertNextToken(str)
	return str
end

function M.AssertStandardUnit(str)
	assert(str)
	assert(type(str) == "string", "Expected StandardUnit to be of type 'string'")
end

--  
function M.StandardUnit(str)
	M.AssertStandardUnit(str)
	return str
end

function M.AssertStateReason(str)
	assert(str)
	assert(type(str) == "string", "Expected StateReason to be of type 'string'")
	assert(#str <= 1023, "Expected string to be max 1023 characters")
end

--  
function M.StateReason(str)
	M.AssertStateReason(str)
	return str
end

function M.AssertAlarmNamePrefix(str)
	assert(str)
	assert(type(str) == "string", "Expected AlarmNamePrefix to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AlarmNamePrefix(str)
	M.AssertAlarmNamePrefix(str)
	return str
end

function M.AssertAwsQueryErrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected AwsQueryErrorMessage to be of type 'string'")
end

--  
function M.AwsQueryErrorMessage(str)
	M.AssertAwsQueryErrorMessage(str)
	return str
end

function M.AssertAlarmArn(str)
	assert(str)
	assert(type(str) == "string", "Expected AlarmArn to be of type 'string'")
	assert(#str <= 1600, "Expected string to be max 1600 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AlarmArn(str)
	M.AssertAlarmArn(str)
	return str
end

function M.AssertStateReasonData(str)
	assert(str)
	assert(type(str) == "string", "Expected StateReasonData to be of type 'string'")
	assert(#str <= 4000, "Expected string to be max 4000 characters")
end

--  
function M.StateReasonData(str)
	M.AssertStateReasonData(str)
	return str
end

function M.AssertStatistic(str)
	assert(str)
	assert(type(str) == "string", "Expected Statistic to be of type 'string'")
end

--  
function M.Statistic(str)
	M.AssertStatistic(str)
	return str
end

function M.AssertResourceName(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceName to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ResourceName(str)
	M.AssertResourceName(str)
	return str
end

function M.AssertDimensionValue(str)
	assert(str)
	assert(type(str) == "string", "Expected DimensionValue to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DimensionValue(str)
	M.AssertDimensionValue(str)
	return str
end

function M.AssertExtendedStatistic(str)
	assert(str)
	assert(type(str) == "string", "Expected ExtendedStatistic to be of type 'string'")
	assert(str:match("p(%d{1,2}(%.%d{0,2})?|100)"), "Expected string to match pattern 'p(%d{1,2}(%.%d{0,2})?|100)'")
end

--  
function M.ExtendedStatistic(str)
	M.AssertExtendedStatistic(str)
	return str
end

function M.AssertStateValue(str)
	assert(str)
	assert(type(str) == "string", "Expected StateValue to be of type 'string'")
end

--  
function M.StateValue(str)
	M.AssertStateValue(str)
	return str
end

function M.AssertTreatMissingData(str)
	assert(str)
	assert(type(str) == "string", "Expected TreatMissingData to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TreatMissingData(str)
	M.AssertTreatMissingData(str)
	return str
end

function M.AssertHistoryItemType(str)
	assert(str)
	assert(type(str) == "string", "Expected HistoryItemType to be of type 'string'")
end

--  
function M.HistoryItemType(str)
	M.AssertHistoryItemType(str)
	return str
end

function M.AssertAlarmDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected AlarmDescription to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
end

--  
function M.AlarmDescription(str)
	M.AssertAlarmDescription(str)
	return str
end

function M.AssertHistorySummary(str)
	assert(str)
	assert(type(str) == "string", "Expected HistorySummary to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.HistorySummary(str)
	M.AssertHistorySummary(str)
	return str
end

function M.AssertComparisonOperator(str)
	assert(str)
	assert(type(str) == "string", "Expected ComparisonOperator to be of type 'string'")
end

--  
function M.ComparisonOperator(str)
	M.AssertComparisonOperator(str)
	return str
end

function M.AssertAlarmName(str)
	assert(str)
	assert(type(str) == "string", "Expected AlarmName to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AlarmName(str)
	M.AssertAlarmName(str)
	return str
end

function M.AssertDatapointValue(double)
	assert(double)
	assert(type(double) == "number", "Expected DatapointValue to be of type 'number'")
end

function M.DatapointValue(double)
	M.AssertDatapointValue(double)
	return double
end

function M.AssertThreshold(double)
	assert(double)
	assert(type(double) == "number", "Expected Threshold to be of type 'number'")
end

function M.Threshold(double)
	M.AssertThreshold(double)
	return double
end

function M.AssertPeriod(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Period to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 60, "Expected integer to be min 60")
end

function M.Period(integer)
	M.AssertPeriod(integer)
	return integer
end

function M.AssertMaxRecords(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxRecords to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaxRecords(integer)
	M.AssertMaxRecords(integer)
	return integer
end

function M.AssertEvaluationPeriods(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected EvaluationPeriods to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.EvaluationPeriods(integer)
	M.AssertEvaluationPeriods(integer)
	return integer
end

function M.AssertActionsEnabled(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected ActionsEnabled to be of type 'boolean'")
end

function M.ActionsEnabled(boolean)
	M.AssertActionsEnabled(boolean)
	return boolean
end

function M.AssertDatapointValueMap(map)
	assert(map)
	assert(type(map) == "table", "Expected DatapointValueMap to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertExtendedStatistic(k)
		M.AssertDatapointValue(v)
	end
end

function M.DatapointValueMap(map)
	M.AssertDatapointValueMap(map)
	return map
end

function M.AssertTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Timestamp to be of type 'string'")
end

function M.Timestamp(timestamp)
	M.AssertTimestamp(timestamp)
	return timestamp
end

function M.AssertAlarmHistoryItems(list)
	assert(list)
	assert(type(list) == "table", "Expected AlarmHistoryItems to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAlarmHistoryItem(v)
	end
end

--  
-- List of AlarmHistoryItem objects
function M.AlarmHistoryItems(list)
	M.AssertAlarmHistoryItems(list)
	return list
end

function M.AssertDimensions(list)
	assert(list)
	assert(type(list) == "table", "Expected Dimensions to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	for _,v in ipairs(list) do
		M.AssertDimension(v)
	end
end

--  
-- List of Dimension objects
function M.Dimensions(list)
	M.AssertDimensions(list)
	return list
end

function M.AssertStatistics(list)
	assert(list)
	assert(type(list) == "table", "Expected Statistics to be of type ''table")
	assert(#list <= 5, "Expected list to be contain 5 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertStatistic(v)
	end
end

--  
-- List of Statistic objects
function M.Statistics(list)
	M.AssertStatistics(list)
	return list
end

function M.AssertMetricData(list)
	assert(list)
	assert(type(list) == "table", "Expected MetricData to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertMetricDatum(v)
	end
end

--  
-- List of MetricDatum objects
function M.MetricData(list)
	M.AssertMetricData(list)
	return list
end

function M.AssertAlarmNames(list)
	assert(list)
	assert(type(list) == "table", "Expected AlarmNames to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	for _,v in ipairs(list) do
		M.AssertAlarmName(v)
	end
end

--  
-- List of AlarmName objects
function M.AlarmNames(list)
	M.AssertAlarmNames(list)
	return list
end

function M.AssertExtendedStatistics(list)
	assert(list)
	assert(type(list) == "table", "Expected ExtendedStatistics to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertExtendedStatistic(v)
	end
end

--  
-- List of ExtendedStatistic objects
function M.ExtendedStatistics(list)
	M.AssertExtendedStatistics(list)
	return list
end

function M.AssertMetricAlarms(list)
	assert(list)
	assert(type(list) == "table", "Expected MetricAlarms to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertMetricAlarm(v)
	end
end

--  
-- List of MetricAlarm objects
function M.MetricAlarms(list)
	M.AssertMetricAlarms(list)
	return list
end

function M.AssertMetrics(list)
	assert(list)
	assert(type(list) == "table", "Expected Metrics to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertMetric(v)
	end
end

--  
-- List of Metric objects
function M.Metrics(list)
	M.AssertMetrics(list)
	return list
end

function M.AssertDimensionFilters(list)
	assert(list)
	assert(type(list) == "table", "Expected DimensionFilters to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	for _,v in ipairs(list) do
		M.AssertDimensionFilter(v)
	end
end

--  
-- List of DimensionFilter objects
function M.DimensionFilters(list)
	M.AssertDimensionFilters(list)
	return list
end

function M.AssertDatapoints(list)
	assert(list)
	assert(type(list) == "table", "Expected Datapoints to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDatapoint(v)
	end
end

--  
-- List of Datapoint objects
function M.Datapoints(list)
	M.AssertDatapoints(list)
	return list
end

function M.AssertResourceList(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceList to be of type ''table")
	assert(#list <= 5, "Expected list to be contain 5 elements")
	for _,v in ipairs(list) do
		M.AssertResourceName(v)
	end
end

--  
-- List of ResourceName objects
function M.ResourceList(list)
	M.AssertResourceList(list)
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
	uri = scheme_mapper.from_string(config.scheme) .. "://"
	uri = uri .. config.endpoint_override or endpoint_for_region(config.region, config.use_dualstack)
end


--
-- OPERATIONS
--
--- ListMetrics
-- @param ListMetricsInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListMetricsAsync(ListMetricsInput, cb)
	assert(ListMetricsInput, "You must provide a ListMetricsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListMetrics",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListMetricsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- EnableAlarmActions
-- @param EnableAlarmActionsInput
-- @param cb Callback function accepting two args: response, error_message
function M.EnableAlarmActionsAsync(EnableAlarmActionsInput, cb)
	assert(EnableAlarmActionsInput, "You must provide a EnableAlarmActionsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".EnableAlarmActions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", EnableAlarmActionsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteAlarms
-- @param DeleteAlarmsInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteAlarmsAsync(DeleteAlarmsInput, cb)
	assert(DeleteAlarmsInput, "You must provide a DeleteAlarmsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteAlarms",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteAlarmsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutMetricAlarm
-- @param PutMetricAlarmInput
-- @param cb Callback function accepting two args: response, error_message
function M.PutMetricAlarmAsync(PutMetricAlarmInput, cb)
	assert(PutMetricAlarmInput, "You must provide a PutMetricAlarmInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".PutMetricAlarm",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", PutMetricAlarmInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetMetricStatistics
-- @param GetMetricStatisticsInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetMetricStatisticsAsync(GetMetricStatisticsInput, cb)
	assert(GetMetricStatisticsInput, "You must provide a GetMetricStatisticsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetMetricStatistics",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetMetricStatisticsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DisableAlarmActions
-- @param DisableAlarmActionsInput
-- @param cb Callback function accepting two args: response, error_message
function M.DisableAlarmActionsAsync(DisableAlarmActionsInput, cb)
	assert(DisableAlarmActionsInput, "You must provide a DisableAlarmActionsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DisableAlarmActions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DisableAlarmActionsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SetAlarmState
-- @param SetAlarmStateInput
-- @param cb Callback function accepting two args: response, error_message
function M.SetAlarmStateAsync(SetAlarmStateInput, cb)
	assert(SetAlarmStateInput, "You must provide a SetAlarmStateInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".SetAlarmState",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SetAlarmStateInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutMetricData
-- @param PutMetricDataInput
-- @param cb Callback function accepting two args: response, error_message
function M.PutMetricDataAsync(PutMetricDataInput, cb)
	assert(PutMetricDataInput, "You must provide a PutMetricDataInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".PutMetricData",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", PutMetricDataInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeAlarms
-- @param DescribeAlarmsInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeAlarmsAsync(DescribeAlarmsInput, cb)
	assert(DescribeAlarmsInput, "You must provide a DescribeAlarmsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeAlarms",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeAlarmsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeAlarmsForMetric
-- @param DescribeAlarmsForMetricInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeAlarmsForMetricAsync(DescribeAlarmsForMetricInput, cb)
	assert(DescribeAlarmsForMetricInput, "You must provide a DescribeAlarmsForMetricInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeAlarmsForMetric",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeAlarmsForMetricInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeAlarmHistory
-- @param DescribeAlarmHistoryInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeAlarmHistoryAsync(DescribeAlarmHistoryInput, cb)
	assert(DescribeAlarmHistoryInput, "You must provide a DescribeAlarmHistoryInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeAlarmHistory",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeAlarmHistoryInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
