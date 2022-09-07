---
type: object
title: InAppPurchasePriceScheduleResponse
properties:
  data:
    "$ref": "#/components/schemas/InAppPurchasePriceSchedule"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/InAppPurchaseV2"
      - "$ref": "#/components/schemas/InAppPurchasePrice"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
