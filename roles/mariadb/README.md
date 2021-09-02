# kompetenzbolzen.stuff.mariadb

```
---
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
