---
type: object
title: DeviceCreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - devices
      attributes:
        type: object
        properties:
          name:
            type: string
          platform:
            "$ref": "#/components/schemas/BundleIdPlatform"
          udid:
            type: string
        required:
        - name
        - udid
        - platform
    required:
    - attributes
    - type
required:
- data
