---
type: object
title: AppEventVideoClipsResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/AppEventVideoClip"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/AppEventLocalization"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
