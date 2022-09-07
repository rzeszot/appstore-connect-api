---
type: object
title: CiTestResultResponse
properties:
  data:
    "$ref": "#/components/schemas/CiTestResult"
  links:
    "$ref": "#/components/schemas/DocumentLinks"
required:
- data
- links
