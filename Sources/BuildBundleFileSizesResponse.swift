---
type: object
title: BuildBundleFileSizesResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/BuildBundleFileSize"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
