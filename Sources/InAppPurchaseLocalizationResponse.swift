---
type: object
title: InAppPurchaseLocalizationResponse
properties:
  data:
    "$ref": "#/components/schemas/InAppPurchaseLocalization"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/InAppPurchaseV2"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
