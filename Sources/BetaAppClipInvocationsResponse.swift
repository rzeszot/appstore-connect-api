---
type: object
title: BetaAppClipInvocationsResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/BetaAppClipInvocation"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/BetaAppClipInvocationLocalization"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
