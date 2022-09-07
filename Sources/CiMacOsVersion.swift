---
type: object
title: CiMacOsVersion
properties:
  type:
    type: string
    enum:
    - ciMacOsVersions
  id:
    type: string
  attributes:
    type: object
    properties:
      version:
        type: string
      name:
        type: string
  relationships:
    type: object
    properties:
      xcodeVersions:
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
                  - ciXcodeVersions
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
