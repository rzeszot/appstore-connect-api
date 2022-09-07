---
type: object
title: AppEventLocalizationResponse
properties:
  data:
    "$ref": "#/components/schemas/AppEventLocalization"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/AppEvent"
      - "$ref": "#/components/schemas/AppEventScreenshot"
      - "$ref": "#/components/schemas/AppEventVideoClip"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
