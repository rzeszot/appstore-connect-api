---
type: object
title: AppScreenshotSetCreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - appScreenshotSets
      attributes:
        type: object
        properties:
          screenshotDisplayType:
            "$ref": "#/components/schemas/ScreenshotDisplayType"
        required:
        - screenshotDisplayType
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
