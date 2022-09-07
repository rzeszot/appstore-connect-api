---
type: object
title: CiMacOsVersionsResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/CiMacOsVersion"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/CiXcodeVersion"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
