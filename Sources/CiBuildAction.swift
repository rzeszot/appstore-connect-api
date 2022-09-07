---
type: object
title: CiBuildAction
properties:
  type:
    type: string
    enum:
    - ciBuildActions
  id:
    type: string
  attributes:
    type: object
    properties:
      name:
        type: string
      actionType:
        "$ref": "#/components/schemas/CiActionType"
      startedDate:
        type: string
        format: date-time
      finishedDate:
        type: string
        format: date-time
      issueCounts:
        "$ref": "#/components/schemas/CiIssueCounts"
      executionProgress:
        "$ref": "#/components/schemas/CiExecutionProgress"
      completionStatus:
        "$ref": "#/components/schemas/CiCompletionStatus"
      isRequiredToPass:
        type: boolean
  relationships:
    type: object
    properties:
      buildRun:
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
                - ciBuildRuns
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
