---
type: object
title: CiTestResultsResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/CiTestResult"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
