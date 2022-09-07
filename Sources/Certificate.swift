---
type: object
title: Certificate
properties:
  type:
    type: string
    enum:
    - certificates
  id:
    type: string
  attributes:
    type: object
    properties:
      name:
        type: string
      certificateType:
        "$ref": "#/components/schemas/CertificateType"
      displayName:
        type: string
      serialNumber:
        type: string
      platform:
        "$ref": "#/components/schemas/BundleIdPlatform"
      expirationDate:
        type: string
        format: date-time
      certificateContent:
        type: string
  links:
    "$ref": "#/components/schemas/ResourceLinks"
required:
- links
- id
- type
