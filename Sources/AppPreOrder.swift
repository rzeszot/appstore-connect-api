---
type: object
title: AppPreOrder
properties:
  type:
    type: string
    enum:
    - appPreOrders
  id:
    type: string
  attributes:
    type: object
    properties:
      preOrderAvailableDate:
        type: string
        format: date
      appReleaseDate:
        type: string
        format: date
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
  links:
    "$ref": "#/components/schemas/ResourceLinks"
required:
- links
- id
- type
