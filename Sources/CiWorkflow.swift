---
type: object
title: CiWorkflow
properties:
  type:
    type: string
    enum:
    - ciWorkflows
  id:
    type: string
  attributes:
    type: object
    properties:
      name:
        type: string
      description:
        type: string
      branchStartCondition:
        "$ref": "#/components/schemas/CiBranchStartCondition"
      tagStartCondition:
        "$ref": "#/components/schemas/CiTagStartCondition"
      pullRequestStartCondition:
        "$ref": "#/components/schemas/CiPullRequestStartCondition"
      scheduledStartCondition:
        "$ref": "#/components/schemas/CiScheduledStartCondition"
      actions:
        type: array
        items:
          "$ref": "#/components/schemas/CiAction"
      isEnabled:
        type: boolean
      isLockedForEditing:
        type: boolean
      clean:
        type: boolean
      containerFilePath:
        type: string
      lastModifiedDate:
        type: string
        format: date-time
  relationships:
    type: object
    properties:
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
      xcodeVersion:
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
                - ciXcodeVersions
              id:
                type: string
            required:
            - id
            - type
      macOsVersion:
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
                - ciMacOsVersions
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
