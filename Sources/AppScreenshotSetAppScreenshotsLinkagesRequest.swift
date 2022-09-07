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
          - appScreenshots
        id:
          type: string
      required:
      - id
      - type
required:
- data
