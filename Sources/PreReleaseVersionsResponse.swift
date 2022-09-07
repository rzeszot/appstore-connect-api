---
type: object
title: PreReleaseVersionsResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/PrereleaseVersion"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/Build"
      - "$ref": "#/components/schemas/App"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
