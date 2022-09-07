---
type: object
title: AppResponse
properties:
  data:
    "$ref": "#/components/schemas/App"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/CiProduct"
      - "$ref": "#/components/schemas/BetaGroup"
      - "$ref": "#/components/schemas/AppStoreVersion"
      - "$ref": "#/components/schemas/PrereleaseVersion"
      - "$ref": "#/components/schemas/BetaAppLocalization"
      - "$ref": "#/components/schemas/Build"
      - "$ref": "#/components/schemas/BetaLicenseAgreement"
      - "$ref": "#/components/schemas/BetaAppReviewDetail"
      - "$ref": "#/components/schemas/AppInfo"
      - "$ref": "#/components/schemas/AppClip"
      - "$ref": "#/components/schemas/EndUserLicenseAgreement"
      - "$ref": "#/components/schemas/AppPreOrder"
      - "$ref": "#/components/schemas/AppPrice"
      - "$ref": "#/components/schemas/Territory"
      - "$ref": "#/components/schemas/InAppPurchase"
      - "$ref": "#/components/schemas/SubscriptionGroup"
      - "$ref": "#/components/schemas/GameCenterEnabledVersion"
      - "$ref": "#/components/schemas/AppCustomProductPage"
      - "$ref": "#/components/schemas/InAppPurchaseV2"
      - "$ref": "#/components/schemas/PromotedPurchase"
      - "$ref": "#/components/schemas/AppEvent"
      - "$ref": "#/components/schemas/ReviewSubmission"
      - "$ref": "#/components/schemas/SubscriptionGracePeriod"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
