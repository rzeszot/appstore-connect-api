---
type: object
properties:
  kind:
    type: string
    enum:
    - BITBUCKET_CLOUD
    - BITBUCKET_SERVER
    - GITHUB_CLOUD
    - GITHUB_ENTERPRISE
    - GITLAB_CLOUD
    - GITLAB_SELF_MANAGED
  displayName:
    type: string
  isOnPremise:
    type: boolean
