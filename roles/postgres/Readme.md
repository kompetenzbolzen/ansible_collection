# postgres

sets up postgreSQL database according to variables defines on host

User passwords are expected in `vault_pg_db_users_pw.<hostname>.<user>`

```
---
pg_ver: 11
pg_ins: main

# host:db
pg_hba:
 - host: 192.168.1.11/32
   user: test1
   db: testdb1

pg_dbs:
 - testdb1
 - testdb2

pg_db_users:
  test1:
    db: testdb1
    priv: ALL
    state: present
  test2:
    db: testdb2
    priv: ALL
    state: present
```
