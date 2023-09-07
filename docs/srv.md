# Using an SRV record for Minecraft

If you want both your Minecraft server and Named Hosting to function the same domain, you can use an SRV record.

1. Your root domain and www. subdomain should point to NamedHosting
2. You should create a separate subdomain for your Minecraft server, like `play.`
3. You should create an SRV record on your root domain, pointing to your subdomain.

## Example

Named Hosting records:

| Type    | Name                       | Target
| ------- | -------------------------- | -----------------------
| `CNAME` | `@` (yourdomain.com)       | `site.namedhosting.com`
| `CNAME` | `www` (www.yourdomain.com) | `site.namedhosting.com`

Minecraft server record:

| Type | Name                         | Target
| ---- | ---------------------------- | -----------------------
| `A`  | `play` (play.yourdomain.com) | your Minecraft server IP address

SRV record:

| Type  | Name                 | Service      | Protocol | Priority | Weight | Port  | Target
| ----- | -------------------- | ------------ | -------- | -------- | ------ | ----- | -----
| `SRV` | `@` (yourdomain.com) | `_minecraft` | `_tcp`   | 0        | 0      | 25565 | `play.yourdomain.com`
