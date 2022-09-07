---
type: object
title: BetaBuildLocalization
properties:
  type:
    type: string
    enum:
    - betaBuildLocalizations
  id:
    type: string
  attributes:
    type: object
    properties:
      whatsNew:
        type: string
      locale:
        type: string
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
