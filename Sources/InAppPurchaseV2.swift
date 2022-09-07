---
type: object
title: InAppPurchaseV2
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
      name:
        type: string
      productId:
        type: string
      inAppPurchaseType:
        "$ref": "#/components/schemas/InAppPurchaseType"
      state:
        "$ref": "#/components/schemas/InAppPurchaseState"
      reviewNote:
        type: string
      familySharable:
        type: boolean
      contentHosting:
        type: boolean
      availableInAllTerritories:
        type: boolean
  relationships:
    type: object
    properties:
      inAppPurchaseLocalizations:
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
                  - inAppPurchaseLocalizations
                id:
                  type: string
              required:
              - id
              - type
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
                  - inAppPurchasePricePoints
                id:
                  type: string
              required:
              - id
              - type
      content:
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
                - inAppPurchaseContents
              id:
                type: string
            required:
            - id
            - type
      appStoreReviewScreenshot:
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
                - inAppPurchaseAppStoreReviewScreenshots
              id:
                type: string
            required:
            - id
            - type
      promotedPurchase:
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
                - promotedPurchases
              id:
                type: string
            required:
            - id
            - type
      iapPriceSchedule:
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
                - inAppPurchasePriceSchedules
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
