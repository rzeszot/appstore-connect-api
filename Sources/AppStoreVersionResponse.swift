---
type: object
title: AppStoreVersionResponse
properties:
  data:
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
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
