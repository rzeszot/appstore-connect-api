---
type: object
title: BetaBuildLocalizationCreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - betaBuildLocalizations
      attributes:
        type: object
        properties:
          whatsNew:
            type: string
          locale:
            type: string
        required:
        - locale
      relationships:
        type: object
        properties:
          build:
            type: object
            properties:
              data:
                type: object
                properties:
                  type:
                    type: string
                    enum:
                    - builds
                  id:
                    type: string
                required:
                - id
                - type
            required:
            - data
        required:
        - build
    required:
    - relationships
    - attributes
    - type
required:
- data
