import Foundation

enum BetaReviewState: String, Codable {
    case waiting_for_review = "WAITING_FOR_REVIEW"
    case in_review = "IN_REVIEW"
    case rejected = "REJECTED"
    case approved = "APPROVED"
}
