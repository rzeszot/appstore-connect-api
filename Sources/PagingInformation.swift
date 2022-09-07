---
type: object
properties:
  paging:
    type: object
    properties:
      total:
        type: integer
      limit:
        type: integer
    required:
    - limit
required:
- paging
