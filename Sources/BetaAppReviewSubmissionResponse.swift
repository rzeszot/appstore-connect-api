---
type: object
title: BetaAppReviewSubmissionResponse
properties:
  data:
    "$ref": "#/components/schemas/BetaAppReviewSubmission"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/Build"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
