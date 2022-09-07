---
type: object
title: CustomerReview
properties:
  type:
    type: string
    enum:
    - customerReviews
  id:
    type: string
  attributes:
    type: object
    properties:
      rating:
        type: integer
        maximum: 5
        minimum: 1
      title:
        type: string
      body:
        type: string
      reviewerNickname:
        type: string
      createdDate:
        type: string
        format: date-time
      territory:
        "$ref": "#/components/schemas/TerritoryCode"
  relationships:
    type: object
    properties:
      response:
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
                - customerReviewResponses
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
