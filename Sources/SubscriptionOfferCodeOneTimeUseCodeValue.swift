---
type: object
title: SubscriptionOfferCodeOneTimeUseCodeValue
properties:
  type:
    type: string
    enum:
    - subscriptionOfferCodeOneTimeUseCodeValues
  id:
    type: string
  links:
    "$ref": "#/components/schemas/ResourceLinks"
required:
- links
- id
- type
