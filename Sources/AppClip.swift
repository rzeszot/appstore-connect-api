---
type: object
title: AppClip
properties:
  type:
    type: string
    enum:
    - appClips
  id:
    type: string
  attributes:
    type: object
    properties:
      bundleId:
        type: string
  relationships:
    type: object
    properties:
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
      appClipDefaultExperiences:
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
                  - appClipDefaultExperiences
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
