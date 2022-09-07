---
type: object
title: PromotedPurchaseImage
properties:
  type:
    type: string
    enum:
    - promotedPurchaseImages
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
      assetToken:
        type: string
      imageAsset:
        "$ref": "#/components/schemas/ImageAsset"
      assetType:
        type: string
      uploadOperations:
        type: array
        items:
          "$ref": "#/components/schemas/UploadOperation"
      state:
        type: string
        enum:
        - AWAITING_UPLOAD
        - UPLOAD_COMPLETE
        - FAILED
        - PREPARE_FOR_SUBMISSION
        - WAITING_FOR_REVIEW
        - APPROVED
        - REJECTED
  relationships:
    type: object
    properties:
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
