---
type: object
properties:
  method:
    type: string
  url:
    type: string
  length:
    type: integer
  offset:
    type: integer
  requestHeaders:
    type: array
    items:
      "$ref": "#/components/schemas/HttpHeader"
