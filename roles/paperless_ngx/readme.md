# paperless-ngx

`sudo -Hu paperless /opt/paperless/venv/bin/python3 /opt/paperless/src/manage.py createsuperuser`

```yml
---
paperless:
  version: '1.12.2'
  url: 'https://paperless.example.com'
  db:
    # postgres, mariadb, sqlite
    engine: sqlite
    # not needed if sqlite
    host: 'mysql.example.com'
    port: 3306
    user: 'user'
    password: 'password'
    dbname: 'paperless'
```
