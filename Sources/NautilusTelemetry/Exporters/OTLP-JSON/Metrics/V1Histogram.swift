//
// V1Histogram.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
	import AnyCodable
#endif

@available(*, deprecated, renamed: "OTLP.V1Histogram")
typealias V1Histogram = OTLP.V1Histogram

extension OTLP {
	/** Histogram represents the type of a metric that is calculated by aggregating as a Histogram of all reported measurements over a time interval. */
	struct V1Histogram: Codable, Hashable {
		var dataPoints: [V1HistogramDataPoint]?
		var aggregationTemporality: V1AggregationTemporality?

		init(dataPoints: [V1HistogramDataPoint]? = nil, aggregationTemporality: V1AggregationTemporality? = nil) {
			self.dataPoints = dataPoints
			self.aggregationTemporality = aggregationTemporality
		}

		enum CodingKeys: String, CodingKey, CaseIterable {
			case dataPoints
			case aggregationTemporality
		}

		// Encodable protocol methods

		func encode(to encoder: Encoder) throws {
			var container = encoder.container(keyedBy: CodingKeys.self)
			try container.encodeIfPresent(dataPoints, forKey: .dataPoints)
			try container.encodeIfPresent(aggregationTemporality, forKey: .aggregationTemporality)
		}
	}
}
