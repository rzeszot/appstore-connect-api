---
type: object
properties:
  key:
    type: string
    enum:
    - ICLOUD_VERSION
    - DATA_PROTECTION_PERMISSION_LEVEL
    - APPLE_ID_AUTH_APP_CONSENT
  name:
    type: string
  description:
    type: string
  enabledByDefault:
    type: boolean
  visible:
    type: boolean
  allowedInstances:
    type: string
    enum:
    - ENTRY
    - SINGLE
    - MULTIPLE
  minInstances:
    type: integer
  options:
    type: array
    items:
      "$ref": "#/components/schemas/CapabilityOption"
