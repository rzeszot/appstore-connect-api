---
type: object
title: SubscriptionPricePoint
properties:
  type:
    type: string
    enum:
    - subscriptionPricePoints
  id:
    type: string
  attributes:
    type: object
    properties:
      customerPrice:
        type: string
      proceeds:
        type: string
      proceedsYear2:
        type: string
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
  links:
    "$ref": "#/components/schemas/ResourceLinks"
required:
- links
- id
- type
