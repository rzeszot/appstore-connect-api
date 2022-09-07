---
type: object
title: SubscriptionGroupCreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - subscriptionGroups
      attributes:
        type: object
        properties:
          referenceName:
            type: string
        required:
        - referenceName
      relationships:
        type: object
        properties:
          app:
            type: object
            properties:
              data:
                type: object
                properties:
                  type:
                    type: string
                    enum:
                    - apps
                  id:
                    type: string
                required:
                - id
                - type
            required:
            - data
        required:
        - app
    required:
    - relationships
    - attributes
    - type
required:
- data
