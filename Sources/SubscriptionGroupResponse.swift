---
type: object
title: SubscriptionGroupResponse
properties:
  data:
    "$ref": "#/components/schemas/SubscriptionGroup"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/Subscription"
      - "$ref": "#/components/schemas/SubscriptionGroupLocalization"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
