---
type: object
title: AppStoreVersionExperimentTreatmentsResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/AppStoreVersionExperimentTreatment"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/AppStoreVersionExperiment"
      - "$ref": "#/components/schemas/AppStoreVersionExperimentTreatmentLocalization"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
