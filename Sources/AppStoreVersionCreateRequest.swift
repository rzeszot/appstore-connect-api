---
type: object
title: AppStoreVersionCreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - appStoreVersions
      attributes:
        type: object
        properties:
          platform:
            "$ref": "#/components/schemas/Platform"
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
        required:
        - versionString
        - platform
      relationships:
        type: object
        properties:
          app:
            type: object
            properties:
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
            required:
            - data
          appStoreVersionLocalizations:
            type: object
            properties:
              data:
                type: array
                items:
                  type: object
                  properties:
                    type:
                      type: string
                      enum:
                      - appStoreVersionLocalizations
                    id:
                      type: string
                  required:
                  - id
                  - type
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
        required:
        - app
    required:
    - relationships
    - attributes
    - type
required:
- data
