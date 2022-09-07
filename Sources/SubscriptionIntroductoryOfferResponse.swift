---
type: object
title: SubscriptionIntroductoryOfferResponse
properties:
  data:
    "$ref": "#/components/schemas/SubscriptionIntroductoryOffer"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/Subscription"
      - "$ref": "#/components/schemas/Territory"
      - "$ref": "#/components/schemas/SubscriptionPricePoint"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
