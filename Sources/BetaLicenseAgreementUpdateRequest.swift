---
type: object
title: BetaLicenseAgreementUpdateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - betaLicenseAgreements
      id:
        type: string
      attributes:
        type: object
        properties:
          agreementText:
            type: string
    required:
    - id
    - type
required:
- data
