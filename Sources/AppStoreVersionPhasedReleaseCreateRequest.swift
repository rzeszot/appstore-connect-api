---
type: object
title: AppStoreVersionPhasedReleaseCreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - appStoreVersionPhasedReleases
      attributes:
        type: object
        properties:
          phasedReleaseState:
            "$ref": "#/components/schemas/PhasedReleaseState"
      relationships:
        type: object
        properties:
          appStoreVersion:
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
            - data
        required:
        - appStoreVersion
    required:
    - relationships
    - type
required:
- data
