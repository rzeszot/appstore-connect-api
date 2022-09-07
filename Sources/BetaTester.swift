---
type: object
title: BetaTester
properties:
  type:
    type: string
    enum:
    - betaTesters
  id:
    type: string
  attributes:
    type: object
    properties:
      firstName:
        type: string
      lastName:
        type: string
      email:
        type: string
        format: email
      inviteType:
        "$ref": "#/components/schemas/BetaInviteType"
  relationships:
    type: object
    properties:
      apps:
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
                  - apps
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
  links:
    "$ref": "#/components/schemas/ResourceLinks"
required:
- links
- id
- type
