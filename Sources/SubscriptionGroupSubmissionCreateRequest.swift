---
type: object
title: SubscriptionGroupSubmissionCreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - subscriptionGroupSubmissions
      relationships:
        type: object
        properties:
          subscriptionGroup:
            type: object
            properties:
              data:
                type: object
                properties:
                  type:
                    type: string
                    enum:
                    - subscriptionGroups
                  id:
                    type: string
                required:
                - id
                - type
            required:
            - data
        required:
        - subscriptionGroup
    required:
    - relationships
    - type
required:
- data
