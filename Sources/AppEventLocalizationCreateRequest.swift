---
type: object
title: AppEventLocalizationCreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - appEventLocalizations
      attributes:
        type: object
        properties:
          locale:
            type: string
          name:
            type: string
          shortDescription:
            type: string
          longDescription:
            type: string
        required:
        - locale
      relationships:
        type: object
        properties:
          appEvent:
            type: object
            properties:
              data:
                type: object
                properties:
                  type:
                    type: string
                    enum:
                    - appEvents
                  id:
                    type: string
                required:
                - id
                - type
            required:
            - data
        required:
        - appEvent
    required:
    - relationships
    - attributes
    - type
required:
- data
