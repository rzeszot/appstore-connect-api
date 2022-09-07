---
type: object
title: InAppPurchaseContent
properties:
  type:
    type: string
    enum:
    - inAppPurchaseContents
  id:
    type: string
  attributes:
    type: object
    properties:
      fileName:
        type: string
      fileSize:
        type: integer
      url:
        type: string
        format: uri
      lastModifiedDate:
        type: string
        format: date-time
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
