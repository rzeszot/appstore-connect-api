import Foundation

enum InAppPurchaseType: String, Codable {
    case consumable = "CONSUMABLE"
    case non_consumable = "NON_CONSUMABLE"
    case non_renewing_subscription = "NON_RENEWING_SUBSCRIPTION"
}
