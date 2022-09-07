import Foundation

enum CiCompletionStatus: String, Codable {
    case succeeded = "SUCCEEDED"
    case failed = "FAILED"
    case errored = "ERRORED"
    case canceled = "CANCELED"
    case skipped = "SKIPPED"
}
