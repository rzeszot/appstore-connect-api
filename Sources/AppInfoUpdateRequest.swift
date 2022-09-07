---
type: object
title: AppInfoUpdateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - appInfos
      id:
        type: string
      relationships:
        type: object
        properties:
          primaryCategory:
            type: object
            properties:
              data:
                type: object
                properties:
                  type:
                    type: string
                    enum:
                    - appCategories
                  id:
                    type: string
                required:
                - id
                - type
          primarySubcategoryOne:
            type: object
            properties:
              data:
                type: object
                properties:
                  type:
                    type: string
                    enum:
                    - appCategories
                  id:
                    type: string
                required:
                - id
                - type
          primarySubcategoryTwo:
            type: object
            properties:
              data:
                type: object
                properties:
                  type:
                    type: string
                    enum:
                    - appCategories
                  id:
                    type: string
                required:
                - id
                - type
          secondaryCategory:
            type: object
            properties:
              data:
                type: object
                properties:
                  type:
                    type: string
                    enum:
                    - appCategories
                  id:
                    type: string
                required:
                - id
                - type
          secondarySubcategoryOne:
            type: object
            properties:
              data:
                type: object
                properties:
                  type:
                    type: string
                    enum:
                    - appCategories
                  id:
                    type: string
                required:
                - id
                - type
          secondarySubcategoryTwo:
            type: object
            properties:
              data:
                type: object
                properties:
                  type:
                    type: string
                    enum:
                    - appCategories
                  id:
                    type: string
                required:
                - id
                - type
    required:
    - id
    - type
required:
- data
