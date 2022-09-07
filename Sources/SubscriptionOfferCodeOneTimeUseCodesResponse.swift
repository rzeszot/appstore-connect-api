---
type: object
title: SubscriptionOfferCodeOneTimeUseCodesResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/SubscriptionOfferCodeOneTimeUseCode"
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
