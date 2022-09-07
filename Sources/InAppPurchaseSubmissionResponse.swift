---
type: object
title: InAppPurchaseSubmissionResponse
properties:
  data:
    "$ref": "#/components/schemas/InAppPurchaseSubmission"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/InAppPurchaseV2"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
