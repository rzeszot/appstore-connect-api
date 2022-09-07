import Foundation

enum CertificateType: String, Codable {
    case ios_development = "IOS_DEVELOPMENT"
    case ios_distribution = "IOS_DISTRIBUTION"
    case mac_app_distribution = "MAC_APP_DISTRIBUTION"
    case mac_installer_distribution = "MAC_INSTALLER_DISTRIBUTION"
    case mac_app_development = "MAC_APP_DEVELOPMENT"
    case developer_id_kext = "DEVELOPER_ID_KEXT"
    case developer_id_application = "DEVELOPER_ID_APPLICATION"
    case development = "DEVELOPMENT"
    case distribution = "DISTRIBUTION"
    case pass_type_id = "PASS_TYPE_ID"
    case pass_type_id_with_nfc = "PASS_TYPE_ID_WITH_NFC"
}
