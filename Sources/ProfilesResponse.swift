---
type: object
title: ProfilesResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/Profile"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/BundleId"
      - "$ref": "#/components/schemas/Device"
      - "$ref": "#/components/schemas/Certificate"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
