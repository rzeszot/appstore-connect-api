---
type: object
title: AppStoreVersionExperimentTreatmentResponse
properties:
  data:
    "$ref": "#/components/schemas/AppStoreVersionExperimentTreatment"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/AppStoreVersionExperiment"
      - "$ref": "#/components/schemas/AppStoreVersionExperimentTreatmentLocalization"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
