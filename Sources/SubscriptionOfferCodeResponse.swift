---
type: object
title: SubscriptionOfferCodeResponse
properties:
  data:
    "$ref": "#/components/schemas/SubscriptionOfferCode"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/Subscription"
      - "$ref": "#/components/schemas/SubscriptionOfferCodeOneTimeUseCode"
      - "$ref": "#/components/schemas/SubscriptionOfferCodeCustomCode"
      - "$ref": "#/components/schemas/SubscriptionOfferCodePrice"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
