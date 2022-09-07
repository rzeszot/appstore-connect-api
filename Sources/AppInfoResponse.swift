---
type: object
title: AppInfoResponse
properties:
  data:
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
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
