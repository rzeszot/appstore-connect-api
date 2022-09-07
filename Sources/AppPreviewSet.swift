---
type: object
title: AppPreviewSet
properties:
  type:
    type: string
    enum:
    - appPreviewSets
  id:
    type: string
  attributes:
    type: object
    properties:
      previewType:
        "$ref": "#/components/schemas/PreviewType"
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
      appPreviews:
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
                  - appPreviews
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
