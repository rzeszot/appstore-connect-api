---
type: object
title: CertificateCreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - certificates
      attributes:
        type: object
        properties:
          csrContent:
            type: string
          certificateType:
            "$ref": "#/components/schemas/CertificateType"
        required:
        - csrContent
        - certificateType
    required:
    - attributes
    - type
required:
- data
