---
type: object
title: CustomerReviewsResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/CustomerReview"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/CustomerReviewResponseV1"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
