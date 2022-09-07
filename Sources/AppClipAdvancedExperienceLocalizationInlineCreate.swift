---
type: object
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
required:
- type
