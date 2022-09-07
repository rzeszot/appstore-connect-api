---
type: object
title: PrereleaseVersion
properties:
  type:
    type: string
    enum:
    - preReleaseVersions
  id:
    type: string
  attributes:
    type: object
    properties:
      version:
        type: string
      platform:
        "$ref": "#/components/schemas/Platform"
  relationships:
    type: object
    properties:
      builds:
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
                  - builds
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
