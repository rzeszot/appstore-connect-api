---
type: object
title: AppStoreVersionPromotionCreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - appStoreVersionPromotions
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
          appStoreVersionExperimentTreatment:
            type: object
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
                required:
                - id
                - type
            required:
            - data
        required:
        - appStoreVersionExperimentTreatment
        - appStoreVersion
    required:
    - relationships
    - type
required:
- data
