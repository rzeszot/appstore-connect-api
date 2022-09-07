---
type: object
title: AppCategoryResponse
properties:
  data:
    "$ref": "#/components/schemas/AppCategory"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/AppCategory"
      - "$ref": "#/components/schemas/AppCategory"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
