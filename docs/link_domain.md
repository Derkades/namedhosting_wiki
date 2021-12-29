# Linking your domain

If you use CloudFlare, just skip this page and go straight to the [CloudFlare wiki page](https://github.com/Derkades/namedhosting_wiki/blob/main/CLOUDFLARE.md).

You need to somehow point your domain to `site.namedhosting.com`. If you use a subdomain (e.g. `forum.yoursite.com`) you can simply add a CNAME record.

If you don't use a subdomain (`yoursite.com` or `www.yoursite.com`) it is more complicated. Please read the instructions below.

According to the DNS spec [it's not possible to add a CNAME record to your root domain](https://www.freecodecamp.org/news/why-cant-a-domain-s-root-be-a-cname-8cbab38e5f5c/).

### Use a DNS provider that supports CNAME flattening (most reliable)
Some DNS providers like CloudFlare, easyDNS ("ANAME"), DNSimple ("ALIAS"), DNS Made Easy ("ANAME") allow setting a CNAME record for a root domain. Technically it'll be an A record which they update periodically with a new IP address.

You do not need to transfer your domain to use cloudflare, simply update your nameservers to use their DNS configuration panel.

### Use an IP address directly (easiest)
Currently, `site.namedhosting.com` has address `194.163.146.186`. You can add an A record pointing to this IP address. However, if Named Hosting is moved to a different server or the IP address of the current server changes for some reason, you will need to update the IP address manually.

### Use www. with a redirect (last resort)
If your DNS provider supports redirect domains, set up a redirect from `yoursite.com` to `www.yoursite.com` and add a CNAME record for `www.yoursite.com`

