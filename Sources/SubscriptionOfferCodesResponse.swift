---
type: object
title: SubscriptionOfferCodesResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/SubscriptionOfferCode"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/Subscription"
      - "$ref": "#/components/schemas/SubscriptionOfferCodeOneTimeUseCode"
      - "$ref": "#/components/schemas/SubscriptionOfferCodeCustomCode"
      - "$ref": "#/components/schemas/SubscriptionOfferCodePrice"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
