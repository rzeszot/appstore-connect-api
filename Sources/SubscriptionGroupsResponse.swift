---
type: object
title: SubscriptionGroupsResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/SubscriptionGroup"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/Subscription"
      - "$ref": "#/components/schemas/SubscriptionGroupLocalization"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
