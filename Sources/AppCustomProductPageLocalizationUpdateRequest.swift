---
type: object
title: AppCustomProductPageLocalizationUpdateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - appCustomProductPageLocalizations
      id:
        type: string
      attributes:
        type: object
        properties:
          promotionalText:
            type: string
    required:
    - id
    - type
required:
- data
