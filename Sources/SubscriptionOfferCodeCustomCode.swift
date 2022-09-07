---
type: object
title: SubscriptionOfferCodeCustomCode
properties:
  type:
    type: string
    enum:
    - subscriptionOfferCodeCustomCodes
  id:
    type: string
  attributes:
    type: object
    properties:
      customCode:
        type: string
      numberOfCodes:
        type: integer
      createdDate:
        type: string
        format: date-time
      expirationDate:
        type: string
        format: date
      active:
        type: boolean
  relationships:
    type: object
    properties:
      offerCode:
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
                - subscriptionOfferCodes
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
