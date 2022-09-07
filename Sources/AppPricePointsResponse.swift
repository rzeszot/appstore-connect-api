---
type: object
title: AppPricePointsResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/AppPricePoint"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/AppPriceTier"
      - "$ref": "#/components/schemas/Territory"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
deprecated: true
