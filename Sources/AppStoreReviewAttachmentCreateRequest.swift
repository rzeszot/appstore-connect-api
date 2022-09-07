---
type: object
title: AppStoreReviewAttachmentCreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - appStoreReviewAttachments
      attributes:
        type: object
        properties:
          fileSize:
            type: integer
          fileName:
            type: string
        required:
        - fileName
        - fileSize
      relationships:
        type: object
        properties:
          appStoreReviewDetail:
            type: object
            properties:
              data:
                type: object
                properties:
                  type:
                    type: string
                    enum:
                    - appStoreReviewDetails
                  id:
                    type: string
                required:
                - id
                - type
            required:
            - data
        required:
        - appStoreReviewDetail
    required:
    - relationships
    - attributes
    - type
required:
- data
