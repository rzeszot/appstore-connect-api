---
type: object
title: BuildBundle
properties:
  type:
    type: string
    enum:
    - buildBundles
  id:
    type: string
  attributes:
    type: object
    properties:
      bundleId:
        type: string
      bundleType:
        type: string
        enum:
        - APP
        - APP_CLIP
      sdkBuild:
        type: string
      platformBuild:
        type: string
      fileName:
        type: string
      hasSirikit:
        type: boolean
      hasOnDemandResources:
        type: boolean
      hasPrerenderedIcon:
        type: boolean
      usesLocationServices:
        type: boolean
      isIosBuildMacAppStoreCompatible:
        type: boolean
      includesSymbols:
        type: boolean
      dSYMUrl:
        type: string
        format: uri
      supportedArchitectures:
        type: array
        items:
          type: string
      requiredCapabilities:
        type: array
        items:
          type: string
      deviceProtocols:
        type: array
        items:
          type: string
      locales:
        type: array
        items:
          type: string
      entitlements:
        type: object
        additionalProperties:
          type: object
          additionalProperties:
            type: string
  relationships:
    type: object
    properties:
      appClipDomainCacheStatus:
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
                - appClipDomainStatuses
              id:
                type: string
            required:
            - id
            - type
      appClipDomainDebugStatus:
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
                - appClipDomainStatuses
              id:
                type: string
            required:
            - id
            - type
      betaAppClipInvocations:
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
                  - betaAppClipInvocations
                id:
                  type: string
              required:
              - id
              - type
      buildBundleFileSizes:
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
                  - buildBundleFileSizes
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
