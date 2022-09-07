---
type: object
title: AppEventScreenshotsResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/AppEventScreenshot"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/AppEventLocalization"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
