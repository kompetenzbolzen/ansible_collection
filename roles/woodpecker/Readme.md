# Woodpecker CI Podman

Woodpecker CI agent and server with Podman Backend

https://woodpecker-ci.org/docs/administration/server-config

https://woodpecker-ci.org/docs/administration/agent-config

```yaml
---
woodpecker_ver: '2.3.0'

woodpecker_server_enable: true
woodpecker_server:
  WOODPECKER_HOST: http://woodpecker.example.com:8000
  WOODPECKER_GITEA: true
  WOODPECKER_GITEA_URL: https://gitea.example.com
  WOODPECKER_GITEA_CLIENT: CLIENT
  WOODPECKER_GITEA_SECRET: SECRET
  WOODPECKER_OPEN: true
  WOODPECKER_ADMIN: jondoe

woodpecker_agent_enable: false
woodpecker_agent_type: podman
woodpecker_agent:
  WOODPECKER_SERVER: localhost:8000
```
