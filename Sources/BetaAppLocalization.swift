---
type: object
title: BetaAppLocalization
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
      locale:
        type: string
  relationships:
    type: object
    properties:
      app:
        type: object
        properties:
          links:
            type: object
            properties:
              self:
                type: string
                format: uri-reference
              related:
                type: string
                format: uri-reference
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
  links:
    "$ref": "#/components/schemas/ResourceLinks"
required:
- links
- id
- type
