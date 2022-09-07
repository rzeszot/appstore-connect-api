---
type: object
title: AgeRatingDeclaration
properties:
  type:
    type: string
    enum:
    - ageRatingDeclarations
  id:
    type: string
  attributes:
    type: object
    properties:
      alcoholTobaccoOrDrugUseOrReferences:
        type: string
        enum:
        - NONE
        - INFREQUENT_OR_MILD
        - FREQUENT_OR_INTENSE
      contests:
        type: string
        enum:
        - NONE
        - INFREQUENT_OR_MILD
        - FREQUENT_OR_INTENSE
      gamblingAndContests:
        type: boolean
        deprecated: true
      gambling:
        type: boolean
      gamblingSimulated:
        type: string
        enum:
        - NONE
        - INFREQUENT_OR_MILD
        - FREQUENT_OR_INTENSE
      kidsAgeBand:
        "$ref": "#/components/schemas/KidsAgeBand"
      medicalOrTreatmentInformation:
        type: string
        enum:
        - NONE
        - INFREQUENT_OR_MILD
        - FREQUENT_OR_INTENSE
      profanityOrCrudeHumor:
        type: string
        enum:
        - NONE
        - INFREQUENT_OR_MILD
        - FREQUENT_OR_INTENSE
      sexualContentGraphicAndNudity:
        type: string
        enum:
        - NONE
        - INFREQUENT_OR_MILD
        - FREQUENT_OR_INTENSE
      sexualContentOrNudity:
        type: string
        enum:
        - NONE
        - INFREQUENT_OR_MILD
        - FREQUENT_OR_INTENSE
      seventeenPlus:
        type: boolean
      horrorOrFearThemes:
        type: string
        enum:
        - NONE
        - INFREQUENT_OR_MILD
        - FREQUENT_OR_INTENSE
      matureOrSuggestiveThemes:
        type: string
        enum:
        - NONE
        - INFREQUENT_OR_MILD
        - FREQUENT_OR_INTENSE
      unrestrictedWebAccess:
        type: boolean
      violenceCartoonOrFantasy:
        type: string
        enum:
        - NONE
        - INFREQUENT_OR_MILD
        - FREQUENT_OR_INTENSE
      violenceRealisticProlongedGraphicOrSadistic:
        type: string
        enum:
        - NONE
        - INFREQUENT_OR_MILD
        - FREQUENT_OR_INTENSE
      violenceRealistic:
        type: string
        enum:
        - NONE
        - INFREQUENT_OR_MILD
        - FREQUENT_OR_INTENSE
  links:
    "$ref": "#/components/schemas/ResourceLinks"
required:
- links
- id
- type
