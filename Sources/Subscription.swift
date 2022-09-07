---
type: object
title: Subscription
properties:
  type:
    type: string
    enum:
    - subscriptions
  id:
    type: string
  attributes:
    type: object
    properties:
      name:
        type: string
      productId:
        type: string
      familySharable:
        type: boolean
      state:
        type: string
        enum:
        - MISSING_METADATA
        - READY_TO_SUBMIT
        - WAITING_FOR_REVIEW
        - IN_REVIEW
        - DEVELOPER_ACTION_NEEDED
        - PENDING_BINARY_APPROVAL
        - APPROVED
        - DEVELOPER_REMOVED_FROM_SALE
        - REMOVED_FROM_SALE
        - REJECTED
      subscriptionPeriod:
        type: string
        enum:
        - ONE_WEEK
        - ONE_MONTH
        - TWO_MONTHS
        - THREE_MONTHS
        - SIX_MONTHS
        - ONE_YEAR
      reviewNote:
        type: string
      groupLevel:
        type: integer
      availableInAllTerritories:
        type: boolean
  relationships:
    type: object
    properties:
      subscriptionLocalizations:
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
                  - subscriptionLocalizations
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
                - subscriptionAppStoreReviewScreenshots
              id:
                type: string
            required:
            - id
            - type
      group:
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
                - subscriptionGroups
              id:
                type: string
            required:
            - id
            - type
      introductoryOffers:
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
                  - subscriptionIntroductoryOffers
                id:
                  type: string
              required:
              - id
              - type
      promotionalOffers:
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
                  - subscriptionPromotionalOffers
                id:
                  type: string
              required:
              - id
              - type
      offerCodes:
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
                  - subscriptionOfferCodes
                id:
                  type: string
              required:
              - id
              - type
      prices:
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
                  - subscriptionPrices
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
  links:
    "$ref": "#/components/schemas/ResourceLinks"
required:
- links
- id
- type
