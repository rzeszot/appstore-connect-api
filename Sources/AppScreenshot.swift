---
type: object
title: AppScreenshot
properties:
  type:
    type: string
    enum:
    - appScreenshots
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
      appScreenshotSet:
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
                - appScreenshotSets
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
