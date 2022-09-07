---
type: object
title: AppStoreReviewAttachmentsResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/AppStoreReviewAttachment"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/AppStoreReviewDetail"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
