# kompetenzbolzen.stuff.gitea

```
gitea:
  root_url: 'https://gitea.example.com'
  ssl:
    cert: '/etc/ssl/certs/ssl-cert-snakeoil.pem'
    key: '/etc/ssl/private/ssl-cert-snakeoil.key'
  version:
    ver: '1.15.3'
    sha: 'd08d63b1202ece7b701c2c254776a38e0637995e8ff3c6855581ee8e37e9b3fb'
  ldap:
    enable: true
    security: 'starttls'
    host: ''
    port: 389
    bind_dn: ''
    bind_pw: ''
    user_search_base: ''
    user_filter: ''
    admin_filter: ''
    username_attribute: 'uid'
    firstname_attribute: 'givenName'
    surname_attribute: 'sn'
    email_attribute: 'mail'
  mysql:
    host: 'db.example.com:3306'
    db: ''
    user: ''
    passwd: ''
    ssl: 'true'
  mail:
    enable: false
    smtp_host: ''
    tls: false
    skip_verify: false
    from: ''
    user: ''
    pass: ''
    plain_text: false
    subject_prefix: ''

```
