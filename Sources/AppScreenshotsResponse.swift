---
type: object
title: AppScreenshotsResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/AppScreenshot"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/AppScreenshotSet"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
