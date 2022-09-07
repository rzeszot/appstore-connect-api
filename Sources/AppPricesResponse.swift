---
type: object
title: AppPricesResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/AppPrice"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/App"
      - "$ref": "#/components/schemas/AppPriceTier"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
