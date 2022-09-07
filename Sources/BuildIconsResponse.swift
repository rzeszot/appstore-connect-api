---
type: object
title: BuildIconsResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/BuildIcon"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
