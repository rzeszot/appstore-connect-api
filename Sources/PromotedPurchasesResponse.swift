---
type: object
title: PromotedPurchasesResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/PromotedPurchase"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/InAppPurchaseV2"
      - "$ref": "#/components/schemas/Subscription"
      - "$ref": "#/components/schemas/PromotedPurchaseImage"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
