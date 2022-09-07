---
type: object
title: AppInfoLocalizationResponse
properties:
  data:
    "$ref": "#/components/schemas/AppInfoLocalization"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/AppInfo"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
