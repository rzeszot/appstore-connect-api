---
type: object
title: CiXcodeVersionResponse
properties:
  data:
    "$ref": "#/components/schemas/CiXcodeVersion"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/CiMacOsVersion"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
