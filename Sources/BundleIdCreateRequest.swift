---
type: object
title: BundleIdCreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - bundleIds
      attributes:
        type: object
        properties:
          name:
            type: string
          platform:
            "$ref": "#/components/schemas/BundleIdPlatform"
          identifier:
            type: string
          seedId:
            type: string
        required:
        - identifier
        - name
        - platform
    required:
    - attributes
    - type
required:
- data
