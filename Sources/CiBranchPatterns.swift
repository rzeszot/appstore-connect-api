---
type: object
properties:
  isAllMatch:
    type: boolean
  patterns:
    type: array
    items:
      type: object
      properties:
        pattern:
          type: string
        isPrefix:
          type: boolean
