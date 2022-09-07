---
type: object
title: SubscriptionGroupSubmission
properties:
  type:
    type: string
    enum:
    - subscriptionGroupSubmissions
  id:
    type: string
  links:
    "$ref": "#/components/schemas/ResourceLinks"
required:
- links
- id
- type
