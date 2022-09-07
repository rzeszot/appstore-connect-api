---
type: object
title: RoutingAppCoverageUpdateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - routingAppCoverages
      id:
        type: string
      attributes:
        type: object
        properties:
          sourceFileChecksum:
            type: string
          uploaded:
            type: boolean
    required:
    - id
    - type
required:
- data
