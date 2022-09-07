---
type: object
title: AppCustomProductPageUpdateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - appCustomProductPages
      id:
        type: string
      attributes:
        type: object
        properties:
          name:
            type: string
          visible:
            type: boolean
    required:
    - id
    - type
required:
- data
