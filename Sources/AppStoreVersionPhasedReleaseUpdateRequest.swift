---
type: object
title: AppStoreVersionPhasedReleaseUpdateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - appStoreVersionPhasedReleases
      id:
        type: string
      attributes:
        type: object
        properties:
          phasedReleaseState:
            "$ref": "#/components/schemas/PhasedReleaseState"
    required:
    - id
    - type
required:
- data
