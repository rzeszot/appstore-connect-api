---
type: object
title: SubscriptionIntroductoryOffer
properties:
  type:
    type: string
    enum:
    - subscriptionIntroductoryOffers
  id:
    type: string
  attributes:
    type: object
    properties:
      startDate:
        type: string
        format: date
      endDate:
        type: string
        format: date
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
      territory:
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
                - territories
              id:
                type: string
            required:
            - id
            - type
      subscriptionPricePoint:
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
                - subscriptionPricePoints
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
