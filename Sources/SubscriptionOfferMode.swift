import Foundation

enum SubscriptionOfferMode: String, Codable {
    case pay_as_you_go = "PAY_AS_YOU_GO"
    case pay_up_front = "PAY_UP_FRONT"
    case free_trial = "FREE_TRIAL"
}
