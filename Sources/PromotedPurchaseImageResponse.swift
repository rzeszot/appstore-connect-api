---
type: object
title: PromotedPurchaseImageResponse
properties:
  data:
    "$ref": "#/components/schemas/PromotedPurchaseImage"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/PromotedPurchase"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
