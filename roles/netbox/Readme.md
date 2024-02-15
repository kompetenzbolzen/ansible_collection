# netbox

as standard as possible according to the docs.

A correct reverse proxy config is needed as well.
See docs for details.

Example config:

```yaml
---
netbox_version: '3.7.2'
netbox_local_postgres: true
netbox_config:
  CSRF_TRUSTED_ORIGINS:
    - 'https://{{ ansible_facts.fqdn }}'
  ALLOWED_HOSTS:
    - '{{ ansible_facts.fqdn }}'
  DATABASE:
    NAME: netbox
    USER: netbox
    PASSWORD: '{{ postgres_netbox_db_key }}'
    HOST: localhost
    PORT: ''
    CONN_MAX_AGE: 300
  REDIS:
    tasks:
      HOST: localhost
      PORT: 6379
      PASSWORD: ''
      DATABASE: 0
      SSL: false
    caching:
      HOST: localhost
      PORT: 6379
      PASSWORD: ''
      DATABASE: 1
      SSL: false
  SECRET_KEY: '{{ sec_key.content | b64decode }}'

gunicorn_config:
  bind: '127.0.0.1:8001'
  workers: 5
  threads: 3
  timeout: 120
  max_requests: 5000
  max_requests_jitter: 500

ldap_enable: false
# This has to be a Multiline String, because we need to define
# native Python-datatypes here and this is a hell to template.
ldap_config: ''
```
