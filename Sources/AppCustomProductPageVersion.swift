---
type: object
title: AppCustomProductPageVersion
properties:
  type:
    type: string
    enum:
    - appCustomProductPageVersions
  id:
    type: string
  attributes:
    type: object
    properties:
      version:
        type: string
      state:
        type: string
        enum:
        - PREPARE_FOR_SUBMISSION
        - READY_FOR_REVIEW
        - WAITING_FOR_REVIEW
        - IN_REVIEW
        - ACCEPTED
        - APPROVED
        - REPLACED_WITH_NEW_VERSION
        - REJECTED
  relationships:
    type: object
    properties:
      appCustomProductPage:
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
                - appCustomProductPages
              id:
                type: string
            required:
            - id
            - type
      appCustomProductPageLocalizations:
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
                  - appCustomProductPageLocalizations
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
