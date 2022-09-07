---
type: object
title: CertificateResponse
properties:
  data:
    "$ref": "#/components/schemas/Certificate"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
