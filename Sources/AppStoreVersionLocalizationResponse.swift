---
type: object
title: AppStoreVersionLocalizationResponse
properties:
  data:
    "$ref": "#/components/schemas/AppStoreVersionLocalization"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/AppStoreVersion"
      - "$ref": "#/components/schemas/AppScreenshotSet"
      - "$ref": "#/components/schemas/AppPreviewSet"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
