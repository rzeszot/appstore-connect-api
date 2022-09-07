---
type: object
title: AppCustomProductPageLocalizationCreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - appCustomProductPageLocalizations
      attributes:
        type: object
        properties:
          locale:
            type: string
          promotionalText:
            type: string
        required:
        - locale
      relationships:
        type: object
        properties:
          appCustomProductPageVersion:
            type: object
            properties:
              data:
                type: object
                properties:
                  type:
                    type: string
                    enum:
                    - appCustomProductPageVersions
                  id:
                    type: string
                required:
                - id
                - type
            required:
            - data
        required:
        - appCustomProductPageVersion
    required:
    - relationships
    - attributes
    - type
required:
- data
