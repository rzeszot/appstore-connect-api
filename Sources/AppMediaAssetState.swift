---
type: object
properties:
  errors:
    type: array
    items:
      "$ref": "#/components/schemas/AppMediaStateError"
  warnings:
    type: array
    items:
      "$ref": "#/components/schemas/AppMediaStateError"
  state:
    type: string
    enum:
    - AWAITING_UPLOAD
    - UPLOAD_COMPLETE
    - COMPLETE
    - FAILED
