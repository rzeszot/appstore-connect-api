---
type: object
title: SubscriptionPromotionalOfferResponse
properties:
  data:
    "$ref": "#/components/schemas/SubscriptionPromotionalOffer"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/Subscription"
      - "$ref": "#/components/schemas/SubscriptionPromotionalOfferPrice"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
