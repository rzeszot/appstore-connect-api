---
type: object
title: InAppPurchaseResponse
properties:
  data:
    "$ref": "#/components/schemas/InAppPurchase"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/App"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
