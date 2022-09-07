---
type: object
title: AppPriceTiersResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/AppPriceTier"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/AppPricePoint"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
