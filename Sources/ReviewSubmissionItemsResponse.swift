---
type: object
title: ReviewSubmissionItemsResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/ReviewSubmissionItem"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/AppStoreVersion"
      - "$ref": "#/components/schemas/AppCustomProductPageVersion"
      - "$ref": "#/components/schemas/AppStoreVersionExperiment"
      - "$ref": "#/components/schemas/AppEvent"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
