---
type: object
title: AppEncryptionDeclaration
properties:
  type:
    type: string
    enum:
    - appEncryptionDeclarations
  id:
    type: string
  attributes:
    type: object
    properties:
      usesEncryption:
        type: boolean
      exempt:
        type: boolean
      containsProprietaryCryptography:
        type: boolean
      containsThirdPartyCryptography:
        type: boolean
      availableOnFrenchStore:
        type: boolean
      platform:
        "$ref": "#/components/schemas/Platform"
      uploadedDate:
        type: string
        format: date-time
      documentUrl:
        type: string
      documentName:
        type: string
      documentType:
        type: string
      appEncryptionDeclarationState:
        "$ref": "#/components/schemas/AppEncryptionDeclarationState"
      codeValue:
        type: string
  relationships:
    type: object
    properties:
      app:
        type: object
        properties:
          links:
            type: object
            properties:
              self:
                type: string
                format: uri-reference
              related:
                type: string
                format: uri-reference
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
  links:
    "$ref": "#/components/schemas/ResourceLinks"
required:
- links
- id
- type
