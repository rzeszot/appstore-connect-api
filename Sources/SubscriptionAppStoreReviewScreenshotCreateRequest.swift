---
type: object
title: SubscriptionAppStoreReviewScreenshotCreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - subscriptionAppStoreReviewScreenshots
      attributes:
        type: object
        properties:
          fileSize:
            type: integer
          fileName:
            type: string
        required:
        - fileName
        - fileSize
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
