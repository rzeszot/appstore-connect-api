---
type: object
title: PromotedPurchaseUpdateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - promotedPurchases
      id:
        type: string
      attributes:
        type: object
        properties:
          visibleForAllUsers:
            type: boolean
          enabled:
            type: boolean
    required:
    - id
    - type
required:
- data
