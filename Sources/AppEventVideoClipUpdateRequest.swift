---
type: object
title: AppEventVideoClipUpdateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - appEventVideoClips
      id:
        type: string
      attributes:
        type: object
        properties:
          previewFrameTimeCode:
            type: string
          uploaded:
            type: boolean
    required:
    - id
    - type
required:
- data
