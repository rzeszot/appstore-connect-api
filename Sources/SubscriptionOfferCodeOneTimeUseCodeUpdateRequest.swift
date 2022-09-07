---
type: object
title: SubscriptionOfferCodeOneTimeUseCodeUpdateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - subscriptionOfferCodeOneTimeUseCodes
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
