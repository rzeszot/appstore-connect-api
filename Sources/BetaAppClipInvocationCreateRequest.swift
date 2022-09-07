---
type: object
title: BetaAppClipInvocationCreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - betaAppClipInvocations
      attributes:
        type: object
        properties:
          url:
            type: string
            format: uri
        required:
        - url
      relationships:
        type: object
        properties:
          buildBundle:
            type: object
            properties:
              data:
                type: object
                properties:
                  type:
                    type: string
                    enum:
                    - buildBundles
                  id:
                    type: string
                required:
                - id
                - type
            required:
            - data
          betaAppClipInvocationLocalizations:
            type: object
            properties:
              data:
                type: array
                items:
                  type: object
                  properties:
                    type:
                      type: string
                      enum:
                      - betaAppClipInvocationLocalizations
                    id:
                      type: string
                  required:
                  - id
                  - type
            required:
            - data
        required:
        - buildBundle
        - betaAppClipInvocationLocalizations
    required:
    - relationships
    - attributes
    - type
  included:
    type: array
    items:
      "$ref": "#/components/schemas/BetaAppClipInvocationLocalizationInlineCreate"
required:
- data
