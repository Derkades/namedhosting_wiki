### Step 1: Creating records
Create the following records
| Type | Name | Target | Proxy
| - | - | - | -
| `CNAME` | `@` (yourdomain.com) | `site.namedhosting.com` | Disabled
| `CNAME` | `www` | `site.namedhosting.com` | Disabled 

Disabling cloudflare proxy is very important, even if you want to use it later!

### Step 2: Wait for your site to work
Usually it takes only 5 minutes. Note that you have to use `http://`, not `https://`. As soon as you see the NamelessMC installer at your domain, continue to the next step (do not go through the installer yet).

If you are impatient you can try clearing your browser cache and operating system DNS cache.

### Step 3: Enable HTTPS
Go to your site on the Named Hosting dashboard, click 'Edit', then enable HTTPS. Wait about a minute, then refresh your site. It should now redirect to `https://` automatically. If not, wait 30 minutes and try again. If it still doesn't work, contact support.

### Step 4: Enable proxy (optional)
Leaving proxy disabled will likely result in better security. With proxy enabled, performance may get better or may get worse. It is useful if you suspect denial of service attacks on your site, but otherwise we recommend leaving it disabled.
