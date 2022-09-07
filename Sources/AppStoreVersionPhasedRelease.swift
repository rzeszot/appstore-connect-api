---
type: object
title: AppStoreVersionPhasedRelease
properties:
  type:
    type: string
    enum:
    - appStoreVersionPhasedReleases
  id:
    type: string
  attributes:
    type: object
    properties:
      phasedReleaseState:
        "$ref": "#/components/schemas/PhasedReleaseState"
      startDate:
        type: string
        format: date-time
      totalPauseDuration:
        type: integer
      currentDayNumber:
        type: integer
  links:
    "$ref": "#/components/schemas/ResourceLinks"
required:
- links
- id
- type
