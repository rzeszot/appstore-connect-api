---
type: object
title: CiBuildRunsResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/CiBuildRun"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/Build"
      - "$ref": "#/components/schemas/CiWorkflow"
      - "$ref": "#/components/schemas/CiProduct"
      - "$ref": "#/components/schemas/ScmGitReference"
      - "$ref": "#/components/schemas/ScmGitReference"
      - "$ref": "#/components/schemas/ScmPullRequest"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
