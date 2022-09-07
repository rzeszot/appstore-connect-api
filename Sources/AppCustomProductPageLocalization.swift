---
type: object
title: AppCustomProductPageLocalization
properties:
  type:
    type: string
    enum:
    - appCustomProductPageLocalizations
  id:
    type: string
  attributes:
    type: object
    properties:
      locale:
        type: string
      promotionalText:
        type: string
  relationships:
    type: object
    properties:
      appCustomProductPageVersion:
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
                - appCustomProductPageVersions
              id:
                type: string
            required:
            - id
            - type
      appScreenshotSets:
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
                  - appScreenshotSets
                id:
                  type: string
              required:
              - id
              - type
      appPreviewSets:
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
                  - appPreviewSets
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
