---
type: object
title: AppStoreVersionLocalizationCreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - appStoreVersionLocalizations
      attributes:
        type: object
        properties:
          description:
            type: string
          locale:
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
        - locale
      relationships:
        type: object
        properties:
          appStoreVersion:
            type: object
            properties:
              data:
                type: object
                properties:
                  type:
                    type: string
                    enum:
                    - appStoreVersions
                  id:
                    type: string
                required:
                - id
                - type
            required:
            - data
        required:
        - appStoreVersion
    required:
    - relationships
    - attributes
    - type
required:
- data
