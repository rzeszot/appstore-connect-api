---
type: object
title: SubscriptionOfferCodeCustomCodeUpdateRequest
properties:
  data:
    type: object
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
          active:
            type: boolean
    required:
    - id
    - type
required:
- data
