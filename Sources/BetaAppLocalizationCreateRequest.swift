---
type: object
title: BetaAppLocalizationCreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - betaAppLocalizations
      attributes:
        type: object
        properties:
          feedbackEmail:
            type: string
          marketingUrl:
            type: string
          privacyPolicyUrl:
            type: string
          tvOsPrivacyPolicy:
            type: string
          description:
            type: string
          locale:
            type: string
        required:
        - locale
      relationships:
        type: object
        properties:
          app:
            type: object
            properties:
              data:
                type: object
                properties:
                  type:
                    type: string
                    enum:
                    - apps
                  id:
                    type: string
                required:
                - id
                - type
            required:
            - data
        required:
        - app
    required:
    - relationships
    - attributes
    - type
required:
- data
