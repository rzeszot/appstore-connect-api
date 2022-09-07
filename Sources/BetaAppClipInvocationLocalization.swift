---
type: object
title: BetaAppClipInvocationLocalization
properties:
  type:
    type: string
    enum:
    - betaAppClipInvocationLocalizations
  id:
    type: string
  attributes:
    type: object
    properties:
      title:
        type: string
      locale:
        type: string
  links:
    "$ref": "#/components/schemas/ResourceLinks"
required:
- links
- id
- type
