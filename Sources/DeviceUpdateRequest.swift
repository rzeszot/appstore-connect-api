---
type: object
title: DeviceUpdateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - devices
      id:
        type: string
      attributes:
        type: object
        properties:
          name:
            type: string
          status:
            type: string
            enum:
            - ENABLED
            - DISABLED
    required:
    - id
    - type
required:
- data
