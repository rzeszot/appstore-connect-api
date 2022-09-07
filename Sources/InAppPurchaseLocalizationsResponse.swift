---
type: object
title: InAppPurchaseLocalizationsResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/InAppPurchaseLocalization"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/InAppPurchaseV2"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
