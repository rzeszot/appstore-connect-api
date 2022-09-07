---
type: object
title: AppScreenshotSetsResponse
properties:
  data:
    type: array
    items:
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
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
