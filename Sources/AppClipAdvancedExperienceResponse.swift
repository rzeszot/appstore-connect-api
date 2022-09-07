---
type: object
title: AppClipAdvancedExperienceResponse
properties:
  data:
    "$ref": "#/components/schemas/AppClipAdvancedExperience"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/AppClip"
      - "$ref": "#/components/schemas/AppClipAdvancedExperienceImage"
      - "$ref": "#/components/schemas/AppClipAdvancedExperienceLocalization"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
