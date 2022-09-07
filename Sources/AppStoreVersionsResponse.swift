---
type: object
title: AppStoreVersionsResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/AppStoreVersion"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/App"
      - "$ref": "#/components/schemas/AgeRatingDeclaration"
      - "$ref": "#/components/schemas/AppStoreVersionLocalization"
      - "$ref": "#/components/schemas/Build"
      - "$ref": "#/components/schemas/AppStoreVersionPhasedRelease"
      - "$ref": "#/components/schemas/RoutingAppCoverage"
      - "$ref": "#/components/schemas/AppStoreReviewDetail"
      - "$ref": "#/components/schemas/AppStoreVersionSubmission"
      - "$ref": "#/components/schemas/AppClipDefaultExperience"
      - "$ref": "#/components/schemas/AppStoreVersionExperiment"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
