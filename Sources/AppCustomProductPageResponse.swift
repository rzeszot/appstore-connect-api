---
type: object
title: AppCustomProductPageResponse
properties:
  data:
    "$ref": "#/components/schemas/AppCustomProductPage"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/App"
      - "$ref": "#/components/schemas/AppCustomProductPageVersion"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
