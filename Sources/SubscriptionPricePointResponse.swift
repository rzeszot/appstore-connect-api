---
type: object
title: SubscriptionPricePointResponse
properties:
  data:
    "$ref": "#/components/schemas/SubscriptionPricePoint"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/Territory"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
