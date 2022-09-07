---
type: object
title: CiWorkflowCreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - ciWorkflows
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
        required:
        - containerFilePath
        - isEnabled
        - name
        - description
        - clean
        - actions
      relationships:
        type: object
        properties:
          product:
            type: object
            properties:
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
            required:
            - data
          repository:
            type: object
            properties:
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
            required:
            - data
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
            required:
            - data
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
            - data
        required:
        - macOsVersion
        - product
        - repository
        - xcodeVersion
    required:
    - relationships
    - attributes
    - type
required:
- data
