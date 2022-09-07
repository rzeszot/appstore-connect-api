---
type: object
title: AppCustomProductPageLocalizationResponse
properties:
  data:
    "$ref": "#/components/schemas/AppCustomProductPageLocalization"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/AppCustomProductPageVersion"
      - "$ref": "#/components/schemas/AppScreenshotSet"
      - "$ref": "#/components/schemas/AppPreviewSet"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
