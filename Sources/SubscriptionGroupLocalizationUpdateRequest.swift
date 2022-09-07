---
type: object
title: SubscriptionGroupLocalizationUpdateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - subscriptionGroupLocalizations
      id:
        type: string
      attributes:
        type: object
        properties:
          name:
            type: string
          customAppName:
            type: string
    required:
    - id
    - type
required:
- data
