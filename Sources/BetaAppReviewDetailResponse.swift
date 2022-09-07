---
type: object
title: BetaAppReviewDetailResponse
properties:
  data:
    "$ref": "#/components/schemas/BetaAppReviewDetail"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/App"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
