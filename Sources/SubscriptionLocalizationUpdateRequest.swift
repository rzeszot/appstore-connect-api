---
type: object
title: SubscriptionLocalizationUpdateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - subscriptionLocalizations
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
