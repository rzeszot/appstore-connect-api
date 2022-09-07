---
type: object
title: CiBuildActionsResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/CiBuildAction"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/CiBuildRun"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
