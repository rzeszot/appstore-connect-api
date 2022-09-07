---
type: object
title: AppClipDefaultExperienceCreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - appClipDefaultExperiences
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
            required:
            - data
          releaseWithAppStoreVersion:
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
          appClipDefaultExperienceTemplate:
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
        - appClip
    required:
    - relationships
    - type
required:
- data
