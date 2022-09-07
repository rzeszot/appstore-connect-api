---
type: object
title: ScmRepositoriesResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/ScmRepository"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/ScmProvider"
      - "$ref": "#/components/schemas/ScmGitReference"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
