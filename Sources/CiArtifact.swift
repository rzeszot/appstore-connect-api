---
type: object
title: CiArtifact
properties:
  type:
    type: string
    enum:
    - ciArtifacts
  id:
    type: string
  attributes:
    type: object
    properties:
      fileType:
        type: string
        enum:
        - ARCHIVE
        - ARCHIVE_EXPORT
        - LOG_BUNDLE
        - RESULT_BUNDLE
        - TEST_PRODUCTS
        - XCODEBUILD_PRODUCTS
      fileName:
        type: string
      fileSize:
        type: integer
      downloadUrl:
        type: string
        format: uri
  links:
    "$ref": "#/components/schemas/ResourceLinks"
required:
- links
- id
- type
