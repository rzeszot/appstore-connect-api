---
type: object
title: BuildBetaNotification
properties:
  type:
    type: string
    enum:
    - buildBetaNotifications
  id:
    type: string
  links:
    "$ref": "#/components/schemas/ResourceLinks"
required:
- links
- id
- type
