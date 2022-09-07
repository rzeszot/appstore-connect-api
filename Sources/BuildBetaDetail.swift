---
type: object
title: BuildBetaDetail
properties:
  type:
    type: string
    enum:
    - buildBetaDetails
  id:
    type: string
  attributes:
    type: object
    properties:
      autoNotifyEnabled:
        type: boolean
      internalBuildState:
        "$ref": "#/components/schemas/InternalBetaState"
      externalBuildState:
        "$ref": "#/components/schemas/ExternalBetaState"
  relationships:
    type: object
    properties:
      build:
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
                - builds
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
