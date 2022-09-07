---
type: object
title: BundleId
properties:
  type:
    type: string
    enum:
    - bundleIds
  id:
    type: string
  attributes:
    type: object
    properties:
      name:
        type: string
      platform:
        "$ref": "#/components/schemas/BundleIdPlatform"
      identifier:
        type: string
      seedId:
        type: string
  relationships:
    type: object
    properties:
      profiles:
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
                  - profiles
                id:
                  type: string
              required:
              - id
              - type
      bundleIdCapabilities:
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
                  - bundleIdCapabilities
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
