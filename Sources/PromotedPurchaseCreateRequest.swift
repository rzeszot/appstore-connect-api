---
type: object
title: PromotedPurchaseCreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - promotedPurchases
      attributes:
        type: object
        properties:
          visibleForAllUsers:
            type: boolean
          enabled:
            type: boolean
        required:
        - visibleForAllUsers
      relationships:
        type: object
        properties:
          app:
            type: object
            properties:
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
            required:
            - data
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
          subscription:
            type: object
            properties:
              data:
                type: object
                properties:
                  type:
                    type: string
                    enum:
                    - subscriptions
                  id:
                    type: string
                required:
                - id
                - type
        required:
        - app
    required:
    - relationships
    - attributes
    - type
required:
- data
