---
type: object
title: InAppPurchaseAppStoreReviewScreenshotCreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - inAppPurchaseAppStoreReviewScreenshots
      attributes:
        type: object
        properties:
          fileSize:
            type: integer
          fileName:
            type: string
        required:
        - fileName
        - fileSize
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
