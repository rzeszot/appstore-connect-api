---
type: object
title: AppCustomProductPageCreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - appCustomProductPages
      attributes:
        type: object
        properties:
          name:
            type: string
        required:
        - name
      relationships:
        type: object
        properties:
          app:
            type: object
            properties:
              data:
                type: object
                properties:
                  type:
                    type: string
                    enum:
                    - apps
                  id:
                    type: string
                required:
                - id
                - type
            required:
            - data
          appCustomProductPageVersions:
            type: object
            properties:
              data:
                type: array
                items:
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
          appStoreVersionTemplate:
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
          customProductPageTemplate:
            type: object
            properties:
              data:
                type: object
                properties:
                  type:
                    type: string
                    enum:
                    - appCustomProductPages
                  id:
                    type: string
                required:
                - id
                - type
        required:
        - app
    required:
    - relationships
    - attributes
    - type
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/AppCustomProductPageLocalizationInlineCreate"
      - "$ref": "#/components/schemas/AppCustomProductPageVersionInlineCreate"
required:
- data
