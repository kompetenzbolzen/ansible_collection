# mysql_backup

Archives SQL Database dumps in an encrypted BORG repo.

compatible with kompetenzbolzen.stuff.mariadb configuration for databases

Example config

```
---
sql_backup:
  borg_repo_dir: /var/backup/borg_mysql/
  borg_repo_key: 'changeme'
  keep_last: 3
  keep_daily: 7
  keep_weekly: 4
  keep_monthly: 6
```
