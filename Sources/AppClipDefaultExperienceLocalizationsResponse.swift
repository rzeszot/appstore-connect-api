---
type: object
title: AppClipDefaultExperienceLocalizationsResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/AppClipDefaultExperienceLocalization"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/AppClipDefaultExperience"
      - "$ref": "#/components/schemas/AppClipHeaderImage"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
