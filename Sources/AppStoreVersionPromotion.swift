---
type: object
title: AppStoreVersionPromotion
properties:
  type:
    type: string
    enum:
    - appStoreVersionPromotions
  id:
    type: string
  links:
    "$ref": "#/components/schemas/ResourceLinks"
required:
- links
- id
- type
