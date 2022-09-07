---
type: object
title: AppPricePointsV2Response
properties:
  data:
    type: array
    items:
      "$ref": "#/components/schemas/AppPricePointV2"
  included:
    type: array
    items:
      oneOf:
      - "$ref": "#/components/schemas/App"
      - "$ref": "#/components/schemas/AppPriceTier"
      - "$ref": "#/components/schemas/Territory"
  links:
    "$ref": "#/components/schemas/PagedDocumentLinks"
  meta:
    "$ref": "#/components/schemas/PagingInformation"
required:
- data
- links
