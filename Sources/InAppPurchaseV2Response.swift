---
type: object
title: InAppPurchaseV2Response
properties:
  data:
    "$ref": "#/components/schemas/InAppPurchaseV2"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/InAppPurchaseLocalization"
      - "$ref": "#/components/schemas/InAppPurchasePricePoint"
      - "$ref": "#/components/schemas/InAppPurchaseContent"
      - "$ref": "#/components/schemas/InAppPurchaseAppStoreReviewScreenshot"
      - "$ref": "#/components/schemas/PromotedPurchase"
      - "$ref": "#/components/schemas/InAppPurchasePriceSchedule"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
