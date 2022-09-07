---
type: object
title: AppPreOrderUpdateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - appPreOrders
      id:
        type: string
      attributes:
        type: object
        properties:
          appReleaseDate:
            type: string
            format: date
    required:
    - id
    - type
required:
- data
