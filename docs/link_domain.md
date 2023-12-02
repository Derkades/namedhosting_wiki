# Linking your domain

If you use CloudFlare, skip this page and go straight to the [CloudFlare wiki page](./cloudflare.md).

You need to point your domain to `site.namedhosting.com`. You must also link the `www.` subdomain, even if you don't want to use it.

## Root domain (with CNAME)

Some DNS providers like CloudFlare, easyDNS ("ANAME"), DNSimple ("ALIAS"), DNS Made Easy ("ANAME") allow setting a CNAME record for a root domain. Technically it'll be an A record which they update periodically with a new IP address.

| Type    | Name                 | Target
| ------- | -------------------- | -----------------------
| `CNAME` | `@` (yourdomain.com) | `site.namedhosting.com`
| `CNAME` | `www`                | `site.namedhosting.com`

## Root domain (without CNAME)

If your DNS provider does not support CNAME flattening, you have to use an A record on the root domain. This means you will manually need to update the IP address if it ever changes in the future (rarely).

| Type    | Name                 | Target
| ------- | -------------------- | -----------------------
| `A`     | `@` (yourdomain.com) | `159.69.6.244`
| `CNAME` | `www`                | `site.namedhosting.com`

## Subdomain

| Type    | Name                 | Target
| ------- | -------------------- | -----------------------
| `CNAME` | `forum`              | `site.namedhosting.com`
| `CNAME` | `www.forum`          | `site.namedhosting.com`

## With SRV record for Minecraft

See the [SRV record wiki page](./srv.md).
