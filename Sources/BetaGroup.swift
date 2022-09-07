---
type: object
title: BetaGroup
properties:
  type:
    type: string
    enum:
    - betaGroups
  id:
    type: string
  attributes:
    type: object
    properties:
      name:
        type: string
      createdDate:
        type: string
        format: date-time
      isInternalGroup:
        type: boolean
      hasAccessToAllBuilds:
        type: boolean
      publicLinkEnabled:
        type: boolean
      publicLinkId:
        type: string
      publicLinkLimitEnabled:
        type: boolean
      publicLinkLimit:
        type: integer
      publicLink:
        type: string
      feedbackEnabled:
        type: boolean
      iosBuildsAvailableForAppleSiliconMac:
        type: boolean
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
      builds:
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
                  - builds
                id:
                  type: string
              required:
              - id
              - type
      betaTesters:
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
  links:
    "$ref": "#/components/schemas/ResourceLinks"
required:
- links
- id
- type
