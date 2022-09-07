---
type: object
title: CertificatesResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/Certificate"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
