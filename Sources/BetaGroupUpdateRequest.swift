---
type: object
title: BetaGroupUpdateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - betaGroups
      id:
        type: string
      attributes:
        type: object
        properties:
          name:
            type: string
          publicLinkEnabled:
            type: boolean
          publicLinkLimitEnabled:
            type: boolean
          publicLinkLimit:
            type: integer
          feedbackEnabled:
            type: boolean
          iosBuildsAvailableForAppleSiliconMac:
            type: boolean
    required:
    - id
    - type
required:
- data
