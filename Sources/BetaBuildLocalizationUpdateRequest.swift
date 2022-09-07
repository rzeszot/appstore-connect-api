---
type: object
title: BetaBuildLocalizationUpdateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - betaBuildLocalizations
      id:
        type: string
      attributes:
        type: object
        properties:
          whatsNew:
            type: string
    required:
    - id
    - type
required:
- data
