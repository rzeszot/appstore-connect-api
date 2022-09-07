---
type: object
title: AppInfo
properties:
  type:
    type: string
    enum:
    - appInfos
  id:
    type: string
  attributes:
    type: object
    properties:
      appStoreState:
        "$ref": "#/components/schemas/AppStoreVersionState"
      appStoreAgeRating:
        "$ref": "#/components/schemas/AppStoreAgeRating"
      brazilAgeRating:
        "$ref": "#/components/schemas/BrazilAgeRating"
      kidsAgeBand:
        "$ref": "#/components/schemas/KidsAgeBand"
  relationships:
    type: object
    properties:
      app:
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
                - apps
              id:
                type: string
            required:
            - id
            - type
      ageRatingDeclaration:
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
                - ageRatingDeclarations
              id:
                type: string
            required:
            - id
            - type
      appInfoLocalizations:
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
                  - appInfoLocalizations
                id:
                  type: string
              required:
              - id
              - type
      primaryCategory:
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
      primarySubcategoryOne:
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
      primarySubcategoryTwo:
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
      secondaryCategory:
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
      secondarySubcategoryOne:
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
      secondarySubcategoryTwo:
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
