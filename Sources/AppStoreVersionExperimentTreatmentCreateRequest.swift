---
type: object
title: AppStoreVersionExperimentTreatmentCreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - appStoreVersionExperimentTreatments
      attributes:
        type: object
        properties:
          name:
            type: string
          appIconName:
            type: string
        required:
        - name
      relationships:
        type: object
        properties:
          appStoreVersionExperiment:
            type: object
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
                required:
                - id
                - type
            required:
            - data
        required:
        - appStoreVersionExperiment
    required:
    - relationships
    - attributes
    - type
required:
- data
