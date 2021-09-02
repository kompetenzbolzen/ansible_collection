# kompetenzbolzen.stuff.signed_certificate

## CA Settings

```
signed_certificate:
  issuer_cn: 'Tets CN'
  renew_at: '+5d'
  valid_for: '+30d'
  privkey_path: '/tmp/ca.key'
  privkey_passphrase: '1234'
  cert_content: '{{ lookup('file', /tmp/cert.pem) }}'
```

## Certificate settings

```
cert_name: '{{ ansible_facts.fqdn }}'
key_path: '/etc/ssl/private/'
cert_path: '/etc/ssl/certs/'
alt_name: '{{  "DNS:" + ansible_facts.fqdn  }}'
owner: root
group: root
```
