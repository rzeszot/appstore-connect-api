---
type: object
title: GameCenterEnabledVersionsResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/GameCenterEnabledVersion"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/GameCenterEnabledVersion"
      - "$ref": "#/components/schemas/App"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
