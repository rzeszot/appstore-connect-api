---
type: object
title: ScmGitReference
properties:
  type:
    type: string
    enum:
    - scmGitReferences
  id:
    type: string
  attributes:
    type: object
    properties:
      name:
        type: string
      canonicalName:
        type: string
      isDeleted:
        type: boolean
      kind:
        "$ref": "#/components/schemas/CiGitRefKind"
  relationships:
    type: object
    properties:
      repository:
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
                - scmRepositories
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
