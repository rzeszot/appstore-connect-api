---
type: object
title: BetaTesterInvitation
properties:
  type:
    type: string
    enum:
    - betaTesterInvitations
  id:
    type: string
  links:
    "$ref": "#/components/schemas/ResourceLinks"
required:
- links
- id
- type
