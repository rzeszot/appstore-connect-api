---
type: object
title: CiProductsResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/CiProduct"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/App"
      - "$ref": "#/components/schemas/BundleId"
      - "$ref": "#/components/schemas/ScmRepository"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
