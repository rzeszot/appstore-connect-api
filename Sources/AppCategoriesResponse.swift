---
type: object
title: AppCategoriesResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/AppCategory"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/AppCategory"
      - "$ref": "#/components/schemas/AppCategory"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
