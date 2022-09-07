---
type: object
title: BetaAppReviewSubmissionCreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - betaAppReviewSubmissions
      relationships:
        type: object
        properties:
          build:
            type: object
            properties:
              data:
                type: object
                properties:
                  type:
                    type: string
                    enum:
                    - builds
                  id:
                    type: string
                required:
                - id
                - type
            required:
            - data
        required:
        - build
    required:
    - relationships
    - type
required:
- data
