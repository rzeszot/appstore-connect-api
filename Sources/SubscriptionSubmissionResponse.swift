---
type: object
title: SubscriptionSubmissionResponse
properties:
  data:
    "$ref": "#/components/schemas/SubscriptionSubmission"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/Subscription"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
