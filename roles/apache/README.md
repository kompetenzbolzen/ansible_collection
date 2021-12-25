# kompetenzbolzen.stuff.apache


Example config

PHP-Modules and apache mods in example config are always needed.

```
---
php_versions:
  - php8.0

php_extensions:
  - fpm

# Removing will NOT remove the module
apache_mods:
  - ssl
  - rewrite
  - proxy_fcgi

apache_rproxies:
  proxy-sso:
    hostname: test.example.com
    ssl: true
    proxy: https://test-01.example.com:8443/
    apache_custom_conf: |
      ProxyPreserveHost on
      SSLProxyVerify none
      SSLProxyCheckPeerCN off
      SSLProxyCheckPeerName off

apache_vhosts:
  bookstack:
    hostname: asdf.example.com
    php_version: '8.0'
    relative_root: 'webapp/public'
    php_custom_conf: |
      php_value[upload_max_filesize] = 128M
      php_value[post_max_size] = 256M
      php_value[memory_limit] = 512M

apache_nophp_vhosts:
  homer:
    hostname: dashboard.example.com
    relative_root: ''
    apache_custom_conf: ''

apache_ssl_cert: '/etc/ssl/certs/{{ ansible_facts.fqdn }}.pem'
apache_ssl_key: '/etc/ssl/private/{{ ansible_facts.fqdn }}.key'
```
