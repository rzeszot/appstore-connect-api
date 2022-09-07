import Foundation

enum InAppPurchaseState: String, Codable {
    case missing_metadata = "MISSING_METADATA"
    case waiting_for_upload = "WAITING_FOR_UPLOAD"
    case processing_content = "PROCESSING_CONTENT"
    case ready_to_submit = "READY_TO_SUBMIT"
    case waiting_for_review = "WAITING_FOR_REVIEW"
    case in_review = "IN_REVIEW"
    case developer_action_needed = "DEVELOPER_ACTION_NEEDED"
    case pending_binary_approval = "PENDING_BINARY_APPROVAL"
    case approved = "APPROVED"
    case developer_removed_from_sale = "DEVELOPER_REMOVED_FROM_SALE"
    case removed_from_sale = "REMOVED_FROM_SALE"
    case rejected = "REJECTED"
}
