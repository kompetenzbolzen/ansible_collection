# kompetenzbolzen.stuff.gitea

normal gitea `app.ini` config parameters can be passed under `config.`

Available vars: `jwt_sec.content`, `int_tok.content`, `sec_key.content`.
These vars are base64 encoded and can be decoded with the `b64decode` filter.
This only matters for the `JWT_SECRET`.


```yaml
---
gitea:
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
  version:
    ver: '1.21.1'
  config:
    APP_NAME: "Gitea: Git with a cup of tea"
    RUN_USER: git
    RUN_MODE: prod
    repository:
      ROOT: /home/git/gitea-repositories
    server:
      APP_DATA_PATH: /var/lib/gitea/data
      PROTOCOL: https
      DOMAIN: '{{ ansible_facts.fqdn }}'
      STATIC_URL_PREFIX:
      HTTP_ADDR: 0.0.0.0
      HTTP_PORT: 8443
      LOCAL_ROOT_URL: "%(PROTOCOL)s://%(HTTP_ADDR)s:%(HTTP_PORT)s/"
      DISABLE_SSH: false
      SSH_DOMAIN: "%(DOMAIN)s"
      SSH_PORT: 22
      SSH_CREATE_AUTHORIZED_KEYS_FILE: true
      SSH_CREATE_AUTHORIZED_PRINCIPALS_FILE: true
      CERT_FILE: '/etc/ssl/certs/ssl-cert-snakeoil.pem'
      KEY_FILE: '/etc/ssl/certs/ssl-cert-snakeoil.pem'
      LANDING_PAGE: login
    database:
      DB_TYPE: mysql
      HOST: db.example.com:3306
      NAME: db
      USER: dbuser
      PASSWD: "`dbpass`"
      SSL_MODE: true
      CHARSET: utf8mb4
    security:
      INSTALL_LOCK: true
      SECRET_KEY: '{{ sec_key.content }}'
      INTERNAL_TOKEN: '{{ int_tok.content }}'
      DISABLE_GIT_HOOKS: true
    service:
      DISABLE_REGISTRATION: true
      REQUIRE_SIGNIN_VIEW: true
      ENABLE_NOTIFY_MAIL: false
    webhook:
      ALLOWED_HOST_LIST: ''
    oauth2:
      ENABLE: false
      JWT_SECRET: '{{ jwt_sec.content }}'
```
