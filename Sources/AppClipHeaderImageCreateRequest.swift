---
type: object
title: AppClipHeaderImageCreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - appClipHeaderImages
      attributes:
        type: object
        properties:
          fileSize:
            type: integer
          fileName:
            type: string
        required:
        - fileName
        - fileSize
      relationships:
        type: object
        properties:
          appClipDefaultExperienceLocalization:
            type: object
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
                required:
                - id
                - type
            required:
            - data
        required:
        - appClipDefaultExperienceLocalization
    required:
    - relationships
    - attributes
    - type
required:
- data
