---
type: object
title: AppScreenshotResponse
properties:
  data:
    "$ref": "#/components/schemas/AppScreenshot"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/AppScreenshotSet"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
