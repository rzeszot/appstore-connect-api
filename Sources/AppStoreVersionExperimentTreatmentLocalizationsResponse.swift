---
type: object
title: AppStoreVersionExperimentTreatmentLocalizationsResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/AppStoreVersionExperimentTreatmentLocalization"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/AppStoreVersionExperimentTreatment"
      - "$ref": "#/components/schemas/AppScreenshotSet"
      - "$ref": "#/components/schemas/AppPreviewSet"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
