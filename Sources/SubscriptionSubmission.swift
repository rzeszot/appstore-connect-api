---
type: object
title: SubscriptionSubmission
properties:
  type:
    type: string
    enum:
    - subscriptionSubmissions
  id:
    type: string
  relationships:
    type: object
    properties:
      subscription:
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
                - subscriptions
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
