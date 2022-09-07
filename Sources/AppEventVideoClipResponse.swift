---
type: object
title: AppEventVideoClipResponse
properties:
  data:
    "$ref": "#/components/schemas/AppEventVideoClip"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/AppEventLocalization"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
