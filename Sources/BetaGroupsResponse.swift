---
type: object
title: BetaGroupsResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/BetaGroup"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/App"
      - "$ref": "#/components/schemas/Build"
      - "$ref": "#/components/schemas/BetaTester"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
