---
type: object
title: InAppPurchaseLocalizationUpdateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - inAppPurchaseLocalizations
      id:
        type: string
      attributes:
        type: object
        properties:
          name:
            type: string
          description:
            type: string
    required:
    - id
    - type
required:
- data
