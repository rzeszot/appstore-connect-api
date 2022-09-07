---
type: object
title: AppClipAppStoreReviewDetailUpdateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - appClipAppStoreReviewDetails
      id:
        type: string
      attributes:
        type: object
        properties:
          invocationUrls:
            type: array
            items:
              type: string
              format: uri
    required:
    - id
    - type
required:
- data
