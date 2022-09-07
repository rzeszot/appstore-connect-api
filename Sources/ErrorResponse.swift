---
type: object
properties:
  errors:
    type: array
    items:
      type: object
      properties:
        id:
          type: string
        status:
          type: string
        code:
          type: string
        title:
          type: string
        detail:
          type: string
        source:
          oneOf:
          - "$ref": "#/components/schemas/ErrorSourcePointer"
          - "$ref": "#/components/schemas/ErrorSourceParameter"
      required:
      - code
      - detail
      - title
      - status
