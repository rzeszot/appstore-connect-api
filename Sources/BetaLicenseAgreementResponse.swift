---
type: object
title: BetaLicenseAgreementResponse
properties:
  data:
    "$ref": "#/components/schemas/BetaLicenseAgreement"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/App"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
