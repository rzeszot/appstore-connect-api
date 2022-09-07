import Foundation

enum SubscriptionCustomerEligibility: String, Codable {
    case new = "NEW"
    case existing = "EXISTING"
    case expired = "EXPIRED"
}
