---
type: object
title: Build
properties:
  type:
    type: string
    enum:
    - builds
  id:
    type: string
  attributes:
    type: object
    properties:
      version:
        type: string
      uploadedDate:
        type: string
        format: date-time
      expirationDate:
        type: string
        format: date-time
      expired:
        type: boolean
      minOsVersion:
        type: string
      lsMinimumSystemVersion:
        type: string
      computedMinMacOsVersion:
        type: string
      iconAssetToken:
        "$ref": "#/components/schemas/ImageAsset"
      processingState:
        type: string
        enum:
        - PROCESSING
        - FAILED
        - INVALID
        - VALID
      buildAudienceType:
        "$ref": "#/components/schemas/BuildAudienceType"
      usesNonExemptEncryption:
        type: boolean
  relationships:
    type: object
    properties:
      preReleaseVersion:
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
                - preReleaseVersions
              id:
                type: string
            required:
            - id
            - type
      individualTesters:
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
                  - betaTesters
                id:
                  type: string
              required:
              - id
              - type
      betaGroups:
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
                  - betaGroups
                id:
                  type: string
              required:
              - id
              - type
      betaBuildLocalizations:
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
                  - betaBuildLocalizations
                id:
                  type: string
              required:
              - id
              - type
      appEncryptionDeclaration:
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
                - appEncryptionDeclarations
              id:
                type: string
            required:
            - id
            - type
      betaAppReviewSubmission:
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
                - betaAppReviewSubmissions
              id:
                type: string
            required:
            - id
            - type
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
      buildBetaDetail:
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
                - buildBetaDetails
              id:
                type: string
            required:
            - id
            - type
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
      icons:
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
                  - buildIcons
                id:
                  type: string
              required:
              - id
              - type
      buildBundles:
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
                  - buildBundles
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
