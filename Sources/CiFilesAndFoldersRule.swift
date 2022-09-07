---
type: object
properties:
  mode:
    type: string
    enum:
    - START_IF_ANY_FILE_MATCHES
    - DO_NOT_START_IF_ALL_FILES_MATCH
  matchers:
    type: array
    items:
      "$ref": "#/components/schemas/CiStartConditionFileMatcher"
