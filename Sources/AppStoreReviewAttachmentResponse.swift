---
type: object
title: AppStoreReviewAttachmentResponse
properties:
  data:
    "$ref": "#/components/schemas/AppStoreReviewAttachment"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/AppStoreReviewDetail"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
