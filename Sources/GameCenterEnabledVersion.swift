---
type: object
title: GameCenterEnabledVersion
properties:
  type:
    type: string
    enum:
    - gameCenterEnabledVersions
  id:
    type: string
  attributes:
    type: object
    properties:
      platform:
        "$ref": "#/components/schemas/Platform"
      versionString:
        type: string
      iconAsset:
        "$ref": "#/components/schemas/ImageAsset"
  relationships:
    type: object
    properties:
      compatibleVersions:
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
                  - gameCenterEnabledVersions
                id:
                  type: string
              required:
              - id
              - type
      app:
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
                - apps
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
