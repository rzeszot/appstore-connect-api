---
type: object
title: DiagnosticLog
properties:
  type:
    type: string
    enum:
    - diagnosticLogs
  id:
    type: string
  links:
    "$ref": "#/components/schemas/ResourceLinks"
required:
- links
- id
- type
