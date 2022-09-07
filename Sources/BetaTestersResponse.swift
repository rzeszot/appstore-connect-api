---
type: object
title: BetaTestersResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/BetaTester"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/App"
      - "$ref": "#/components/schemas/BetaGroup"
      - "$ref": "#/components/schemas/Build"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
