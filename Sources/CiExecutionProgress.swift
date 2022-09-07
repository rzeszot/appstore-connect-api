import Foundation

enum CiExecutionProgress: String, Codable {
    case pending = "PENDING"
    case running = "RUNNING"
    case complete = "COMPLETE"
}
