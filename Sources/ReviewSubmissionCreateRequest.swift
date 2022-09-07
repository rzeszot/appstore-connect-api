---
type: object
title: ReviewSubmissionCreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - reviewSubmissions
      attributes:
        type: object
        properties:
          platform:
            "$ref": "#/components/schemas/Platform"
        required:
        - platform
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
    - attributes
    - type
required:
- data
