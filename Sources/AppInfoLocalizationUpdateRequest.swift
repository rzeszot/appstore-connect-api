---
type: object
title: AppInfoLocalizationUpdateRequest
properties:
  data:
    type: object
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
    required:
    - id
    - type
required:
- data
