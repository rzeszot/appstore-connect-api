---
type: object
title: SubscriptionPromotionalOfferUpdateRequest
properties:
  data:
    type: object
    properties:
      type:
        type: string
        enum:
        - subscriptionPromotionalOffers
      id:
        type: string
      relationships:
        type: object
        properties:
          prices:
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
                      - subscriptionPromotionalOfferPrices
                    id:
                      type: string
                  required:
                  - id
                  - type
    required:
    - id
    - type
  included:
    type: array
    items:
      "$ref": "#/components/schemas/SubscriptionPromotionalOfferPriceInlineCreate"
required:
- data
