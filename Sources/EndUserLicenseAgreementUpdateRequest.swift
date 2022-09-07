---
type: object
title: EndUserLicenseAgreementUpdateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - endUserLicenseAgreements
      id:
        type: string
      attributes:
        type: object
        properties:
          agreementText:
            type: string
      relationships:
        type: object
        properties:
          territories:
            type: object
            properties:
              data:
                type: array
                items:
                  type: object
                  properties:
                    type:
                      type: string
                      enum:
                      - territories
                    id:
                      type: string
                  required:
                  - id
                  - type
    required:
    - id
    - type
required:
- data
