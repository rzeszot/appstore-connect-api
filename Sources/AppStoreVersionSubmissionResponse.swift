---
type: object
title: AppStoreVersionSubmissionResponse
properties:
  data:
    "$ref": "#/components/schemas/AppStoreVersionSubmission"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/AppStoreVersion"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
deprecated: true
