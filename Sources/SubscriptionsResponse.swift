---
type: object
title: SubscriptionsResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/Subscription"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/SubscriptionLocalization"
      - "$ref": "#/components/schemas/SubscriptionAppStoreReviewScreenshot"
      - "$ref": "#/components/schemas/SubscriptionGroup"
      - "$ref": "#/components/schemas/SubscriptionIntroductoryOffer"
      - "$ref": "#/components/schemas/SubscriptionPromotionalOffer"
      - "$ref": "#/components/schemas/SubscriptionOfferCode"
      - "$ref": "#/components/schemas/SubscriptionPrice"
      - "$ref": "#/components/schemas/PromotedPurchase"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
