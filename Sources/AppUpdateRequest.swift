---
type: object
title: AppUpdateRequest
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
      attributes:
        type: object
        properties:
          bundleId:
            type: string
          primaryLocale:
            type: string
          subscriptionStatusUrl:
            type: string
            format: uri
          subscriptionStatusUrlVersion:
            "$ref": "#/components/schemas/SubscriptionStatusUrlVersion"
          subscriptionStatusUrlForSandbox:
            type: string
            format: uri
          subscriptionStatusUrlVersionForSandbox:
            "$ref": "#/components/schemas/SubscriptionStatusUrlVersion"
          availableInNewTerritories:
            type: boolean
          contentRightsDeclaration:
            type: string
            enum:
            - DOES_NOT_USE_THIRD_PARTY_CONTENT
            - USES_THIRD_PARTY_CONTENT
      relationships:
        type: object
        properties:
          prices:
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
                      - appPrices
                    id:
                      type: string
                  required:
                  - id
                  - type
          availableTerritories:
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
                      - territories
                    id:
                      type: string
                  required:
                  - id
                  - type
    required:
    - id
    - type
  included:
    type: array
    items:
      "$ref": "#/components/schemas/AppPriceInlineCreate"
required:
- data
