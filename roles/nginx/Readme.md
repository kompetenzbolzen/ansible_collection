# nginx

Simple role for configuring nginx servers.
The yaml keys and values are converted to raw nginx files.
See example

```yml
---
nginx:
  servers:
    default:
      listen: 443 ssl
      server_name: '{{ ansible_facts.fqdn }}'
      ssl_certificate: '/etc/ssl/certs/{{ ansible_facts.fqdn }}.pem'
      ssl_certificate_key: '/etc/ssl/private/{{ ansible_facts.fqdn }}.key'
      'location /':
        proxy_pass: http://localhost:8080
```

Produces

```nginx
# vi: ft=nginx
# This file is managed by Ansible. DO NOT CHANGE!
server {
    listen 443 ssl;
    server_name hostname;
    ssl_certificate /etc/ssl/certs/hostname.pem;
    ssl_certificate_key /etc/ssl/private/hostname.key;
    location / {
        proxy_pass http://localhost:8080;
    }
}
```
