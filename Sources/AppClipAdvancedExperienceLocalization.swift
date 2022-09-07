---
type: object
title: AppClipAdvancedExperienceLocalization
properties:
  type:
    type: string
    enum:
    - appClipAdvancedExperienceLocalizations
  id:
    type: string
  attributes:
    type: object
    properties:
      language:
        "$ref": "#/components/schemas/AppClipAdvancedExperienceLanguage"
      title:
        type: string
      subtitle:
        type: string
  links:
    "$ref": "#/components/schemas/ResourceLinks"
required:
- links
- id
- type
