---
type: object
title: SubscriptionCreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - subscriptions
      attributes:
        type: object
        properties:
          name:
            type: string
          productId:
            type: string
          familySharable:
            type: boolean
          subscriptionPeriod:
            type: string
            enum:
            - ONE_WEEK
            - ONE_MONTH
            - TWO_MONTHS
            - THREE_MONTHS
            - SIX_MONTHS
            - ONE_YEAR
          reviewNote:
            type: string
          groupLevel:
            type: integer
          availableInAllTerritories:
            type: boolean
        required:
        - productId
        - name
      relationships:
        type: object
        properties:
          group:
            type: object
            properties:
              data:
                type: object
                properties:
                  type:
                    type: string
                    enum:
                    - subscriptionGroups
                  id:
                    type: string
                required:
                - id
                - type
            required:
            - data
        required:
        - group
    required:
    - relationships
    - attributes
    - type
required:
- data
