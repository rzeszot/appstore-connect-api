---
type: object
title: CiWorkflowResponse
properties:
  data:
    "$ref": "#/components/schemas/CiWorkflow"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/CiProduct"
      - "$ref": "#/components/schemas/ScmRepository"
      - "$ref": "#/components/schemas/CiXcodeVersion"
      - "$ref": "#/components/schemas/CiMacOsVersion"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
