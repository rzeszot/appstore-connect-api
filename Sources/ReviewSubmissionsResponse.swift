---
type: object
title: ReviewSubmissionsResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/ReviewSubmission"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/App"
      - "$ref": "#/components/schemas/ReviewSubmissionItem"
      - "$ref": "#/components/schemas/AppStoreVersion"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
