---
type: object
properties:
  type:
    type: string
    enum:
    - appCustomProductPageVersions
  id:
    type: string
  relationships:
    type: object
    properties:
      appCustomProductPage:
        type: object
        properties:
          data:
            type: object
            properties:
              type:
                type: string
                enum:
                - appCustomProductPages
              id:
                type: string
            required:
            - id
            - type
      appCustomProductPageLocalizations:
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
                  - appCustomProductPageLocalizations
                id:
                  type: string
              required:
              - id
              - type
required:
- type
