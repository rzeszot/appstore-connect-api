---
type: object
title: DiagnosticSignaturesResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/DiagnosticSignature"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
