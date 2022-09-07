import Foundation

enum AppStoreVersionState: String, Codable {
    case accepted = "ACCEPTED"
    case developer_removed_from_sale = "DEVELOPER_REMOVED_FROM_SALE"
    case developer_rejected = "DEVELOPER_REJECTED"
    case in_review = "IN_REVIEW"
    case invalid_binary = "INVALID_BINARY"
    case metadata_rejected = "METADATA_REJECTED"
    case pending_apple_release = "PENDING_APPLE_RELEASE"
    case pending_contract = "PENDING_CONTRACT"
    case pending_developer_release = "PENDING_DEVELOPER_RELEASE"
    case prepare_for_submission = "PREPARE_FOR_SUBMISSION"
    case preorder_ready_for_sale = "PREORDER_READY_FOR_SALE"
    case processing_for_app_store = "PROCESSING_FOR_APP_STORE"
    case ready_for_review = "READY_FOR_REVIEW"
    case ready_for_sale = "READY_FOR_SALE"
    case rejected = "REJECTED"
    case removed_from_sale = "REMOVED_FROM_SALE"
    case waiting_for_export_compliance = "WAITING_FOR_EXPORT_COMPLIANCE"
    case waiting_for_review = "WAITING_FOR_REVIEW"
    case replaced_with_new_version = "REPLACED_WITH_NEW_VERSION"
}
