---
type: object
title: AppCustomProductPageVersionsResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/AppCustomProductPageVersion"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/AppCustomProductPage"
      - "$ref": "#/components/schemas/AppCustomProductPageLocalization"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
