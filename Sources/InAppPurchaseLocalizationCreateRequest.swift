---
type: object
title: InAppPurchaseLocalizationCreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - inAppPurchaseLocalizations
      attributes:
        type: object
        properties:
          name:
            type: string
          locale:
            type: string
          description:
            type: string
        required:
        - name
        - locale
      relationships:
        type: object
        properties:
          inAppPurchaseV2:
            type: object
            properties:
              data:
                type: object
                properties:
                  type:
                    type: string
                    enum:
                    - inAppPurchases
                  id:
                    type: string
                required:
                - id
                - type
            required:
            - data
        required:
        - inAppPurchaseV2
    required:
    - relationships
    - attributes
    - type
required:
- data
