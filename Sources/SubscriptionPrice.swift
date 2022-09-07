---
type: object
title: SubscriptionPrice
properties:
  type:
    type: string
    enum:
    - subscriptionPrices
  id:
    type: string
  attributes:
    type: object
    properties:
      startDate:
        type: string
        format: date
      preserved:
        type: boolean
  relationships:
    type: object
    properties:
      territory:
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
                - territories
              id:
                type: string
            required:
            - id
            - type
      subscriptionPricePoint:
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
                - subscriptionPricePoints
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
