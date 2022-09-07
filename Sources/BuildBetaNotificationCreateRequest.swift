---
type: object
title: BuildBetaNotificationCreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - buildBetaNotifications
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
    - type
required:
- data
