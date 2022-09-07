import Foundation

enum CiActionType: String, Codable {
    case build = "BUILD"
    case analyze = "ANALYZE"
    case test = "TEST"
    case archive = "ARCHIVE"
}
