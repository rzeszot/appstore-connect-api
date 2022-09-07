---
type: object
title: BetaTesterCreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - betaTesters
      attributes:
        type: object
        properties:
          firstName:
            type: string
          lastName:
            type: string
          email:
            type: string
            format: email
        required:
        - email
      relationships:
        type: object
        properties:
          betaGroups:
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
                      - betaGroups
                    id:
                      type: string
                  required:
                  - id
                  - type
          builds:
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
                      - builds
                    id:
                      type: string
                  required:
                  - id
                  - type
    required:
    - attributes
    - type
required:
- data
