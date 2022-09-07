---
type: object
title: SubscriptionOfferCodeCustomCodeCreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - subscriptionOfferCodeCustomCodes
      attributes:
        type: object
        properties:
          customCode:
            type: string
          numberOfCodes:
            type: integer
          expirationDate:
            type: string
            format: date
        required:
        - numberOfCodes
        - customCode
      relationships:
        type: object
        properties:
          offerCode:
            type: object
            properties:
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
            required:
            - data
        required:
        - offerCode
    required:
    - relationships
    - attributes
    - type
required:
- data
