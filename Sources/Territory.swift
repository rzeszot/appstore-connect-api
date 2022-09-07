---
type: object
title: Territory
properties:
  type:
    type: string
    enum:
    - territories
  id:
    type: string
  attributes:
    type: object
    properties:
      currency:
        type: string
  links:
    "$ref": "#/components/schemas/ResourceLinks"
required:
- links
- id
- type
