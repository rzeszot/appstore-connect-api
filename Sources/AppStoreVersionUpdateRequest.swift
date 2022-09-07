---
type: object
title: AppStoreVersionUpdateRequest
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
      attributes:
        type: object
        properties:
          versionString:
            type: string
          copyright:
            type: string
          releaseType:
            type: string
            enum:
            - MANUAL
            - AFTER_APPROVAL
            - SCHEDULED
          earliestReleaseDate:
            type: string
            format: date-time
          downloadable:
            type: boolean
      relationships:
        type: object
        properties:
          build:
            type: object
            properties:
              data:
                type: object
                properties:
                  type:
                    type: string
                    enum:
                    - builds
                  id:
                    type: string
                required:
                - id
                - type
          appClipDefaultExperience:
            type: object
            properties:
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
    required:
    - id
    - type
required:
- data
