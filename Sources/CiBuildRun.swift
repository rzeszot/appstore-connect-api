---
type: object
title: CiBuildRun
properties:
  type:
    type: string
    enum:
    - ciBuildRuns
  id:
    type: string
  attributes:
    type: object
    properties:
      number:
        type: integer
      createdDate:
        type: string
        format: date-time
      startedDate:
        type: string
        format: date-time
      finishedDate:
        type: string
        format: date-time
      sourceCommit:
        type: object
        properties:
          commitSha:
            type: string
          message:
            type: string
          author:
            "$ref": "#/components/schemas/CiGitUser"
          committer:
            "$ref": "#/components/schemas/CiGitUser"
          webUrl:
            type: string
            format: uri
      destinationCommit:
        type: object
        properties:
          commitSha:
            type: string
          message:
            type: string
          author:
            "$ref": "#/components/schemas/CiGitUser"
          committer:
            "$ref": "#/components/schemas/CiGitUser"
          webUrl:
            type: string
            format: uri
      isPullRequestBuild:
        type: boolean
      issueCounts:
        "$ref": "#/components/schemas/CiIssueCounts"
      executionProgress:
        "$ref": "#/components/schemas/CiExecutionProgress"
      completionStatus:
        "$ref": "#/components/schemas/CiCompletionStatus"
      startReason:
        type: string
        enum:
        - GIT_REF_CHANGE
        - MANUAL
        - MANUAL_REBUILD
        - PULL_REQUEST_OPEN
        - PULL_REQUEST_UPDATE
        - SCHEDULE
      cancelReason:
        type: string
        enum:
        - AUTOMATICALLY_BY_NEWER_BUILD
        - MANUALLY_BY_USER
  relationships:
    type: object
    properties:
      builds:
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
                  - builds
                id:
                  type: string
              required:
              - id
              - type
      workflow:
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
                - ciWorkflows
              id:
                type: string
            required:
            - id
            - type
      product:
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
                - ciProducts
              id:
                type: string
            required:
            - id
            - type
      sourceBranchOrTag:
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
      destinationBranch:
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
      pullRequest:
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
                - scmPullRequests
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
