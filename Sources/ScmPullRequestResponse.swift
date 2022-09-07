---
type: object
title: ScmPullRequestResponse
properties:
  data:
    "$ref": "#/components/schemas/ScmPullRequest"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/ScmRepository"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
