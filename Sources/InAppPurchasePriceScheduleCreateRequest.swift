---
type: object
title: InAppPurchasePriceScheduleCreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - inAppPurchasePriceSchedules
      relationships:
        type: object
        properties:
          inAppPurchase:
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
            required:
            - data
          manualPrices:
            type: object
            properties:
              data:
                type: array
                items:
                  type: object
                  properties:
                    type:
                      type: string
                      enum:
                      - inAppPurchasePrices
                    id:
                      type: string
                  required:
                  - id
                  - type
            required:
            - data
        required:
        - inAppPurchase
        - manualPrices
    required:
    - relationships
    - type
  included:
    type: array
    items:
      "$ref": "#/components/schemas/InAppPurchasePriceInlineCreate"
required:
- data
