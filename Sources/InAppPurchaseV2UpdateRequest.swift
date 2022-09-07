---
type: object
title: InAppPurchaseV2UpdateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - inAppPurchases
      id:
        type: string
      attributes:
        type: object
        properties:
          name:
            type: string
          reviewNote:
            type: string
          familySharable:
            type: boolean
          availableInAllTerritories:
            type: boolean
    required:
    - id
    - type
required:
- data
