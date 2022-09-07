---
type: object
title: RoutingAppCoverageResponse
properties:
  data:
    "$ref": "#/components/schemas/RoutingAppCoverage"
  included:
    type: array
    items:
      "$ref": "#/components/schemas/AppStoreVersion"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
