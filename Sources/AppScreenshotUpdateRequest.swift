---
type: object
title: AppScreenshotUpdateRequest
properties:
  data:
    type: object
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
          sourceFileChecksum:
            type: string
          uploaded:
            type: boolean
    required:
    - id
    - type
required:
- data
