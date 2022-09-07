---
type: object
title: SubscriptionPromotionalOffer
properties:
  type:
    type: string
    enum:
    - subscriptionPromotionalOffers
  id:
    type: string
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
  relationships:
    type: object
    properties:
      subscription:
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
                - subscriptions
              id:
                type: string
            required:
            - id
            - type
      prices:
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
          meta:
            "$ref": "#/components/schemas/PagingInformation"
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
  links:
    "$ref": "#/components/schemas/ResourceLinks"
required:
- links
- id
- type
