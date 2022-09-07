import Foundation

enum AppEncryptionDeclarationState: String, Codable {
    case in_review = "IN_REVIEW"
    case approved = "APPROVED"
    case rejected = "REJECTED"
    case invalid = "INVALID"
    case expired = "EXPIRED"
}
