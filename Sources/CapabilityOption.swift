---
type: object
properties:
  key:
    type: string
    enum:
    - XCODE_5
    - XCODE_6
    - COMPLETE_PROTECTION
    - PROTECTED_UNLESS_OPEN
    - PROTECTED_UNTIL_FIRST_USER_AUTH
    - PRIMARY_APP_CONSENT
  name:
    type: string
  description:
    type: string
  enabledByDefault:
    type: boolean
  enabled:
    type: boolean
  supportsWildcard:
    type: boolean
