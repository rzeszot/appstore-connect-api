---
type: object
title: BundleIdCapabilityUpdateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - bundleIdCapabilities
      id:
        type: string
      attributes:
        type: object
        properties:
          capabilityType:
            "$ref": "#/components/schemas/CapabilityType"
          settings:
            type: array
            items:
              "$ref": "#/components/schemas/CapabilitySetting"
    required:
    - id
    - type
required:
- data
