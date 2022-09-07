---
type: object
title: AppClipDefaultExperienceResponse
properties:
  data:
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
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
