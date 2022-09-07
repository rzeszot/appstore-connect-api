---
type: object
title: AppStoreVersionExperimentTreatmentLocalizationCreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - appStoreVersionExperimentTreatmentLocalizations
      attributes:
        type: object
        properties:
          locale:
            type: string
        required:
        - locale
      relationships:
        type: object
        properties:
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
    required:
    - relationships
    - attributes
    - type
required:
- data
