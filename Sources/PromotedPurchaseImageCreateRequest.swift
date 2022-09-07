---
type: object
title: PromotedPurchaseImageCreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - promotedPurchaseImages
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
          promotedPurchase:
            type: object
            properties:
              data:
                type: object
                properties:
                  type:
                    type: string
                    enum:
                    - promotedPurchases
                  id:
                    type: string
                required:
                - id
                - type
            required:
            - data
        required:
        - promotedPurchase
    required:
    - relationships
    - attributes
    - type
required:
- data
