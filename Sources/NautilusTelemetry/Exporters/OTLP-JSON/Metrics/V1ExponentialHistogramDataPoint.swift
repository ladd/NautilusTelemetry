//
// V1ExponentialHistogramDataPoint.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
	import AnyCodable
#endif

@available(*, deprecated, renamed: "OTLP.V1ExponentialHistogramDataPoint")
typealias V1ExponentialHistogramDataPoint = OTLP.V1ExponentialHistogramDataPoint

extension OTLP {
	/** ExponentialHistogramDataPoint is a single data point in a timeseries that describes the time-varying values of a ExponentialHistogram of double values. A ExponentialHistogram contains summary statistics for a population of values, it may optionally contain the distribution of those values across a set of buckets. */
	struct V1ExponentialHistogramDataPoint: Codable, Hashable {
		/** The set of key/value pairs that uniquely identify the timeseries from where this point belongs. The list may be empty (may contain 0 elements). Attribute keys MUST be unique (it is not allowed to have more than one attribute with the same key). */
		var attributes: [V1KeyValue]?
		/** StartTimeUnixNano is optional but strongly encouraged, see the the detailed comments above Metric.  Value is UNIX Epoch time in nanoseconds since 00:00:00 UTC on 1 January 1970. */
		var startTimeUnixNano: String?
		/** TimeUnixNano is required, see the detailed comments above Metric.  Value is UNIX Epoch time in nanoseconds since 00:00:00 UTC on 1 January 1970. */
		var timeUnixNano: String?
		/** count is the number of values in the population. Must be non-negative. This value must be equal to the sum of the \"bucket_counts\" values in the positive and negative Buckets plus the \"zero_count\" field. */
		var count: String?
		/** sum of the values in the population. If count is zero then this field must be zero.  Note: Sum should only be filled out when measuring non-negative discrete events, and is assumed to be monotonic over the values of these events. Negative events *can* be recorded, but sum should not be filled out when doing so.  This is specifically to enforce compatibility w/ OpenMetrics, see: https://github.com/OpenObservability/OpenMetrics/blob/main/specification/OpenMetrics.md#histogram */
		var sum: Double?
		/** base = (2^(2^-scale))  The histogram bucket identified by `index`, a signed integer, contains values that are greater than (base^index) and less than or equal to (base^(index+1)).  The positive and negative ranges of the histogram are expressed separately.  Negative values are mapped by their absolute value into the negative range using the same scale as the positive range.  scale is not restricted by the protocol, as the permissible values depend on the range of the data. */
		var scale: Int?
		/** zero_count is the count of values that are either exactly zero or within the region considered zero by the instrumentation at the tolerated degree of precision.  This bucket stores values that cannot be expressed using the standard exponential formula as well as values that have been rounded to zero.  Implementations MAY consider the zero bucket to have probability mass equal to (zero_count / count). */
		var zeroCount: String?
		var positive: ExponentialHistogramDataPointBuckets?
		var negative: ExponentialHistogramDataPointBuckets?
		/** Flags that apply to this specific data point.  See DataPointFlags for the available flags and their meaning. */
		var flags: Int64?
		var exemplars: [V1Exemplar]?
		/** min is the minimum value over (start_time, end_time]. */
		var min: Double?
		/** max is the maximum value over (start_time, end_time]. */
		var max: Double?
		/** ZeroThreshold may be optionally set to convey the width of the zero region. Where the zero region is defined as the closed interval [-ZeroThreshold, ZeroThreshold]. When ZeroThreshold is 0, zero count bucket stores values that cannot be expressed using the standard exponential formula as well as values that have been rounded to zero. */
		var zeroThreshold: Double?

		init(attributes: [V1KeyValue]? = nil, startTimeUnixNano: String? = nil, timeUnixNano: String? = nil, count: String? = nil, sum: Double? = nil, scale: Int? = nil, zeroCount: String? = nil, positive: ExponentialHistogramDataPointBuckets? = nil, negative: ExponentialHistogramDataPointBuckets? = nil, flags: Int64? = nil, exemplars: [V1Exemplar]? = nil, min: Double? = nil, max: Double? = nil, zeroThreshold: Double? = nil) {
			self.attributes = attributes
			self.startTimeUnixNano = startTimeUnixNano
			self.timeUnixNano = timeUnixNano
			self.count = count
			self.sum = sum
			self.scale = scale
			self.zeroCount = zeroCount
			self.positive = positive
			self.negative = negative
			self.flags = flags
			self.exemplars = exemplars
			self.min = min
			self.max = max
			self.zeroThreshold = zeroThreshold
		}

		enum CodingKeys: String, CodingKey, CaseIterable {
			case attributes
			case startTimeUnixNano
			case timeUnixNano
			case count
			case sum
			case scale
			case zeroCount
			case positive
			case negative
			case flags
			case exemplars
			case min
			case max
			case zeroThreshold
		}

		// Encodable protocol methods

		func encode(to encoder: Encoder) throws {
			var container = encoder.container(keyedBy: CodingKeys.self)
			try container.encodeIfPresent(attributes, forKey: .attributes)
			try container.encodeIfPresent(startTimeUnixNano, forKey: .startTimeUnixNano)
			try container.encodeIfPresent(timeUnixNano, forKey: .timeUnixNano)
			try container.encodeIfPresent(count, forKey: .count)
			try container.encodeIfPresent(sum, forKey: .sum)
			try container.encodeIfPresent(scale, forKey: .scale)
			try container.encodeIfPresent(zeroCount, forKey: .zeroCount)
			try container.encodeIfPresent(positive, forKey: .positive)
			try container.encodeIfPresent(negative, forKey: .negative)
			try container.encodeIfPresent(flags, forKey: .flags)
			try container.encodeIfPresent(exemplars, forKey: .exemplars)
			try container.encodeIfPresent(min, forKey: .min)
			try container.encodeIfPresent(max, forKey: .max)
			try container.encodeIfPresent(zeroThreshold, forKey: .zeroThreshold)
		}
	}
}
