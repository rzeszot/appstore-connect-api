---
type: object
title: AppPreviewSetsResponse
properties:
  data:
    type: array
    items:
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
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
