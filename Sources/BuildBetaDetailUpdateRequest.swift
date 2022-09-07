---
type: object
title: BuildBetaDetailUpdateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - buildBetaDetails
      id:
        type: string
      attributes:
        type: object
        properties:
          autoNotifyEnabled:
            type: boolean
    required:
    - id
    - type
required:
- data
