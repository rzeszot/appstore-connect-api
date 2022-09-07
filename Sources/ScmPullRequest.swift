---
type: object
title: ScmPullRequest
properties:
  type:
    type: string
    enum:
    - scmPullRequests
  id:
    type: string
  attributes:
    type: object
    properties:
      title:
        type: string
      number:
        type: integer
      webUrl:
        type: string
        format: uri
      sourceRepositoryOwner:
        type: string
      sourceRepositoryName:
        type: string
      sourceBranchName:
        type: string
      destinationRepositoryOwner:
        type: string
      destinationRepositoryName:
        type: string
      destinationBranchName:
        type: string
      isClosed:
        type: boolean
      isCrossRepository:
        type: boolean
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
