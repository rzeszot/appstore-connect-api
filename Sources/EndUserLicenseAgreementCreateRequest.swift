---
type: object
title: EndUserLicenseAgreementCreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - endUserLicenseAgreements
      attributes:
        type: object
        properties:
          agreementText:
            type: string
        required:
        - agreementText
      relationships:
        type: object
        properties:
          app:
            type: object
            properties:
              data:
                type: object
                properties:
                  type:
                    type: string
                    enum:
                    - apps
                  id:
                    type: string
                required:
                - id
                - type
            required:
            - data
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
            - data
        required:
        - app
        - territories
    required:
    - relationships
    - attributes
    - type
required:
- data
