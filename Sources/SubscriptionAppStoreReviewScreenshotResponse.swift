---
type: object
title: SubscriptionAppStoreReviewScreenshotResponse
properties:
  data:
    "$ref": "#/components/schemas/SubscriptionAppStoreReviewScreenshot"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/Subscription"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
