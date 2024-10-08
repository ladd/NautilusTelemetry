//
// V1ExportLogsServiceResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
	import AnyCodable
#endif

@available(*, deprecated, renamed: "OTLP.V1ExportLogsServiceResponse")
typealias V1ExportLogsServiceResponse = OTLP.V1ExportLogsServiceResponse

extension OTLP {
	struct V1ExportLogsServiceResponse: Codable, Hashable {
		var partialSuccess: V1ExportLogsPartialSuccess?

		init(partialSuccess: V1ExportLogsPartialSuccess? = nil) {
			self.partialSuccess = partialSuccess
		}

		enum CodingKeys: String, CodingKey, CaseIterable {
			case partialSuccess
		}

		// Encodable protocol methods

		func encode(to encoder: Encoder) throws {
			var container = encoder.container(keyedBy: CodingKeys.self)
			try container.encodeIfPresent(partialSuccess, forKey: .partialSuccess)
		}
	}
}
