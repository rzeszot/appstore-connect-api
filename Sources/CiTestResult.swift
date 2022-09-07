---
type: object
title: CiTestResult
properties:
  type:
    type: string
    enum:
    - ciTestResults
  id:
    type: string
  attributes:
    type: object
    properties:
      className:
        type: string
      name:
        type: string
      status:
        "$ref": "#/components/schemas/CiTestStatus"
      fileSource:
        "$ref": "#/components/schemas/FileLocation"
      message:
        type: string
      destinationTestResults:
        type: array
        items:
          type: object
          properties:
            uuid:
              type: string
            deviceName:
              type: string
            osVersion:
              type: string
            status:
              "$ref": "#/components/schemas/CiTestStatus"
            duration:
              type: number
  links:
    "$ref": "#/components/schemas/ResourceLinks"
required:
- links
- id
- type
