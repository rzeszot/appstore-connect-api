---
type: object
title: SubscriptionOfferCodeCreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - subscriptionOfferCodes
      attributes:
        type: object
        properties:
          name:
            type: string
          customerEligibilities:
            type: array
            items:
              "$ref": "#/components/schemas/SubscriptionCustomerEligibility"
          offerEligibility:
            "$ref": "#/components/schemas/SubscriptionOfferEligibility"
          duration:
            "$ref": "#/components/schemas/SubscriptionOfferDuration"
          offerMode:
            "$ref": "#/components/schemas/SubscriptionOfferMode"
          numberOfPeriods:
            type: integer
        required:
        - duration
        - offerEligibility
        - name
        - numberOfPeriods
        - offerMode
        - customerEligibilities
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
                      - subscriptionOfferCodePrices
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
      "$ref": "#/components/schemas/SubscriptionOfferCodePriceInlineCreate"
required:
- data
