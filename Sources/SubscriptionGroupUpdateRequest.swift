---
type: object
title: SubscriptionGroupUpdateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - subscriptionGroups
      id:
        type: string
      attributes:
        type: object
        properties:
          referenceName:
            type: string
    required:
    - id
    - type
required:
- data
