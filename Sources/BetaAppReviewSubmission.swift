---
type: object
title: BetaAppReviewSubmission
properties:
  type:
    type: string
    enum:
    - betaAppReviewSubmissions
  id:
    type: string
  attributes:
    type: object
    properties:
      betaReviewState:
        "$ref": "#/components/schemas/BetaReviewState"
      submittedDate:
        type: string
        format: date-time
  relationships:
    type: object
    properties:
      build:
        type: object
        properties:
          links:
            type: object
            properties:
              self:
                type: string
                format: uri-reference
              related:
                type: string
                format: uri-reference
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
  links:
    "$ref": "#/components/schemas/ResourceLinks"
required:
- links
- id
- type
