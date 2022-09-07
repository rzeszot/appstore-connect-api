---
type: object
title: AppClipDefaultExperienceLocalizationUpdateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - appClipDefaultExperienceLocalizations
      id:
        type: string
      attributes:
        type: object
        properties:
          subtitle:
            type: string
    required:
    - id
    - type
required:
- data
