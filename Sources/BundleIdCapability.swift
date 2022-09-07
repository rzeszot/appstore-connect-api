---
type: object
title: BundleIdCapability
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
  links:
    "$ref": "#/components/schemas/ResourceLinks"
required:
- links
- id
- type
