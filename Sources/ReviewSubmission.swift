---
type: object
title: ReviewSubmission
properties:
  type:
    type: string
    enum:
    - reviewSubmissions
  id:
    type: string
  attributes:
    type: object
    properties:
      platform:
        "$ref": "#/components/schemas/Platform"
      submittedDate:
        type: string
        format: date-time
      state:
        type: string
        enum:
        - READY_FOR_REVIEW
        - WAITING_FOR_REVIEW
        - IN_REVIEW
        - UNRESOLVED_ISSUES
        - CANCELING
        - COMPLETING
        - COMPLETE
  relationships:
    type: object
    properties:
      app:
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
                - apps
              id:
                type: string
            required:
            - id
            - type
      items:
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
                  - reviewSubmissionItems
                id:
                  type: string
              required:
              - id
              - type
      appStoreVersionForReview:
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
  links:
    "$ref": "#/components/schemas/ResourceLinks"
required:
- links
- id
- type
