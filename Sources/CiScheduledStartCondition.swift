---
type: object
properties:
  source:
    "$ref": "#/components/schemas/CiBranchPatterns"
  schedule:
    type: object
    properties:
      frequency:
        type: string
        enum:
        - WEEKLY
        - DAILY
        - HOURLY
      days:
        type: array
        items:
          type: string
          enum:
          - SUNDAY
          - MONDAY
          - TUESDAY
          - WEDNESDAY
          - THURSDAY
          - FRIDAY
          - SATURDAY
      hour:
        type: integer
      minute:
        type: integer
      timezone:
        type: string
