---
type: object
title: AppPricePointResponse
properties:
  data:
    "$ref": "#/components/schemas/AppPricePoint"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/AppPriceTier"
      - "$ref": "#/components/schemas/Territory"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
deprecated: true
