---
type: object
title: BundleIdUpdateRequest
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
      attributes:
        type: object
        properties:
          name:
            type: string
    required:
    - id
    - type
required:
- data
