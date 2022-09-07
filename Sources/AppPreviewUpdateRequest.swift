---
type: object
title: AppPreviewUpdateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - appPreviews
      id:
        type: string
      attributes:
        type: object
        properties:
          sourceFileChecksum:
            type: string
          previewFrameTimeCode:
            type: string
          uploaded:
            type: boolean
    required:
    - id
    - type
required:
- data
