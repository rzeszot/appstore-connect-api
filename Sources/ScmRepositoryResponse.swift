---
type: object
title: ScmRepositoryResponse
properties:
  data:
    "$ref": "#/components/schemas/ScmRepository"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/ScmProvider"
      - "$ref": "#/components/schemas/ScmGitReference"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
