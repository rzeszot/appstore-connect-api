---
type: object
title: ReviewSubmissionUpdateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - reviewSubmissions
      id:
        type: string
      attributes:
        type: object
        properties:
          submitted:
            type: boolean
          canceled:
            type: boolean
    required:
    - id
    - type
required:
- data
