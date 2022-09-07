---
type: object
title: PerfPowerMetric
properties:
  type:
    type: string
    enum:
    - perfPowerMetrics
  id:
    type: string
  attributes:
    type: object
    properties:
      platform:
        type: string
        enum:
        - IOS
      metricType:
        type: string
        enum:
        - DISK
        - HANG
        - BATTERY
        - LAUNCH
        - MEMORY
        - ANIMATION
        - TERMINATION
      deviceType:
        type: string
  links:
    "$ref": "#/components/schemas/ResourceLinks"
required:
- links
- id
- type
