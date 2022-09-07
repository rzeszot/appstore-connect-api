---
type: object
title: PromotedPurchaseResponse
properties:
  data:
    "$ref": "#/components/schemas/PromotedPurchase"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/InAppPurchaseV2"
      - "$ref": "#/components/schemas/Subscription"
      - "$ref": "#/components/schemas/PromotedPurchaseImage"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
