---
type: object
title: BuildBetaDetailResponse
properties:
  data:
    "$ref": "#/components/schemas/BuildBetaDetail"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/Build"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
