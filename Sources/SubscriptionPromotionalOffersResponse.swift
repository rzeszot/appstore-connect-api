---
type: object
title: SubscriptionPromotionalOffersResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/SubscriptionPromotionalOffer"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/Subscription"
      - "$ref": "#/components/schemas/SubscriptionPromotionalOfferPrice"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
