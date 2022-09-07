---
type: object
title: BetaAppClipInvocationUpdateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - betaAppClipInvocations
      id:
        type: string
      attributes:
        type: object
        properties:
          url:
            type: string
            format: uri
    required:
    - id
    - type
required:
- data
