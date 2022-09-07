---
type: object
title: AppEventScreenshotUpdateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - appEventScreenshots
      id:
        type: string
      attributes:
        type: object
        properties:
          uploaded:
            type: boolean
    required:
    - id
    - type
required:
- data
