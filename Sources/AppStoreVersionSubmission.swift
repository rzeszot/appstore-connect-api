---
type: object
title: AppStoreVersionSubmission
properties:
  type:
    type: string
    enum:
    - appStoreVersionSubmissions
  id:
    type: string
  relationships:
    type: object
    properties:
      appStoreVersion:
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
                - appStoreVersions
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
deprecated: true
