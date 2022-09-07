---
type: object
title: UserResponse
properties:
  data:
    "$ref": "#/components/schemas/User"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/App"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
