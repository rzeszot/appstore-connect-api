import Foundation

enum ExternalBetaState: String, Codable {
    case processing = "PROCESSING"
    case processing_exception = "PROCESSING_EXCEPTION"
    case missing_export_compliance = "MISSING_EXPORT_COMPLIANCE"
    case ready_for_beta_testing = "READY_FOR_BETA_TESTING"
    case in_beta_testing = "IN_BETA_TESTING"
    case expired = "EXPIRED"
    case ready_for_beta_submission = "READY_FOR_BETA_SUBMISSION"
    case in_export_compliance_review = "IN_EXPORT_COMPLIANCE_REVIEW"
    case waiting_for_beta_review = "WAITING_FOR_BETA_REVIEW"
    case in_beta_review = "IN_BETA_REVIEW"
    case beta_rejected = "BETA_REJECTED"
    case beta_approved = "BETA_APPROVED"
}
