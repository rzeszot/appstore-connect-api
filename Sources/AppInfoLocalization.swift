---
type: object
title: AppInfoLocalization
properties:
  type:
    type: string
    enum:
    - appInfoLocalizations
  id:
    type: string
  attributes:
    type: object
    properties:
      locale:
        type: string
      name:
        type: string
      subtitle:
        type: string
      privacyPolicyUrl:
        type: string
      privacyChoicesUrl:
        type: string
      privacyPolicyText:
        type: string
  relationships:
    type: object
    properties:
      appInfo:
        type: object
        properties:
          links:
            type: object
            properties:
              self:
                type: string
                format: uri-reference
              related:
                type: string
                format: uri-reference
          data:
            type: object
            properties:
              type:
                type: string
                enum:
                - appInfos
              id:
                type: string
            required:
            - id
            - type
  links:
    "$ref": "#/components/schemas/ResourceLinks"
required:
- links
- id
- type
