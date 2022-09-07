---
type: object
title: CiXcodeVersion
properties:
  type:
    type: string
    enum:
    - ciXcodeVersions
  id:
    type: string
  attributes:
    type: object
    properties:
      version:
        type: string
      name:
        type: string
      testDestinations:
        type: array
        items:
          type: object
          properties:
            deviceTypeName:
              type: string
            deviceTypeIdentifier:
              type: string
            availableRuntimes:
              type: array
              items:
                type: object
                properties:
                  runtimeName:
                    type: string
                  runtimeIdentifier:
                    type: string
            kind:
              "$ref": "#/components/schemas/CiTestDestinationKind"
  relationships:
    type: object
    properties:
      macOsVersions:
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
                  - ciMacOsVersions
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
