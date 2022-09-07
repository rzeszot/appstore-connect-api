---
type: object
title: BetaBuildLocalizationResponse
properties:
  data:
    "$ref": "#/components/schemas/BetaBuildLocalization"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/Build"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
