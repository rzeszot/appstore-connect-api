---
type: object
title: SubscriptionGroupLocalizationResponse
properties:
  data:
    "$ref": "#/components/schemas/SubscriptionGroupLocalization"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/SubscriptionGroup"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
