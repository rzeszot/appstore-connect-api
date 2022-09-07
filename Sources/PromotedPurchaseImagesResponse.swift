---
type: object
title: PromotedPurchaseImagesResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/PromotedPurchaseImage"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/PromotedPurchase"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
