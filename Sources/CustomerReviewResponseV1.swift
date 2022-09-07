---
type: object
title: CustomerReviewResponseV1
properties:
  type:
    type: string
    enum:
    - customerReviewResponses
  id:
    type: string
  attributes:
    type: object
    properties:
      responseBody:
        type: string
      lastModifiedDate:
        type: string
        format: date-time
      state:
        type: string
        enum:
        - PUBLISHED
        - PENDING_PUBLISH
  relationships:
    type: object
    properties:
      review:
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
                - customerReviews
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
