---
type: object
title: AppPreviewSetCreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - appPreviewSets
      attributes:
        type: object
        properties:
          previewType:
            "$ref": "#/components/schemas/PreviewType"
        required:
        - previewType
      relationships:
        type: object
        properties:
          appStoreVersionLocalization:
            type: object
            properties:
              data:
                type: object
                properties:
                  type:
                    type: string
                    enum:
                    - appStoreVersionLocalizations
                  id:
                    type: string
                required:
                - id
                - type
          appCustomProductPageLocalization:
            type: object
            properties:
              data:
                type: object
                properties:
                  type:
                    type: string
                    enum:
                    - appCustomProductPageLocalizations
                  id:
                    type: string
                required:
                - id
                - type
          appStoreVersionExperimentTreatmentLocalization:
            type: object
            properties:
              data:
                type: object
                properties:
                  type:
                    type: string
                    enum:
                    - appStoreVersionExperimentTreatmentLocalizations
                  id:
                    type: string
                required:
                - id
                - type
    required:
    - attributes
    - type
required:
- data
