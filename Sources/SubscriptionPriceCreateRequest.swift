---
type: object
title: SubscriptionPriceCreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - subscriptionPrices
      attributes:
        type: object
        properties:
          startDate:
            type: string
            format: date
          preserveCurrentPrice:
            type: boolean
      relationships:
        type: object
        properties:
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
            - data
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
            - data
        required:
        - subscription
        - subscriptionPricePoint
    required:
    - relationships
    - type
required:
- data
