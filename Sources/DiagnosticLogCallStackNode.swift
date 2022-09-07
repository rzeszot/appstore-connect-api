---
type: object
properties:
  sampleCount:
    type: integer
  isBlameFrame:
    type: boolean
  symbolName:
    type: string
  insightsCategory:
    type: string
  offsetIntoSymbol:
    type: string
  binaryName:
    type: string
  fileName:
    type: string
  binaryUUID:
    type: string
  lineNumber:
    type: string
  address:
    type: string
  offsetIntoBinaryTextSegment:
    type: string
  rawFrame:
    type: string
  subFrames:
    type: array
    items:
      "$ref": "#/components/schemas/DiagnosticLogCallStackNode"
