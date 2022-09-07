---
type: object
title: AppClipHeaderImageResponse
properties:
  data:
    "$ref": "#/components/schemas/AppClipHeaderImage"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/AppClipDefaultExperienceLocalization"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
