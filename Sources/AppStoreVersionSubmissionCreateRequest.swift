---
type: object
title: AppStoreVersionSubmissionCreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - appStoreVersionSubmissions
      relationships:
        type: object
        properties:
          appStoreVersion:
            type: object
            properties:
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
            required:
            - data
        required:
        - appStoreVersion
    required:
    - relationships
    - type
required:
- data
deprecated: true
