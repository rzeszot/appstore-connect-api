---
type: object
title: AppClipAdvancedExperienceImage
properties:
  type:
    type: string
    enum:
    - appClipAdvancedExperienceImages
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
      uploadOperations:
        type: array
        items:
          "$ref": "#/components/schemas/UploadOperation"
      assetDeliveryState:
        "$ref": "#/components/schemas/AppMediaAssetState"
  links:
    "$ref": "#/components/schemas/ResourceLinks"
required:
- links
- id
- type
