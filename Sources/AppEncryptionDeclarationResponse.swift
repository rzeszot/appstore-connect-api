---
type: object
title: AppEncryptionDeclarationResponse
properties:
  data:
    "$ref": "#/components/schemas/AppEncryptionDeclaration"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/App"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
