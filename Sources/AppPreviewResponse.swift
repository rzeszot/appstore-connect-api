---
type: object
title: AppPreviewResponse
properties:
  data:
    "$ref": "#/components/schemas/AppPreview"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/AppPreviewSet"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
