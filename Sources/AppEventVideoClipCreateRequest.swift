---
type: object
title: AppEventVideoClipCreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - appEventVideoClips
      attributes:
        type: object
        properties:
          fileSize:
            type: integer
          fileName:
            type: string
          previewFrameTimeCode:
            type: string
          appEventAssetType:
            "$ref": "#/components/schemas/AppEventAssetType"
        required:
        - fileName
        - appEventAssetType
        - fileSize
      relationships:
        type: object
        properties:
          appEventLocalization:
            type: object
            properties:
              data:
                type: object
                properties:
                  type:
                    type: string
                    enum:
                    - appEventLocalizations
                  id:
                    type: string
                required:
                - id
                - type
            required:
            - data
        required:
        - appEventLocalization
    required:
    - relationships
    - attributes
    - type
required:
- data
