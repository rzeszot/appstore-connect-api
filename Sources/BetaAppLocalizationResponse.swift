---
type: object
title: BetaAppLocalizationResponse
properties:
  data:
    "$ref": "#/components/schemas/BetaAppLocalization"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/App"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
