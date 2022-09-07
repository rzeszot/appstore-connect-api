---
type: object
title: AppClipDomainStatus
properties:
  type:
    type: string
    enum:
    - appClipDomainStatuses
  id:
    type: string
  attributes:
    type: object
    properties:
      domains:
        type: array
        items:
          type: object
          properties:
            domain:
              type: string
            isValid:
              type: boolean
            lastUpdatedDate:
              type: string
              format: date-time
            errorCode:
              type: string
              enum:
              - BAD_HTTP_RESPONSE
              - BAD_JSON_CONTENT
              - BAD_PKCS7_SIGNATURE
              - CANNOT_REACH_AASA_FILE
              - DNS_ERROR
              - INSECURE_REDIRECTS_FORBIDDEN
              - INVALID_ENTITLEMENT_MISSING_SECTION
              - INVALID_ENTITLEMENT_SYNTAX_ERROR
              - INVALID_ENTITLEMENT_UNHANDLED_SECTION
              - INVALID_ENTITLEMENT_UNKNOWN_ID
              - NETWORK_ERROR
              - NETWORK_ERROR_TEMPORARY
              - OTHER_ERROR
              - TIMEOUT
              - TLS_ERROR
              - UNEXPECTED_ERROR
      lastUpdatedDate:
        type: string
        format: date-time
  links:
    "$ref": "#/components/schemas/ResourceLinks"
required:
- links
- id
- type
