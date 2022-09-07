---
type: object
title: CiProductResponse
properties:
  data:
    "$ref": "#/components/schemas/CiProduct"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/App"
      - "$ref": "#/components/schemas/BundleId"
      - "$ref": "#/components/schemas/ScmRepository"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
