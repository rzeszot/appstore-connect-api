---
type: object
title: AppClipAppStoreReviewDetailResponse
properties:
  data:
    "$ref": "#/components/schemas/AppClipAppStoreReviewDetail"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/AppClipDefaultExperience"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
