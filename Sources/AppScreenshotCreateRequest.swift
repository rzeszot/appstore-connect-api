---
type: object
title: AppScreenshotCreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - appScreenshots
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
          appScreenshotSet:
            type: object
            properties:
              data:
                type: object
                properties:
                  type:
                    type: string
                    enum:
                    - appScreenshotSets
                  id:
                    type: string
                required:
                - id
                - type
            required:
            - data
        required:
        - appScreenshotSet
    required:
    - relationships
    - attributes
    - type
required:
- data
