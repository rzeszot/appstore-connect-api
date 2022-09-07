---
type: object
title: AppClipDefaultExperienceUpdateRequest
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
      attributes:
        type: object
        properties:
          action:
            "$ref": "#/components/schemas/AppClipAction"
      relationships:
        type: object
        properties:
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
    required:
    - id
    - type
required:
- data
