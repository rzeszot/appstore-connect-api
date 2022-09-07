---
type: object
title: UserInvitationResponse
properties:
  data:
    "$ref": "#/components/schemas/UserInvitation"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/App"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
