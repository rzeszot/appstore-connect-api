---
type: object
title: SubscriptionOfferCodeOneTimeUseCodeCreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - subscriptionOfferCodeOneTimeUseCodes
      attributes:
        type: object
        properties:
          numberOfCodes:
            type: integer
          expirationDate:
            type: string
            format: date
        required:
        - numberOfCodes
        - expirationDate
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
