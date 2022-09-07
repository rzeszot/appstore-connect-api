---
type: object
title: AppClipResponse
properties:
  data:
    "$ref": "#/components/schemas/AppClip"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/App"
      - "$ref": "#/components/schemas/AppClipDefaultExperience"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
