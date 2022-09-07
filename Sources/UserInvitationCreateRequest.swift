---
type: object
title: UserInvitationCreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - userInvitations
      attributes:
        type: object
        properties:
          email:
            type: string
            format: email
          firstName:
            type: string
          lastName:
            type: string
          roles:
            type: array
            items:
              "$ref": "#/components/schemas/UserRole"
          allAppsVisible:
            type: boolean
          provisioningAllowed:
            type: boolean
        required:
        - firstName
        - lastName
        - roles
        - email
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
    - attributes
    - type
required:
- data
