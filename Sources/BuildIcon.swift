---
type: object
title: BuildIcon
properties:
  type:
    type: string
    enum:
    - buildIcons
  id:
    type: string
  attributes:
    type: object
    properties:
      name:
        type: string
      iconAsset:
        "$ref": "#/components/schemas/ImageAsset"
      iconType:
        "$ref": "#/components/schemas/IconAssetType"
  links:
    "$ref": "#/components/schemas/ResourceLinks"
required:
- links
- id
- type
