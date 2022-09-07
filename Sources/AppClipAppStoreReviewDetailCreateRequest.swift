---
type: object
title: AppClipAppStoreReviewDetailCreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - appClipAppStoreReviewDetails
      attributes:
        type: object
        properties:
          invocationUrls:
            type: array
            items:
              type: string
              format: uri
      relationships:
        type: object
        properties:
          appClipDefaultExperience:
            type: object
            properties:
              data:
                type: object
                properties:
                  type:
                    type: string
                    enum:
                    - appClipDefaultExperiences
                  id:
                    type: string
                required:
                - id
                - type
            required:
            - data
        required:
        - appClipDefaultExperience
    required:
    - relationships
    - type
required:
- data
