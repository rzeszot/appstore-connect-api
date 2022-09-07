---
type: object
title: Profile
properties:
  type:
    type: string
    enum:
    - profiles
  id:
    type: string
  attributes:
    type: object
    properties:
      name:
        type: string
      platform:
        "$ref": "#/components/schemas/BundleIdPlatform"
      profileType:
        type: string
        enum:
        - IOS_APP_DEVELOPMENT
        - IOS_APP_STORE
        - IOS_APP_ADHOC
        - IOS_APP_INHOUSE
        - MAC_APP_DEVELOPMENT
        - MAC_APP_STORE
        - MAC_APP_DIRECT
        - TVOS_APP_DEVELOPMENT
        - TVOS_APP_STORE
        - TVOS_APP_ADHOC
        - TVOS_APP_INHOUSE
        - MAC_CATALYST_APP_DEVELOPMENT
        - MAC_CATALYST_APP_STORE
        - MAC_CATALYST_APP_DIRECT
      profileState:
        type: string
        enum:
        - ACTIVE
        - INVALID
      profileContent:
        type: string
      uuid:
        type: string
      createdDate:
        type: string
        format: date-time
      expirationDate:
        type: string
        format: date-time
  relationships:
    type: object
    properties:
      bundleId:
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
                - bundleIds
              id:
                type: string
            required:
            - id
            - type
      devices:
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
                  - devices
                id:
                  type: string
              required:
              - id
              - type
      certificates:
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
                  - certificates
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
