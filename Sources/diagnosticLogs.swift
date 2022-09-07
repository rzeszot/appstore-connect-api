---
type: object
properties:
  productData:
    type: array
    items:
      type: object
      properties:
        signatureId:
          type: string
        diagnosticInsights:
          type: array
          items:
            type: object
            properties:
              insightsURL:
                type: string
              insightsCategory:
                type: string
              insightsString:
                type: string
        diagnosticLogs:
          type: array
          items:
            type: object
            properties:
              callStackTree:
                type: array
                items:
                  type: object
                  properties:
                    callStackPerThread:
                      type: boolean
                    callStacks:
                      type: array
                      items:
                        type: object
                        properties:
                          callStackRootFrames:
                            type: array
                            items:
                              "$ref": "#/components/schemas/DiagnosticLogCallStackNode"
              diagnosticMetaData:
                type: object
                properties:
                  bundleId:
                    type: string
                  event:
                    type: string
                  osVersion:
                    type: string
                  appVersion:
                    type: string
                  writesCaused:
                    type: string
                  deviceType:
                    type: string
                  platformArchitecture:
                    type: string
                  eventDetail:
                    type: string
                  buildVersion:
                    type: string
  version:
    type: string
