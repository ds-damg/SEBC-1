```
[libdefaults]
default_realm = SEBC.COM
dns_lookup_kdc = true
dns_lookup_realm = false
ticket_lifetime = 86400
renew_lifetime = 604800
forwardable = true
default_tgs_enctypes = rc4-hmac
default_tkt_enctypes = rc4-hmac
permitted_enctypes = rc4-hmac
udp_preference_limit = 1
kdc_timeout = 3000
[realms]
SEBC.COM = {
kdc = sebnnr1n1.sebc.com
admin_server = sebnnr1n1.sebc.com
}

```