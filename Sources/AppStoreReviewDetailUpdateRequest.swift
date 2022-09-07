---
type: object
title: AppStoreReviewDetailUpdateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - appStoreReviewDetails
      id:
        type: string
      attributes:
        type: object
        properties:
          contactFirstName:
            type: string
          contactLastName:
            type: string
          contactPhone:
            type: string
          contactEmail:
            type: string
          demoAccountName:
            type: string
          demoAccountPassword:
            type: string
          demoAccountRequired:
            type: boolean
          notes:
            type: string
    required:
    - id
    - type
required:
- data
