---
type: object
properties:
  type:
    type: string
    enum:
    - betaAppClipInvocationLocalizations
  id:
    type: string
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
- attributes
- type
