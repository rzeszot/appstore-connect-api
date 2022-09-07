---
type: object
title: CiIssue
properties:
  type:
    type: string
    enum:
    - ciIssues
  id:
    type: string
  attributes:
    type: object
    properties:
      issueType:
        type: string
        enum:
        - ANALYZER_WARNING
        - ERROR
        - TEST_FAILURE
        - WARNING
      message:
        type: string
      fileSource:
        "$ref": "#/components/schemas/FileLocation"
      category:
        type: string
  links:
    "$ref": "#/components/schemas/ResourceLinks"
required:
- links
- id
- type
