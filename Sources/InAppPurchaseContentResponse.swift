---
type: object
title: InAppPurchaseContentResponse
properties:
  data:
    "$ref": "#/components/schemas/InAppPurchaseContent"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/InAppPurchaseV2"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
