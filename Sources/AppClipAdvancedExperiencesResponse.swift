---
type: object
title: AppClipAdvancedExperiencesResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/AppClipAdvancedExperience"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/AppClip"
      - "$ref": "#/components/schemas/AppClipAdvancedExperienceImage"
      - "$ref": "#/components/schemas/AppClipAdvancedExperienceLocalization"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
