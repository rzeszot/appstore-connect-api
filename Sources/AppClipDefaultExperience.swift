---
type: object
title: AppClipDefaultExperience
properties:
  type:
    type: string
    enum:
    - appClipDefaultExperiences
  id:
    type: string
  attributes:
    type: object
    properties:
      action:
        "$ref": "#/components/schemas/AppClipAction"
  relationships:
    type: object
    properties:
      appClip:
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
                - appClips
              id:
                type: string
            required:
            - id
            - type
      releaseWithAppStoreVersion:
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
      appClipDefaultExperienceLocalizations:
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
                  - appClipDefaultExperienceLocalizations
                id:
                  type: string
              required:
              - id
              - type
      appClipAppStoreReviewDetail:
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
                - appClipAppStoreReviewDetails
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
