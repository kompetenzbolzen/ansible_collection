# icinga2

Installs Icinga2 Monitor standalone node and Icingaweb2 with integrated MariaDB Database.

Als configures postfix to relay specific mails to SMTP gateway

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
  # CN MUST match FQDN
  api_cert:
    crt: '/etc/ssl/cert/ssl-cert-snakeoil.pem'
    key: '/etc/ssl/private/ssl-cert-snakeoil.key'
    ca: '/etc/ssl/certs/ca-certificates.crt'
  config:
    manage: false
    git_url: ''
    git_version: 'mainu'
  mail:
    enable: false
    smtp_host: 'smtp.example.com'
    smtp_port: '25'
    smtp_user: ''
    smtp_psw: ''
    from: ''
  constants:
    TicketSalt: ''
    NodeName: '{{ ansible_facts.fqdn }}'
    ZoneName: '{{ ansible_facts.fqdn }}'
    PluginDir: '/usr/lib/nagios/plugins'
    ManubulonPluginDir: '/usr/lib/nagios/plugins'
    PluginContribDir: '/usr/lib/nagios/plugins'

icingaweb:
  cert:
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
      group_member_attribute: 'member'
      group_name_attribute: 'cn'
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
    - businessprocess
  install_modules:
    businessprocess:
      url: 'https://github.com/Icinga/icingaweb2-module-businessprocess'
      version: 'master'

```
