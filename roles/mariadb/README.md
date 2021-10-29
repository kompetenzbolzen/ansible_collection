# kompetenzbolzen.stuff.mariadb

```
---
mdb:
  address: '0.0.0.0'
  ssl:
    enable: False
    ca: '/etc/ssl/certs/ca-certificates.crt'
    cert: '/etc/ssl/certs/ssl-cert-snakeoil.pem'
    key: '/etc/ssl/private/ssl-cert-snakeoil.key'

dbs:
  - testdb1
  - testdb2
db_users:
  test1:
    host: 'localhost'
    priv: 'testdb1.*:ALL'
    state: present
  test2:
    host: 'localhost'
    priv: 'testdb2.*:ALL'
    state: present
```

Passwords for users are pulles from `vault_db_users_pw.<hostname>.<username>`
