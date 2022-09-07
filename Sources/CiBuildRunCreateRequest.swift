---
type: object
title: CiBuildRunCreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - ciBuildRuns
      attributes:
        type: object
        properties:
          clean:
            type: boolean
      relationships:
        type: object
        properties:
          buildRun:
            type: object
            properties:
              data:
                type: object
                properties:
                  type:
                    type: string
                    enum:
                    - ciBuildRuns
                  id:
                    type: string
                required:
                - id
                - type
          workflow:
            type: object
            properties:
              data:
                type: object
                properties:
                  type:
                    type: string
                    enum:
                    - ciWorkflows
                  id:
                    type: string
                required:
                - id
                - type
          sourceBranchOrTag:
            type: object
            properties:
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
          pullRequest:
            type: object
            properties:
              data:
                type: object
                properties:
                  type:
                    type: string
                    enum:
                    - scmPullRequests
                  id:
                    type: string
                required:
                - id
                - type
    required:
    - type
required:
- data
