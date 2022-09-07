---
type: object
title: BetaGroupCreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - betaGroups
      attributes:
        type: object
        properties:
          name:
            type: string
          isInternalGroup:
            type: boolean
          hasAccessToAllBuilds:
            type: boolean
          publicLinkEnabled:
            type: boolean
          publicLinkLimitEnabled:
            type: boolean
          publicLinkLimit:
            type: integer
          feedbackEnabled:
            type: boolean
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
          betaTesters:
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
                      - betaTesters
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
required:
- data
