---
type: object
title: SubscriptionGracePeriod
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
  links:
    "$ref": "#/components/schemas/ResourceLinks"
required:
- links
- id
- type
