---
type: object
title: BetaGroupResponse
properties:
  data:
    "$ref": "#/components/schemas/BetaGroup"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/App"
      - "$ref": "#/components/schemas/Build"
      - "$ref": "#/components/schemas/BetaTester"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
