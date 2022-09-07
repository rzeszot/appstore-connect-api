---
type: object
title: SubscriptionPromotionalOfferCreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - subscriptionPromotionalOffers
      attributes:
        type: object
        properties:
          name:
            type: string
          offerCode:
            type: string
          duration:
            "$ref": "#/components/schemas/SubscriptionOfferDuration"
          offerMode:
            "$ref": "#/components/schemas/SubscriptionOfferMode"
          numberOfPeriods:
            type: integer
        required:
        - duration
        - offerCode
        - name
        - numberOfPeriods
        - offerMode
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
                      - subscriptionPromotionalOfferPrices
                    id:
                      type: string
                  required:
                  - id
                  - type
            required:
            - data
        required:
        - subscription
        - prices
    required:
    - relationships
    - attributes
    - type
  included:
    type: array
    items:
      "$ref": "#/components/schemas/SubscriptionPromotionalOfferPriceInlineCreate"
required:
- data
