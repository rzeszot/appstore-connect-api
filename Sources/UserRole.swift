import Foundation

enum UserRole: String, Codable {
    case admin = "ADMIN"
    case finance = "FINANCE"
    case account_holder = "ACCOUNT_HOLDER"
    case sales = "SALES"
    case marketing = "MARKETING"
    case app_manager = "APP_MANAGER"
    case developer = "DEVELOPER"
    case access_to_reports = "ACCESS_TO_REPORTS"
    case customer_support = "CUSTOMER_SUPPORT"
    case image_manager = "IMAGE_MANAGER"
    case create_apps = "CREATE_APPS"
    case cloud_managed_developer_id = "CLOUD_MANAGED_DEVELOPER_ID"
    case cloud_managed_app_distribution = "CLOUD_MANAGED_APP_DISTRIBUTION"
}
