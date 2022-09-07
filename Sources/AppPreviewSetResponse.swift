---
type: object
title: AppPreviewSetResponse
properties:
  data:
    "$ref": "#/components/schemas/AppPreviewSet"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/AppStoreVersionLocalization"
      - "$ref": "#/components/schemas/AppCustomProductPageLocalization"
      - "$ref": "#/components/schemas/AppStoreVersionExperimentTreatmentLocalization"
      - "$ref": "#/components/schemas/AppPreview"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
