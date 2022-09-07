---
type: object
title: AppStoreVersionExperimentTreatmentUpdateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - appStoreVersionExperimentTreatments
      id:
        type: string
      attributes:
        type: object
        properties:
          name:
            type: string
          appIconName:
            type: string
    required:
    - id
    - type
required:
- data
