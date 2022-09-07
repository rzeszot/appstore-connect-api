---
type: object
title: InAppPurchasePrice
properties:
  type:
    type: string
    enum:
    - inAppPurchasePrices
  id:
    type: string
  attributes:
    type: object
    properties:
      startDate:
        type: string
        format: date
  relationships:
    type: object
    properties:
      inAppPurchasePricePoint:
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
                - inAppPurchasePricePoints
              id:
                type: string
            required:
            - id
            - type
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
