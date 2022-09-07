---
type: object
title: SubscriptionOfferCode
properties:
  type:
    type: string
    enum:
    - subscriptionOfferCodes
  id:
    type: string
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
      totalNumberOfCodes:
        type: integer
      active:
        type: boolean
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
      oneTimeUseCodes:
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
                  - subscriptionOfferCodeOneTimeUseCodes
                id:
                  type: string
              required:
              - id
              - type
      customCodes:
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
                  - subscriptionOfferCodeCustomCodes
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
                  - subscriptionOfferCodePrices
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
