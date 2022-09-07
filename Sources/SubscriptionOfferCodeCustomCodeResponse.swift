---
type: object
title: SubscriptionOfferCodeCustomCodeResponse
properties:
  data:
    "$ref": "#/components/schemas/SubscriptionOfferCodeCustomCode"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/SubscriptionOfferCode"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
