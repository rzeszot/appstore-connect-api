---
type: object
title: AppClipDefaultExperienceLocalizationCreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - appClipDefaultExperienceLocalizations
      attributes:
        type: object
        properties:
          locale:
            type: string
          subtitle:
            type: string
        required:
        - locale
      relationships:
        type: object
        properties:
          appClipDefaultExperience:
            type: object
            properties:
              data:
                type: object
                properties:
                  type:
                    type: string
                    enum:
                    - appClipDefaultExperiences
                  id:
                    type: string
                required:
                - id
                - type
            required:
            - data
        required:
        - appClipDefaultExperience
    required:
    - relationships
    - attributes
    - type
required:
- data
