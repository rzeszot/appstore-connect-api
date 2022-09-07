---
type: object
title: AppInfoLocalizationCreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - appInfoLocalizations
      attributes:
        type: object
        properties:
          locale:
            type: string
          name:
            type: string
          subtitle:
            type: string
          privacyPolicyUrl:
            type: string
          privacyChoicesUrl:
            type: string
          privacyPolicyText:
            type: string
        required:
        - locale
      relationships:
        type: object
        properties:
          appInfo:
            type: object
            properties:
              data:
                type: object
                properties:
                  type:
                    type: string
                    enum:
                    - appInfos
                  id:
                    type: string
                required:
                - id
                - type
            required:
            - data
        required:
        - appInfo
    required:
    - relationships
    - attributes
    - type
required:
- data
