---
type: object
title: BundleIdResponse
properties:
  data:
    "$ref": "#/components/schemas/BundleId"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/Profile"
      - "$ref": "#/components/schemas/BundleIdCapability"
      - "$ref": "#/components/schemas/App"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
