//
// V1ResourceMetrics.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
	import AnyCodable
#endif

@available(*, deprecated, renamed: "OTLP.V1ResourceMetrics")
typealias V1ResourceMetrics = OTLP.V1ResourceMetrics

extension OTLP {
	/** A collection of ScopeMetrics from a Resource. */
	struct V1ResourceMetrics: Codable, Hashable {
		var resource: V1Resource?
		/** A list of metrics that originate from a resource. */
		var scopeMetrics: [V1ScopeMetrics]?
		/** The Schema URL, if known. This is the identifier of the Schema that the resource data is recorded in. To learn more about Schema URL see https://opentelemetry.io/docs/specs/otel/schemas/#schema-url This schema_url applies to the data in the \"resource\" field. It does not apply to the data in the \"scope_metrics\" field which have their own schema_url field. */
		var schemaUrl: String?

		init(resource: V1Resource? = nil, scopeMetrics: [V1ScopeMetrics]? = nil, schemaUrl: String? = nil) {
			self.resource = resource
			self.scopeMetrics = scopeMetrics
			self.schemaUrl = schemaUrl
		}

		enum CodingKeys: String, CodingKey, CaseIterable {
			case resource
			case scopeMetrics
			case schemaUrl
		}

		// Encodable protocol methods

		func encode(to encoder: Encoder) throws {
			var container = encoder.container(keyedBy: CodingKeys.self)
			try container.encodeIfPresent(resource, forKey: .resource)
			try container.encodeIfPresent(scopeMetrics, forKey: .scopeMetrics)
			try container.encodeIfPresent(schemaUrl, forKey: .schemaUrl)
		}
	}
}
