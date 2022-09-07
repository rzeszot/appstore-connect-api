---
type: object
properties:
  metricCategory:
    "$ref": "#/components/schemas/MetricCategory"
  latestVersion:
    type: string
  metric:
    type: string
  summaryString:
    type: string
  referenceVersions:
    type: string
  maxLatestVersionValue:
    type: number
  subSystemLabel:
    type: string
  highImpact:
    type: boolean
  populations:
    type: array
    items:
      type: object
      properties:
        deltaPercentage:
          type: number
        percentile:
          type: string
        summaryString:
          type: string
        referenceAverageValue:
          type: number
        latestVersionValue:
          type: number
        device:
          type: string
