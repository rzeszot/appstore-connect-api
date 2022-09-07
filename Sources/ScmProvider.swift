---
type: object
title: ScmProvider
properties:
  type:
    type: string
    enum:
    - scmProviders
  id:
    type: string
  attributes:
    type: object
    properties:
      scmProviderType:
        "$ref": "#/components/schemas/ScmProviderType"
      url:
        type: string
        format: uri
  links:
    "$ref": "#/components/schemas/ResourceLinks"
required:
- links
- id
- type
