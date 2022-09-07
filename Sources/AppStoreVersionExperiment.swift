---
type: object
title: AppStoreVersionExperiment
properties:
  type:
    type: string
    enum:
    - appStoreVersionExperiments
  id:
    type: string
  attributes:
    type: object
    properties:
      name:
        type: string
      trafficProportion:
        type: integer
      state:
        type: string
        enum:
        - PREPARE_FOR_SUBMISSION
        - READY_FOR_REVIEW
        - WAITING_FOR_REVIEW
        - IN_REVIEW
        - ACCEPTED
        - APPROVED
        - REJECTED
        - COMPLETED
        - STOPPED
      reviewRequired:
        type: boolean
      startDate:
        type: string
        format: date-time
      endDate:
        type: string
        format: date-time
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
      appStoreVersionExperimentTreatments:
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
                  - appStoreVersionExperimentTreatments
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
