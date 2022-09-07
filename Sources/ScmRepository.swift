---
type: object
title: ScmRepository
properties:
  type:
    type: string
    enum:
    - scmRepositories
  id:
    type: string
  attributes:
    type: object
    properties:
      lastAccessedDate:
        type: string
        format: date-time
      httpCloneUrl:
        type: string
        format: uri
      sshCloneUrl:
        type: string
        format: uri
      ownerName:
        type: string
      repositoryName:
        type: string
  relationships:
    type: object
    properties:
      scmProvider:
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
                - scmProviders
              id:
                type: string
            required:
            - id
            - type
      defaultBranch:
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
                - scmGitReferences
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
