---
type: object
title: AppClipDefaultExperienceLocalizationResponse
properties:
  data:
    "$ref": "#/components/schemas/AppClipDefaultExperienceLocalization"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/AppClipDefaultExperience"
      - "$ref": "#/components/schemas/AppClipHeaderImage"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
