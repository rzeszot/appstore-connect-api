---
type: object
title: SubscriptionSubmissionCreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - subscriptionSubmissions
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
    - type
required:
- data
