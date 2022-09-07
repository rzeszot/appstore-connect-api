---
type: object
title: AppClipsResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/AppClip"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/App"
      - "$ref": "#/components/schemas/AppClipDefaultExperience"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
