---
type: object
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - builds
      id:
        type: string
    required:
    - id
    - type
required:
- data
