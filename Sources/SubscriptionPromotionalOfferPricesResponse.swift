---
type: object
title: SubscriptionPromotionalOfferPricesResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/SubscriptionPromotionalOfferPrice"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/Territory"
      - "$ref": "#/components/schemas/SubscriptionPricePoint"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
