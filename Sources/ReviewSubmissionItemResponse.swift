---
type: object
title: ReviewSubmissionItemResponse
properties:
  data:
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
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
