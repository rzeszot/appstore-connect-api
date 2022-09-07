---
type: object
title: SubscriptionGroupLocalization
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
      locale:
        type: string
      state:
        type: string
        enum:
        - PREPARE_FOR_SUBMISSION
        - WAITING_FOR_REVIEW
        - APPROVED
        - REJECTED
  relationships:
    type: object
    properties:
      subscriptionGroup:
        type: object
        properties:
          links:
            type: object
            properties:
              self:
                type: string
                format: uri-reference
              related:
                type: string
                format: uri-reference
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
  links:
    "$ref": "#/components/schemas/ResourceLinks"
required:
- links
- id
- type
