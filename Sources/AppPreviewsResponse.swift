---
type: object
title: AppPreviewsResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/AppPreview"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/AppPreviewSet"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
