---
type: object
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
      inAppPurchaseV2:
        type: object
        properties:
          data:
            type: object
            properties:
              type:
                type: string
                enum:
                - inAppPurchases
              id:
                type: string
            required:
            - id
            - type
      inAppPurchasePricePoint:
        type: object
        properties:
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
required:
- type
