---
type: object
title: BetaAppReviewDetailsResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/BetaAppReviewDetail"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/App"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
