---
type: object
title: InAppPurchaseAppStoreReviewScreenshotResponse
properties:
  data:
    "$ref": "#/components/schemas/InAppPurchaseAppStoreReviewScreenshot"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/InAppPurchaseV2"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
