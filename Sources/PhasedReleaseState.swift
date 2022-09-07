import Foundation

enum PhasedReleaseState: String, Codable {
    case inactive = "INACTIVE"
    case active = "ACTIVE"
    case paused = "PAUSED"
    case complete = "COMPLETE"
}
