---
type: object
title: SubscriptionGracePeriodUpdateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - subscriptionGracePeriods
      id:
        type: string
      attributes:
        type: object
        properties:
          optIn:
            type: boolean
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
    - id
    - type
  included:
    type: array
    items:
      "$ref": "#/components/schemas/AppInlineCreate"
required:
- data
