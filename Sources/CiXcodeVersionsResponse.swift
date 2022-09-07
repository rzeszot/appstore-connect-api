---
type: object
title: CiXcodeVersionsResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/CiXcodeVersion"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/CiMacOsVersion"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
