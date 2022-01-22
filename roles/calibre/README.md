# calibre-web

Installed calibre-web with optional features if specified.
Assumes the ssl cert and key are located at `/etc/ssl/certs/FQDN.(pem | key)`.

```yaml
ssl: true

features:
  - ldap
  - oauth
  - metadata
  - comics
```

[List of possible features](https://github.com/janeczku/calibre-web/wiki/Dependencies-in-Calibre-Web-Linux-Windows)
