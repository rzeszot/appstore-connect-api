---
type: object
title: AppClipDefaultExperiencesResponse
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/AppClipDefaultExperience"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/AppClip"
      - "$ref": "#/components/schemas/AppStoreVersion"
      - "$ref": "#/components/schemas/AppClipDefaultExperienceLocalization"
      - "$ref": "#/components/schemas/AppClipAppStoreReviewDetail"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
