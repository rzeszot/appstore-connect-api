---
type: object
title: AppEventLocalizationsResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/AppEventLocalization"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/AppEvent"
      - "$ref": "#/components/schemas/AppEventScreenshot"
      - "$ref": "#/components/schemas/AppEventVideoClip"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
