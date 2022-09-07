---
type: object
title: ProfileCreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - profiles
      attributes:
        type: object
        properties:
          name:
            type: string
          profileType:
            type: string
            enum:
            - IOS_APP_DEVELOPMENT
            - IOS_APP_STORE
            - IOS_APP_ADHOC
            - IOS_APP_INHOUSE
            - MAC_APP_DEVELOPMENT
            - MAC_APP_STORE
            - MAC_APP_DIRECT
            - TVOS_APP_DEVELOPMENT
            - TVOS_APP_STORE
            - TVOS_APP_ADHOC
            - TVOS_APP_INHOUSE
            - MAC_CATALYST_APP_DEVELOPMENT
            - MAC_CATALYST_APP_STORE
            - MAC_CATALYST_APP_DIRECT
        required:
        - profileType
        - name
      relationships:
        type: object
        properties:
          bundleId:
            type: object
            properties:
              data:
                type: object
                properties:
                  type:
                    type: string
                    enum:
                    - bundleIds
                  id:
                    type: string
                required:
                - id
                - type
            required:
            - data
          devices:
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
                      - devices
                    id:
                      type: string
                  required:
                  - id
                  - type
          certificates:
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
                      - certificates
                    id:
                      type: string
                  required:
                  - id
                  - type
            required:
            - data
        required:
        - certificates
        - bundleId
    required:
    - relationships
    - attributes
    - type
required:
- data
