---
type: object
title: AppStoreVersionExperimentResponse
properties:
  data:
    "$ref": "#/components/schemas/AppStoreVersionExperiment"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/AppStoreVersion"
      - "$ref": "#/components/schemas/AppStoreVersionExperimentTreatment"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
