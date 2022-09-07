---
type: object
title: PromotedPurchase
properties:
  type:
    type: string
    enum:
    - promotedPurchases
  id:
    type: string
  attributes:
    type: object
    properties:
      visibleForAllUsers:
        type: boolean
      enabled:
        type: boolean
      state:
        type: string
        enum:
        - APPROVED
        - IN_REVIEW
        - PREPARE_FOR_SUBMISSION
        - REJECTED
  relationships:
    type: object
    properties:
      inAppPurchaseV2:
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
      subscription:
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
          data:
            type: object
            properties:
              type:
                type: string
                enum:
                - subscriptions
              id:
                type: string
            required:
            - id
            - type
      promotionImages:
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
                  - promotedPurchaseImages
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
