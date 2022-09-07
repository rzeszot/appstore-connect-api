---
type: object
title: BuildUpdateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - builds
      id:
        type: string
      attributes:
        type: object
        properties:
          expired:
            type: boolean
          usesNonExemptEncryption:
            type: boolean
      relationships:
        type: object
        properties:
          appEncryptionDeclaration:
            type: object
            properties:
              data:
                type: object
                properties:
                  type:
                    type: string
                    enum:
                    - appEncryptionDeclarations
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
