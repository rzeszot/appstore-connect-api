---
type: object
title: AppPreOrderCreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - appPreOrders
      attributes:
        type: object
        properties:
          appReleaseDate:
            type: string
            format: date
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
        required:
        - app
    required:
    - relationships
    - type
required:
- data
