---
type: object
title: CiBuildActionResponse
properties:
  data:
    "$ref": "#/components/schemas/CiBuildAction"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/CiBuildRun"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
