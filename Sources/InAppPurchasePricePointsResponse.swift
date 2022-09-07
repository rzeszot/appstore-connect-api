---
type: object
title: InAppPurchasePricePointsResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/InAppPurchasePricePoint"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/Territory"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
