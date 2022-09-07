---
type: object
title: AppStoreVersionLocalizationUpdateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - appStoreVersionLocalizations
      id:
        type: string
      attributes:
        type: object
        properties:
          description:
            type: string
          keywords:
            type: string
          marketingUrl:
            type: string
            format: uri
          promotionalText:
            type: string
          supportUrl:
            type: string
            format: uri
          whatsNew:
            type: string
    required:
    - id
    - type
required:
- data
