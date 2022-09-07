---
type: object
title: BetaTesterInvitationCreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - betaTesterInvitations
      relationships:
        type: object
        properties:
          betaTester:
            type: object
            properties:
              data:
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
            - data
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
        - betaTester
    required:
    - relationships
    - type
required:
- data
