---
type: object
title: ReviewSubmissionItem
properties:
  type:
    type: string
    enum:
    - reviewSubmissionItems
  id:
    type: string
  attributes:
    type: object
    properties:
      state:
        type: string
        enum:
        - READY_FOR_REVIEW
        - ACCEPTED
        - APPROVED
        - REJECTED
        - REMOVED
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
      appCustomProductPageVersion:
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
                - appCustomProductPageVersions
              id:
                type: string
            required:
            - id
            - type
      appStoreVersionExperiment:
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
                - appStoreVersionExperiments
              id:
                type: string
            required:
            - id
            - type
      appEvent:
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
                - appEvents
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
