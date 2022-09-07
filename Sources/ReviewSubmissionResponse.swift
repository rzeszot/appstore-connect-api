---
type: object
title: ReviewSubmissionResponse
properties:
  data:
    "$ref": "#/components/schemas/ReviewSubmission"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/App"
      - "$ref": "#/components/schemas/ReviewSubmissionItem"
      - "$ref": "#/components/schemas/AppStoreVersion"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
