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

```

## Notes

Schema have to be manually deleted in `/etc/ldap/slapd.d/cn=config/cn=schema`.
be sure to remove all objects referencing the removed object BEFORE.
