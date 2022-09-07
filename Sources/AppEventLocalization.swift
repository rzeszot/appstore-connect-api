---
type: object
title: AppEventLocalization
properties:
  type:
    type: string
    enum:
    - appEventLocalizations
  id:
    type: string
  attributes:
    type: object
    properties:
      locale:
        type: string
      name:
        type: string
      shortDescription:
        type: string
      longDescription:
        type: string
  relationships:
    type: object
    properties:
      appEvent:
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
                - appEvents
              id:
                type: string
            required:
            - id
            - type
      appEventScreenshots:
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
                  - appEventScreenshots
                id:
                  type: string
              required:
              - id
              - type
      appEventVideoClips:
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
                  - appEventVideoClips
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
