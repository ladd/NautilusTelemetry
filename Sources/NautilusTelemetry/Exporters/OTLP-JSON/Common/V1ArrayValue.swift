//
// V1ArrayValue.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
	import AnyCodable
#endif

@available(*, deprecated, renamed: "OTLP.V1ArrayValue")
typealias V1ArrayValue = OTLP.V1ArrayValue

extension OTLP {
	/** ArrayValue is a list of AnyValue messages. We need ArrayValue as a message since oneof in AnyValue does not allow repeated fields. */
	struct V1ArrayValue: Codable, Hashable {
		/** Array of values. The array may be empty (contain 0 elements). */
		var values: [V1AnyValue]?

		init(values: [V1AnyValue]? = nil) {
			self.values = values
		}

		enum CodingKeys: String, CodingKey, CaseIterable {
			case values
		}

		// Encodable protocol methods

		func encode(to encoder: Encoder) throws {
			var container = encoder.container(keyedBy: CodingKeys.self)
			try container.encodeIfPresent(values, forKey: .values)
		}
	}
}
