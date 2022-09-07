---
type: object
title: BundleIdCapabilitiesResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/BundleIdCapability"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
