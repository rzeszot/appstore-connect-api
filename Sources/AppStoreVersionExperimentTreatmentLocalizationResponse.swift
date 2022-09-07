---
type: object
title: AppStoreVersionExperimentTreatmentLocalizationResponse
properties:
  data:
    "$ref": "#/components/schemas/AppStoreVersionExperimentTreatmentLocalization"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/AppStoreVersionExperimentTreatment"
      - "$ref": "#/components/schemas/AppScreenshotSet"
      - "$ref": "#/components/schemas/AppPreviewSet"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
