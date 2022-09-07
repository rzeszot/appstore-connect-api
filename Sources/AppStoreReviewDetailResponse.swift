---
type: object
title: AppStoreReviewDetailResponse
properties:
  data:
    "$ref": "#/components/schemas/AppStoreReviewDetail"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/AppStoreVersion"
      - "$ref": "#/components/schemas/AppStoreReviewAttachment"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
