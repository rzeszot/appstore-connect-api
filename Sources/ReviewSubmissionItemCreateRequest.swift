---
type: object
title: ReviewSubmissionItemCreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - reviewSubmissionItems
      relationships:
        type: object
        properties:
          reviewSubmission:
            type: object
            properties:
              data:
                type: object
                properties:
                  type:
                    type: string
                    enum:
                    - reviewSubmissions
                  id:
                    type: string
                required:
                - id
                - type
            required:
            - data
          appStoreVersion:
            type: object
            properties:
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
        required:
        - reviewSubmission
    required:
    - relationships
    - type
required:
- data
