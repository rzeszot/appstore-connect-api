---
type: object
title: AppEventLocalizationUpdateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - appEventLocalizations
      id:
        type: string
      attributes:
        type: object
        properties:
          name:
            type: string
          shortDescription:
            type: string
          longDescription:
            type: string
    required:
    - id
    - type
required:
- data
