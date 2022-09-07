---
type: object
title: DevicesResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/Device"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
