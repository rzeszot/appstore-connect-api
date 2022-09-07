---
type: object
title: AppClipAppStoreReviewDetail
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
  relationships:
    type: object
    properties:
      appClipDefaultExperience:
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
                - appClipDefaultExperiences
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
