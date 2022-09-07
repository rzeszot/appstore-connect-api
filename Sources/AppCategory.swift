---
type: object
title: AppCategory
properties:
  type:
    type: string
    enum:
    - appCategories
  id:
    type: string
  attributes:
    type: object
    properties:
      platforms:
        type: array
        items:
          "$ref": "#/components/schemas/Platform"
  relationships:
    type: object
    properties:
      subcategories:
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
                  - appCategories
                id:
                  type: string
              required:
              - id
              - type
      parent:
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
                - appCategories
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
