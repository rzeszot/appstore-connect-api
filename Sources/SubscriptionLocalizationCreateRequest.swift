---
type: object
title: SubscriptionLocalizationCreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - subscriptionLocalizations
      attributes:
        type: object
        properties:
          name:
            type: string
          locale:
            type: string
          description:
            type: string
        required:
        - name
        - locale
      relationships:
        type: object
        properties:
          subscription:
            type: object
            properties:
              data:
                type: object
                properties:
                  type:
                    type: string
                    enum:
                    - subscriptions
                  id:
                    type: string
                required:
                - id
                - type
            required:
            - data
        required:
        - subscription
    required:
    - relationships
    - attributes
    - type
required:
- data
