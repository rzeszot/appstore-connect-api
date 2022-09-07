---
type: object
title: BuildResponse
properties:
  data:
    "$ref": "#/components/schemas/Build"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/PrereleaseVersion"
      - "$ref": "#/components/schemas/BetaTester"
      - "$ref": "#/components/schemas/BetaGroup"
      - "$ref": "#/components/schemas/BetaBuildLocalization"
      - "$ref": "#/components/schemas/AppEncryptionDeclaration"
      - "$ref": "#/components/schemas/BetaAppReviewSubmission"
      - "$ref": "#/components/schemas/App"
      - "$ref": "#/components/schemas/BuildBetaDetail"
      - "$ref": "#/components/schemas/AppStoreVersion"
      - "$ref": "#/components/schemas/BuildIcon"
      - "$ref": "#/components/schemas/BuildBundle"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
