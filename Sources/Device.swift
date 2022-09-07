---
type: object
title: Device
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
      platform:
        "$ref": "#/components/schemas/BundleIdPlatform"
      udid:
        type: string
      deviceClass:
        type: string
        enum:
        - APPLE_WATCH
        - IPAD
        - IPHONE
        - IPOD
        - APPLE_TV
        - MAC
      status:
        type: string
        enum:
        - ENABLED
        - DISABLED
      model:
        type: string
      addedDate:
        type: string
        format: date-time
  links:
    "$ref": "#/components/schemas/ResourceLinks"
required:
- links
- id
- type
