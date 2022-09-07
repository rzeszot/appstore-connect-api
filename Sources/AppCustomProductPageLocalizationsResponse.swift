---
type: object
title: AppCustomProductPageLocalizationsResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/AppCustomProductPageLocalization"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/AppCustomProductPageVersion"
      - "$ref": "#/components/schemas/AppScreenshotSet"
      - "$ref": "#/components/schemas/AppPreviewSet"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
