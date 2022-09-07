---
type: object
title: CiWorkflowUpdateRequest
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
      relationships:
        type: object
        properties:
          xcodeVersion:
            type: object
            properties:
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
    required:
    - id
    - type
required:
- data
