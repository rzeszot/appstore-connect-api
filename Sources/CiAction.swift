---
type: object
properties:
  name:
    type: string
  actionType:
    "$ref": "#/components/schemas/CiActionType"
  destination:
    type: string
    enum:
    - ANY_IOS_DEVICE
    - ANY_IOS_SIMULATOR
    - ANY_TVOS_DEVICE
    - ANY_TVOS_SIMULATOR
    - ANY_WATCHOS_DEVICE
    - ANY_WATCHOS_SIMULATOR
    - ANY_MAC
    - ANY_MAC_CATALYST
  buildDistributionAudience:
    "$ref": "#/components/schemas/BuildAudienceType"
  testConfiguration:
    type: object
    properties:
      kind:
        type: string
        enum:
        - USE_SCHEME_SETTINGS
        - SPECIFIC_TEST_PLANS
      testPlanName:
        type: string
      testDestinations:
        type: array
        items:
          "$ref": "#/components/schemas/CiTestDestination"
  scheme:
    type: string
  platform:
    type: string
    enum:
    - MACOS
    - IOS
    - TVOS
    - WATCHOS
  isRequiredToPass:
    type: boolean
