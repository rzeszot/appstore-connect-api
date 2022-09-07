---
type: object
title: BetaAppClipInvocationLocalizationCreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - betaAppClipInvocationLocalizations
      attributes:
        type: object
        properties:
          title:
            type: string
          locale:
            type: string
        required:
        - locale
        - title
      relationships:
        type: object
        properties:
          betaAppClipInvocation:
            type: object
            properties:
              data:
                type: object
                properties:
                  type:
                    type: string
                    enum:
                    - betaAppClipInvocations
                  id:
                    type: string
                required:
                - id
                - type
            required:
            - data
        required:
        - betaAppClipInvocation
    required:
    - relationships
    - attributes
    - type
required:
- data
