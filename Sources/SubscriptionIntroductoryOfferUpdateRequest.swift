---
type: object
title: SubscriptionIntroductoryOfferUpdateRequest
properties:
  data:
    type: object
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
          endDate:
            type: string
            format: date
    required:
    - id
    - type
required:
- data
