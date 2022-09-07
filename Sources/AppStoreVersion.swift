---
type: object
title: AppStoreVersion
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
      platform:
        "$ref": "#/components/schemas/Platform"
      versionString:
        type: string
      appStoreState:
        "$ref": "#/components/schemas/AppStoreVersionState"
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
      createdDate:
        type: string
        format: date-time
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
      ageRatingDeclaration:
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
                - ageRatingDeclarations
              id:
                type: string
            required:
            - id
            - type
        deprecated: true
      appStoreVersionLocalizations:
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
                  - appStoreVersionLocalizations
                id:
                  type: string
              required:
              - id
              - type
      build:
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
                - builds
              id:
                type: string
            required:
            - id
            - type
      appStoreVersionPhasedRelease:
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
                - appStoreVersionPhasedReleases
              id:
                type: string
            required:
            - id
            - type
      routingAppCoverage:
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
                - routingAppCoverages
              id:
                type: string
            required:
            - id
            - type
      appStoreReviewDetail:
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
                - appStoreReviewDetails
              id:
                type: string
            required:
            - id
            - type
      appStoreVersionSubmission:
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
                - appStoreVersionSubmissions
              id:
                type: string
            required:
            - id
            - type
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
      appStoreVersionExperiments:
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
                  - appStoreVersionExperiments
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
