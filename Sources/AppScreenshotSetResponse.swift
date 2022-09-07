---
type: object
title: AppScreenshotSetResponse
properties:
  data:
    "$ref": "#/components/schemas/AppScreenshotSet"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/AppStoreVersionLocalization"
      - "$ref": "#/components/schemas/AppCustomProductPageLocalization"
      - "$ref": "#/components/schemas/AppStoreVersionExperimentTreatmentLocalization"
      - "$ref": "#/components/schemas/AppScreenshot"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
