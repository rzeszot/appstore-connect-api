---
type: object
title: AppStoreVersionExperimentTreatment
properties:
  type:
    type: string
    enum:
    - appStoreVersionExperimentTreatments
  id:
    type: string
  attributes:
    type: object
    properties:
      name:
        type: string
      appIcon:
        "$ref": "#/components/schemas/ImageAsset"
      appIconName:
        type: string
      promotedDate:
        type: string
        format: date-time
  relationships:
    type: object
    properties:
      appStoreVersionExperiment:
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
                - appStoreVersionExperiments
              id:
                type: string
            required:
            - id
            - type
      appStoreVersionExperimentTreatmentLocalizations:
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
                  - appStoreVersionExperimentTreatmentLocalizations
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
