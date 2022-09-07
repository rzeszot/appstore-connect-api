---
type: object
title: AppPreviewCreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - appPreviews
      attributes:
        type: object
        properties:
          fileSize:
            type: integer
          fileName:
            type: string
          previewFrameTimeCode:
            type: string
          mimeType:
            type: string
        required:
        - fileName
        - fileSize
      relationships:
        type: object
        properties:
          appPreviewSet:
            type: object
            properties:
              data:
                type: object
                properties:
                  type:
                    type: string
                    enum:
                    - appPreviewSets
                  id:
                    type: string
                required:
                - id
                - type
            required:
            - data
        required:
        - appPreviewSet
    required:
    - relationships
    - attributes
    - type
required:
- data
