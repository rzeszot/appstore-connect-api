---
type: object
title: SubscriptionLocalizationsResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/SubscriptionLocalization"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/Subscription"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
