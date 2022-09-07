---
type: object
title: BuildBundleFileSize
properties:
  type:
    type: string
    enum:
    - buildBundleFileSizes
  id:
    type: string
  attributes:
    type: object
    properties:
      deviceModel:
        type: string
      osVersion:
        type: string
      downloadBytes:
        type: integer
      installBytes:
        type: integer
  links:
    "$ref": "#/components/schemas/ResourceLinks"
required:
- links
- id
- type
