---
type: object
title: CiMacOsVersionResponse
properties:
  data:
    "$ref": "#/components/schemas/CiMacOsVersion"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/CiXcodeVersion"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
