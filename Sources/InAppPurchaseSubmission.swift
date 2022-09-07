---
type: object
title: InAppPurchaseSubmission
properties:
  type:
    type: string
    enum:
    - inAppPurchaseSubmissions
  id:
    type: string
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
