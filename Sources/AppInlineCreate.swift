---
type: object
properties:
  type:
    type: string
    enum:
    - apps
  id:
    type: string
  attributes:
    type: object
    properties:
      bundleId:
        type: string
      sku:
        type: string
      primaryLocale:
        type: string
    required:
    - bundleId
    - sku
    - primaryLocale
  relationships:
    type: object
    properties:
      appStoreVersions:
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
                  - appStoreVersions
                id:
                  type: string
              required:
              - id
              - type
      appInfos:
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
                  - appInfos
                id:
                  type: string
              required:
              - id
              - type
required:
- attributes
- type
