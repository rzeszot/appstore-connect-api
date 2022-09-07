---
type: object
title: AppInfosResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/AppInfo"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/App"
      - "$ref": "#/components/schemas/AgeRatingDeclaration"
      - "$ref": "#/components/schemas/AppInfoLocalization"
      - "$ref": "#/components/schemas/AppCategory"
      - "$ref": "#/components/schemas/AppCategory"
      - "$ref": "#/components/schemas/AppCategory"
      - "$ref": "#/components/schemas/AppCategory"
      - "$ref": "#/components/schemas/AppCategory"
      - "$ref": "#/components/schemas/AppCategory"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
