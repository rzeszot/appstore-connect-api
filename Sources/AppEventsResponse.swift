---
type: object
title: AppEventsResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/AppEvent"
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
