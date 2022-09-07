---
type: object
title: SubscriptionOfferCodeOneTimeUseCodeResponse
properties:
  data:
    "$ref": "#/components/schemas/SubscriptionOfferCodeOneTimeUseCode"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/SubscriptionOfferCode"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
