---
type: object
title: SubscriptionUpdateRequest
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
      attributes:
        type: object
        properties:
          name:
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
      relationships:
        type: object
        properties:
          introductoryOffers:
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
                      - subscriptionIntroductoryOffers
                    id:
                      type: string
                  required:
                  - id
                  - type
          promotionalOffers:
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
                      - subscriptionPromotionalOffers
                    id:
                      type: string
                  required:
                  - id
                  - type
          prices:
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
                      - subscriptionPrices
                    id:
                      type: string
                  required:
                  - id
                  - type
    required:
    - id
    - type
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/SubscriptionPromotionalOfferInlineCreate"
      - "$ref": "#/components/schemas/SubscriptionPriceInlineCreate"
      - "$ref": "#/components/schemas/SubscriptionIntroductoryOfferInlineCreate"
required:
- data
