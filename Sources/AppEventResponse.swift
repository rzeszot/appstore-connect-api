---
type: object
title: AppEventResponse
properties:
  data:
    "$ref": "#/components/schemas/AppEvent"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/AppEventLocalization"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
