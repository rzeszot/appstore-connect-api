---
type: object
title: BetaTesterResponse
properties:
  data:
    "$ref": "#/components/schemas/BetaTester"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/App"
      - "$ref": "#/components/schemas/BetaGroup"
      - "$ref": "#/components/schemas/Build"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
