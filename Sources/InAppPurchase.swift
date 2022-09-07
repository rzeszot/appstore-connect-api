---
type: object
title: InAppPurchase
properties:
  type:
    type: string
    enum:
    - inAppPurchases
  id:
    type: string
  attributes:
    type: object
    properties:
      referenceName:
        type: string
      productId:
        type: string
      inAppPurchaseType:
        type: string
        enum:
        - AUTOMATICALLY_RENEWABLE_SUBSCRIPTION
        - NON_CONSUMABLE
        - CONSUMABLE
        - NON_RENEWING_SUBSCRIPTION
        - FREE_SUBSCRIPTION
      state:
        type: string
        enum:
        - CREATED
        - DEVELOPER_SIGNED_OFF
        - DEVELOPER_ACTION_NEEDED
        - DELETION_IN_PROGRESS
        - APPROVED
        - DELETED
        - REMOVED_FROM_SALE
        - DEVELOPER_REMOVED_FROM_SALE
        - WAITING_FOR_UPLOAD
        - PROCESSING_CONTENT
        - REPLACED
        - REJECTED
        - WAITING_FOR_SCREENSHOT
        - PREPARE_FOR_SUBMISSION
        - MISSING_METADATA
        - READY_TO_SUBMIT
        - WAITING_FOR_REVIEW
        - IN_REVIEW
        - PENDING_DEVELOPER_RELEASE
  relationships:
    type: object
    properties:
      apps:
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
