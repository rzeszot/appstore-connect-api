---
type: object
title: SubscriptionLocalizationResponse
properties:
  data:
    "$ref": "#/components/schemas/SubscriptionLocalization"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/Subscription"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
