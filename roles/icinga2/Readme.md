# icinga2

Installs Icinga2 Monitor standalone node and Icingaweb2 with integrated MariaDB Databse

Default settings

```
---
icinga_ido_db_pw: 'changeme'
icinga_web_db_pw: 'changeme'

icinga:
  # icingaweb2 api user is created automatically with random password
  api_users:
    - name: 'test'
      password: 'changeme'
      permissions: '[ ]'

icingaweb:
  cert:
    use_ssl: true
    cert: '/etc/ssl/cert/ssl-cert-snakeoil.pem'
    key: '/etc/ssl/private/ssl-cert-snakeoil.key'
  ldap:
    use_ldap: false
    host: 'localhost'
    port: '389'
    # none / starttsl / ssl?
    encryption: 'none'
    root_dn: ''
    bind_dn: ''
    bind_pw: ''
    user_class: 'inetOrgPerson'
    user_name_attribute: 'uid'
    filter: ''
    groups:
      base_dn: ''
      group_member_attribute: 'cn'
      group_class: 'groupOfNames'
      group_filter: 'cn=*'
      user_base_dn: ''
      user_class: 'posixAccount'
      user_name_attribute: 'uid'
  roles:
    - name: Administrators
      users: 'admin'
      permissions: '*'
      groups: 'Administrators'
  enabled_modules:
    - monitoring
```
