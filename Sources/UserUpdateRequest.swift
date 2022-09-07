---
type: object
title: UserUpdateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - users
      id:
        type: string
      attributes:
        type: object
        properties:
          roles:
            type: array
            items:
              "$ref": "#/components/schemas/UserRole"
          allAppsVisible:
            type: boolean
          provisioningAllowed:
            type: boolean
      relationships:
        type: object
        properties:
          visibleApps:
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
                      - apps
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
