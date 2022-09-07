---
type: object
title: DiagnosticSignature
properties:
  type:
    type: string
    enum:
    - diagnosticSignatures
  id:
    type: string
  attributes:
    type: object
    properties:
      diagnosticType:
        type: string
        enum:
        - DISK_WRITES
        - HANGS
      signature:
        type: string
      weight:
        type: number
  links:
    "$ref": "#/components/schemas/ResourceLinks"
required:
- links
- id
- type
