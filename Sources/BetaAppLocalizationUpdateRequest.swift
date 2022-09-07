---
type: object
title: BetaAppLocalizationUpdateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - betaAppLocalizations
      id:
        type: string
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
    required:
    - id
    - type
required:
- data
