import Foundation

enum CiTestStatus: String, Codable {
    case success = "SUCCESS"
    case failure = "FAILURE"
    case mixed = "MIXED"
    case skipped = "SKIPPED"
    case expected_failure = "EXPECTED_FAILURE"
}
