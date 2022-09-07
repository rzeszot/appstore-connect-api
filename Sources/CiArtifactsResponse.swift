---
type: object
title: CiArtifactsResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/CiArtifact"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
