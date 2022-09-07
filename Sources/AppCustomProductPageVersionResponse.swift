---
type: object
title: AppCustomProductPageVersionResponse
properties:
  data:
    "$ref": "#/components/schemas/AppCustomProductPageVersion"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/AppCustomProductPage"
      - "$ref": "#/components/schemas/AppCustomProductPageLocalization"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
