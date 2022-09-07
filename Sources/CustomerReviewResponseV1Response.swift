---
type: object
title: CustomerReviewResponseV1Response
properties:
  data:
    "$ref": "#/components/schemas/CustomerReviewResponseV1"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/CustomerReview"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
