---
type: object
title: AppClipAdvancedExperienceCreateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - appClipAdvancedExperiences
      attributes:
        type: object
        properties:
          link:
            type: string
            format: uri
          action:
            "$ref": "#/components/schemas/AppClipAction"
          isPoweredBy:
            type: boolean
          place:
            type: object
            properties:
              placeId:
                type: string
              names:
                type: array
                items:
                  type: string
              mainAddress:
                type: object
                properties:
                  fullAddress:
                    type: string
                  structuredAddress:
                    type: object
                    properties:
                      streetAddress:
                        type: array
                        items:
                          type: string
                      floor:
                        type: string
                      neighborhood:
                        type: string
                      locality:
                        type: string
                      stateProvince:
                        type: string
                      postalCode:
                        type: string
                      countryCode:
                        type: string
              displayPoint:
                type: object
                properties:
                  coordinates:
                    type: object
                    properties:
                      latitude:
                        type: number
                      longitude:
                        type: number
                  source:
                    type: string
                    enum:
                    - CALCULATED
                    - MANUALLY_PLACED
              mapAction:
                type: string
                enum:
                - BUY_TICKETS
                - VIEW_AVAILABILITY
                - VIEW_PRICING
                - HOTEL_BOOK_ROOM
                - PARKING_RESERVE_PARKING
                - RESTAURANT_JOIN_WAITLIST
                - RESTAURANT_ORDER_DELIVERY
                - RESTAURANT_ORDER_FOOD
                - RESTAURANT_ORDER_TAKEOUT
                - RESTAURANT_RESERVATION
                - SCHEDULE_APPOINTMENT
                - RESTAURANT_VIEW_MENU
                - THEATER_NOW_PLAYING
              relationship:
                type: string
                enum:
                - OWNER
                - AUTHORIZED
                - OTHER
              phoneNumber:
                type: object
                properties:
                  number:
                    type: string
                  type:
                    type: string
                    enum:
                    - FAX
                    - LANDLINE
                    - MOBILE
                    - TOLLFREE
                  intent:
                    type: string
              homePage:
                type: string
              categories:
                type: array
                items:
                  type: string
          businessCategory:
            type: string
            enum:
            - AUTOMOTIVE
            - BEAUTY
            - BIKES
            - BOOKS
            - CASINO
            - EDUCATION
            - EDUCATION_JAPAN
            - ENTERTAINMENT
            - EV_CHARGER
            - FINANCIAL_USD
            - FINANCIAL_CNY
            - FINANCIAL_GBP
            - FINANCIAL_JPY
            - FINANCIAL_EUR
            - FITNESS
            - FOOD_AND_DRINK
            - GAS
            - GROCERY
            - HEALTH_AND_MEDICAL
            - HOTEL_AND_TRAVEL
            - MUSIC
            - PARKING
            - PET_SERVICES
            - PROFESSIONAL_SERVICES
            - SHOPPING
            - TICKETING
            - TRANSIT
          defaultLanguage:
            "$ref": "#/components/schemas/AppClipAdvancedExperienceLanguage"
        required:
        - defaultLanguage
        - isPoweredBy
        - link
      relationships:
        type: object
        properties:
          appClip:
            type: object
            properties:
              data:
                type: object
                properties:
                  type:
                    type: string
                    enum:
                    - appClips
                  id:
                    type: string
                required:
                - id
                - type
            required:
            - data
          headerImage:
            type: object
            properties:
              data:
                type: object
                properties:
                  type:
                    type: string
                    enum:
                    - appClipAdvancedExperienceImages
                  id:
                    type: string
                required:
                - id
                - type
            required:
            - data
          localizations:
            type: object
            properties:
              data:
                type: array
                items:
                  type: object
                  properties:
                    type:
                      type: string
                      enum:
                      - appClipAdvancedExperienceLocalizations
                    id:
                      type: string
                  required:
                  - id
                  - type
            required:
            - data
        required:
        - appClip
        - headerImage
        - localizations
    required:
    - relationships
    - attributes
    - type
  included:
    type: array
    items:
      "$ref": "#/components/schemas/AppClipAdvancedExperienceLocalizationInlineCreate"
required:
- data
