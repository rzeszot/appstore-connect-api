---
type: object
title: SubscriptionPriceResponse
properties:
  data:
    "$ref": "#/components/schemas/SubscriptionPrice"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/Territory"
      - "$ref": "#/components/schemas/SubscriptionPricePoint"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
