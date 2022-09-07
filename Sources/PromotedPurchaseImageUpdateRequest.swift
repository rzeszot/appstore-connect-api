---
type: object
title: PromotedPurchaseImageUpdateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - promotedPurchaseImages
      id:
        type: string
      attributes:
        type: object
        properties:
          sourceFileChecksum:
            type: string
          uploaded:
            type: boolean
    required:
    - id
    - type
required:
- data
