---
type: object
title: SubscriptionOfferCodeCustomCodesResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/SubscriptionOfferCodeCustomCode"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/SubscriptionOfferCode"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
