---
type: object
title: SubscriptionGroupLocalizationCreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - subscriptionGroupLocalizations
      attributes:
        type: object
        properties:
          name:
            type: string
          customAppName:
            type: string
          locale:
            type: string
        required:
        - name
        - locale
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
    - attributes
    - type
required:
- data
