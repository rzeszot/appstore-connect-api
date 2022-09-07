---
type: object
title: AppPriceTierResponse
properties:
  data:
    "$ref": "#/components/schemas/AppPriceTier"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/AppPricePoint"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
