---
type: object
title: AppEventScreenshotResponse
properties:
  data:
    "$ref": "#/components/schemas/AppEventScreenshot"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/AppEventLocalization"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
