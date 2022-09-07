---
type: object
title: AppStoreVersionExperimentsResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/AppStoreVersionExperiment"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/AppStoreVersion"
      - "$ref": "#/components/schemas/AppStoreVersionExperimentTreatment"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
