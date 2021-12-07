Common SDL:  
```yaml
version: "2.0"

services:
  { web-service-name}:
    image: { deweb image for framework }
    { if user selected DB }
    depends-on:
      - {db_service_name}
    env:
      - REPO={ URL for github public repo }
      - PORT= { PORT to run server (if neccessary) } 
    expose:
      - port: { PORT from ENV }
        as: 80
        to:
          - global: true
  { if user selected DB }
  {db_service_name}:
    image: mysql/mysql-server:latest
    env:
      { env variables depends on db}
    expose:
      - port: { depends on db }
        to:
          - service: {web-service-name}
profiles:
  compute:
    web:
      resources:
        cpu:
          units: 1
        memory:
          size: 1Gi
        storage:
          size: 1Gi
  placement:
    westcoast:
      signedBy:
        anyOf:
          - "akash1365yvmc4s7awdyj3n2sav7xfx76adc6dnmlx63"
      pricing:
        web:
          denom: uakt
          amount: 3000

deployment:
  web:
    westcoast:
      profile: web
      count: 1

```