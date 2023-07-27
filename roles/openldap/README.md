# openldap

Example:

```yaml
---
ldap:
  o: 'Example Com'
  base: 'dc=example,dc=com'
  root_dn: 'cn=admin,dc=example,dc=com'
  root_pw: 'admin'
  root_pw_hash: '{SSHA}T4NWs0yED2vORnKH4fWMSicNH0n0jtwP'
  tls:
    enable: false
    ca: '/etc/ssl/certs/ssl-cert-snakeoil.pem'
    key: '/etc/ssl/private/ssl-cert-snakeoil.key'
    cert: '/etc/ssl/certs/ssl-cert-snakeoil.pem'
  schema:
    - cn: openssh-lpk
      olcAttributeTypes: "( 1.3.6.1.4.1.24552.500.1.1.1.13 NAME 'sshPublicKey'
        DESC 'MANDATORY: OpenSSH Public key'
        EQUALITY octetStringMatch
        SYNTAX 1.3.6.1.4.1.1466.115.121.1.40 )"
      olcObjectClasses: "( 1.3.6.1.4.1.24552.500.1.1.2.0 NAME 'ldapPublicKey' SUP top AUXILIARY
        DESC 'MANDATORY: OpenSSH LPK objectclass'
        MAY ( sshPublicKey $ uid )
        )"
  ous:
    - users
    - apps
    - groups
    - unixgroups
  groupsofnames:
    in: 'ou=groups,dc=example,dc=com'
    names:
      - ldap_admin
      - external_auth
  access_control:
    - >-
      {0}to attrs=userPassword
      by self write
      by group/groupOfNames/member=cn=external_auth,ou=groups,dc=example,dc=com read
      by anonymous auth
      by * none
    - >-
      {1}to attrs=shadowLastChange
      by self write
      by * read
    - >-
      {2}to *
      by users read
      by group/groupOfNames/member=cn=ldap_admin,ou=groups,dc=example,dc=com manage
```

## Notes

Schema have to be manually deleted in `/etc/ldap/slapd.d/cn=config/cn=schema`.
be sure to remove all objects referencing the removed object BEFORE.
