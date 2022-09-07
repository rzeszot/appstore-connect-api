---
type: object
title: AppEventUpdateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - appEvents
      id:
        type: string
      attributes:
        type: object
        properties:
          referenceName:
            type: string
          badge:
            type: string
            enum:
            - LIVE_EVENT
            - PREMIERE
            - CHALLENGE
            - COMPETITION
            - NEW_SEASON
            - MAJOR_UPDATE
            - SPECIAL_EVENT
          deepLink:
            type: string
            format: uri
          purchaseRequirement:
            type: string
            enum:
            - NO_COST_ASSOCIATED
            - IN_APP_PURCHASE
            - SUBSCRIPTION
            - IN_APP_PURCHASE_AND_SUBSCRIPTION
            - IN_APP_PURCHASE_OR_SUBSCRIPTION
          primaryLocale:
            type: string
          priority:
            type: string
            enum:
            - HIGH
            - NORMAL
          purpose:
            type: string
            enum:
            - APPROPRIATE_FOR_ALL_USERS
            - ATTRACT_NEW_USERS
            - KEEP_ACTIVE_USERS_INFORMED
            - BRING_BACK_LAPSED_USERS
          territorySchedules:
            type: array
            items:
              type: object
              properties:
                territories:
                  type: array
                  items:
                    type: string
                publishStart:
                  type: string
                  format: date-time
                eventStart:
                  type: string
                  format: date-time
                eventEnd:
                  type: string
                  format: date-time
    required:
    - id
    - type
required:
- data
