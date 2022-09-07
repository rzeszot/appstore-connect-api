---
type: object
title: BetaAppClipInvocationLocalizationUpdateRequest
properties:
  data:
    type: object
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
    required:
    - id
    - type
required:
- data
