---
type: object
title: AppStoreReviewDetail
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
  relationships:
    type: object
    properties:
      appStoreVersion:
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
                - appStoreVersions
              id:
                type: string
            required:
            - id
            - type
      appStoreReviewAttachments:
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
          meta:
            "$ref": "#/components/schemas/PagingInformation"
          data:
            type: array
            items:
              type: object
              properties:
                type:
                  type: string
                  enum:
                  - appStoreReviewAttachments
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
