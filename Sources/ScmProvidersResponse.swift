---
type: object
title: ScmProvidersResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/ScmProvider"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
