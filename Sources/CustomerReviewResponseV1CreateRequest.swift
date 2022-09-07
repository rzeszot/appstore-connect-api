---
type: object
title: CustomerReviewResponseV1CreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - customerReviewResponses
      attributes:
        type: object
        properties:
          responseBody:
            type: string
        required:
        - responseBody
      relationships:
        type: object
        properties:
          review:
            type: object
            properties:
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
            required:
            - data
        required:
        - review
    required:
    - relationships
    - attributes
    - type
required:
- data
