# CloudFlare

## Step 1: Creating records

Create the following records:

| Type    | Name                 | Target                  | Proxy    |
| ------- | -------------------- | ----------------------- | -------- |
| `CNAME` | `@` (yourdomain.com) | `site.namedhosting.com` | **Disabled** |
| `CNAME` | `www`                | `site.namedhosting.com` | **Disabled** |

Or if you want to use a subdomain:

| Type    | Name                 | Target                  | Proxy    |
| ------- | -------------------- | ----------------------- | -------- |
| `CNAME` | `subdomain`          | `site.namedhosting.com` | **Disabled** |
| `CNAME` | `www.subdomain`      | `site.namedhosting.com` | **Disabled** |

**Important**:

  * CloudFlare proxy must be disabled, even if you want to use it later.
  * You must create a CNAME record for `www.`, even if you don't want to use `www.`.

## Step 2: Wait for your site to work
Usually it takes only 5 minutes, but it can take multiple hours, especially if you've just started using CloudFlare. Note that you have to use `http://`, not `https://`. As soon as you see the NamelessMC installer at your domain, continue to step 3 (do not go through the installer yet).

## Step 3: Enable HTTPS
Go to your site on the Named Hosting dashboard, click 'Edit', then enable HTTPS. Wait about a minute, then refresh your site. It should now redirect to `https://` automatically. If HTTPS is disabled again after enabling it, the records probably weren't created correctly in step 1.

## Step 4: Enable proxy (optional)

You can enable proxy if you want to. If you do enable proxy, make sure to **set security level to "Full (Strict)"**.
