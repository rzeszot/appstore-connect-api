---
type: object
title: AppClipAdvancedExperienceImageCreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - appClipAdvancedExperienceImages
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
    required:
    - attributes
    - type
required:
- data
