---
type: object
title: ScmGitReferenceResponse
properties:
  data:
    "$ref": "#/components/schemas/ScmGitReference"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/ScmRepository"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
