---
type: object
title: AppCustomProductPagesResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/AppCustomProductPage"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/App"
      - "$ref": "#/components/schemas/AppCustomProductPageVersion"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
