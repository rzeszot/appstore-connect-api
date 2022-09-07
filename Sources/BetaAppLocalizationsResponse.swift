---
type: object
title: BetaAppLocalizationsResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/BetaAppLocalization"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/App"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
