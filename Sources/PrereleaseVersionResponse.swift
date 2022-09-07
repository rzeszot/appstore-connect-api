---
type: object
title: PrereleaseVersionResponse
properties:
  data:
    "$ref": "#/components/schemas/PrereleaseVersion"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/Build"
      - "$ref": "#/components/schemas/App"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
