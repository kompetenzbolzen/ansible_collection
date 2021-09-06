# kompetenzbolzen.stuff.influxdb

example configuration

```
---
influx:
  https_enabled: true
  https_cert: '/etc/ssl/certs/{{ ansible_facts.fqdn }}.pem'
  https_key: '/etc/ssl/private/{{ ansible_facts.fqdn }}.key'

influx_dbs:
  - test1
  - test2

influx_users:
  test1:
    password: '1234'
    grants:
      - database: 'test1'
        privilege: 'WRITE'
```
