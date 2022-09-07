---
type: object
title: EndUserLicenseAgreementResponse
properties:
  data:
    "$ref": "#/components/schemas/EndUserLicenseAgreement"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/App"
      - "$ref": "#/components/schemas/Territory"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
