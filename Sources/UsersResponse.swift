---
type: object
title: UsersResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/User"
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
