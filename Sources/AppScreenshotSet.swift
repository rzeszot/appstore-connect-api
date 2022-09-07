---
type: object
title: AppScreenshotSet
properties:
  type:
    type: string
    enum:
    - appScreenshotSets
  id:
    type: string
  attributes:
    type: object
    properties:
      screenshotDisplayType:
        "$ref": "#/components/schemas/ScreenshotDisplayType"
  relationships:
    type: object
    properties:
      appStoreVersionLocalization:
        type: object
        properties:
          links:
            type: object
            properties:
              self:
                type: string
                format: uri-reference
              related:
                type: string
                format: uri-reference
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
          links:
            type: object
            properties:
              self:
                type: string
                format: uri-reference
              related:
                type: string
                format: uri-reference
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
          links:
            type: object
            properties:
              self:
                type: string
                format: uri-reference
              related:
                type: string
                format: uri-reference
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
      appScreenshots:
        type: object
        properties:
          links:
            type: object
            properties:
              self:
                type: string
                format: uri-reference
              related:
                type: string
                format: uri-reference
          meta:
            "$ref": "#/components/schemas/PagingInformation"
          data:
            type: array
            items:
              type: object
              properties:
                type:
                  type: string
                  enum:
                  - appScreenshots
                id:
                  type: string
              required:
              - id
              - type
  links:
    "$ref": "#/components/schemas/ResourceLinks"
required:
- links
- id
- type
