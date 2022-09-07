---
type: object
title: CiIssuesResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/CiIssue"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
