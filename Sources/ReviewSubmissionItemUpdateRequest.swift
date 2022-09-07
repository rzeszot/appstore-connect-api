---
type: object
title: ReviewSubmissionItemUpdateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - reviewSubmissionItems
      id:
        type: string
      attributes:
        type: object
        properties:
          resolved:
            type: boolean
          removed:
            type: boolean
    required:
    - id
    - type
required:
- data
