---
type: object
title: BundleIdCapabilityCreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - bundleIdCapabilities
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
        - capabilityType
      relationships:
        type: object
        properties:
          bundleId:
            type: object
            properties:
              data:
                type: object
                properties:
                  type:
                    type: string
                    enum:
                    - bundleIds
                  id:
                    type: string
                required:
                - id
                - type
            required:
            - data
        required:
        - bundleId
    required:
    - relationships
    - attributes
    - type
required:
- data
