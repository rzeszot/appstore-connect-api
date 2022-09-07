---
type: object
title: AppPriceResponse
properties:
  data:
    "$ref": "#/components/schemas/AppPrice"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/App"
      - "$ref": "#/components/schemas/AppPriceTier"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
