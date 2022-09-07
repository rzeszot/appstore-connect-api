---
type: object
title: InAppPurchasePricesResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/InAppPurchasePrice"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/InAppPurchasePricePoint"
      - "$ref": "#/components/schemas/Territory"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
