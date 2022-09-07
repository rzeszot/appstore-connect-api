---
type: object
title: UserInvitation
properties:
  type:
    type: string
    enum:
    - userInvitations
  id:
    type: string
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
      expirationDate:
        type: string
        format: date-time
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
          links:
            type: object
            properties:
              self:
                type: string
                format: uri-reference
              related:
                type: string
                format: uri-reference
          meta:
            "$ref": "#/components/schemas/PagingInformation"
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
  links:
    "$ref": "#/components/schemas/ResourceLinks"
required:
- links
- id
- type
