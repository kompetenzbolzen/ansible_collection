# FTP

Simple PB for pure-ftpd FTP server.

LDAP mode is untested.

Creates a new unit, the Debian wrapper for pure-ftpd is stupid to automate.

```
---
ftp:
  ldap:
    enable: false
    host: 'ldap.example.com'
    port: 636
    bind_dn: ''
    bind_pw: ''
    base: ''
    filter: '(&(objectClass=posixAccount)(uid=\L))'
  enable_pam: false
  tls:
    enable: false
    cert: ''
    key: ''
```
