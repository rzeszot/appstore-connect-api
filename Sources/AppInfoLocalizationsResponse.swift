---
type: object
title: AppInfoLocalizationsResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/AppInfoLocalization"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/AppInfo"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
