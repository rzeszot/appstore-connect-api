---
type: object
properties:
  data:
    type: array
    items:
      type: object
      properties:
        type:
          type: string
          enum:
          - betaTesters
        id:
          type: string
      required:
      - id
      - type
required:
- data
