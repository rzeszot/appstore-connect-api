---
type: object
title: BetaAppClipInvocationResponse
properties:
  data:
    "$ref": "#/components/schemas/BetaAppClipInvocation"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/BetaAppClipInvocationLocalization"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
