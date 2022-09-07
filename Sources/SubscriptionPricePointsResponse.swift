---
type: object
title: SubscriptionPricePointsResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/SubscriptionPricePoint"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/Territory"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
