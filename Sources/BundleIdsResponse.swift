---
type: object
title: BundleIdsResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/BundleId"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/Profile"
      - "$ref": "#/components/schemas/BundleIdCapability"
      - "$ref": "#/components/schemas/App"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
