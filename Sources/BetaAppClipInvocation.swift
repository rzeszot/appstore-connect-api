---
type: object
title: BetaAppClipInvocation
properties:
  type:
    type: string
    enum:
    - betaAppClipInvocations
  id:
    type: string
  attributes:
    type: object
    properties:
      url:
        type: string
        format: uri
  relationships:
    type: object
    properties:
      betaAppClipInvocationLocalizations:
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
          meta:
            "$ref": "#/components/schemas/PagingInformation"
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
  links:
    "$ref": "#/components/schemas/ResourceLinks"
required:
- links
- id
- type
