---
type: object
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - appEncryptionDeclarations
      id:
        type: string
    required:
    - id
    - type
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
