# nginx_reverse_proxy

Deprecated. Use `nginx` instead.

Small reverse proxy for local HTTPS proxieing.

```yml
---
nginx_reverse_proxy:
  cert: '/etc/ssl/certs/{{ ansible_facts.fqdn }}.pem'
  key: '/etc/ssl/private/{{ ansible_facts.fqdn }}.key'
  proxy_address: 'http://localhost:8080'
  server_name: '{{ ansible_facts.fqdn }}'
```
