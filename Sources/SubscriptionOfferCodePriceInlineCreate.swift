---
type: object
properties:
  type:
    type: string
    enum:
    - subscriptionOfferCodePrices
  id:
    type: string
  relationships:
    type: object
    properties:
      territory:
        type: object
        properties:
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
required:
- type
