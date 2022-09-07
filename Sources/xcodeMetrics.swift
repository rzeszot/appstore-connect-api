---
type: object
properties:
  version:
    type: string
  insights:
    type: object
    properties:
      trendingUp:
        type: array
        items:
          "$ref": "#/components/schemas/MetricsInsight"
      regressions:
        type: array
        items:
          "$ref": "#/components/schemas/MetricsInsight"
  productData:
    type: array
    items:
      type: object
      properties:
        platform:
          type: string
        metricCategories:
          type: array
          items:
            type: object
            properties:
              identifier:
                "$ref": "#/components/schemas/MetricCategory"
              metrics:
                type: array
                items:
                  type: object
                  properties:
                    identifier:
                      type: string
                    goalKeys:
                      type: array
                      items:
                        type: object
                        properties:
                          goalKey:
                            type: string
                          lowerBound:
                            type: integer
                          upperBound:
                            type: integer
                    unit:
                      type: object
                      properties:
                        identifier:
                          type: string
                        displayName:
                          type: string
                    datasets:
                      type: array
                      items:
                        type: object
                        properties:
                          filterCriteria:
                            type: object
                            properties:
                              percentile:
                                type: string
                              device:
                                type: string
                              deviceMarketingName:
                                type: string
                          points:
                            type: array
                            items:
                              type: object
                              properties:
                                version:
                                  type: string
                                value:
                                  type: number
                                errorMargin:
                                  type: number
                                percentageBreakdown:
                                  type: object
                                  properties:
                                    value:
                                      type: number
                                    subSystemLabel:
                                      type: string
                                goal:
                                  type: string
