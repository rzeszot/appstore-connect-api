---
type: object
title: CustomerReviewResponse
properties:
  data:
    "$ref": "#/components/schemas/CustomerReview"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/CustomerReviewResponseV1"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
