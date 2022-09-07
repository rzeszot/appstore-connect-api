---
type: object
title: CiWorkflowsResponse
properties:
  data:
    type: array
    items:
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
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
