---
type: object
title: AppPreOrderResponse
properties:
  data:
    "$ref": "#/components/schemas/AppPreOrder"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/App"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
