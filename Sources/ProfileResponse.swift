---
type: object
title: ProfileResponse
properties:
  data:
    "$ref": "#/components/schemas/Profile"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/BundleId"
      - "$ref": "#/components/schemas/Device"
      - "$ref": "#/components/schemas/Certificate"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
