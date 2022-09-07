---
type: object
title: ScmGitReferencesResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/ScmGitReference"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/ScmRepository"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
