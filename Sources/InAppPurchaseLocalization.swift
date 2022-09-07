---
type: object
title: InAppPurchaseLocalization
properties:
  type:
    type: string
    enum:
    - inAppPurchaseLocalizations
  id:
    type: string
  attributes:
    type: object
    properties:
      name:
        type: string
      locale:
        type: string
      description:
        type: string
      state:
        type: string
        enum:
        - PREPARE_FOR_SUBMISSION
        - WAITING_FOR_REVIEW
        - APPROVED
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
  links:
    "$ref": "#/components/schemas/ResourceLinks"
required:
- links
- id
- type
