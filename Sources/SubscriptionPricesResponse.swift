---
type: object
title: SubscriptionPricesResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/SubscriptionPrice"
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
