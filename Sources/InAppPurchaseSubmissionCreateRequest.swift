---
type: object
title: InAppPurchaseSubmissionCreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - inAppPurchaseSubmissions
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
    - type
required:
- data
