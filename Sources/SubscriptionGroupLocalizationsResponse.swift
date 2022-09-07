---
type: object
title: SubscriptionGroupLocalizationsResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/SubscriptionGroupLocalization"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/SubscriptionGroup"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
