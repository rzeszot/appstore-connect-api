---
type: object
title: AppStoreVersionExperimentCreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - appStoreVersionExperiments
      attributes:
        type: object
        properties:
          name:
            type: string
          trafficProportion:
            type: integer
        required:
        - trafficProportion
        - name
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
    - attributes
    - type
required:
- data
