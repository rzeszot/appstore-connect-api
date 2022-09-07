---
type: object
title: AppStoreReviewDetailCreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - appStoreReviewDetails
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
      relationships:
        type: object
        properties:
          appStoreVersion:
            type: object
            properties:
              data:
                type: object
                properties:
                  type:
                    type: string
                    enum:
                    - appStoreVersions
                  id:
                    type: string
                required:
                - id
                - type
            required:
            - data
        required:
        - appStoreVersion
    required:
    - relationships
    - type
required:
- data
