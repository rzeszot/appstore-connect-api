---
type: object
title: AppPriceTier
properties:
  type:
    type: string
    enum:
    - appPriceTiers
  id:
    type: string
  relationships:
    type: object
    properties:
      pricePoints:
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
                  - appPricePoints
                id:
                  type: string
              required:
              - id
              - type
        deprecated: true
  links:
    "$ref": "#/components/schemas/ResourceLinks"
required:
- links
- id
- type
