---
type: object
title: AppStoreVersionLocalizationsResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/AppStoreVersionLocalization"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/AppStoreVersion"
      - "$ref": "#/components/schemas/AppScreenshotSet"
      - "$ref": "#/components/schemas/AppPreviewSet"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
