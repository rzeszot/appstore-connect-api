---
type: object
title: InAppPurchaseV2CreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - inAppPurchases
      attributes:
        type: object
        properties:
          name:
            type: string
          productId:
            type: string
          inAppPurchaseType:
            "$ref": "#/components/schemas/InAppPurchaseType"
          reviewNote:
            type: string
          familySharable:
            type: boolean
          availableInAllTerritories:
            type: boolean
        required:
        - productId
        - name
        - inAppPurchaseType
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
