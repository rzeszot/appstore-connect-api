---
type: object
title: BetaBuildLocalizationsResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/BetaBuildLocalization"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/Build"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
