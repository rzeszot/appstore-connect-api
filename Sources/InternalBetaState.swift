import Foundation

enum InternalBetaState: String, Codable {
    case processing = "PROCESSING"
    case processing_exception = "PROCESSING_EXCEPTION"
    case missing_export_compliance = "MISSING_EXPORT_COMPLIANCE"
    case ready_for_beta_testing = "READY_FOR_BETA_TESTING"
    case in_beta_testing = "IN_BETA_TESTING"
    case expired = "EXPIRED"
    case in_export_compliance_review = "IN_EXPORT_COMPLIANCE_REVIEW"
}
