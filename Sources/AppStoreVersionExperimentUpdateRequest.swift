---
type: object
title: AppStoreVersionExperimentUpdateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - appStoreVersionExperiments
      id:
        type: string
      attributes:
        type: object
        properties:
          name:
            type: string
          trafficProportion:
            type: integer
          started:
            type: boolean
    required:
    - id
    - type
required:
- data
