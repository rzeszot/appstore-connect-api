---
type: object
title: InAppPurchaseAppStoreReviewScreenshot
properties:
  type:
    type: string
    enum:
    - inAppPurchaseAppStoreReviewScreenshots
  id:
    type: string
  attributes:
    type: object
    properties:
      fileSize:
        type: integer
      fileName:
        type: string
      sourceFileChecksum:
        type: string
      imageAsset:
        "$ref": "#/components/schemas/ImageAsset"
      assetToken:
        type: string
      assetType:
        type: string
      uploadOperations:
        type: array
        items:
          "$ref": "#/components/schemas/UploadOperation"
      assetDeliveryState:
        "$ref": "#/components/schemas/AppMediaAssetState"
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
